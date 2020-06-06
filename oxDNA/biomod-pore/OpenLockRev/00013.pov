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
	<39.842949, 34.957363, 47.722733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736012, 35.307762, 47.883305>,  <39.671848, 35.518002, 47.979649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736012, 35.307762, 47.883305>,  <39.842949, 34.957363, 47.722733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736012, 35.307762, 47.883305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641498, -0.149060, 0.752503,
		0.719031, 0.458698, -0.522102,
		-0.267347, 0.876001, 0.401433,
		39.655807, 35.570564, 48.003735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594948, 35.206287, 47.807076>,  <39.842949, 34.957363, 47.722733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594948, 35.206287, 47.807076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321739, 35.378185, 48.043316>,  <40.157814, 35.481323, 48.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321739, 35.378185, 48.043316>,  <40.594948, 35.206287, 47.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321739, 35.378185, 48.043316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686107, 0.100201, 0.720567,
		0.250480, 0.897374, -0.363289,
		-0.683020, 0.429743, 0.590597,
		40.116833, 35.507107, 48.220493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973511, 35.808727, 48.068264>,  <40.594948, 35.206287, 47.807076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973511, 35.808727, 48.068264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692081, 35.750259, 48.346436>,  <40.523224, 35.715179, 48.513340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692081, 35.750259, 48.346436>,  <40.973511, 35.808727, 48.068264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692081, 35.750259, 48.346436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687062, 0.110001, 0.718224,
		-0.181478, 0.983125, 0.023032,
		-0.703571, -0.146166, 0.695431,
		40.481010, 35.706409, 48.555065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990395, 36.352833, 48.727016>,  <40.973511, 35.808727, 48.068264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990395, 36.352833, 48.727016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799431, 36.029057, 48.863766>,  <40.684853, 35.834789, 48.945816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799431, 36.029057, 48.863766>,  <40.990395, 36.352833, 48.727016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799431, 36.029057, 48.863766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607182, -0.022663, 0.794240,
		-0.635143, 0.586763, 0.502298,
		-0.477414, -0.809442, 0.341877,
		40.656208, 35.786224, 48.966328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175415, 36.433285, 49.368103>,  <40.990395, 36.352833, 48.727016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175415, 36.433285, 49.368103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030373, 36.061680, 49.338573>,  <40.943348, 35.838718, 49.320858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030373, 36.061680, 49.338573>,  <41.175415, 36.433285, 49.368103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030373, 36.061680, 49.338573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738709, -0.334816, 0.584985,
		-0.568175, 0.157589, 0.807678,
		-0.362610, -0.929012, -0.073821,
		40.921589, 35.782974, 49.316425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013344, 36.183147, 50.076790>,  <41.175415, 36.433285, 49.368103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013344, 36.183147, 50.076790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081947, 35.879848, 49.825188>,  <41.123112, 35.697868, 49.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081947, 35.879848, 49.825188>,  <41.013344, 36.183147, 50.076790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081947, 35.879848, 49.825188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897373, -0.143252, 0.417374,
		-0.406577, -0.636039, 0.655857,
		0.171513, -0.758243, -0.629008,
		41.133400, 35.652374, 49.636486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443016, 35.722420, 50.516026>,  <41.013344, 36.183147, 50.076790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443016, 35.722420, 50.516026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484634, 35.535126, 50.165043>,  <41.509605, 35.422749, 49.954453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484634, 35.535126, 50.165043>,  <41.443016, 35.722420, 50.516026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484634, 35.535126, 50.165043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949600, -0.215527, 0.227613,
		-0.295692, -0.856914, 0.422214,
		0.104047, -0.468237, -0.877455,
		41.515850, 35.394653, 49.901806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678394, 34.940475, 50.683323>,  <41.443016, 35.722420, 50.516026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678394, 34.940475, 50.683323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782082, 35.088566, 50.326508>,  <41.844296, 35.177418, 50.112419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782082, 35.088566, 50.326508>,  <41.678394, 34.940475, 50.683323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782082, 35.088566, 50.326508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958436, -0.212582, 0.190288,
		-0.119183, -0.904292, -0.409941,
		0.259222, 0.370223, -0.892042,
		41.859848, 35.199631, 50.058895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169006, 34.467854, 50.425816>,  <41.678394, 34.940475, 50.683323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169006, 34.467854, 50.425816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269802, 34.802952, 50.232040>,  <42.330280, 35.004009, 50.115776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269802, 34.802952, 50.232040>,  <42.169006, 34.467854, 50.425816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269802, 34.802952, 50.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965720, -0.249931, 0.070134,
		-0.062321, -0.485505, -0.872010,
		0.251992, 0.837747, -0.484438,
		42.345398, 35.054276, 50.086708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795712, 34.319748, 50.110470>,  <42.169006, 34.467854, 50.425816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795712, 34.319748, 50.110470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792690, 34.716934, 50.063206>,  <42.790878, 34.955246, 50.034847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792690, 34.716934, 50.063206>,  <42.795712, 34.319748, 50.110470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792690, 34.716934, 50.063206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999613, 0.010665, 0.025714,
		0.026793, -0.117924, -0.992661,
		-0.007555, 0.992965, -0.118164,
		42.790424, 35.014824, 50.027756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404316, 34.380955, 49.757587>,  <42.795712, 34.319748, 50.110470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404316, 34.380955, 49.757587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323151, 34.757771, 49.864464>,  <43.274452, 34.983860, 49.928589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323151, 34.757771, 49.864464>,  <43.404316, 34.380955, 49.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323151, 34.757771, 49.864464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977878, 0.180794, 0.105206,
		0.050803, 0.282624, -0.957885,
		-0.202913, 0.942039, 0.267187,
		43.262276, 35.040382, 49.944618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904308, 34.794388, 49.455673>,  <43.404316, 34.380955, 49.757587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904308, 34.794388, 49.455673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789913, 35.022289, 49.763851>,  <43.721275, 35.159031, 49.948757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789913, 35.022289, 49.763851>,  <43.904308, 34.794388, 49.455673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789913, 35.022289, 49.763851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956415, 0.120227, 0.266112,
		0.058990, 0.812972, -0.579306,
		-0.285990, 0.569755, 0.770447,
		43.704117, 35.193214, 49.994984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291157, 35.438461, 49.365826>,  <43.904308, 34.794388, 49.455673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291157, 35.438461, 49.365826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189716, 35.426025, 49.752548>,  <44.128853, 35.418564, 49.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189716, 35.426025, 49.752548>,  <44.291157, 35.438461, 49.365826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189716, 35.426025, 49.752548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945412, 0.203495, 0.254532,
		-0.204654, 0.978582, -0.022213,
		-0.253601, -0.031091, 0.966809,
		44.113636, 35.416698, 50.042591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617226, 36.076096, 49.628296>,  <44.291157, 35.438461, 49.365826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617226, 36.076096, 49.628296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548466, 35.829418, 49.935577>,  <44.507210, 35.681412, 50.119946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548466, 35.829418, 49.935577>,  <44.617226, 36.076096, 49.628296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548466, 35.829418, 49.935577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828737, 0.331063, 0.451212,
		-0.532585, 0.714200, 0.454171,
		-0.171896, -0.616697, 0.768204,
		44.496899, 35.644409, 50.166039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908676, 36.401642, 50.164200>,  <44.617226, 36.076096, 49.628296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908676, 36.401642, 50.164200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864525, 36.057304, 50.362904>,  <44.838036, 35.850704, 50.482124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864525, 36.057304, 50.362904>,  <44.908676, 36.401642, 50.164200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864525, 36.057304, 50.362904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667446, 0.306140, 0.678818,
		-0.736433, 0.406486, 0.540773,
		-0.110378, -0.860841, 0.496759,
		44.831413, 35.799053, 50.511932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759075, 36.515316, 50.944344>,  <44.908676, 36.401642, 50.164200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759075, 36.515316, 50.944344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910625, 36.149265, 50.889210>,  <45.001556, 35.929634, 50.856129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910625, 36.149265, 50.889210>,  <44.759075, 36.515316, 50.944344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910625, 36.149265, 50.889210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704125, 0.188403, 0.684626,
		-0.600548, -0.356445, 0.715743,
		0.378880, -0.915124, -0.137837,
		45.024288, 35.874729, 50.847858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970936, 36.221443, 51.605659>,  <44.759075, 36.515316, 50.944344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970936, 36.221443, 51.605659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190044, 36.021217, 51.337517>,  <45.321510, 35.901081, 51.176632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190044, 36.021217, 51.337517>,  <44.970936, 36.221443, 51.605659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190044, 36.021217, 51.337517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818192, 0.153220, 0.554153,
		-0.174677, -0.852032, 0.493488,
		0.547768, -0.500565, -0.670361,
		45.354374, 35.871048, 51.136410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431271, 35.957054, 52.020004>,  <44.970936, 36.221443, 51.605659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431271, 35.957054, 52.020004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596008, 35.950771, 51.655556>,  <45.694851, 35.947002, 51.436886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596008, 35.950771, 51.655556>,  <45.431271, 35.957054, 52.020004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596008, 35.950771, 51.655556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910719, 0.041391, 0.410947,
		0.031257, -0.999019, 0.031351,
		0.411841, -0.015707, -0.911120,
		45.719563, 35.946060, 51.382221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919930, 35.401344, 52.067928>,  <45.431271, 35.957054, 52.020004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919930, 35.401344, 52.067928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031971, 35.627834, 51.757851>,  <46.099197, 35.763729, 51.571804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031971, 35.627834, 51.757851>,  <45.919930, 35.401344, 52.067928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031971, 35.627834, 51.757851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904213, 0.115579, 0.411144,
		0.322397, -0.816106, -0.479615,
		0.280104, 0.566226, -0.775196,
		46.116001, 35.797703, 51.525291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452038, 35.158447, 51.927929>,  <45.919930, 35.401344, 52.067928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452038, 35.158447, 51.927929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463692, 35.512634, 51.742413>,  <46.470684, 35.725147, 51.631104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463692, 35.512634, 51.742413>,  <46.452038, 35.158447, 51.927929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463692, 35.512634, 51.742413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886650, 0.191340, 0.420999,
		0.461522, -0.423481, -0.779526,
		0.029130, 0.885467, -0.463788,
		46.472431, 35.778275, 51.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195621, 35.163677, 51.592834>,  <46.452038, 35.158447, 51.927929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195621, 35.163677, 51.592834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508121, 35.057785, 51.818954>,  <47.695621, 34.994247, 51.954628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508121, 35.057785, 51.818954>,  <47.195621, 35.163677, 51.592834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508121, 35.057785, 51.818954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133464, -0.813831, -0.565568,
		0.609786, 0.517296, -0.600471,
		0.781248, -0.264734, 0.565303,
		47.742496, 34.978363, 51.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.042156, 35.369102, 51.749138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.153034, 35.177746, 52.082439>,  <24.219561, 35.062931, 52.282421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.153034, 35.177746, 52.082439>,  <24.042156, 35.369102, 51.749138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.153034, 35.177746, 52.082439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914284, -0.135278, -0.381817,
		0.295378, 0.867665, 0.399887,
		0.277193, -0.478391, 0.833251,
		24.236193, 35.034229, 52.332413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576197, 35.677509, 52.005554>,  <24.042156, 35.369102, 51.749138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576197, 35.677509, 52.005554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.583973, 35.303215, 52.146423>,  <24.588638, 35.078640, 52.230946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.583973, 35.303215, 52.146423>,  <24.576197, 35.677509, 52.005554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583973, 35.303215, 52.146423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907388, -0.131400, -0.399226,
		0.419845, 0.327321, 0.846517,
		0.019442, -0.935732, 0.352175,
		24.589806, 35.022495, 52.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224602, 35.624825, 52.275043>,  <24.576197, 35.677509, 52.005554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224602, 35.624825, 52.275043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.093008, 35.249210, 52.235088>,  <25.014051, 35.023842, 52.211117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.093008, 35.249210, 52.235088>,  <25.224602, 35.624825, 52.275043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093008, 35.249210, 52.235088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816908, -0.229933, -0.528954,
		0.473741, -0.255615, 0.842752,
		-0.328985, -0.939038, -0.099886,
		24.994312, 34.967499, 52.205124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788301, 35.170967, 52.536537>,  <25.224602, 35.624825, 52.275043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788301, 35.170967, 52.536537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.565123, 34.960060, 52.280201>,  <25.431215, 34.833515, 52.126400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.565123, 34.960060, 52.280201>,  <25.788301, 35.170967, 52.536537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565123, 34.960060, 52.280201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829547, -0.376087, -0.412808,
		-0.023350, -0.761934, 0.647233,
		-0.557948, -0.527271, -0.640842,
		25.397738, 34.801880, 52.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086636, 34.499115, 52.545391>,  <25.788301, 35.170967, 52.536537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086636, 34.499115, 52.545391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.887066, 34.489586, 52.198864>,  <25.767324, 34.483868, 51.990948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.887066, 34.489586, 52.198864>,  <26.086636, 34.499115, 52.545391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887066, 34.489586, 52.198864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762195, -0.487825, -0.425541,
		-0.412472, -0.872616, 0.261549,
		-0.498924, -0.023827, -0.866318,
		25.737389, 34.482437, 51.938969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260319, 33.780613, 52.212917>,  <26.086636, 34.499115, 52.545391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260319, 33.780613, 52.212917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.134531, 34.021938, 51.919762>,  <26.059057, 34.166733, 51.743870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.134531, 34.021938, 51.919762>,  <26.260319, 33.780613, 52.212917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134531, 34.021938, 51.919762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665120, -0.410817, -0.623574,
		-0.677292, -0.683555, -0.272083,
		-0.314471, 0.603309, -0.732889,
		26.040190, 34.202930, 51.699894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226971, 33.351200, 51.518681>,  <26.260319, 33.780613, 52.212917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226971, 33.351200, 51.518681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.221378, 33.736946, 51.413006>,  <26.218023, 33.968395, 51.349602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.221378, 33.736946, 51.413006>,  <26.226971, 33.351200, 51.518681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221378, 33.736946, 51.413006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751746, -0.164079, -0.638714,
		-0.659305, -0.207535, -0.722667,
		-0.013981, 0.964369, -0.264191,
		26.217184, 34.026257, 51.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358557, 33.285141, 50.861588>,  <26.226971, 33.351200, 51.518681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358557, 33.285141, 50.861588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.448793, 33.668087, 50.933765>,  <26.502935, 33.897854, 50.977074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.448793, 33.668087, 50.933765>,  <26.358557, 33.285141, 50.861588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448793, 33.668087, 50.933765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849578, -0.102677, -0.517374,
		-0.476788, 0.270018, -0.836519,
		0.225591, 0.957365, 0.180446,
		26.516470, 33.955296, 50.987900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570652, 33.591244, 50.161285>,  <26.358557, 33.285141, 50.861588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570652, 33.591244, 50.161285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.699524, 33.857635, 50.430408>,  <26.776848, 34.017471, 50.591881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.699524, 33.857635, 50.430408>,  <26.570652, 33.591244, 50.161285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699524, 33.857635, 50.430408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806116, 0.179638, -0.563832,
		-0.496362, 0.724018, -0.478981,
		0.322181, 0.665979, 0.672808,
		26.796179, 34.057430, 50.632252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965530, 34.097172, 49.829540>,  <26.570652, 33.591244, 50.161285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965530, 34.097172, 49.829540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.119200, 34.133896, 50.197014>,  <27.211401, 34.155930, 50.417500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.119200, 34.133896, 50.197014>,  <26.965530, 34.097172, 49.829540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119200, 34.133896, 50.197014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919813, 0.047858, -0.389427,
		-0.079721, 0.994626, -0.066065,
		0.384172, 0.091813, 0.918685,
		27.234451, 34.161438, 50.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632463, 34.506817, 49.682983>,  <26.965530, 34.097172, 49.829540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632463, 34.506817, 49.682983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.694338, 34.414635, 50.067268>,  <27.731462, 34.359325, 50.297840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.694338, 34.414635, 50.067268>,  <27.632463, 34.506817, 49.682983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694338, 34.414635, 50.067268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979447, -0.091633, -0.179685,
		0.129442, 0.968759, 0.211542,
		0.154687, -0.230453, 0.960710,
		27.740744, 34.345497, 50.355480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120810, 34.989059, 49.988869>,  <27.632463, 34.506817, 49.682983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120810, 34.989059, 49.988869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167801, 34.654396, 50.202862>,  <28.195995, 34.453598, 50.331257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167801, 34.654396, 50.202862>,  <28.120810, 34.989059, 49.988869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167801, 34.654396, 50.202862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966017, -0.028623, -0.256889,
		0.230241, 0.546982, 0.804860,
		0.117476, -0.836655, 0.534984,
		28.203043, 34.403400, 50.363358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660065, 35.162575, 50.411228>,  <28.120810, 34.989059, 49.988869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660065, 35.162575, 50.411228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.619982, 34.764729, 50.421814>,  <28.595932, 34.526020, 50.428165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.619982, 34.764729, 50.421814>,  <28.660065, 35.162575, 50.411228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619982, 34.764729, 50.421814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994942, -0.100355, -0.004337,
		0.006970, 0.025892, 0.999640,
		-0.100207, -0.994615, 0.026461,
		28.589920, 34.466343, 50.429752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104565, 34.927036, 50.968204>,  <28.660065, 35.162575, 50.411228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104565, 34.927036, 50.968204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.047371, 34.619450, 50.718967>,  <29.013054, 34.434898, 50.569424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.047371, 34.619450, 50.718967>,  <29.104565, 34.927036, 50.968204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047371, 34.619450, 50.718967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980444, -0.024034, -0.195328,
		0.135224, -0.638841, 0.757362,
		-0.142985, -0.768964, -0.623097,
		29.004475, 34.388760, 50.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602716, 34.419479, 51.179100>,  <29.104565, 34.927036, 50.968204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602716, 34.419479, 51.179100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.507540, 34.339981, 50.798809>,  <29.450434, 34.292282, 50.570633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.507540, 34.339981, 50.798809>,  <29.602716, 34.419479, 51.179100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507540, 34.339981, 50.798809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965877, 0.054679, -0.253163,
		0.102299, -0.978526, 0.178949,
		-0.237942, -0.198741, -0.950729,
		29.436157, 34.280357, 50.513592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162689, 33.977814, 50.853718>,  <29.602716, 34.419479, 51.179100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162689, 33.977814, 50.853718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977884, 34.147209, 50.542023>,  <29.867002, 34.248848, 50.355007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977884, 34.147209, 50.542023>,  <30.162689, 33.977814, 50.853718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977884, 34.147209, 50.542023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879090, 0.102519, -0.465501,
		-0.117247, -0.900082, -0.419649,
		-0.462011, 0.423488, -0.779233,
		29.839281, 34.274254, 50.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634850, 33.852680, 50.377399>,  <30.162689, 33.977814, 50.853718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634850, 33.852680, 50.377399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411566, 34.102829, 50.159290>,  <30.277596, 34.252918, 50.028427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.411566, 34.102829, 50.159290>,  <30.634850, 33.852680, 50.377399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411566, 34.102829, 50.159290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806114, 0.253192, -0.534859,
		-0.196426, -0.738112, -0.645452,
		-0.558209, 0.625368, -0.545269,
		30.244102, 34.290440, 49.995708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692713, 33.663780, 49.656139>,  <30.634850, 33.852680, 50.377399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692713, 33.663780, 49.656139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602779, 34.051647, 49.694508>,  <30.548820, 34.284367, 49.717529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602779, 34.051647, 49.694508>,  <30.692713, 33.663780, 49.656139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602779, 34.051647, 49.694508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682204, 0.226936, -0.695053,
		-0.695736, -0.090833, -0.712531,
		-0.224832, 0.969665, 0.095921,
		30.535330, 34.342548, 49.723286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718365, 33.941063, 48.955090>,  <30.692713, 33.663780, 49.656139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718365, 33.941063, 48.955090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750057, 34.273880, 49.174698>,  <30.769073, 34.473572, 49.306465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750057, 34.273880, 49.174698>,  <30.718365, 33.941063, 48.955090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750057, 34.273880, 49.174698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706669, 0.341572, -0.619635,
		-0.703094, 0.437073, -0.560915,
		0.079233, 0.832043, 0.549023,
		30.773827, 34.523495, 49.339405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726831, 34.469929, 48.501339>,  <30.718365, 33.941063, 48.955090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726831, 34.469929, 48.501339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.899868, 34.618313, 48.830032>,  <31.003691, 34.707344, 49.027248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.899868, 34.618313, 48.830032>,  <30.726831, 34.469929, 48.501339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899868, 34.618313, 48.830032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812986, 0.233523, -0.533404,
		-0.389767, 0.898807, -0.200566,
		0.432591, 0.370961, 0.821738,
		31.029646, 34.729603, 49.076553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020805, 35.147312, 48.320827>,  <30.726831, 34.469929, 48.501339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020805, 35.147312, 48.320827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.198561, 34.999725, 48.647358>,  <31.305214, 34.911175, 48.843277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.198561, 34.999725, 48.647358>,  <31.020805, 35.147312, 48.320827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198561, 34.999725, 48.647358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888179, 0.062584, -0.455217,
		0.116869, 0.927335, 0.355516,
		0.444388, -0.368963, 0.816325,
		31.331877, 34.889038, 48.892254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.010679, 34.844803, 34.971268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.391411, 34.873161, 35.090595>,  <24.619850, 34.890175, 35.162189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.391411, 34.873161, 35.090595>,  <24.010679, 34.844803, 34.971268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391411, 34.873161, 35.090595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290732, -0.100490, 0.951513,
		0.097438, -0.992409, -0.075037,
		0.951830, 0.070897, 0.298317,
		24.676960, 34.894428, 35.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291512, 34.147915, 35.256065>,  <24.010679, 34.844803, 34.971268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291512, 34.147915, 35.256065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.459188, 34.476219, 35.411312>,  <24.559795, 34.673203, 35.504459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.459188, 34.476219, 35.411312>,  <24.291512, 34.147915, 35.256065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459188, 34.476219, 35.411312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337546, -0.255958, 0.905841,
		0.842817, -0.510730, 0.169748,
		0.419192, 0.820757, 0.388120,
		24.584946, 34.722446, 35.527748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.367830, 33.525627, 35.813320>,  <24.291512, 34.147915, 35.256065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.367830, 33.525627, 35.813320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.675634, 33.375832, 36.020245>,  <24.860317, 33.285954, 36.144402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.675634, 33.375832, 36.020245>,  <24.367830, 33.525627, 35.813320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675634, 33.375832, 36.020245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622314, 0.621663, -0.475668,
		-0.143463, 0.687963, 0.711425,
		0.769509, -0.374489, 0.517314,
		24.906487, 33.263485, 36.175438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634790, 33.989677, 36.300571>,  <24.367830, 33.525627, 35.813320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634790, 33.989677, 36.300571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.905077, 33.741219, 36.141781>,  <25.067249, 33.592144, 36.046509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.905077, 33.741219, 36.141781>,  <24.634790, 33.989677, 36.300571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905077, 33.741219, 36.141781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456480, 0.775419, -0.436293,
		0.578821, 0.113600, 0.807503,
		0.675716, -0.621144, -0.396973,
		25.107792, 33.554874, 36.022690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281181, 34.258297, 36.476433>,  <24.634790, 33.989677, 36.300571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281181, 34.258297, 36.476433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.322647, 34.039429, 36.144199>,  <25.347527, 33.908108, 35.944859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.322647, 34.039429, 36.144199>,  <25.281181, 34.258297, 36.476433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322647, 34.039429, 36.144199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510550, 0.745938, -0.427686,
		0.853576, -0.379717, 0.356684,
		0.103665, -0.547167, -0.830579,
		25.353746, 33.875278, 35.895027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825235, 34.371624, 37.081814>,  <25.281181, 34.258297, 36.476433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825235, 34.371624, 37.081814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.191750, 34.531166, 37.096413>,  <25.411659, 34.626892, 37.105171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.191750, 34.531166, 37.096413>,  <24.825235, 34.371624, 37.081814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191750, 34.531166, 37.096413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344317, 0.737879, 0.580500,
		0.204604, -0.544472, 0.813442,
		0.916288, 0.398855, 0.036498,
		25.466637, 34.650822, 37.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223358, 34.248909, 37.771057>,  <24.825235, 34.371624, 37.081814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223358, 34.248909, 37.771057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.277420, 34.580162, 37.553459>,  <25.309856, 34.778915, 37.422901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.277420, 34.580162, 37.553459>,  <25.223358, 34.248909, 37.771057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277420, 34.580162, 37.553459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445922, 0.541124, 0.712978,
		0.884809, 0.146216, 0.442419,
		0.135155, 0.828134, -0.543992,
		25.317966, 34.828602, 37.390263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971571, 34.589870, 38.001820>,  <25.223358, 34.248909, 37.771057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971571, 34.589870, 38.001820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.082415, 34.967575, 37.930729>,  <26.148922, 35.194199, 37.888073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.082415, 34.967575, 37.930729>,  <25.971571, 34.589870, 38.001820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082415, 34.967575, 37.930729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868621, 0.325264, 0.373766,
		0.410740, 0.050804, 0.910336,
		0.277111, 0.944258, -0.177728,
		26.165548, 35.250851, 37.877411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992935, 34.999424, 38.585987>,  <25.971571, 34.589870, 38.001820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992935, 34.999424, 38.585987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.915768, 35.259903, 38.292397>,  <25.869467, 35.416191, 38.116241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.915768, 35.259903, 38.292397>,  <25.992935, 34.999424, 38.585987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915768, 35.259903, 38.292397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827045, 0.294600, 0.478756,
		0.527995, 0.699394, 0.481735,
		-0.192920, 0.651198, -0.733978,
		25.857891, 35.455261, 38.072205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419807, 34.395893, 38.854179>,  <25.992935, 34.999424, 38.585987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419807, 34.395893, 38.854179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.517834, 34.165012, 39.165764>,  <26.576651, 34.026485, 39.352715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.517834, 34.165012, 39.165764>,  <26.419807, 34.395893, 38.854179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517834, 34.165012, 39.165764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735412, 0.634229, 0.238586,
		-0.631752, 0.514389, 0.579907,
		0.245068, -0.577198, 0.778963,
		26.591354, 33.991852, 39.399452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265257, 34.819920, 39.419224>,  <26.419807, 34.395893, 38.854179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265257, 34.819920, 39.419224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.548918, 34.537983, 39.426113>,  <26.719114, 34.368820, 39.430248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.548918, 34.537983, 39.426113>,  <26.265257, 34.819920, 39.419224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548918, 34.537983, 39.426113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703641, 0.709064, 0.046016,
		-0.044648, -0.020511, 0.998792,
		0.709152, -0.704846, 0.017226,
		26.761663, 34.326530, 39.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805527, 34.953838, 39.915657>,  <26.265257, 34.819920, 39.419224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805527, 34.953838, 39.915657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958435, 34.716625, 39.632198>,  <27.050180, 34.574299, 39.462124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958435, 34.716625, 39.632198>,  <26.805527, 34.953838, 39.915657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958435, 34.716625, 39.632198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858407, 0.511790, 0.034767,
		0.342062, -0.621601, 0.704702,
		0.382270, -0.593029, -0.708651,
		27.073116, 34.538715, 39.419601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443340, 34.604683, 40.162563>,  <26.805527, 34.953838, 39.915657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443340, 34.604683, 40.162563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.413836, 34.693489, 39.773663>,  <27.396133, 34.746773, 39.540321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.413836, 34.693489, 39.773663>,  <27.443340, 34.604683, 40.162563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413836, 34.693489, 39.773663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872657, 0.486271, 0.044834,
		0.482731, -0.845133, -0.229610,
		-0.073762, 0.222014, -0.972249,
		27.391706, 34.760094, 39.481987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994247, 34.979843, 39.989056>,  <27.443340, 34.604683, 40.162563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994247, 34.979843, 39.989056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855066, 34.952843, 39.615025>,  <27.771559, 34.936642, 39.390606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855066, 34.952843, 39.615025>,  <27.994247, 34.979843, 39.989056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855066, 34.952843, 39.615025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814125, 0.472842, -0.337078,
		0.464900, -0.878558, -0.109567,
		-0.347950, -0.067507, -0.935079,
		27.750681, 34.932590, 39.334499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594936, 35.299538, 40.475006>,  <27.994247, 34.979843, 39.989056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594936, 35.299538, 40.475006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.624987, 35.085041, 40.138718>,  <28.643017, 34.956345, 39.936947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.624987, 35.085041, 40.138718>,  <28.594936, 35.299538, 40.475006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624987, 35.085041, 40.138718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283351, -0.819826, 0.497593,
		-0.956069, 0.200835, -0.213534,
		0.075126, -0.536238, -0.840717,
		28.647524, 34.924171, 39.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199776, 35.754044, 40.455879>,  <28.594936, 35.299538, 40.475006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199776, 35.754044, 40.455879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919239, 35.757156, 40.740993>,  <28.750917, 35.759026, 40.912060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919239, 35.757156, 40.740993>,  <29.199776, 35.754044, 40.455879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919239, 35.757156, 40.740993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650951, -0.400498, 0.644875,
		0.290487, 0.916265, 0.275819,
		-0.701342, 0.007783, 0.712783,
		28.708838, 35.759491, 40.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135841, 36.420609, 40.074181>,  <29.199776, 35.754044, 40.455879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135841, 36.420609, 40.074181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856348, 36.328838, 40.345219>,  <28.688652, 36.273777, 40.507843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856348, 36.328838, 40.345219>,  <29.135841, 36.420609, 40.074181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856348, 36.328838, 40.345219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559570, 0.414841, 0.717487,
		-0.445701, 0.880495, -0.161487,
		-0.698736, -0.229422, 0.677594,
		28.646727, 36.260014, 40.548496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556404, 36.670227, 40.711014>,  <29.135841, 36.420609, 40.074181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556404, 36.670227, 40.711014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.605312, 36.957382, 40.985149>,  <29.634657, 37.129673, 41.149632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.605312, 36.957382, 40.985149>,  <29.556404, 36.670227, 40.711014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605312, 36.957382, 40.985149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796870, -0.340625, 0.498972,
		0.591648, -0.607137, 0.530412,
		0.122273, 0.717885, 0.685339,
		29.641994, 37.172749, 41.190750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583654, 36.443821, 41.362225>,  <29.556404, 36.670227, 40.711014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583654, 36.443821, 41.362225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460030, 36.822922, 41.393841>,  <29.385855, 37.050381, 41.412811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460030, 36.822922, 41.393841>,  <29.583654, 36.443821, 41.362225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460030, 36.822922, 41.393841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745338, -0.293000, 0.598851,
		0.590722, 0.126166, 0.796950,
		-0.309061, 0.947752, 0.079045,
		29.367311, 37.107246, 41.417553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160395, 35.992424, 41.434589>,  <29.583654, 36.443821, 41.362225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160395, 35.992424, 41.434589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774853, 36.007504, 41.540089>,  <29.543528, 36.016552, 41.603390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774853, 36.007504, 41.540089>,  <30.160395, 35.992424, 41.434589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774853, 36.007504, 41.540089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058409, -0.935957, 0.347235,
		0.259947, 0.350090, 0.899925,
		-0.963855, 0.037699, 0.263748,
		29.485697, 36.018814, 41.619213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607111, 36.322716, 41.981678>,  <30.160395, 35.992424, 41.434589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607111, 36.322716, 41.981678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905914, 36.580677, 41.917084>,  <31.085196, 36.735455, 41.878326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905914, 36.580677, 41.917084>,  <30.607111, 36.322716, 41.981678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905914, 36.580677, 41.917084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260014, 0.506963, 0.821816,
		0.611863, -0.571912, 0.546388,
		0.747005, 0.644907, -0.161487,
		31.130016, 36.774147, 41.868637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071646, 36.262302, 42.546078>,  <30.607111, 36.322716, 41.981678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071646, 36.262302, 42.546078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.114573, 36.630630, 42.396103>,  <31.140329, 36.851627, 42.306118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.114573, 36.630630, 42.396103>,  <31.071646, 36.262302, 42.546078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114573, 36.630630, 42.396103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345371, 0.388154, 0.854432,
		0.932310, 0.037796, 0.359680,
		0.107317, 0.920819, -0.374934,
		31.146769, 36.906876, 42.283623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314602, 36.758877, 43.033493>,  <31.071646, 36.262302, 42.546078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314602, 36.758877, 43.033493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059147, 36.912525, 42.766781>,  <30.905874, 37.004715, 42.606754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059147, 36.912525, 42.766781>,  <31.314602, 36.758877, 43.033493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059147, 36.912525, 42.766781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534416, 0.402048, 0.743477,
		0.553664, 0.831147, -0.051480,
		-0.638636, 0.384124, -0.666778,
		30.867556, 37.027763, 42.566746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405712, 37.490055, 43.120811>,  <31.314602, 36.758877, 43.033493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405712, 37.490055, 43.120811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045290, 37.389023, 42.979786>,  <30.829037, 37.328403, 42.895172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045290, 37.389023, 42.979786>,  <31.405712, 37.490055, 43.120811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045290, 37.389023, 42.979786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423513, 0.337275, 0.840763,
		-0.093447, 0.906891, -0.410873,
		-0.901058, -0.252577, -0.352562,
		30.774973, 37.313251, 42.874016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879160, 37.958851, 43.361763>,  <31.405712, 37.490055, 43.120811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879160, 37.958851, 43.361763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660986, 37.646801, 43.239185>,  <30.530081, 37.459572, 43.165638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660986, 37.646801, 43.239185>,  <30.879160, 37.958851, 43.361763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660986, 37.646801, 43.239185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531408, 0.039140, 0.846211,
		-0.648156, 0.624399, -0.435913,
		-0.545435, -0.780124, -0.306442,
		30.497356, 37.412766, 43.147251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110260, 38.145981, 43.323547>,  <30.879160, 37.958851, 43.361763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110260, 38.145981, 43.323547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146854, 37.750633, 43.372135>,  <30.168812, 37.513424, 43.401287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146854, 37.750633, 43.372135>,  <30.110260, 38.145981, 43.323547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146854, 37.750633, 43.372135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469811, 0.064713, 0.880392,
		-0.878014, -0.137611, -0.458427,
		0.091485, -0.988370, 0.121469,
		30.174299, 37.454121, 43.408577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500307, 37.793518, 43.550034>,  <30.110260, 38.145981, 43.323547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500307, 37.793518, 43.550034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782986, 37.548473, 43.691616>,  <29.952593, 37.401447, 43.776566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782986, 37.548473, 43.691616>,  <29.500307, 37.793518, 43.550034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782986, 37.548473, 43.691616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428176, 0.027947, 0.903263,
		-0.563244, -0.789888, -0.242556,
		0.706698, -0.612614, 0.353952,
		29.994995, 37.364689, 43.797802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199036, 37.307346, 43.950726>,  <29.500307, 37.793518, 43.550034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199036, 37.307346, 43.950726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581524, 37.308804, 44.067780>,  <29.811016, 37.309677, 44.138012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581524, 37.308804, 44.067780>,  <29.199036, 37.307346, 43.950726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581524, 37.308804, 44.067780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291783, -0.065179, 0.954261,
		0.022548, -0.997867, -0.061264,
		0.956218, 0.003641, 0.292630,
		29.868389, 37.309895, 44.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117949, 37.080929, 44.673138>,  <29.199036, 37.307346, 43.950726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117949, 37.080929, 44.673138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507208, 37.160477, 44.626781>,  <29.740765, 37.208206, 44.598969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507208, 37.160477, 44.626781>,  <29.117949, 37.080929, 44.673138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507208, 37.160477, 44.626781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150416, -0.168352, 0.974183,
		0.174225, -0.965457, -0.193745,
		0.973150, 0.198869, -0.115889,
		29.799152, 37.220139, 44.592014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514677, 36.544216, 44.953159>,  <29.117949, 37.080929, 44.673138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514677, 36.544216, 44.953159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740299, 36.874409, 44.961395>,  <29.875673, 37.072525, 44.966335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740299, 36.874409, 44.961395>,  <29.514677, 36.544216, 44.953159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740299, 36.874409, 44.961395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214766, -0.170734, 0.961626,
		0.797317, -0.537991, -0.273589,
		0.564057, 0.825479, 0.020587,
		29.909517, 37.122051, 44.967571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358650, 36.485615, 45.102345>,  <29.514677, 36.544216, 44.953159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358650, 36.485615, 45.102345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188618, 36.831028, 45.210873>,  <30.086597, 37.038277, 45.275990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188618, 36.831028, 45.210873>,  <30.358650, 36.485615, 45.102345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188618, 36.831028, 45.210873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133696, -0.236565, 0.962373,
		0.895226, 0.445363, -0.014891,
		-0.425082, 0.863533, 0.271323,
		30.061092, 37.090088, 45.292271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883259, 36.573093, 45.571327>,  <30.358650, 36.485615, 45.102345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883259, 36.573093, 45.571327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551529, 36.760483, 45.693146>,  <30.352491, 36.872917, 45.766235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551529, 36.760483, 45.693146>,  <30.883259, 36.573093, 45.571327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551529, 36.760483, 45.693146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376029, 0.064772, 0.924341,
		0.413306, 0.881099, -0.229878,
		-0.829325, 0.468476, 0.304548,
		30.302731, 36.901024, 45.784512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198606, 37.107941, 45.984581>,  <30.883259, 36.573093, 45.571327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198606, 37.107941, 45.984581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810467, 37.079632, 46.077026>,  <30.577583, 37.062645, 46.132492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810467, 37.079632, 46.077026>,  <31.198606, 37.107941, 45.984581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810467, 37.079632, 46.077026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211674, 0.212776, 0.953898,
		-0.116683, 0.974535, -0.191486,
		-0.970350, -0.070771, 0.231111,
		30.519361, 37.058399, 46.146358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944296, 37.697029, 46.484581>,  <31.198606, 37.107941, 45.984581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944296, 37.697029, 46.484581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685474, 37.396599, 46.537041>,  <30.530182, 37.216339, 46.568516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685474, 37.396599, 46.537041>,  <30.944296, 37.697029, 46.484581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685474, 37.396599, 46.537041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123053, 0.066884, 0.990144,
		-0.752449, 0.656815, 0.049145,
		-0.647054, -0.751080, 0.131150,
		30.491358, 37.171276, 46.576385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367245, 37.772675, 47.001564>,  <30.944296, 37.697029, 46.484581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367245, 37.772675, 47.001564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475668, 37.387989, 46.985409>,  <30.540722, 37.157177, 46.975716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475668, 37.387989, 46.985409>,  <30.367245, 37.772675, 47.001564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475668, 37.387989, 46.985409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336081, 0.055239, 0.940212,
		-0.901985, -0.268425, 0.338187,
		0.271058, -0.961715, -0.040387,
		30.556986, 37.099476, 46.973293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158356, 37.574081, 47.586613>,  <30.367245, 37.772675, 47.001564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158356, 37.574081, 47.586613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403219, 37.269672, 47.500729>,  <30.550137, 37.087025, 47.449200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.403219, 37.269672, 47.500729>,  <30.158356, 37.574081, 47.586613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403219, 37.269672, 47.500729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376562, 0.041804, 0.925448,
		-0.695315, -0.647372, 0.312165,
		0.612159, -0.761027, -0.214709,
		30.586866, 37.041363, 47.436317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348114, 37.557159, 48.302414>,  <30.158356, 37.574081, 47.586613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348114, 37.557159, 48.302414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574366, 37.325859, 48.067230>,  <30.710115, 37.187080, 47.926121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574366, 37.325859, 48.067230>,  <30.348114, 37.557159, 48.302414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574366, 37.325859, 48.067230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600324, -0.200098, 0.774321,
		-0.565400, -0.790941, 0.233957,
		0.565627, -0.578250, -0.587956,
		30.744055, 37.152386, 47.890842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629900, 36.985279, 48.715668>,  <30.348114, 37.557159, 48.302414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629900, 36.985279, 48.715668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886593, 37.027679, 48.411842>,  <31.040609, 37.053120, 48.229546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886593, 37.027679, 48.411842>,  <30.629900, 36.985279, 48.715668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886593, 37.027679, 48.411842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758760, -0.231904, 0.608690,
		-0.111628, -0.966946, -0.229247,
		0.641734, 0.105997, -0.759567,
		31.079113, 37.059479, 48.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133232, 36.437454, 48.580357>,  <30.629900, 36.985279, 48.715668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133232, 36.437454, 48.580357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.293148, 36.796608, 48.506622>,  <31.389097, 37.012100, 48.462379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.293148, 36.796608, 48.506622>,  <31.133232, 36.437454, 48.580357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293148, 36.796608, 48.506622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775725, -0.224295, 0.589867,
		0.488283, -0.378818, -0.786178,
		0.399788, 0.897880, -0.184339,
		31.413084, 37.065971, 48.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619343, 35.718262, 48.500004>,  <31.133232, 36.437454, 48.580357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619343, 35.718262, 48.500004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731346, 35.399242, 48.713734>,  <31.798548, 35.207829, 48.841972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731346, 35.399242, 48.713734>,  <31.619343, 35.718262, 48.500004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731346, 35.399242, 48.713734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937392, 0.107074, -0.331407,
		0.207101, 0.593672, 0.777601,
		0.280008, -0.797552, 0.534329,
		31.815348, 35.159977, 48.874031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199776, 35.960800, 48.806206>,  <31.619343, 35.718262, 48.500004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199776, 35.960800, 48.806206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219543, 35.561306, 48.809914>,  <32.231403, 35.321609, 48.812138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219543, 35.561306, 48.809914>,  <32.199776, 35.960800, 48.806206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219543, 35.561306, 48.809914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953587, 0.044418, -0.297825,
		0.297036, 0.023554, 0.954576,
		0.049415, -0.998735, 0.009267,
		32.234367, 35.261684, 48.812695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838791, 35.831188, 49.149200>,  <32.199776, 35.960800, 48.806206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838791, 35.831188, 49.149200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749977, 35.496372, 48.949177>,  <32.696690, 35.295483, 48.829163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749977, 35.496372, 48.949177>,  <32.838791, 35.831188, 49.149200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749977, 35.496372, 48.949177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935757, -0.038828, -0.350500,
		0.273968, -0.545755, 0.791892,
		-0.222035, -0.837045, -0.500057,
		32.683365, 35.245258, 48.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432278, 35.385323, 49.168179>,  <32.838791, 35.831188, 49.149200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432278, 35.385323, 49.168179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231125, 35.274277, 48.840755>,  <33.110435, 35.207649, 48.644302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231125, 35.274277, 48.840755>,  <33.432278, 35.385323, 49.168179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231125, 35.274277, 48.840755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855917, -0.027919, -0.516359,
		0.120494, -0.960288, 0.251653,
		-0.502879, -0.277612, -0.818563,
		33.080261, 35.190994, 48.595188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877392, 34.834538, 48.861824>,  <33.432278, 35.385323, 49.168179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877392, 34.834538, 48.861824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631611, 34.951092, 48.568554>,  <33.484142, 35.021027, 48.392593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631611, 34.951092, 48.568554>,  <33.877392, 34.834538, 48.861824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631611, 34.951092, 48.568554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781564, 0.097920, -0.616093,
		-0.107730, -0.951580, -0.287906,
		-0.614453, 0.291389, -0.733171,
		33.447273, 35.038509, 48.348602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037037, 34.403088, 48.306412>,  <33.877392, 34.834538, 48.861824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037037, 34.403088, 48.306412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858284, 34.723568, 48.147224>,  <33.751034, 34.915855, 48.051712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858284, 34.723568, 48.147224>,  <34.037037, 34.403088, 48.306412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858284, 34.723568, 48.147224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767339, 0.114614, -0.630916,
		-0.459877, -0.587320, -0.666009,
		-0.446884, 0.801198, -0.397965,
		33.724220, 34.963928, 48.027836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138439, 34.226830, 47.602612>,  <34.037037, 34.403088, 48.306412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138439, 34.226830, 47.602612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063622, 34.617538, 47.644444>,  <34.018730, 34.851963, 47.669544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063622, 34.617538, 47.644444>,  <34.138439, 34.226830, 47.602612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063622, 34.617538, 47.644444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686677, 0.206136, -0.697124,
		-0.702487, -0.058583, -0.709282,
		-0.187048, 0.976768, 0.104580,
		34.007507, 34.910568, 47.675819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095730, 34.428925, 46.869629>,  <34.138439, 34.226830, 47.602612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095730, 34.428925, 46.869629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159279, 34.732883, 47.121761>,  <34.197407, 34.915257, 47.273041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159279, 34.732883, 47.121761>,  <34.095730, 34.428925, 46.869629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159279, 34.732883, 47.121761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723481, 0.344830, -0.598053,
		-0.671815, 0.551049, -0.494985,
		0.158871, 0.759893, 0.630335,
		34.206940, 34.960850, 47.310863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059723, 34.986691, 46.418758>,  <34.095730, 34.428925, 46.869629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059723, 34.986691, 46.418758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270130, 35.115448, 46.733639>,  <34.396374, 35.192703, 46.922569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270130, 35.115448, 46.733639>,  <34.059723, 34.986691, 46.418758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270130, 35.115448, 46.733639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744442, 0.273295, -0.609193,
		-0.411233, 0.906474, -0.095871,
		0.526017, 0.321891, 0.787205,
		34.427937, 35.212017, 46.969799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328300, 35.661400, 46.175739>,  <34.059723, 34.986691, 46.418758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328300, 35.661400, 46.175739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553257, 35.539021, 46.483017>,  <34.688229, 35.465591, 46.667381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553257, 35.539021, 46.483017>,  <34.328300, 35.661400, 46.175739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553257, 35.539021, 46.483017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826174, 0.169669, -0.537261,
		0.034038, 0.936807, 0.348188,
		0.562387, -0.305950, 0.768190,
		34.721973, 35.447235, 46.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925995, 36.176533, 46.261696>,  <34.328300, 35.661400, 46.175739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925995, 36.176533, 46.261696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015343, 35.843346, 46.464191>,  <35.068951, 35.643433, 46.585690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015343, 35.843346, 46.464191>,  <34.925995, 36.176533, 46.261696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015343, 35.843346, 46.464191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834925, -0.104507, -0.540350,
		0.502999, 0.543364, 0.672121,
		0.223366, -0.832967, 0.506236,
		35.082352, 35.593456, 46.616062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615070, 36.213875, 46.169239>,  <34.925995, 36.176533, 46.261696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615070, 36.213875, 46.169239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536205, 35.832077, 46.258743>,  <35.488888, 35.602997, 46.312447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536205, 35.832077, 46.258743>,  <35.615070, 36.213875, 46.169239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536205, 35.832077, 46.258743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724845, -0.295601, -0.622270,
		0.660098, 0.039506, 0.750140,
		-0.197158, -0.954494, 0.223761,
		35.477058, 35.545731, 46.325871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255108, 36.045601, 46.307892>,  <35.615070, 36.213875, 46.169239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255108, 36.045601, 46.307892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041512, 35.712418, 46.249886>,  <35.913353, 35.512508, 46.215080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041512, 35.712418, 46.249886>,  <36.255108, 36.045601, 46.307892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041512, 35.712418, 46.249886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740086, -0.377565, -0.556522,
		0.408807, -0.404504, 0.818079,
		-0.533993, -0.832959, -0.145016,
		35.881313, 35.462528, 46.206379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634563, 35.407810, 46.530003>,  <36.255108, 36.045601, 46.307892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634563, 35.407810, 46.530003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373234, 35.304142, 46.245468>,  <36.216434, 35.241940, 46.074749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373234, 35.304142, 46.245468>,  <36.634563, 35.407810, 46.530003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373234, 35.304142, 46.245468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720771, -0.500395, -0.479681,
		-0.231629, -0.826097, 0.513723,
		-0.653327, -0.259169, -0.711333,
		36.177235, 35.226391, 46.032066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700558, 34.705856, 46.393200>,  <36.634563, 35.407810, 46.530003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700558, 34.705856, 46.393200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555447, 34.869171, 46.058132>,  <36.468380, 34.967159, 45.857090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555447, 34.869171, 46.058132>,  <36.700558, 34.705856, 46.393200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555447, 34.869171, 46.058132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695826, -0.479240, -0.534934,
		-0.619852, -0.776937, -0.110239,
		-0.362779, 0.408288, -0.837671,
		36.446613, 34.991657, 45.806831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336544, 34.863384, 46.653797>,  <36.700558, 34.705856, 46.393200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336544, 34.863384, 46.653797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316387, 34.657936, 46.311180>,  <37.304295, 34.534668, 46.105610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316387, 34.657936, 46.311180>,  <37.336544, 34.863384, 46.653797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316387, 34.657936, 46.311180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972117, 0.171439, -0.159995,
		0.229020, -0.840717, 0.490657,
		-0.050393, -0.513618, -0.856538,
		37.301270, 34.503849, 46.054218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008263, 35.080887, 46.317081>,  <37.336544, 34.863384, 46.653797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008263, 35.080887, 46.317081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850922, 34.753292, 46.149971>,  <37.756516, 34.556736, 46.049706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850922, 34.753292, 46.149971>,  <38.008263, 35.080887, 46.317081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850922, 34.753292, 46.149971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917113, -0.317590, -0.240918,
		0.064625, -0.477916, 0.876025,
		-0.393355, -0.818983, -0.417779,
		37.732914, 34.507599, 46.024639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101891, 35.418449, 46.946373>,  <38.008263, 35.080887, 46.317081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101891, 35.418449, 46.946373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279102, 35.064926, 47.006512>,  <38.385429, 34.852810, 47.042595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279102, 35.064926, 47.006512>,  <38.101891, 35.418449, 46.946373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279102, 35.064926, 47.006512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894526, -0.446934, 0.008628,
		0.059570, -0.138311, -0.988596,
		0.443030, -0.883810, 0.150347,
		38.412010, 34.799782, 47.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791550, 35.470840, 47.442970>,  <38.101891, 35.418449, 46.946373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791550, 35.470840, 47.442970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569054, 35.197826, 47.632595>,  <38.435555, 35.034016, 47.746368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569054, 35.197826, 47.632595>,  <38.791550, 35.470840, 47.442970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569054, 35.197826, 47.632595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758068, -0.183023, 0.625967,
		-0.340483, 0.707561, 0.619217,
		-0.556241, -0.682539, 0.474063,
		38.402180, 34.993065, 47.774815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778625, 35.588970, 48.226444>,  <38.791550, 35.470840, 47.442970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778625, 35.588970, 48.226444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724197, 35.200405, 48.148640>,  <38.691540, 34.967266, 48.101955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724197, 35.200405, 48.148640>,  <38.778625, 35.588970, 48.226444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724197, 35.200405, 48.148640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541781, -0.237340, 0.806314,
		-0.829433, 0.004331, 0.558590,
		-0.136068, -0.971417, -0.194511,
		38.683376, 34.908981, 48.090286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447170, 35.167492, 48.739437>,  <38.778625, 35.588970, 48.226444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447170, 35.167492, 48.739437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710739, 34.969604, 48.512783>,  <38.868881, 34.850872, 48.376793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710739, 34.969604, 48.512783>,  <38.447170, 35.167492, 48.739437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710739, 34.969604, 48.512783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621122, -0.067059, 0.780840,
		-0.424294, -0.866462, 0.263094,
		0.658925, -0.494719, -0.566631,
		38.908417, 34.821190, 48.342793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607498, 34.529648, 49.130028>,  <38.447170, 35.167492, 48.739437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607498, 34.529648, 49.130028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895874, 34.674217, 48.893513>,  <39.068901, 34.760960, 48.751606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895874, 34.674217, 48.893513>,  <38.607498, 34.529648, 49.130028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895874, 34.674217, 48.893513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642150, -0.027612, 0.766082,
		0.260554, -0.931993, -0.251996,
		0.720941, 0.361424, -0.591284,
		39.112156, 34.782646, 48.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087360, 34.021858, 49.241680>,  <38.607498, 34.529648, 49.130028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087360, 34.021858, 49.241680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798115, 34.282078, 49.334541>,  <37.624569, 34.438210, 49.390259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798115, 34.282078, 49.334541>,  <38.087360, 34.021858, 49.241680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798115, 34.282078, 49.334541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081458, -0.253443, 0.963915,
		0.685908, 0.715932, 0.130276,
		-0.723115, 0.650545, 0.232157,
		37.581181, 34.477242, 49.404190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204746, 34.061760, 49.891678>,  <38.087360, 34.021858, 49.241680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204746, 34.061760, 49.891678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844669, 34.227917, 49.839371>,  <37.628624, 34.327610, 49.807987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844669, 34.227917, 49.839371>,  <38.204746, 34.061760, 49.891678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844669, 34.227917, 49.839371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238405, -0.218764, 0.946206,
		0.364439, 0.882944, 0.295962,
		-0.900193, 0.415394, -0.130772,
		37.574612, 34.352535, 49.800140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021297, 34.464504, 50.474838>,  <38.204746, 34.061760, 49.891678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021297, 34.464504, 50.474838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643036, 34.432415, 50.348793>,  <37.416077, 34.413162, 50.273167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643036, 34.432415, 50.348793>,  <38.021297, 34.464504, 50.474838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643036, 34.432415, 50.348793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286571, -0.252328, 0.924234,
		-0.153658, 0.964310, 0.215626,
		-0.945657, -0.080224, -0.315115,
		37.359341, 34.408348, 50.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479118, 34.877827, 50.941727>,  <38.021297, 34.464504, 50.474838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479118, 34.877827, 50.941727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289532, 34.575081, 50.761723>,  <37.175777, 34.393433, 50.653721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289532, 34.575081, 50.761723>,  <37.479118, 34.877827, 50.941727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289532, 34.575081, 50.761723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410707, -0.262044, 0.873300,
		-0.778892, 0.598740, -0.186649,
		-0.473969, -0.756864, -0.450011,
		37.147343, 34.348022, 50.626720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855568, 34.927715, 51.253605>,  <37.479118, 34.877827, 50.941727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855568, 34.927715, 51.253605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851440, 34.558132, 51.100662>,  <36.848965, 34.336384, 51.008896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851440, 34.558132, 51.100662>,  <36.855568, 34.927715, 51.253605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851440, 34.558132, 51.100662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386864, -0.348914, 0.853578,
		-0.922079, 0.156727, -0.353845,
		-0.010318, -0.923956, -0.382358,
		36.848347, 34.280945, 50.985954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097996, 34.633255, 51.258686>,  <36.855568, 34.927715, 51.253605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097996, 34.633255, 51.258686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379326, 34.348927, 51.255180>,  <36.548122, 34.178329, 51.253075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379326, 34.348927, 51.255180>,  <36.097996, 34.633255, 51.258686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379326, 34.348927, 51.255180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426341, -0.431652, 0.794928,
		-0.568835, -0.555351, -0.606641,
		0.703321, -0.710818, -0.008770,
		36.590321, 34.135681, 51.252548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764542, 33.918636, 51.264057>,  <36.097996, 34.633255, 51.258686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764542, 33.918636, 51.264057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127338, 33.867657, 51.424614>,  <36.345016, 33.837070, 51.520947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127338, 33.867657, 51.424614>,  <35.764542, 33.918636, 51.264057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127338, 33.867657, 51.424614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393360, -0.596796, 0.699359,
		0.150421, -0.792207, -0.591423,
		0.906996, -0.127444, 0.401393,
		36.399437, 33.829422, 51.545033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712158, 33.335789, 51.685829>,  <35.764542, 33.918636, 51.264057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712158, 33.335789, 51.685829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057644, 33.471344, 51.835041>,  <36.264935, 33.552677, 51.924568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057644, 33.471344, 51.835041>,  <35.712158, 33.335789, 51.685829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057644, 33.471344, 51.835041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304449, -0.239011, 0.922055,
		0.401628, -0.909962, -0.103265,
		0.863716, 0.338884, 0.373030,
		36.316757, 33.573009, 51.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921329, 32.838589, 52.268795>,  <35.712158, 33.335789, 51.685829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921329, 32.838589, 52.268795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125546, 33.174454, 52.342896>,  <36.248077, 33.375973, 52.387356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125546, 33.174454, 52.342896>,  <35.921329, 32.838589, 52.268795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125546, 33.174454, 52.342896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236641, -0.069918, 0.969078,
		0.826648, -0.538594, 0.163002,
		0.510543, 0.839660, 0.185251,
		36.278709, 33.426353, 52.398472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291988, 32.625961, 52.853046>,  <35.921329, 32.838589, 52.268795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291988, 32.625961, 52.853046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320492, 33.024895, 52.859245>,  <36.337593, 33.264256, 52.862965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320492, 33.024895, 52.859245>,  <36.291988, 32.625961, 52.853046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320492, 33.024895, 52.859245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259852, 0.003558, 0.965642,
		0.963016, -0.072838, 0.259414,
		0.071258, 0.997338, 0.015500,
		36.341869, 33.324097, 52.863895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693535, 32.814064, 53.431480>,  <36.291988, 32.625961, 52.853046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693535, 32.814064, 53.431480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483768, 33.146610, 53.357922>,  <36.357910, 33.346138, 53.313786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483768, 33.146610, 53.357922>,  <36.693535, 32.814064, 53.431480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483768, 33.146610, 53.357922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167908, 0.110768, 0.979560,
		0.834744, 0.544573, 0.081504,
		-0.524414, 0.831367, -0.183901,
		36.326443, 33.396019, 53.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990334, 33.289719, 53.940044>,  <36.693535, 32.814064, 53.431480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990334, 33.289719, 53.940044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622471, 33.417267, 53.848343>,  <36.401752, 33.493797, 53.793324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622471, 33.417267, 53.848343>,  <36.990334, 33.289719, 53.940044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622471, 33.417267, 53.848343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139413, 0.280646, 0.949632,
		0.367151, 0.905294, -0.213642,
		-0.919654, 0.318874, -0.229250,
		36.346573, 33.512928, 53.779568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897629, 33.841751, 54.391396>,  <36.990334, 33.289719, 53.940044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897629, 33.841751, 54.391396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531967, 33.766968, 54.247524>,  <36.312569, 33.722095, 54.161201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531967, 33.766968, 54.247524>,  <36.897629, 33.841751, 54.391396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531967, 33.766968, 54.247524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402430, 0.311963, 0.860656,
		-0.048703, 0.931518, -0.360421,
		-0.914155, -0.186961, -0.359677,
		36.257721, 33.710880, 54.139622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579430, 34.348534, 54.627541>,  <36.897629, 33.841751, 54.391396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579430, 34.348534, 54.627541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280384, 34.099167, 54.535946>,  <36.100956, 33.949547, 54.480991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280384, 34.099167, 54.535946>,  <36.579430, 34.348534, 54.627541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280384, 34.099167, 54.535946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397505, 0.143821, 0.906259,
		-0.532041, 0.768551, -0.355332,
		-0.747610, -0.623414, -0.228985,
		36.056103, 33.912144, 54.467251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036140, 34.627956, 55.020687>,  <36.579430, 34.348534, 54.627541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036140, 34.627956, 55.020687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902496, 34.257767, 54.949276>,  <35.822308, 34.035652, 54.906429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902496, 34.257767, 54.949276>,  <36.036140, 34.627956, 55.020687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902496, 34.257767, 54.949276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469878, -0.000644, 0.882731,
		-0.817058, 0.378817, -0.434643,
		-0.334114, -0.925471, -0.178523,
		35.802261, 33.980125, 54.895718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451260, 34.591110, 55.307793>,  <36.036140, 34.627956, 55.020687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451260, 34.591110, 55.307793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537094, 34.200989, 55.286880>,  <35.588593, 33.966915, 55.274334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537094, 34.200989, 55.286880>,  <35.451260, 34.591110, 55.307793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537094, 34.200989, 55.286880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302342, -0.117232, 0.945963,
		-0.928732, -0.187181, -0.320032,
		0.214584, -0.975305, -0.052284,
		35.601471, 33.908398, 55.271194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886150, 34.169487, 55.525608>,  <35.451260, 34.591110, 55.307793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886150, 34.169487, 55.525608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174362, 33.896080, 55.572334>,  <35.347290, 33.732037, 55.600368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174362, 33.896080, 55.572334>,  <34.886150, 34.169487, 55.525608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174362, 33.896080, 55.572334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351666, -0.215001, 0.911101,
		-0.597638, -0.697553, -0.395284,
		0.720528, -0.683516, 0.116812,
		35.390522, 33.691025, 55.607376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505756, 33.583893, 55.804214>,  <34.886150, 34.169487, 55.525608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505756, 33.583893, 55.804214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895134, 33.572998, 55.895130>,  <35.128761, 33.566463, 55.949680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895134, 33.572998, 55.895130>,  <34.505756, 33.583893, 55.804214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895134, 33.572998, 55.895130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225446, 0.058104, 0.972521,
		-0.039691, -0.997939, 0.050421,
		0.973447, -0.027233, 0.227288,
		35.187168, 33.564827, 55.963318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620514, 33.067997, 56.374176>,  <34.505756, 33.583893, 55.804214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620514, 33.067997, 56.374176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940453, 33.307991, 56.367683>,  <35.132416, 33.451988, 56.363789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940453, 33.307991, 56.367683>,  <34.620514, 33.067997, 56.374176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940453, 33.307991, 56.367683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186908, 0.274679, 0.943195,
		0.570361, -0.751378, 0.331844,
		0.799846, 0.599986, -0.016228,
		35.180405, 33.487988, 56.362816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893673, 32.922707, 57.014549>,  <34.620514, 33.067997, 56.374176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893673, 32.922707, 57.014549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052280, 33.278259, 56.922760>,  <35.147446, 33.491592, 56.867687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052280, 33.278259, 56.922760>,  <34.893673, 32.922707, 57.014549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052280, 33.278259, 56.922760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363042, 0.381414, 0.850132,
		0.843193, -0.253784, 0.473940,
		0.396517, 0.888885, -0.229471,
		35.171234, 33.544926, 56.853920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326618, 33.118801, 57.642605>,  <34.893673, 32.922707, 57.014549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326618, 33.118801, 57.642605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243282, 33.464516, 57.459476>,  <35.193279, 33.671944, 57.349602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243282, 33.464516, 57.459476>,  <35.326618, 33.118801, 57.642605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243282, 33.464516, 57.459476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288164, 0.393069, 0.873188,
		0.934642, 0.313849, 0.167164,
		-0.208342, 0.864289, -0.457819,
		35.180779, 33.723801, 57.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593849, 33.676033, 58.053879>,  <35.326618, 33.118801, 57.642605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593849, 33.676033, 58.053879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302612, 33.833271, 57.829254>,  <35.127869, 33.927616, 57.694477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302612, 33.833271, 57.829254>,  <35.593849, 33.676033, 58.053879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302612, 33.833271, 57.829254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143767, 0.713438, 0.685812,
		0.670233, 0.580069, -0.462934,
		-0.728093, 0.393099, -0.561564,
		35.084183, 33.951202, 57.660786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654224, 34.358368, 58.159809>,  <35.593849, 33.676033, 58.053879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654224, 34.358368, 58.159809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288586, 34.346100, 57.998070>,  <35.069202, 34.338741, 57.901028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288586, 34.346100, 57.998070>,  <35.654224, 34.358368, 58.159809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288586, 34.346100, 57.998070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310231, 0.695019, 0.648618,
		0.261136, 0.718337, -0.644826,
		-0.914092, -0.030667, -0.404345,
		35.014359, 34.336899, 57.876766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496456, 34.994625, 58.009033>,  <35.654224, 34.358368, 58.159809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496456, 34.994625, 58.009033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137917, 34.817421, 58.015869>,  <34.922791, 34.711098, 58.019970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137917, 34.817421, 58.015869>,  <35.496456, 34.994625, 58.009033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137917, 34.817421, 58.015869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350625, 0.731954, 0.584213,
		-0.271322, 0.517669, -0.811420,
		-0.896352, -0.443014, 0.017088,
		34.869011, 34.684517, 58.020996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957745, 35.427303, 57.957516>,  <35.496456, 34.994625, 58.009033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957745, 35.427303, 57.957516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747749, 35.117958, 58.099670>,  <34.621754, 34.932350, 58.184963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747749, 35.117958, 58.099670>,  <34.957745, 35.427303, 57.957516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747749, 35.117958, 58.099670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525478, 0.622991, 0.579443,
		-0.669522, 0.117452, -0.733447,
		-0.524988, -0.773360, 0.355388,
		34.590252, 34.885948, 58.206287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313351, 35.764057, 58.063122>,  <34.957745, 35.427303, 57.957516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313351, 35.764057, 58.063122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324829, 35.437454, 58.293774>,  <34.331718, 35.241493, 58.432163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324829, 35.437454, 58.293774>,  <34.313351, 35.764057, 58.063122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324829, 35.437454, 58.293774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485516, 0.492860, 0.722055,
		-0.873757, -0.300683, -0.382281,
		0.028699, -0.816504, 0.576626,
		34.333439, 35.192505, 58.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761395, 35.853958, 58.398701>,  <34.313351, 35.764057, 58.063122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761395, 35.853958, 58.398701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937656, 35.562302, 58.608147>,  <34.043415, 35.387306, 58.733814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937656, 35.562302, 58.608147>,  <33.761395, 35.853958, 58.398701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937656, 35.562302, 58.608147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331989, 0.409577, 0.849724,
		-0.834031, -0.548270, -0.061586,
		0.440654, -0.729141, 0.523619,
		34.069851, 35.343559, 58.765232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204277, 35.616138, 58.803066>,  <33.761395, 35.853958, 58.398701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204277, 35.616138, 58.803066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543015, 35.541565, 59.002304>,  <33.746258, 35.496819, 59.121845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543015, 35.541565, 59.002304>,  <33.204277, 35.616138, 58.803066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543015, 35.541565, 59.002304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419011, 0.342897, 0.840744,
		-0.327539, -0.920686, 0.212262,
		0.846846, -0.186437, 0.498090,
		33.797070, 35.485634, 59.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061565, 35.239628, 59.438137>,  <33.204277, 35.616138, 58.803066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061565, 35.239628, 59.438137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423420, 35.399277, 59.497906>,  <33.640533, 35.495068, 59.533768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423420, 35.399277, 59.497906>,  <33.061565, 35.239628, 59.438137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423420, 35.399277, 59.497906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257121, 0.231541, 0.938231,
		0.339876, -0.887180, 0.312085,
		0.904640, 0.399126, 0.149417,
		33.694813, 35.519012, 59.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206059, 34.999668, 60.089821>,  <33.061565, 35.239628, 59.438137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206059, 34.999668, 60.089821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459671, 35.295986, 60.001068>,  <33.611839, 35.473778, 59.947815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459671, 35.295986, 60.001068>,  <33.206059, 34.999668, 60.089821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459671, 35.295986, 60.001068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015832, 0.299301, 0.954027,
		0.773147, -0.601369, 0.201494,
		0.634030, 0.740793, -0.221883,
		33.649879, 35.518223, 59.934502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387333, 35.183468, 60.708710>,  <33.206059, 34.999668, 60.089821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387333, 35.183468, 60.708710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534184, 35.487648, 60.494446>,  <33.622292, 35.670158, 60.365887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534184, 35.487648, 60.494446>,  <33.387333, 35.183468, 60.708710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534184, 35.487648, 60.494446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019213, 0.581946, 0.813000,
		0.929974, -0.288180, 0.228257,
		0.367123, 0.760454, -0.535658,
		33.644321, 35.715786, 60.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007816, 35.413952, 60.949764>,  <33.387333, 35.183468, 60.708710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007816, 35.413952, 60.949764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830944, 35.716503, 60.756947>,  <33.724823, 35.898033, 60.641254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830944, 35.716503, 60.756947>,  <34.007816, 35.413952, 60.949764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830944, 35.716503, 60.756947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093220, 0.495775, 0.863433,
		0.892071, 0.426726, -0.148710,
		-0.442176, 0.756381, -0.482046,
		33.698292, 35.943417, 60.612331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313908, 36.057766, 61.176975>,  <34.007816, 35.413952, 60.949764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313908, 36.057766, 61.176975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938496, 36.103153, 61.046570>,  <33.713249, 36.130386, 60.968327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938496, 36.103153, 61.046570>,  <34.313908, 36.057766, 61.176975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938496, 36.103153, 61.046570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212956, 0.552980, 0.805520,
		0.271681, 0.825432, -0.494825,
		-0.938531, 0.113468, -0.326015,
		33.656937, 36.137196, 60.948765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136547, 36.707218, 61.496674>,  <34.313908, 36.057766, 61.176975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136547, 36.707218, 61.496674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773857, 36.611855, 61.357521>,  <33.556244, 36.554638, 61.274029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773857, 36.611855, 61.357521>,  <34.136547, 36.707218, 61.496674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773857, 36.611855, 61.357521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420038, 0.584351, 0.694336,
		0.037748, 0.775691, -0.629983,
		-0.906721, -0.238407, -0.347878,
		33.501842, 36.540333, 61.253159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791058, 37.314236, 61.396519>,  <34.136547, 36.707218, 61.496674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791058, 37.314236, 61.396519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.510105, 37.030163, 61.415741>,  <33.341534, 36.859718, 61.427277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.510105, 37.030163, 61.415741>,  <33.791058, 37.314236, 61.396519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510105, 37.030163, 61.415741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454730, 0.499627, 0.737288,
		-0.547619, 0.496000, -0.673867,
		-0.702377, -0.710181, 0.048059,
		33.299393, 36.817108, 61.430161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080948, 37.656803, 61.410870>,  <33.791058, 37.314236, 61.396519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080948, 37.656803, 61.410870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050514, 37.283760, 61.551983>,  <33.032253, 37.059937, 61.636650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050514, 37.283760, 61.551983>,  <33.080948, 37.656803, 61.410870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050514, 37.283760, 61.551983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739236, 0.290195, 0.607714,
		-0.669134, -0.214555, -0.711495,
		-0.076085, -0.932605, 0.352787,
		33.027687, 37.003979, 61.657818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413746, 37.560913, 61.642460>,  <33.080948, 37.656803, 61.410870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413746, 37.560913, 61.642460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556984, 37.255337, 61.857182>,  <32.642925, 37.071991, 61.986015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556984, 37.255337, 61.857182>,  <32.413746, 37.560913, 61.642460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556984, 37.255337, 61.857182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520017, 0.314319, 0.794220,
		-0.775467, -0.563553, -0.284708,
		0.358096, -0.763945, 0.536801,
		32.664413, 37.026154, 62.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789780, 37.364182, 61.992088>,  <32.413746, 37.560913, 61.642460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789780, 37.364182, 61.992088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097137, 37.221111, 62.204365>,  <32.281551, 37.135269, 62.331730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097137, 37.221111, 62.204365>,  <31.789780, 37.364182, 61.992088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097137, 37.221111, 62.204365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545215, 0.068376, 0.835503,
		-0.335127, -0.931339, -0.142471,
		0.768395, -0.357677, 0.530694,
		32.327656, 37.113808, 62.363575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485975, 37.060459, 62.538643>,  <31.789780, 37.364182, 61.992088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485975, 37.060459, 62.538643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.865749, 37.155815, 62.620369>,  <32.093613, 37.213028, 62.669403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.865749, 37.155815, 62.620369>,  <31.485975, 37.060459, 62.538643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865749, 37.155815, 62.620369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275498, 0.320456, 0.906316,
		0.150579, -0.916777, 0.369927,
		0.949435, 0.238386, 0.204316,
		32.150581, 37.227333, 62.681664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491282, 37.101822, 63.263382>,  <31.485975, 37.060459, 62.538643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491282, 37.101822, 63.263382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842188, 37.263901, 63.160450>,  <32.052731, 37.361149, 63.098690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842188, 37.263901, 63.160450>,  <31.491282, 37.101822, 63.263382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842188, 37.263901, 63.160450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062940, 0.434370, 0.898533,
		0.475870, -0.804444, 0.355552,
		0.877261, 0.405206, -0.257335,
		32.105366, 37.385460, 63.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088123, 36.869831, 63.750450>,  <31.491282, 37.101822, 63.263382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088123, 36.869831, 63.750450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237457, 37.218082, 63.622314>,  <32.327057, 37.427032, 63.545433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237457, 37.218082, 63.622314>,  <32.088123, 36.869831, 63.750450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237457, 37.218082, 63.622314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099274, 0.380822, 0.919304,
		0.922369, -0.311409, 0.228606,
		0.373337, 0.870632, -0.320344,
		32.349457, 37.479271, 63.526211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580376, 36.938122, 64.114853>,  <32.088123, 36.869831, 63.750450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580376, 36.938122, 64.114853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415833, 37.277451, 63.981503>,  <32.317104, 37.481049, 63.901493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415833, 37.277451, 63.981503>,  <32.580376, 36.938122, 64.114853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415833, 37.277451, 63.981503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149643, 0.297930, 0.942785,
		0.899104, 0.437713, 0.004388,
		-0.411362, 0.848319, -0.333371,
		32.292423, 37.531948, 63.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871002, 37.608215, 64.563828>,  <32.580376, 36.938122, 64.114853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871002, 37.608215, 64.563828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501907, 37.639069, 64.412781>,  <32.280449, 37.657581, 64.322151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501907, 37.639069, 64.412781>,  <32.871002, 37.608215, 64.563828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501907, 37.639069, 64.412781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324741, 0.372115, 0.869525,
		0.207590, 0.924976, -0.318317,
		-0.922741, 0.077134, -0.377625,
		32.225086, 37.662209, 64.299492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649815, 38.314907, 64.561546>,  <32.871002, 37.608215, 64.563828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649815, 38.314907, 64.561546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332077, 38.084415, 64.638466>,  <32.141434, 37.946121, 64.684616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332077, 38.084415, 64.638466>,  <32.649815, 38.314907, 64.561546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332077, 38.084415, 64.638466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094929, 0.430409, 0.897628,
		-0.600003, 0.694773, -0.396595,
		-0.794345, -0.576228, 0.192292,
		32.093773, 37.911549, 64.696152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271923, 38.284687, 64.963081>,  <32.649815, 38.314907, 64.561546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271923, 38.284687, 64.963081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950474, 38.474041, 65.107353>,  <32.757603, 38.587654, 65.193916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950474, 38.474041, 65.107353>,  <33.271923, 38.284687, 64.963081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950474, 38.474041, 65.107353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351886, 0.110797, -0.929462,
		-0.479958, -0.873858, 0.077540,
		-0.803627, 0.473388, 0.360676,
		32.709385, 38.616058, 65.215553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002106, 38.961811, 64.929993>,  <33.271923, 38.284687, 64.963081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002106, 38.961811, 64.929993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367931, 39.122169, 64.951393>,  <33.587425, 39.218384, 64.964233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367931, 39.122169, 64.951393>,  <33.002106, 38.961811, 64.929993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367931, 39.122169, 64.951393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206059, 0.348023, 0.914560,
		0.348023, -0.847445, 0.400896,
		-0.914560, -0.400896, -0.053504,
		33.642300, 39.242439, 64.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384270, 39.121639, 65.294693>,  <33.002106, 38.961811, 64.929993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384270, 39.121639, 65.294693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000912, 39.234840, 65.309540>,  <31.770895, 39.302761, 65.318451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000912, 39.234840, 65.309540>,  <32.384270, 39.121639, 65.294693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000912, 39.234840, 65.309540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055813, 0.313367, -0.947991,
		-0.279921, -0.906482, -0.316126,
		-0.958399, 0.283006, 0.037124,
		31.713392, 39.319744, 65.320679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931513, 38.744919, 64.886055>,  <32.384270, 39.121639, 65.294693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931513, 38.744919, 64.886055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833029, 39.132305, 64.901268>,  <31.773939, 39.364738, 64.910393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833029, 39.132305, 64.901268>,  <31.931513, 38.744919, 64.886055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833029, 39.132305, 64.901268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067592, 0.056295, -0.996123,
		-0.966857, -0.242685, -0.079321,
		-0.246210, 0.968470, 0.038026,
		31.759165, 39.422848, 64.912674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440496, 38.850044, 64.378227>,  <31.931513, 38.744919, 64.886055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440496, 38.850044, 64.378227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646585, 39.183502, 64.457809>,  <31.770239, 39.383579, 64.505554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646585, 39.183502, 64.457809>,  <31.440496, 38.850044, 64.378227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646585, 39.183502, 64.457809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250911, 0.075243, -0.965081,
		-0.819506, 0.547148, -0.170405,
		0.515221, 0.833647, 0.198948,
		31.801151, 39.433598, 64.517494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250446, 39.274952, 63.897308>,  <31.440496, 38.850044, 64.378227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250446, 39.274952, 63.897308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598295, 39.419041, 64.032364>,  <31.807005, 39.505493, 64.113396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598295, 39.419041, 64.032364>,  <31.250446, 39.274952, 63.897308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598295, 39.419041, 64.032364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350028, 0.032462, -0.936177,
		-0.348195, 0.932300, -0.097860,
		0.869621, 0.360226, 0.337634,
		31.859182, 39.527107, 64.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452839, 39.962051, 63.729393>,  <31.250446, 39.274952, 63.897308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452839, 39.962051, 63.729393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796803, 39.762566, 63.772915>,  <32.003181, 39.642872, 63.799026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796803, 39.762566, 63.772915>,  <31.452839, 39.962051, 63.729393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796803, 39.762566, 63.772915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183653, 0.103392, -0.977539,
		0.476265, 0.860577, 0.180498,
		0.859909, -0.498716, 0.108805,
		32.054775, 39.612949, 63.805557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124435, 40.367744, 63.649006>,  <31.452839, 39.962051, 63.729393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124435, 40.367744, 63.649006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193756, 39.984550, 63.557583>,  <32.235348, 39.754635, 63.502731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193756, 39.984550, 63.557583>,  <32.124435, 40.367744, 63.649006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193756, 39.984550, 63.557583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021707, 0.235726, -0.971577,
		0.984629, 0.163415, 0.061647,
		0.173303, -0.957982, -0.228555,
		32.245747, 39.697155, 63.489017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715584, 40.372456, 63.142681>,  <32.124435, 40.367744, 63.649006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715584, 40.372456, 63.142681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539486, 40.014202, 63.117294>,  <32.433826, 39.799252, 63.102062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539486, 40.014202, 63.117294>,  <32.715584, 40.372456, 63.142681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539486, 40.014202, 63.117294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056949, 0.042685, -0.997464,
		0.896071, -0.442740, 0.032213,
		-0.440242, -0.895634, -0.063463,
		32.407413, 39.745514, 63.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211109, 39.861584, 62.766315>,  <32.715584, 40.372456, 63.142681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211109, 39.861584, 62.766315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822083, 39.775967, 62.729877>,  <32.588665, 39.724598, 62.708015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822083, 39.775967, 62.729877>,  <33.211109, 39.861584, 62.766315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822083, 39.775967, 62.729877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055318, 0.167569, -0.984307,
		0.225948, -0.962344, -0.151132,
		-0.972567, -0.214042, -0.091096,
		32.530312, 39.711754, 62.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249985, 39.535599, 62.128147>,  <33.211109, 39.861584, 62.766315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249985, 39.535599, 62.128147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856770, 39.576237, 62.189228>,  <32.620842, 39.600620, 62.225876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856770, 39.576237, 62.189228>,  <33.249985, 39.535599, 62.128147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856770, 39.576237, 62.189228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141106, 0.112941, -0.983531,
		-0.117172, -0.988394, -0.096689,
		-0.983036, 0.101599, 0.152701,
		32.561859, 39.606716, 62.235039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929138, 38.996754, 61.729973>,  <33.249985, 39.535599, 62.128147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929138, 38.996754, 61.729973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662964, 39.282654, 61.816078>,  <32.503262, 39.454193, 61.867741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662964, 39.282654, 61.816078>,  <32.929138, 38.996754, 61.729973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662964, 39.282654, 61.816078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095449, 0.204537, -0.974194,
		-0.740332, -0.668805, -0.067883,
		-0.665431, 0.714747, 0.215262,
		32.463333, 39.497078, 61.880657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353355, 38.782913, 61.365257>,  <32.929138, 38.996754, 61.729973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353355, 38.782913, 61.365257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293644, 39.174454, 61.421204>,  <32.257816, 39.409378, 61.454773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293644, 39.174454, 61.421204>,  <32.353355, 38.782913, 61.365257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293644, 39.174454, 61.421204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074138, 0.129974, -0.988742,
		-0.986012, -0.157966, 0.053168,
		-0.149277, 0.978853, 0.139868,
		32.248859, 39.468109, 61.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572578, 39.027248, 61.100616>,  <32.353355, 38.782913, 61.365257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572578, 39.027248, 61.100616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855677, 39.309834, 61.099567>,  <32.025536, 39.479385, 61.098938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855677, 39.309834, 61.099567>,  <31.572578, 39.027248, 61.100616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855677, 39.309834, 61.099567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215310, 0.212159, -0.953221,
		-0.672856, 0.675206, 0.302262,
		0.707748, 0.706460, -0.002626,
		32.068001, 39.521770, 61.098778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215773, 39.672733, 60.840843>,  <31.572578, 39.027248, 61.100616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215773, 39.672733, 60.840843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610771, 39.730228, 60.814953>,  <31.847771, 39.764725, 60.799419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610771, 39.730228, 60.814953>,  <31.215773, 39.672733, 60.840843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610771, 39.730228, 60.814953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108142, 0.319003, -0.941564,
		-0.114688, 0.936791, 0.330559,
		0.987498, 0.143733, -0.064721,
		31.907021, 39.773350, 60.795536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315226, 40.352859, 60.516949>,  <31.215773, 39.672733, 60.840843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315226, 40.352859, 60.516949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644123, 40.133774, 60.455078>,  <31.841461, 40.002323, 60.417957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644123, 40.133774, 60.455078>,  <31.315226, 40.352859, 60.516949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644123, 40.133774, 60.455078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118626, 0.100871, -0.987802,
		0.556639, 0.830560, 0.017967,
		0.822241, -0.547718, -0.154675,
		31.890795, 39.969460, 60.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532124, 40.606583, 59.898510>,  <31.315226, 40.352859, 60.516949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532124, 40.606583, 59.898510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766230, 40.283356, 59.925320>,  <31.906694, 40.089420, 59.941406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766230, 40.283356, 59.925320>,  <31.532124, 40.606583, 59.898510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766230, 40.283356, 59.925320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139948, 0.019249, -0.989972,
		0.798673, 0.588777, 0.124353,
		0.585266, -0.808066, 0.067025,
		31.941809, 40.040936, 59.945427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186260, 40.760002, 59.685593>,  <31.532124, 40.606583, 59.898510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186260, 40.760002, 59.685593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165466, 40.366581, 59.616405>,  <32.152992, 40.130527, 59.574894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165466, 40.366581, 59.616405>,  <32.186260, 40.760002, 59.685593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165466, 40.366581, 59.616405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433625, 0.133791, -0.891106,
		0.899593, -0.121323, 0.419540,
		-0.051981, -0.983555, -0.172966,
		32.149872, 40.071514, 59.564514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714863, 40.781570, 59.252800>,  <32.186260, 40.760002, 59.685593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714863, 40.781570, 59.252800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566189, 40.412025, 59.216309>,  <32.476986, 40.190296, 59.194412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566189, 40.412025, 59.216309>,  <32.714863, 40.781570, 59.252800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566189, 40.412025, 59.216309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410315, -0.075329, -0.908827,
		0.832762, -0.375230, 0.407075,
		-0.371683, -0.923866, -0.091231,
		32.454685, 40.134865, 59.188938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233013, 40.388355, 59.216885>,  <32.714863, 40.781570, 59.252800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233013, 40.388355, 59.216885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943249, 40.166054, 59.053730>,  <32.769390, 40.032673, 58.955837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943249, 40.166054, 59.053730>,  <33.233013, 40.388355, 59.216885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943249, 40.166054, 59.053730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622847, -0.274062, -0.732770,
		0.295453, -0.784875, 0.544682,
		-0.724410, -0.555752, -0.407885,
		32.725925, 39.999329, 58.931366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556290, 39.848339, 58.954727>,  <33.233013, 40.388355, 59.216885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556290, 39.848339, 58.954727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212708, 39.823170, 58.751461>,  <33.006557, 39.808067, 58.629501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212708, 39.823170, 58.751461>,  <33.556290, 39.848339, 58.954727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212708, 39.823170, 58.751461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501848, -0.300516, -0.811072,
		-0.101678, -0.951699, 0.289707,
		-0.858959, -0.062921, -0.508164,
		32.955021, 39.804295, 58.599010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628925, 39.244495, 58.634785>,  <33.556290, 39.848339, 58.954727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628925, 39.244495, 58.634785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.359779, 39.465897, 58.438465>,  <33.198292, 39.598736, 58.320671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.359779, 39.465897, 58.438465>,  <33.628925, 39.244495, 58.634785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359779, 39.465897, 58.438465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376968, -0.314311, -0.871266,
		-0.636513, -0.771261, 0.002837,
		-0.672865, 0.553502, -0.490804,
		33.157921, 39.631947, 58.291225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204288, 38.735897, 58.202690>,  <33.628925, 39.244495, 58.634785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204288, 38.735897, 58.202690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208241, 39.110580, 58.062702>,  <33.210613, 39.335392, 57.978710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208241, 39.110580, 58.062702>,  <33.204288, 38.735897, 58.202690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208241, 39.110580, 58.062702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085048, -0.349506, -0.933066,
		-0.996328, -0.020545, -0.083118,
		0.009881, 0.936709, -0.349970,
		33.211205, 39.391594, 57.957710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678802, 38.914520, 57.727512>,  <33.204288, 38.735897, 58.202690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678802, 38.914520, 57.727512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964199, 39.171375, 57.615376>,  <33.135437, 39.325489, 57.548092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964199, 39.171375, 57.615376>,  <32.678802, 38.914520, 57.727512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964199, 39.171375, 57.615376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030139, -0.427870, -0.903338,
		-0.700017, 0.636074, -0.324635,
		0.713490, 0.642135, -0.280345,
		33.178246, 39.364017, 57.531273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679287, 38.808723, 57.011074>,  <32.678802, 38.914520, 57.727512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679287, 38.808723, 57.011074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978813, 39.071140, 57.048798>,  <33.158527, 39.228588, 57.071430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978813, 39.071140, 57.048798>,  <32.679287, 38.808723, 57.011074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978813, 39.071140, 57.048798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124132, 0.000954, -0.992265,
		-0.651055, 0.754726, -0.080721,
		0.748811, 0.656040, 0.094306,
		33.203457, 39.267952, 57.077091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603249, 39.270081, 56.337738>,  <32.679287, 38.808723, 57.011074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603249, 39.270081, 56.337738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984146, 39.283470, 56.459133>,  <33.212685, 39.291504, 56.531971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984146, 39.283470, 56.459133>,  <32.603249, 39.270081, 56.337738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984146, 39.283470, 56.459133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305320, -0.096670, -0.947330,
		-0.002371, 0.994753, -0.102273,
		0.952247, 0.033472, 0.303489,
		33.269821, 39.293510, 56.550179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945312, 39.704781, 55.934059>,  <32.603249, 39.270081, 56.337738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945312, 39.704781, 55.934059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261990, 39.504101, 56.073494>,  <33.451996, 39.383694, 56.157154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261990, 39.504101, 56.073494>,  <32.945312, 39.704781, 55.934059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261990, 39.504101, 56.073494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433235, 0.058762, -0.899363,
		0.430726, 0.863044, 0.263876,
		0.791695, -0.501700, 0.348591,
		33.499496, 39.353592, 56.178070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503799, 40.010799, 55.652573>,  <32.945312, 39.704781, 55.934059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503799, 40.010799, 55.652573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586514, 39.631496, 55.748951>,  <33.636143, 39.403915, 55.806778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586514, 39.631496, 55.748951>,  <33.503799, 40.010799, 55.652573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586514, 39.631496, 55.748951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335723, -0.162543, -0.927831,
		0.918984, 0.272748, 0.284740,
		0.206782, -0.948255, 0.240943,
		33.648548, 39.347019, 55.821232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209858, 39.883656, 55.484592>,  <33.503799, 40.010799, 55.652573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209858, 39.883656, 55.484592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032085, 39.525410, 55.492134>,  <33.925423, 39.310463, 55.496658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032085, 39.525410, 55.492134>,  <34.209858, 39.883656, 55.484592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032085, 39.525410, 55.492134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469774, -0.250932, -0.846372,
		0.762752, -0.367301, 0.532258,
		-0.444434, -0.895613, 0.018850,
		33.898754, 39.256725, 55.497787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757595, 39.403271, 55.354698>,  <34.209858, 39.883656, 55.484592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757595, 39.403271, 55.354698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423656, 39.191059, 55.295967>,  <34.223293, 39.063732, 55.260727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423656, 39.191059, 55.295967>,  <34.757595, 39.403271, 55.354698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423656, 39.191059, 55.295967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414792, -0.430922, -0.801407,
		0.361901, -0.729960, 0.579816,
		-0.834851, -0.530533, -0.146831,
		34.173203, 39.031898, 55.251919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983753, 38.722034, 55.312660>,  <34.757595, 39.403271, 55.354698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983753, 38.722034, 55.312660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626709, 38.755424, 55.135448>,  <34.412483, 38.775459, 55.029121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626709, 38.755424, 55.135448>,  <34.983753, 38.722034, 55.312660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626709, 38.755424, 55.135448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363517, -0.447963, -0.816814,
		-0.266648, -0.890146, 0.369511,
		-0.892611, 0.083478, -0.443031,
		34.358925, 38.780468, 55.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967197, 38.145172, 54.782249>,  <34.983753, 38.722034, 55.312660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967197, 38.145172, 54.782249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644295, 38.348274, 54.661911>,  <34.450554, 38.470135, 54.589706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644295, 38.348274, 54.661911>,  <34.967197, 38.145172, 54.782249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644295, 38.348274, 54.661911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128350, -0.346513, -0.929223,
		-0.576070, -0.788739, 0.214555,
		-0.807260, 0.507760, -0.300850,
		34.402115, 38.500603, 54.571655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436176, 37.645859, 54.432446>,  <34.967197, 38.145172, 54.782249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436176, 37.645859, 54.432446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400623, 38.024895, 54.309692>,  <34.379292, 38.252316, 54.236042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400623, 38.024895, 54.309692>,  <34.436176, 37.645859, 54.432446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400623, 38.024895, 54.309692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012917, -0.309170, -0.950919,
		-0.995959, -0.080554, 0.039719,
		-0.088881, 0.947589, -0.306880,
		34.373959, 38.309170, 54.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001595, 37.534657, 53.877121>,  <34.436176, 37.645859, 54.432446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001595, 37.534657, 53.877121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153164, 37.900902, 53.823341>,  <34.244106, 38.120647, 53.791073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153164, 37.900902, 53.823341>,  <34.001595, 37.534657, 53.877121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153164, 37.900902, 53.823341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115659, -0.190994, -0.974753,
		-0.918173, 0.353805, -0.178271,
		0.378922, 0.915611, -0.134445,
		34.266842, 38.175587, 53.783009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528439, 37.802586, 53.379074>,  <34.001595, 37.534657, 53.877121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528439, 37.802586, 53.379074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864773, 38.017956, 53.356857>,  <34.066574, 38.147179, 53.343529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864773, 38.017956, 53.356857>,  <33.528439, 37.802586, 53.379074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864773, 38.017956, 53.356857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183585, -0.380207, -0.906498,
		-0.509203, 0.752021, -0.418540,
		0.840838, 0.538430, -0.055543,
		34.117023, 38.179485, 53.340195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512688, 38.180183, 52.760983>,  <33.528439, 37.802586, 53.379074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512688, 38.180183, 52.760983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903381, 38.155048, 52.843006>,  <34.137798, 38.139969, 52.892220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903381, 38.155048, 52.843006>,  <33.512688, 38.180183, 52.760983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903381, 38.155048, 52.843006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178386, -0.292790, -0.939389,
		0.119069, 0.954110, -0.274767,
		0.976730, -0.062838, 0.205062,
		34.196400, 38.136196, 52.904526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854412, 38.427223, 52.143604>,  <33.512688, 38.180183, 52.760983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854412, 38.427223, 52.143604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.133190, 38.212509, 52.333817>,  <34.300457, 38.083683, 52.447945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.133190, 38.212509, 52.333817>,  <33.854412, 38.427223, 52.143604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133190, 38.212509, 52.333817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306823, -0.376152, -0.874282,
		0.648173, 0.755230, -0.097460,
		0.696944, -0.536783, 0.475534,
		34.342274, 38.051476, 52.476479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375824, 38.486927, 51.696880>,  <33.854412, 38.427223, 52.143604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375824, 38.486927, 51.696880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453796, 38.155865, 51.907402>,  <34.500580, 37.957230, 52.033714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453796, 38.155865, 51.907402>,  <34.375824, 38.486927, 51.696880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453796, 38.155865, 51.907402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346475, -0.443895, -0.826385,
		0.917583, 0.343436, 0.200233,
		0.194928, -0.827652, 0.526303,
		34.512276, 37.907570, 52.065292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004551, 38.356281, 51.456932>,  <34.375824, 38.486927, 51.696880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004551, 38.356281, 51.456932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869045, 38.012653, 51.610420>,  <34.787743, 37.806477, 51.702515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869045, 38.012653, 51.610420>,  <35.004551, 38.356281, 51.456932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869045, 38.012653, 51.610420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345813, -0.492972, -0.798368,
		0.875017, -0.137761, 0.464077,
		-0.338761, -0.859070, 0.383720,
		34.767418, 37.754932, 51.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425816, 37.859947, 51.198555>,  <35.004551, 38.356281, 51.456932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425816, 37.859947, 51.198555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117100, 37.637131, 51.321224>,  <34.931870, 37.503441, 51.394825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117100, 37.637131, 51.321224>,  <35.425816, 37.859947, 51.198555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117100, 37.637131, 51.321224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043577, -0.527482, -0.848448,
		0.634381, -0.641461, 0.431380,
		-0.771791, -0.557037, 0.306672,
		34.885563, 37.470020, 51.413227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550663, 37.138412, 51.012768>,  <35.425816, 37.859947, 51.198555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550663, 37.138412, 51.012768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152000, 37.162556, 51.034786>,  <34.912804, 37.177044, 51.047997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152000, 37.162556, 51.034786>,  <35.550663, 37.138412, 51.012768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152000, 37.162556, 51.034786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078446, -0.519182, -0.851056,
		-0.022793, -0.852530, 0.522182,
		-0.996658, 0.060361, 0.055044,
		34.853004, 37.180664, 51.051300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368538, 36.511856, 50.831654>,  <35.550663, 37.138412, 51.012768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368538, 36.511856, 50.831654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037231, 36.723709, 50.758480>,  <34.838448, 36.850822, 50.714577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037231, 36.723709, 50.758480>,  <35.368538, 36.511856, 50.831654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037231, 36.723709, 50.758480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173811, -0.553214, -0.814705,
		-0.532692, -0.642999, 0.550265,
		-0.828268, 0.529629, -0.182932,
		34.788754, 36.882599, 50.703598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876312, 36.035530, 50.620197>,  <35.368538, 36.511856, 50.831654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876312, 36.035530, 50.620197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709438, 36.374310, 50.488358>,  <34.609314, 36.577576, 50.409252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709438, 36.374310, 50.488358>,  <34.876312, 36.035530, 50.620197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709438, 36.374310, 50.488358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124199, -0.412398, -0.902498,
		-0.900296, -0.335571, 0.277236,
		-0.417184, 0.846948, -0.329603,
		34.584282, 36.628395, 50.389477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240330, 35.874363, 50.310089>,  <34.876312, 36.035530, 50.620197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240330, 35.874363, 50.310089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368538, 36.218929, 50.152496>,  <34.445465, 36.425671, 50.057941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368538, 36.218929, 50.152496>,  <34.240330, 35.874363, 50.310089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368538, 36.218929, 50.152496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329480, -0.288566, -0.898984,
		-0.888093, 0.417953, 0.191329,
		0.320522, 0.861420, -0.393981,
		34.464695, 36.477356, 50.034302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621613, 36.112114, 49.948959>,  <34.240330, 35.874363, 50.310089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621613, 36.112114, 49.948959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916428, 36.332325, 49.792145>,  <34.093315, 36.464451, 49.698055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916428, 36.332325, 49.792145>,  <33.621613, 36.112114, 49.948959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916428, 36.332325, 49.792145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405048, -0.104536, -0.908300,
		-0.541027, 0.828245, 0.145943,
		0.737039, 0.550529, -0.392036,
		34.137539, 36.497482, 49.674534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346046, 36.627953, 49.622265>,  <33.621613, 36.112114, 49.948959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346046, 36.627953, 49.622265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707802, 36.595837, 49.454632>,  <33.924854, 36.576569, 49.354050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707802, 36.595837, 49.454632>,  <33.346046, 36.627953, 49.622265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707802, 36.595837, 49.454632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419013, 0.018572, -0.907790,
		0.080668, 0.996598, -0.016846,
		0.904389, -0.080288, -0.419086,
		33.979118, 36.571751, 49.328907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366180, 37.199230, 49.005554>,  <33.346046, 36.627953, 49.622265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366180, 37.199230, 49.005554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.666843, 36.950268, 48.918270>,  <33.847240, 36.800888, 48.865902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.666843, 36.950268, 48.918270>,  <33.366180, 37.199230, 49.005554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666843, 36.950268, 48.918270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236203, 0.054866, -0.970153,
		0.615805, 0.780766, -0.105775,
		0.751659, -0.622410, -0.218206,
		33.892342, 36.763546, 48.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795269, 37.709103, 48.553535>,  <33.366180, 37.199230, 49.005554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795269, 37.709103, 48.553535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463352, 37.860218, 48.389233>,  <33.264202, 37.950886, 48.290649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463352, 37.860218, 48.389233>,  <33.795269, 37.709103, 48.553535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463352, 37.860218, 48.389233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299350, 0.319878, 0.898926,
		0.470994, 0.868883, -0.152342,
		-0.829792, 0.377785, -0.410761,
		33.214417, 37.973553, 48.266003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671837, 38.316788, 48.831135>,  <33.795269, 37.709103, 48.553535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671837, 38.316788, 48.831135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305248, 38.220680, 48.703163>,  <33.085297, 38.163013, 48.626381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305248, 38.220680, 48.703163>,  <33.671837, 38.316788, 48.831135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305248, 38.220680, 48.703163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379943, 0.271958, 0.884128,
		-0.125422, 0.931831, -0.340530,
		-0.916467, -0.240271, -0.319933,
		33.030308, 38.148598, 48.607182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144344, 38.827518, 48.999863>,  <33.671837, 38.316788, 48.831135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144344, 38.827518, 48.999863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914898, 38.502792, 48.956184>,  <32.777229, 38.307957, 48.929977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914898, 38.502792, 48.956184>,  <33.144344, 38.827518, 48.999863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914898, 38.502792, 48.956184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527224, 0.263876, 0.807716,
		-0.626901, 0.520888, -0.579371,
		-0.573612, -0.811816, -0.109200,
		32.742813, 38.259247, 48.923424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426834, 38.959270, 49.140827>,  <33.144344, 38.827518, 48.999863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426834, 38.959270, 49.140827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448498, 38.563030, 49.191074>,  <32.461494, 38.325287, 49.221222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448498, 38.563030, 49.191074>,  <32.426834, 38.959270, 49.140827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448498, 38.563030, 49.191074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604593, 0.067593, 0.793662,
		-0.794692, -0.118933, -0.595248,
		0.054158, -0.990599, 0.125621,
		32.464745, 38.265850, 49.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679090, 38.720745, 49.285500>,  <32.426834, 38.959270, 49.140827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679090, 38.720745, 49.285500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918772, 38.432514, 49.425060>,  <32.062580, 38.259575, 49.508797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918772, 38.432514, 49.425060>,  <31.679090, 38.720745, 49.285500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918772, 38.432514, 49.425060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635863, -0.163541, 0.754276,
		-0.486452, -0.673815, -0.556181,
		0.599201, -0.720574, 0.348900,
		32.098534, 38.216343, 49.529732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230780, 38.275799, 49.570499>,  <31.679090, 38.720745, 49.285500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230780, 38.275799, 49.570499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.581715, 38.163582, 49.726231>,  <31.792274, 38.096252, 49.819672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.581715, 38.163582, 49.726231>,  <31.230780, 38.275799, 49.570499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581715, 38.163582, 49.726231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428299, -0.091858, 0.898956,
		-0.216433, -0.955436, -0.200746,
		0.877335, -0.280543, 0.389331,
		31.844915, 38.079418, 49.843029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235348, 37.551727, 49.915726>,  <31.230780, 38.275799, 49.570499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235348, 37.551727, 49.915726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.526186, 37.777699, 50.071774>,  <31.700689, 37.913280, 50.165401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.526186, 37.777699, 50.071774>,  <31.235348, 37.551727, 49.915726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526186, 37.777699, 50.071774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353712, -0.178768, 0.918112,
		0.588406, -0.805544, 0.069840,
		0.727094, 0.564926, 0.390119,
		31.744314, 37.947178, 50.188808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372087, 37.173714, 50.523579>,  <31.235348, 37.551727, 49.915726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372087, 37.173714, 50.523579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525217, 37.537666, 50.587528>,  <31.617094, 37.756039, 50.625896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525217, 37.537666, 50.587528>,  <31.372087, 37.173714, 50.523579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525217, 37.537666, 50.587528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395527, 0.005041, 0.918441,
		0.834868, -0.414834, 0.361813,
		0.382824, 0.909883, 0.159869,
		31.640064, 37.810631, 50.635490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638641, 37.038124, 51.114681>,  <31.372087, 37.173714, 50.523579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638641, 37.038124, 51.114681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589804, 37.435005, 51.104633>,  <31.560501, 37.673134, 51.098606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.589804, 37.435005, 51.104633>,  <31.638641, 37.038124, 51.114681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589804, 37.435005, 51.104633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387584, -0.024362, 0.921512,
		0.913713, 0.122246, 0.387535,
		-0.122093, 0.992201, -0.025121,
		31.553175, 37.732666, 51.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684256, 37.293629, 51.836426>,  <31.638641, 37.038124, 51.114681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684256, 37.293629, 51.836426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511627, 37.602383, 51.649689>,  <31.408051, 37.787636, 51.537647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511627, 37.602383, 51.649689>,  <31.684256, 37.293629, 51.836426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511627, 37.602383, 51.649689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655599, 0.087092, 0.750070,
		0.619626, 0.629770, 0.468460,
		-0.431572, 0.771884, -0.466841,
		31.382156, 37.833946, 51.509636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559109, 37.752274, 52.467964>,  <31.684256, 37.293629, 51.836426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559109, 37.752274, 52.467964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409311, 37.948315, 52.153118>,  <31.319433, 38.065937, 51.964211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409311, 37.948315, 52.153118>,  <31.559109, 37.752274, 52.467964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409311, 37.948315, 52.153118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792285, 0.271872, 0.546233,
		0.481704, 0.828184, 0.286484,
		-0.374494, 0.490099, -0.787119,
		31.296963, 38.095345, 51.916981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544979, 38.556080, 52.612007>,  <31.559109, 37.752274, 52.467964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544979, 38.556080, 52.612007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268383, 38.429775, 52.352119>,  <31.102425, 38.353992, 52.196186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268383, 38.429775, 52.352119>,  <31.544979, 38.556080, 52.612007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268383, 38.429775, 52.352119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720491, 0.366546, 0.588674,
		0.052273, 0.875180, -0.480964,
		-0.691491, -0.315759, -0.649720,
		31.060936, 38.335049, 52.157204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184334, 39.047951, 52.404392>,  <31.544979, 38.556080, 52.612007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184334, 39.047951, 52.404392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945398, 38.727341, 52.393517>,  <30.802038, 38.534973, 52.386990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945398, 38.727341, 52.393517>,  <31.184334, 39.047951, 52.404392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945398, 38.727341, 52.393517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484523, 0.333654, 0.808649,
		-0.639082, 0.496212, -0.587663,
		-0.597337, -0.801529, -0.027194,
		30.766197, 38.486881, 52.385357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511747, 39.333950, 52.591892>,  <31.184334, 39.047951, 52.404392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511747, 39.333950, 52.591892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540808, 38.941868, 52.665554>,  <30.558243, 38.706619, 52.709751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.540808, 38.941868, 52.665554>,  <30.511747, 39.333950, 52.591892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540808, 38.941868, 52.665554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326085, 0.151150, 0.933179,
		-0.942545, -0.127845, -0.308650,
		0.072649, -0.980209, 0.184154,
		30.562603, 38.647804, 52.720798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971653, 39.136723, 53.014042>,  <30.511747, 39.333950, 52.591892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971653, 39.136723, 53.014042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214792, 38.821281, 53.051186>,  <30.360676, 38.632015, 53.073471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214792, 38.821281, 53.051186>,  <29.971653, 39.136723, 53.014042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214792, 38.821281, 53.051186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268931, -0.094422, 0.958520,
		-0.747125, -0.607608, -0.269474,
		0.607849, -0.788604, 0.092860,
		30.397146, 38.584702, 53.079044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596350, 38.539974, 53.232288>,  <29.971653, 39.136723, 53.014042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596350, 38.539974, 53.232288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971378, 38.470432, 53.352776>,  <30.196396, 38.428707, 53.425068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971378, 38.470432, 53.352776>,  <29.596350, 38.539974, 53.232288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971378, 38.470432, 53.352776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293325, 0.070072, 0.953441,
		-0.186864, -0.982276, 0.014703,
		0.937572, -0.173851, 0.301220,
		30.252649, 38.418278, 53.443142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569124, 38.076252, 53.859154>,  <29.596350, 38.539974, 53.232288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569124, 38.076252, 53.859154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933685, 38.234798, 53.903400>,  <30.152422, 38.329926, 53.929951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933685, 38.234798, 53.903400>,  <29.569124, 38.076252, 53.859154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933685, 38.234798, 53.903400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141060, 0.048390, 0.988818,
		0.386583, -0.916816, 0.100014,
		0.911403, 0.396368, 0.110619,
		30.207106, 38.353710, 53.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737972, 37.904530, 54.491287>,  <29.569124, 38.076252, 53.859154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737972, 37.904530, 54.491287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004900, 38.193253, 54.417873>,  <30.165056, 38.366486, 54.373825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004900, 38.193253, 54.417873>,  <29.737972, 37.904530, 54.491287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004900, 38.193253, 54.417873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110293, 0.147934, 0.982828,
		0.736561, -0.676101, 0.019109,
		0.667318, 0.721805, -0.183532,
		30.205095, 38.409794, 54.362812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292984, 37.770607, 54.891499>,  <29.737972, 37.904530, 54.491287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292984, 37.770607, 54.891499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301525, 38.161060, 54.805054>,  <30.306650, 38.395332, 54.753185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301525, 38.161060, 54.805054>,  <30.292984, 37.770607, 54.891499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301525, 38.161060, 54.805054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200344, 0.207598, 0.957479,
		0.979493, -0.063743, -0.191130,
		0.021354, 0.976135, -0.216111,
		30.307932, 38.453899, 54.740219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734909, 38.013699, 55.416183>,  <30.292984, 37.770607, 54.891499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734909, 38.013699, 55.416183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565804, 38.354839, 55.293606>,  <30.464340, 38.559525, 55.220058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565804, 38.354839, 55.293606>,  <30.734909, 38.013699, 55.416183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565804, 38.354839, 55.293606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114832, 0.385838, 0.915392,
		0.898936, 0.351804, -0.261053,
		-0.422763, 0.852856, -0.306445,
		30.438974, 38.610695, 55.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132328, 38.448357, 55.565357>,  <30.734909, 38.013699, 55.416183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132328, 38.448357, 55.565357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811352, 38.686821, 55.554893>,  <30.618767, 38.829899, 55.548615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811352, 38.686821, 55.554893>,  <31.132328, 38.448357, 55.565357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811352, 38.686821, 55.554893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306364, 0.449200, 0.839262,
		0.512086, 0.665442, -0.543098,
		-0.802439, 0.596160, -0.026162,
		30.570620, 38.865669, 55.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322016, 39.134789, 55.906063>,  <31.132328, 38.448357, 55.565357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322016, 39.134789, 55.906063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922487, 39.148964, 55.919353>,  <30.682770, 39.157471, 55.927326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922487, 39.148964, 55.919353>,  <31.322016, 39.134789, 55.906063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922487, 39.148964, 55.919353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044341, 0.385657, 0.921576,
		0.019847, 0.921961, -0.386773,
		-0.998819, 0.035440, 0.033226,
		30.622841, 39.159595, 55.929321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138414, 39.767204, 56.171055>,  <31.322016, 39.134789, 55.906063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138414, 39.767204, 56.171055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823025, 39.528366, 56.230103>,  <30.633791, 39.385063, 56.265533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823025, 39.528366, 56.230103>,  <31.138414, 39.767204, 56.171055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823025, 39.528366, 56.230103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090038, 0.349469, 0.932612,
		-0.608445, 0.722047, -0.329308,
		-0.788472, -0.597093, 0.147621,
		30.586483, 39.349239, 56.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708050, 40.092255, 56.580803>,  <31.138414, 39.767204, 56.171055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708050, 40.092255, 56.580803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577383, 39.716331, 56.620911>,  <30.498983, 39.490780, 56.644978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577383, 39.716331, 56.620911>,  <30.708050, 40.092255, 56.580803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577383, 39.716331, 56.620911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059119, 0.126203, 0.990241,
		-0.943289, 0.317549, -0.096787,
		-0.326664, -0.939806, 0.100273,
		30.479383, 39.434391, 56.650993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943089, 40.069977, 56.841412>,  <30.708050, 40.092255, 56.580803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943089, 40.069977, 56.841412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126341, 39.728077, 56.938995>,  <30.236292, 39.522938, 56.997547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126341, 39.728077, 56.938995>,  <29.943089, 40.069977, 56.841412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126341, 39.728077, 56.938995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079825, 0.233788, 0.969005,
		-0.885294, -0.463404, 0.038875,
		0.458130, -0.854751, 0.243963,
		30.263781, 39.471653, 57.012184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470966, 39.662907, 57.329659>,  <29.943089, 40.069977, 56.841412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470966, 39.662907, 57.329659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837116, 39.516224, 57.396133>,  <30.056807, 39.428215, 57.436020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837116, 39.516224, 57.396133>,  <29.470966, 39.662907, 57.329659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837116, 39.516224, 57.396133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097823, 0.197824, 0.975344,
		-0.390544, -0.909060, 0.145210,
		0.915372, -0.366710, 0.166186,
		30.111729, 39.406212, 57.445988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399689, 39.207561, 57.853333>,  <29.470966, 39.662907, 57.329659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399689, 39.207561, 57.853333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781336, 39.324970, 57.877022>,  <30.010324, 39.395416, 57.891235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781336, 39.324970, 57.877022>,  <29.399689, 39.207561, 57.853333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781336, 39.324970, 57.877022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160380, 0.333927, 0.928855,
		0.252859, -0.895734, 0.365680,
		0.954118, 0.293517, 0.059221,
		30.067572, 39.413025, 57.894787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727898, 38.915947, 58.425327>,  <29.399689, 39.207561, 57.853333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727898, 38.915947, 58.425327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.935673, 39.252911, 58.368019>,  <30.060337, 39.455090, 58.333633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.935673, 39.252911, 58.368019>,  <29.727898, 38.915947, 58.425327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935673, 39.252911, 58.368019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261199, 0.316173, 0.912036,
		0.813610, -0.436322, 0.384269,
		0.519437, 0.842412, -0.143274,
		30.091503, 39.505634, 58.325035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175934, 39.045067, 59.089855>,  <29.727898, 38.915947, 58.425327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175934, 39.045067, 59.089855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145103, 39.402344, 58.912643>,  <30.126606, 39.616711, 58.806316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.145103, 39.402344, 58.912643>,  <30.175934, 39.045067, 59.089855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145103, 39.402344, 58.912643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244790, 0.413797, 0.876841,
		0.966508, 0.176033, 0.186750,
		-0.077076, 0.893188, -0.443029,
		30.121981, 39.670300, 58.779736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460546, 39.505154, 59.503765>,  <30.175934, 39.045067, 59.089855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460546, 39.505154, 59.503765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280821, 39.776875, 59.271675>,  <30.172985, 39.939907, 59.132420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280821, 39.776875, 59.271675>,  <30.460546, 39.505154, 59.503765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280821, 39.776875, 59.271675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301012, 0.496383, 0.814246,
		0.841134, 0.540508, -0.018554,
		-0.449316, 0.679305, -0.580224,
		30.146027, 39.980667, 59.097607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540894, 40.122414, 59.786190>,  <30.460546, 39.505154, 59.503765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540894, 40.122414, 59.786190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222738, 40.226128, 59.567055>,  <30.031845, 40.288357, 59.435574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222738, 40.226128, 59.567055>,  <30.540894, 40.122414, 59.786190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222738, 40.226128, 59.567055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365791, 0.515347, 0.774993,
		0.483271, 0.816816, -0.315057,
		-0.795390, 0.259287, -0.547836,
		29.984121, 40.303913, 59.402702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454082, 40.879089, 59.728271>,  <30.540894, 40.122414, 59.786190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454082, 40.879089, 59.728271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105835, 40.684547, 59.698647>,  <29.896887, 40.567822, 59.680870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105835, 40.684547, 59.698647>,  <30.454082, 40.879089, 59.728271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105835, 40.684547, 59.698647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306065, 0.417602, 0.855531,
		-0.385163, 0.767508, -0.512427,
		-0.870617, -0.486355, -0.074062,
		29.844650, 40.538643, 59.676430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013737, 41.320351, 60.079201>,  <30.454082, 40.879089, 59.728271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013737, 41.320351, 60.079201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801689, 40.985142, 60.027519>,  <29.674459, 40.784016, 59.996510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801689, 40.985142, 60.027519>,  <30.013737, 41.320351, 60.079201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801689, 40.985142, 60.027519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495338, 0.182400, 0.849335,
		-0.688194, 0.514248, -0.511798,
		-0.530121, -0.838021, -0.129200,
		29.642653, 40.733734, 59.988758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386738, 41.548611, 60.079128>,  <30.013737, 41.320351, 60.079201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386738, 41.548611, 60.079128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348448, 41.158344, 60.158039>,  <29.325474, 40.924187, 60.205383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348448, 41.158344, 60.158039>,  <29.386738, 41.548611, 60.079128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348448, 41.158344, 60.158039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566514, 0.216357, 0.795143,
		-0.818473, -0.035642, -0.573438,
		-0.095727, -0.975664, 0.197274,
		29.319731, 40.865646, 60.217220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706308, 41.428291, 60.258163>,  <29.386738, 41.548611, 60.079128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706308, 41.428291, 60.258163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866480, 41.104404, 60.429752>,  <28.962582, 40.910072, 60.532707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866480, 41.104404, 60.429752>,  <28.706308, 41.428291, 60.258163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866480, 41.104404, 60.429752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534077, 0.174171, 0.827300,
		-0.744594, -0.560377, -0.362709,
		0.400427, -0.809718, 0.428971,
		28.986609, 40.861488, 60.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105703, 40.918613, 60.423786>,  <28.706308, 41.428291, 60.258163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105703, 40.918613, 60.423786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409147, 40.816460, 60.663548>,  <28.591213, 40.755169, 60.807404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409147, 40.816460, 60.663548>,  <28.105703, 40.918613, 60.423786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409147, 40.816460, 60.663548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637144, -0.098433, 0.764433,
		-0.136227, -0.961814, -0.237393,
		0.758610, -0.255390, 0.599405,
		28.636730, 40.739845, 60.843369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777819, 40.466286, 60.843647>,  <28.105703, 40.918613, 60.423786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777819, 40.466286, 60.843647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104897, 40.607048, 61.025871>,  <28.301144, 40.691505, 61.135208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104897, 40.607048, 61.025871>,  <27.777819, 40.466286, 60.843647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104897, 40.607048, 61.025871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527138, 0.139752, 0.838209,
		0.231309, -0.925542, 0.299780,
		0.817693, 0.351911, 0.455563,
		28.350204, 40.712620, 61.162540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787600, 40.172691, 61.491615>,  <27.777819, 40.466286, 60.843647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787600, 40.172691, 61.491615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.961576, 40.530979, 61.454700>,  <28.065964, 40.745953, 61.432552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.961576, 40.530979, 61.454700>,  <27.787600, 40.172691, 61.491615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961576, 40.530979, 61.454700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752856, 0.417961, 0.508445,
		0.493996, -0.151663, 0.856134,
		0.434943, 0.895716, -0.092291,
		28.092060, 40.799694, 61.427013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587845, 39.374756, 61.403393>,  <27.787600, 40.172691, 61.491615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587845, 39.374756, 61.403393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281330, 39.150795, 61.277340>,  <27.097422, 39.016418, 61.201710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281330, 39.150795, 61.277340>,  <27.587845, 39.374756, 61.403393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281330, 39.150795, 61.277340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239059, 0.206798, -0.948728,
		0.596366, -0.802335, -0.024617,
		-0.766289, -0.559905, -0.315132,
		27.051443, 38.982822, 61.182800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734678, 39.221485, 60.674263>,  <27.587845, 39.374756, 61.403393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734678, 39.221485, 60.674263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361580, 39.078709, 60.694561>,  <27.137720, 38.993042, 60.706741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361580, 39.078709, 60.694561>,  <27.734678, 39.221485, 60.674263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361580, 39.078709, 60.694561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058200, 0.010172, -0.998253,
		0.355804, -0.934071, -0.030262,
		-0.932747, -0.356944, 0.050744,
		27.081757, 38.971626, 60.709785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686726, 38.570381, 60.310665>,  <27.734678, 39.221485, 60.674263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686726, 38.570381, 60.310665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.320440, 38.730556, 60.297318>,  <27.100670, 38.826664, 60.289307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.320440, 38.730556, 60.297318>,  <27.686726, 38.570381, 60.310665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320440, 38.730556, 60.297318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064020, -0.227382, -0.971699,
		-0.396699, -0.887662, 0.233853,
		-0.915713, 0.400443, -0.033374,
		27.045727, 38.850689, 60.287304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315035, 38.165905, 59.798653>,  <27.686726, 38.570381, 60.310665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315035, 38.165905, 59.798653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093094, 38.497505, 59.826664>,  <26.959930, 38.696465, 59.843472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093094, 38.497505, 59.826664>,  <27.315035, 38.165905, 59.798653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093094, 38.497505, 59.826664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172887, -0.032553, -0.984404,
		-0.813788, -0.558305, 0.161384,
		-0.554851, 0.828997, 0.070033,
		26.926638, 38.746204, 59.847675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611418, 37.990917, 59.539383>,  <27.315035, 38.165905, 59.798653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611418, 37.990917, 59.539383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.655514, 38.385979, 59.494862>,  <26.681971, 38.623016, 59.468147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.655514, 38.385979, 59.494862>,  <26.611418, 37.990917, 59.539383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655514, 38.385979, 59.494862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102465, -0.100095, -0.989688,
		-0.988609, 0.120506, 0.090165,
		0.110239, 0.987653, -0.111303,
		26.688585, 38.682274, 59.461472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176813, 38.161652, 59.092224>,  <26.611418, 37.990917, 59.539383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176813, 38.161652, 59.092224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395969, 38.494717, 59.060013>,  <26.527464, 38.694557, 59.040684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395969, 38.494717, 59.060013>,  <26.176813, 38.161652, 59.092224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395969, 38.494717, 59.060013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081910, -0.042406, -0.995737,
		-0.832529, 0.552153, 0.044970,
		0.547892, 0.832664, -0.080531,
		26.560337, 38.744514, 59.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854532, 38.624889, 58.479172>,  <26.176813, 38.161652, 59.092224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854532, 38.624889, 58.479172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.236116, 38.728306, 58.539993>,  <26.465067, 38.790356, 58.576485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.236116, 38.728306, 58.539993>,  <25.854532, 38.624889, 58.479172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236116, 38.728306, 58.539993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123128, 0.124708, -0.984524,
		-0.273501, 0.957917, 0.087133,
		0.953959, 0.258540, 0.152054,
		26.522305, 38.805866, 58.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022381, 39.010002, 57.906349>,  <25.854532, 38.624889, 58.479172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022381, 39.010002, 57.906349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395844, 38.930008, 58.025200>,  <26.619921, 38.882011, 58.096512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.395844, 38.930008, 58.025200>,  <26.022381, 39.010002, 57.906349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395844, 38.930008, 58.025200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299779, -0.017630, -0.953846,
		0.195994, 0.979640, 0.043491,
		0.933659, -0.199985, 0.297131,
		26.675941, 38.870014, 58.114338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520832, 39.461033, 57.509640>,  <26.022381, 39.010002, 57.906349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520832, 39.461033, 57.509640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729317, 39.150482, 57.651390>,  <26.854408, 38.964153, 57.736439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729317, 39.150482, 57.651390>,  <26.520832, 39.461033, 57.509640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729317, 39.150482, 57.651390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382981, -0.158299, -0.910092,
		0.762668, 0.610071, 0.214829,
		0.521213, -0.776373, 0.354375,
		26.885681, 38.917572, 57.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355013, 39.523975, 57.462383>,  <26.520832, 39.461033, 57.509640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355013, 39.523975, 57.462383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262186, 39.135189, 57.477524>,  <27.206490, 38.901917, 57.486607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262186, 39.135189, 57.477524>,  <27.355013, 39.523975, 57.462383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262186, 39.135189, 57.477524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577624, -0.169011, -0.798615,
		0.782621, -0.163469, 0.600651,
		-0.232065, -0.971964, 0.037848,
		27.192566, 38.843601, 57.488876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888575, 39.246136, 57.215584>,  <27.355013, 39.523975, 57.462383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888575, 39.246136, 57.215584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.627903, 38.947853, 57.160095>,  <27.471500, 38.768883, 57.126801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.627903, 38.947853, 57.160095>,  <27.888575, 39.246136, 57.215584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627903, 38.947853, 57.160095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532123, -0.319142, -0.784215,
		0.540519, -0.584873, 0.604783,
		-0.651678, -0.745703, -0.138722,
		27.432400, 38.724144, 57.118477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347891, 38.741146, 57.010933>,  <27.888575, 39.246136, 57.215584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347891, 38.741146, 57.010933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990885, 38.596237, 56.903465>,  <27.776682, 38.509293, 56.838985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990885, 38.596237, 56.903465>,  <28.347891, 38.741146, 57.010933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990885, 38.596237, 56.903465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431044, -0.509806, -0.744513,
		0.132747, -0.780294, 0.611163,
		-0.892513, -0.362270, -0.268665,
		27.723131, 38.487556, 56.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446861, 37.998333, 56.787971>,  <28.347891, 38.741146, 57.010933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446861, 37.998333, 56.787971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.098886, 38.131001, 56.641983>,  <27.890102, 38.210602, 56.554390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.098886, 38.131001, 56.641983>,  <28.446861, 37.998333, 56.787971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098886, 38.131001, 56.641983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204671, -0.430506, -0.879076,
		-0.448686, -0.839440, 0.306630,
		-0.869937, 0.331671, -0.364971,
		27.837906, 38.230503, 56.532494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147020, 37.455170, 56.447018>,  <28.446861, 37.998333, 56.787971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147020, 37.455170, 56.447018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.935083, 37.753304, 56.285152>,  <27.807922, 37.932182, 56.188034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.935083, 37.753304, 56.285152>,  <28.147020, 37.455170, 56.447018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935083, 37.753304, 56.285152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113302, -0.535068, -0.837177,
		-0.840495, -0.397721, 0.367949,
		-0.529840, 0.745332, -0.404659,
		27.776131, 37.976902, 56.163754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605349, 37.168682, 56.110363>,  <28.147020, 37.455170, 56.447018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605349, 37.168682, 56.110363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.655401, 37.529881, 55.945957>,  <27.685432, 37.746601, 55.847313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.655401, 37.529881, 55.945957>,  <27.605349, 37.168682, 56.110363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655401, 37.529881, 55.945957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135350, -0.394864, -0.908715,
		-0.982864, 0.169340, 0.072811,
		0.125132, 0.902998, -0.411018,
		27.692940, 37.800781, 55.822651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997396, 37.218773, 55.546627>,  <27.605349, 37.168682, 56.110363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997396, 37.218773, 55.546627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301607, 37.463238, 55.458916>,  <27.484133, 37.609917, 55.406288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301607, 37.463238, 55.458916>,  <26.997396, 37.218773, 55.546627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301607, 37.463238, 55.458916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026324, -0.366459, -0.930062,
		-0.648772, 0.701565, -0.294790,
		0.760527, 0.611158, -0.219280,
		27.529766, 37.646584, 55.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875744, 37.286087, 54.813046>,  <26.997396, 37.218773, 55.546627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875744, 37.286087, 54.813046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235559, 37.453041, 54.864601>,  <27.451448, 37.553215, 54.895535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235559, 37.453041, 54.864601>,  <26.875744, 37.286087, 54.813046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235559, 37.453041, 54.864601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189238, -0.106402, -0.976149,
		-0.393720, 0.902477, -0.174699,
		0.899541, 0.417389, 0.128890,
		27.505423, 37.578259, 54.903267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016073, 37.795094, 54.232292>,  <26.875744, 37.286087, 54.813046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016073, 37.795094, 54.232292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.367971, 37.690979, 54.391438>,  <27.579111, 37.628510, 54.486927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.367971, 37.690979, 54.391438>,  <27.016073, 37.795094, 54.232292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367971, 37.690979, 54.391438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367974, -0.157149, -0.916460,
		0.301068, 0.952657, -0.042472,
		0.879746, -0.260288, 0.397865,
		27.631895, 37.612892, 54.510796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463511, 38.201279, 53.860672>,  <27.016073, 37.795094, 54.232292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463511, 38.201279, 53.860672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.654497, 37.888210, 54.020401>,  <27.769089, 37.700371, 54.116238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.654497, 37.888210, 54.020401>,  <27.463511, 38.201279, 53.860672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654497, 37.888210, 54.020401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444431, -0.176918, -0.878169,
		0.757962, 0.596766, 0.263371,
		0.477466, -0.782669, 0.399318,
		27.797737, 37.653408, 54.140198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096613, 38.241928, 53.648464>,  <27.463511, 38.201279, 53.860672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096613, 38.241928, 53.648464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.132692, 37.853882, 53.738567>,  <28.154341, 37.621056, 53.792629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.132692, 37.853882, 53.738567>,  <28.096613, 38.241928, 53.648464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132692, 37.853882, 53.738567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511134, -0.149023, -0.846484,
		0.854755, 0.191489, 0.482417,
		0.090201, -0.970116, 0.225255,
		28.159752, 37.562847, 53.806145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813803, 38.034740, 53.472557>,  <28.096613, 38.241928, 53.648464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813803, 38.034740, 53.472557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618128, 37.686859, 53.498814>,  <28.500723, 37.478130, 53.514568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618128, 37.686859, 53.498814>,  <28.813803, 38.034740, 53.472557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618128, 37.686859, 53.498814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496345, -0.339483, -0.798995,
		0.717174, -0.358278, 0.597744,
		-0.489186, -0.869706, 0.065639,
		28.471373, 37.425949, 53.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299309, 37.513390, 53.372486>,  <28.813803, 38.034740, 53.472557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299309, 37.513390, 53.372486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.943567, 37.351845, 53.286751>,  <28.730122, 37.254917, 53.235310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.943567, 37.351845, 53.286751>,  <29.299309, 37.513390, 53.372486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943567, 37.351845, 53.286751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378548, -0.387506, -0.840559,
		0.256415, -0.828693, 0.497513,
		-0.889355, -0.403865, -0.214338,
		28.676760, 37.230686, 53.222450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451717, 36.819199, 53.166153>,  <29.299309, 37.513390, 53.372486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451717, 36.819199, 53.166153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088858, 36.874577, 53.007202>,  <28.871141, 36.907803, 52.911831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088858, 36.874577, 53.007202>,  <29.451717, 36.819199, 53.166153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088858, 36.874577, 53.007202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302492, -0.441939, -0.844505,
		-0.292537, -0.886297, 0.359026,
		-0.907150, 0.138446, -0.397381,
		28.816713, 36.916111, 52.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356573, 36.294651, 52.714699>,  <29.451717, 36.819199, 53.166153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356573, 36.294651, 52.714699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079874, 36.553768, 52.587048>,  <28.913855, 36.709240, 52.510456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079874, 36.553768, 52.587048>,  <29.356573, 36.294651, 52.714699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079874, 36.553768, 52.587048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212878, -0.239360, -0.947306,
		-0.690048, -0.723234, 0.027675,
		-0.691749, 0.647795, -0.319131,
		28.872349, 36.748108, 52.491310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863457, 35.918831, 52.382900>,  <29.356573, 36.294651, 52.714699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863457, 35.918831, 52.382900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.850901, 36.296558, 52.251892>,  <28.843367, 36.523197, 52.173286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.850901, 36.296558, 52.251892>,  <28.863457, 35.918831, 52.382900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850901, 36.296558, 52.251892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240807, -0.310883, -0.919437,
		-0.970065, -0.107731, -0.217641,
		-0.031391, 0.944323, -0.327519,
		28.841484, 36.579857, 52.153637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539553, 35.825687, 51.787865>,  <28.863457, 35.918831, 52.382900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539553, 35.825687, 51.787865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671038, 36.199276, 51.731804>,  <28.749929, 36.423428, 51.698170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671038, 36.199276, 51.731804>,  <28.539553, 35.825687, 51.787865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671038, 36.199276, 51.731804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252393, -0.229871, -0.939924,
		-0.910079, 0.273595, -0.311290,
		0.328715, 0.933973, -0.140147,
		28.769651, 36.479469, 51.689758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327826, 35.989609, 51.100712>,  <28.539553, 35.825687, 51.787865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327826, 35.989609, 51.100712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.626881, 36.240517, 51.187958>,  <28.806314, 36.391060, 51.240303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.626881, 36.240517, 51.187958>,  <28.327826, 35.989609, 51.100712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626881, 36.240517, 51.187958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282895, -0.003668, -0.959144,
		-0.600839, 0.778796, -0.180193,
		0.747639, 0.627267, 0.218113,
		28.851171, 36.428696, 51.253391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326904, 36.585831, 50.589867>,  <28.327826, 35.989609, 51.100712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326904, 36.585831, 50.589867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692608, 36.588547, 50.751896>,  <28.912031, 36.590176, 50.849113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692608, 36.588547, 50.751896>,  <28.326904, 36.585831, 50.589867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692608, 36.588547, 50.751896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403366, 0.077884, -0.911718,
		-0.037740, 0.996939, 0.068468,
		0.914260, 0.006791, 0.405071,
		28.966887, 36.590584, 50.873417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658922, 37.063007, 50.229435>,  <28.326904, 36.585831, 50.589867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658922, 37.063007, 50.229435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.940470, 36.825848, 50.385918>,  <29.109398, 36.683552, 50.479809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.940470, 36.825848, 50.385918>,  <28.658922, 37.063007, 50.229435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940470, 36.825848, 50.385918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526244, 0.065323, -0.847821,
		0.477113, 0.802626, 0.357986,
		0.703868, -0.592895, 0.391210,
		29.151630, 36.647980, 50.503281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327917, 37.308681, 50.037758>,  <28.658922, 37.063007, 50.229435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327917, 37.308681, 50.037758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.399387, 36.922638, 50.114323>,  <29.442268, 36.691013, 50.160263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.399387, 36.922638, 50.114323>,  <29.327917, 37.308681, 50.037758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399387, 36.922638, 50.114323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356471, -0.117830, -0.926846,
		0.917062, 0.233837, 0.322981,
		0.178675, -0.965109, 0.191414,
		29.452990, 36.633106, 50.171745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833939, 37.117836, 49.587627>,  <29.327917, 37.308681, 50.037758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833939, 37.117836, 49.587627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707729, 36.752022, 49.688873>,  <29.632004, 36.532532, 49.749622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707729, 36.752022, 49.688873>,  <29.833939, 37.117836, 49.587627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707729, 36.752022, 49.688873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311223, -0.351723, -0.882854,
		0.896430, -0.199783, 0.395601,
		-0.315522, -0.914537, 0.253118,
		29.613073, 36.477661, 49.764809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375040, 36.681286, 49.326084>,  <29.833939, 37.117836, 49.587627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375040, 36.681286, 49.326084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094807, 36.403923, 49.393456>,  <29.926666, 36.237507, 49.433880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094807, 36.403923, 49.393456>,  <30.375040, 36.681286, 49.326084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094807, 36.403923, 49.393456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359832, -0.547132, -0.755756,
		0.616200, -0.468864, 0.632822,
		-0.700584, -0.693407, 0.168430,
		29.884632, 36.195900, 49.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649652, 36.110474, 49.395638>,  <30.375040, 36.681286, 49.326084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649652, 36.110474, 49.395638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282791, 35.992973, 49.287907>,  <30.062674, 35.922474, 49.223270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282791, 35.992973, 49.287907>,  <30.649652, 36.110474, 49.395638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282791, 35.992973, 49.287907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388184, -0.505484, -0.770584,
		0.090223, -0.811292, 0.577637,
		-0.917155, -0.293753, -0.269324,
		30.007645, 35.904846, 49.207108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664257, 35.311909, 49.253731>,  <30.649652, 36.110474, 49.395638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664257, 35.311909, 49.253731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330311, 35.418465, 49.061050>,  <30.129944, 35.482399, 48.945442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330311, 35.418465, 49.061050>,  <30.664257, 35.311909, 49.253731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330311, 35.418465, 49.061050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248907, -0.597825, -0.762004,
		-0.490967, -0.756068, 0.432795,
		-0.834863, 0.266393, -0.481703,
		30.079851, 35.498383, 48.916538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199400, 34.714493, 49.057674>,  <30.664257, 35.311909, 49.253731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199400, 34.714493, 49.057674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113190, 34.999493, 48.790573>,  <30.061462, 35.170494, 48.630314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113190, 34.999493, 48.790573>,  <30.199400, 34.714493, 49.057674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113190, 34.999493, 48.790573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189603, -0.640276, -0.744378,
		-0.957914, -0.287041, 0.002905,
		-0.215527, 0.712499, -0.667753,
		30.048532, 35.213242, 48.590248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945951, 34.415951, 48.579208>,  <30.199400, 34.714493, 49.057674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945951, 34.415951, 48.579208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015207, 34.759697, 48.386742>,  <30.056761, 34.965942, 48.271263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015207, 34.759697, 48.386742>,  <29.945951, 34.415951, 48.579208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015207, 34.759697, 48.386742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228980, -0.510281, -0.828964,
		-0.957909, 0.033349, -0.285127,
		0.173140, 0.859361, -0.481167,
		30.067150, 35.017506, 48.242390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526205, 34.371899, 48.063034>,  <29.945951, 34.415951, 48.579208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526205, 34.371899, 48.063034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803482, 34.638393, 47.953041>,  <29.969849, 34.798290, 47.887047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803482, 34.638393, 47.953041>,  <29.526205, 34.371899, 48.063034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803482, 34.638393, 47.953041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171505, -0.523033, -0.834879,
		-0.700048, 0.531573, -0.476826,
		0.693195, 0.666233, -0.274981,
		30.011440, 34.838264, 47.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377327, 34.635353, 47.385502>,  <29.526205, 34.371899, 48.063034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377327, 34.635353, 47.385502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770615, 34.665520, 47.451950>,  <30.006586, 34.683620, 47.491817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770615, 34.665520, 47.451950>,  <29.377327, 34.635353, 47.385502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770615, 34.665520, 47.451950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174377, -0.656191, -0.734170,
		0.053638, 0.750816, -0.658330,
		0.983217, 0.075418, 0.166122,
		30.065580, 34.688145, 47.501785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589891, 34.568676, 46.724163>,  <29.377327, 34.635353, 47.385502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589891, 34.568676, 46.724163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925583, 34.530323, 46.938267>,  <30.126997, 34.507313, 47.066730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925583, 34.530323, 46.938267>,  <29.589891, 34.568676, 46.724163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925583, 34.530323, 46.938267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276724, -0.772042, -0.572167,
		0.468101, 0.628298, -0.621388,
		0.839229, -0.095879, 0.535259,
		30.177351, 34.501560, 47.098843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142519, 34.626213, 46.260262>,  <29.589891, 34.568676, 46.724163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142519, 34.626213, 46.260262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275322, 34.436878, 46.586628>,  <30.355003, 34.323277, 46.782448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275322, 34.436878, 46.586628>,  <30.142519, 34.626213, 46.260262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275322, 34.436878, 46.586628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359694, -0.736099, -0.573392,
		0.872004, 0.483852, -0.074135,
		0.332008, -0.473334, 0.815920,
		30.374924, 34.294876, 46.831406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850267, 34.503536, 46.156075>,  <30.142519, 34.626213, 46.260262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850267, 34.503536, 46.156075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699228, 34.227715, 46.403278>,  <30.608604, 34.062222, 46.551601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699228, 34.227715, 46.403278>,  <30.850267, 34.503536, 46.156075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699228, 34.227715, 46.403278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423524, -0.722125, -0.546958,
		0.823436, 0.055210, 0.564717,
		-0.377598, -0.689556, 0.618006,
		30.585949, 34.020847, 46.588680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442390, 34.132393, 46.504826>,  <30.850267, 34.503536, 46.156075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442390, 34.132393, 46.504826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109369, 33.910820, 46.503723>,  <30.909555, 33.777874, 46.503063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109369, 33.910820, 46.503723>,  <31.442390, 34.132393, 46.504826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109369, 33.910820, 46.503723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513402, -0.769747, -0.379353,
		0.208016, -0.317247, 0.925248,
		-0.832555, -0.553935, -0.002755,
		30.859602, 33.744640, 46.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993431, 33.886444, 46.986382>,  <31.442390, 34.132393, 46.504826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993431, 33.886444, 46.986382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804274, 33.558792, 46.856522>,  <31.690779, 33.362202, 46.778606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804274, 33.558792, 46.856522>,  <31.993431, 33.886444, 46.986382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804274, 33.558792, 46.856522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795546, -0.555323, 0.242328,
		-0.378782, -0.143677, 0.914265,
		-0.472895, -0.819130, -0.324648,
		31.662405, 33.313053, 46.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243370, 33.289639, 47.473015>,  <31.993431, 33.886444, 46.986382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243370, 33.289639, 47.473015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150833, 33.141281, 47.113255>,  <32.095310, 33.052265, 46.897400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150833, 33.141281, 47.113255>,  <32.243370, 33.289639, 47.473015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150833, 33.141281, 47.113255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874947, -0.483539, -0.025647,
		-0.425381, -0.792859, 0.436378,
		-0.231340, -0.370897, -0.899398,
		32.081432, 33.030010, 46.843433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151386, 32.528721, 47.516415>,  <32.243370, 33.289639, 47.473015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151386, 32.528721, 47.516415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282570, 32.627621, 47.151711>,  <32.361279, 32.686958, 46.932888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282570, 32.627621, 47.151711>,  <32.151386, 32.528721, 47.516415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282570, 32.627621, 47.151711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862754, -0.471557, 0.182455,
		-0.384836, -0.846465, -0.367965,
		0.327958, 0.247248, -0.911763,
		32.380959, 32.701794, 46.878181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726513, 31.954124, 47.373787>,  <32.151386, 32.528721, 47.516415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726513, 31.954124, 47.373787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787132, 32.299366, 47.181087>,  <32.823505, 32.506512, 47.065468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787132, 32.299366, 47.181087>,  <32.726513, 31.954124, 47.373787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787132, 32.299366, 47.181087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982107, -0.186604, -0.025370,
		-0.111793, -0.469284, -0.875942,
		0.151549, 0.863106, -0.481748,
		32.832596, 32.558296, 47.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272488, 31.961985, 46.811722>,  <32.726513, 31.954124, 47.373787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272488, 31.961985, 46.811722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290680, 32.302643, 47.020580>,  <33.301598, 32.507038, 47.145893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290680, 32.302643, 47.020580>,  <33.272488, 31.961985, 46.811722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290680, 32.302643, 47.020580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984833, -0.125835, 0.119454,
		0.167436, 0.508791, -0.844451,
		0.045484, 0.851644, 0.522143,
		33.304325, 32.558136, 47.177223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760090, 32.311855, 46.493572>,  <33.272488, 31.961985, 46.811722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760090, 32.311855, 46.493572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735535, 32.495644, 46.848000>,  <33.720802, 32.605915, 47.060658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735535, 32.495644, 46.848000>,  <33.760090, 32.311855, 46.493572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735535, 32.495644, 46.848000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990701, 0.136045, -0.001911,
		-0.121423, 0.877713, -0.463547,
		-0.061386, 0.459469, 0.886070,
		33.717117, 32.633484, 47.113819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119354, 32.869602, 46.319050>,  <33.760090, 32.311855, 46.493572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119354, 32.869602, 46.319050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108494, 32.811043, 46.714592>,  <34.101978, 32.775906, 46.951916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108494, 32.811043, 46.714592>,  <34.119354, 32.869602, 46.319050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108494, 32.811043, 46.714592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955844, 0.285765, 0.068556,
		-0.292616, 0.947051, 0.132177,
		-0.027154, -0.146401, 0.988853,
		34.100349, 32.767124, 47.011250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256779, 33.533321, 46.768452>,  <34.119354, 32.869602, 46.319050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256779, 33.533321, 46.768452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352142, 33.191696, 46.953377>,  <34.409363, 32.986721, 47.064331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352142, 33.191696, 46.953377>,  <34.256779, 33.533321, 46.768452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352142, 33.191696, 46.953377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953067, 0.297228, 0.057603,
		-0.186609, 0.426881, 0.884844,
		0.238411, -0.854066, 0.462312,
		34.423664, 32.935478, 47.092072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620449, 33.749279, 47.332207>,  <34.256779, 33.533321, 46.768452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620449, 33.749279, 47.332207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721752, 33.364079, 47.295349>,  <34.782536, 33.132957, 47.273235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721752, 33.364079, 47.295349>,  <34.620449, 33.749279, 47.332207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721752, 33.364079, 47.295349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961770, 0.240381, 0.131210,
		-0.104205, -0.121854, 0.987063,
		0.253259, -0.963000, -0.092147,
		34.797729, 33.075180, 47.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058689, 33.631657, 47.903019>,  <34.620449, 33.749279, 47.332207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058689, 33.631657, 47.903019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116764, 33.330296, 47.646488>,  <35.151608, 33.149479, 47.492569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116764, 33.330296, 47.646488>,  <35.058689, 33.631657, 47.903019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116764, 33.330296, 47.646488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988608, 0.084464, 0.124581,
		-0.039690, -0.652112, 0.757083,
		0.145187, -0.753403, -0.641331,
		35.160320, 33.104275, 47.454090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665962, 33.260315, 48.138660>,  <35.058689, 33.631657, 47.903019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665962, 33.260315, 48.138660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647335, 33.128384, 47.761505>,  <35.636158, 33.049225, 47.535210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647335, 33.128384, 47.761505>,  <35.665962, 33.260315, 48.138660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647335, 33.128384, 47.761505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998366, -0.046658, -0.032987,
		-0.033113, -0.942887, 0.331462,
		-0.046568, -0.329828, -0.942892,
		35.633366, 33.029434, 47.478638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265083, 32.813667, 48.137829>,  <35.665962, 33.260315, 48.138660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265083, 32.813667, 48.137829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145905, 32.884228, 47.762573>,  <36.074398, 32.926563, 47.537418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145905, 32.884228, 47.762573>,  <36.265083, 32.813667, 48.137829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145905, 32.884228, 47.762573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953687, 0.012482, -0.300540,
		-0.041304, -0.984240, -0.171946,
		-0.297950, 0.176397, -0.938142,
		36.056519, 32.937145, 47.481133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658657, 32.282085, 47.659317>,  <36.265083, 32.813667, 48.137829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658657, 32.282085, 47.659317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550373, 32.588673, 47.426338>,  <36.485405, 32.772625, 47.286549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550373, 32.588673, 47.426338>,  <36.658657, 32.282085, 47.659317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550373, 32.588673, 47.426338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908534, 0.003392, -0.417797,
		-0.318251, -0.642277, -0.697278,
		-0.270707, 0.766465, -0.582451,
		36.469162, 32.818611, 47.251602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037971, 32.205997, 46.977245>,  <36.658657, 32.282085, 47.659317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037971, 32.205997, 46.977245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913570, 32.586006, 46.988136>,  <36.838928, 32.814011, 46.994671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913570, 32.586006, 46.988136>,  <37.037971, 32.205997, 46.977245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913570, 32.586006, 46.988136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856939, 0.292689, -0.424250,
		-0.411014, -0.108613, -0.905136,
		-0.311002, 0.950019, 0.027225,
		36.820271, 32.871014, 46.996304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024399, 32.392754, 46.213890>,  <37.037971, 32.205997, 46.977245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024399, 32.392754, 46.213890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099800, 32.699841, 46.458866>,  <37.145039, 32.884090, 46.605850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099800, 32.699841, 46.458866>,  <37.024399, 32.392754, 46.213890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099800, 32.699841, 46.458866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876559, 0.149682, -0.457427,
		-0.442845, 0.623064, -0.644732,
		0.188501, 0.767715, 0.612438,
		37.156349, 32.930157, 46.642597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063808, 33.125359, 45.953320>,  <37.024399, 32.392754, 46.213890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063808, 33.125359, 45.953320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288147, 33.086445, 46.282192>,  <37.422749, 33.063095, 46.479515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288147, 33.086445, 46.282192>,  <37.063808, 33.125359, 45.953320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288147, 33.086445, 46.282192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794430, 0.342834, -0.501344,
		-0.233098, 0.934345, 0.269564,
		0.560844, -0.097287, 0.822185,
		37.456402, 33.057259, 46.528847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391994, 33.786747, 46.198505>,  <37.063808, 33.125359, 45.953320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391994, 33.786747, 46.198505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642975, 33.512917, 46.346916>,  <37.793564, 33.348618, 46.435963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642975, 33.512917, 46.346916>,  <37.391994, 33.786747, 46.198505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642975, 33.512917, 46.346916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769735, 0.617237, -0.162869,
		-0.117518, 0.387787, 0.914227,
		0.627453, -0.684572, 0.371030,
		37.831211, 33.307545, 46.458225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986126, 34.014412, 45.671730>,  <37.391994, 33.786747, 46.198505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986126, 34.014412, 45.671730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348743, 34.170357, 45.607006>,  <37.566315, 34.263924, 45.568172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348743, 34.170357, 45.607006>,  <36.986126, 34.014412, 45.671730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348743, 34.170357, 45.607006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390817, -0.920065, -0.027242,
		-0.159496, -0.038542, -0.986446,
		0.906545, 0.389865, -0.161810,
		37.620708, 34.287315, 45.558464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360882, 33.719631, 45.087013>,  <36.986126, 34.014412, 45.671730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360882, 33.719631, 45.087013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666325, 33.848747, 45.310696>,  <37.849590, 33.926216, 45.444904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666325, 33.848747, 45.310696>,  <37.360882, 33.719631, 45.087013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666325, 33.848747, 45.310696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435013, -0.897201, -0.076120,
		0.477152, 0.301389, -0.825525,
		0.763603, 0.322794, 0.559209,
		37.895405, 33.945587, 45.478458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629627, 33.580803, 44.456905>,  <37.360882, 33.719631, 45.087013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629627, 33.580803, 44.456905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787060, 33.528141, 44.820831>,  <37.881519, 33.496544, 45.039185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787060, 33.528141, 44.820831>,  <37.629627, 33.580803, 44.456905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787060, 33.528141, 44.820831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535891, -0.771280, -0.343436,
		0.746936, 0.622731, -0.233007,
		0.393582, -0.131658, 0.909813,
		37.905136, 33.488644, 45.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380917, 32.767456, 44.434319>,  <37.629627, 33.580803, 44.456905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380917, 32.767456, 44.434319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084557, 32.892269, 44.196430>,  <36.906738, 32.967155, 44.053696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084557, 32.892269, 44.196430>,  <37.380917, 32.767456, 44.434319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084557, 32.892269, 44.196430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578455, 0.746419, -0.329012,
		0.341251, -0.587788, -0.733521,
		-0.740903, 0.312034, -0.594725,
		36.862286, 32.985878, 44.018013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587749, 32.940014, 43.660110>,  <37.380917, 32.767456, 44.434319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587749, 32.940014, 43.660110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292271, 33.158939, 43.817474>,  <37.114983, 33.290295, 43.911892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292271, 33.158939, 43.817474>,  <37.587749, 32.940014, 43.660110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292271, 33.158939, 43.817474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456920, 0.835699, -0.304681,
		-0.495530, -0.045309, -0.867408,
		-0.738697, 0.547315, 0.393412,
		37.070660, 33.323135, 43.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339348, 33.556625, 43.169239>,  <37.587749, 32.940014, 43.660110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339348, 33.556625, 43.169239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288513, 33.642467, 43.556599>,  <37.258011, 33.693974, 43.789013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288513, 33.642467, 43.556599>,  <37.339348, 33.556625, 43.169239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288513, 33.642467, 43.556599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388445, 0.909101, -0.150486,
		-0.912666, 0.357045, -0.198895,
		-0.127085, 0.214603, 0.968398,
		37.250389, 33.706848, 43.847118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034477, 34.207798, 43.309101>,  <37.339348, 33.556625, 43.169239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034477, 34.207798, 43.309101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255039, 34.107403, 43.627335>,  <37.387375, 34.047165, 43.818275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255039, 34.107403, 43.627335>,  <37.034477, 34.207798, 43.309101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255039, 34.107403, 43.627335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419383, 0.907799, -0.004273,
		-0.721161, 0.336012, 0.605823,
		0.551402, -0.250991, 0.795588,
		37.420460, 34.032104, 43.866013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851936, 34.562492, 43.984631>,  <37.034477, 34.207798, 43.309101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851936, 34.562492, 43.984631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242325, 34.479500, 43.957989>,  <37.476559, 34.429703, 43.942001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242325, 34.479500, 43.957989>,  <36.851936, 34.562492, 43.984631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242325, 34.479500, 43.957989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211916, 0.974897, 0.068314,
		0.050761, -0.080787, 0.995438,
		0.975969, -0.207481, -0.066607,
		37.535114, 34.417255, 43.938007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146065, 34.834663, 44.569592>,  <36.851936, 34.562492, 43.984631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146065, 34.834663, 44.569592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419025, 34.853794, 44.277828>,  <37.582802, 34.865273, 44.102772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419025, 34.853794, 44.277828>,  <37.146065, 34.834663, 44.569592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419025, 34.853794, 44.277828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134517, 0.989032, -0.060997,
		0.718491, 0.139742, 0.681354,
		0.682404, 0.047828, -0.729408,
		37.623745, 34.868141, 44.059006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606682, 35.375984, 44.326153>,  <37.146065, 34.834663, 44.569592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606682, 35.375984, 44.326153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919304, 35.128368, 44.357037>,  <38.106876, 34.979797, 44.375568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919304, 35.128368, 44.357037>,  <37.606682, 35.375984, 44.326153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919304, 35.128368, 44.357037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594482, 0.776570, 0.208636,
		-0.189113, -0.117160, 0.974941,
		0.781554, -0.619041, 0.077210,
		38.153770, 34.942657, 44.380199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723915, 35.599194, 43.556389>,  <37.606682, 35.375984, 44.326153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723915, 35.599194, 43.556389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094070, 35.730347, 43.632442>,  <38.316162, 35.809040, 43.678074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094070, 35.730347, 43.632442>,  <37.723915, 35.599194, 43.556389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094070, 35.730347, 43.632442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234688, -0.101771, -0.966729,
		-0.297625, 0.939220, -0.171128,
		0.925387, 0.327884, 0.190134,
		38.371685, 35.828712, 43.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863091, 36.129028, 43.069439>,  <37.723915, 35.599194, 43.556389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863091, 36.129028, 43.069439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207535, 35.937870, 43.138851>,  <38.414200, 35.823177, 43.180500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207535, 35.937870, 43.138851>,  <37.863091, 36.129028, 43.069439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207535, 35.937870, 43.138851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279083, 0.158994, -0.947013,
		0.424980, 0.863909, 0.270283,
		0.861106, -0.477893, 0.173533,
		38.465866, 35.794502, 43.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472839, 36.531246, 42.784603>,  <37.863091, 36.129028, 43.069439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472839, 36.531246, 42.784603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568733, 36.146641, 42.730900>,  <38.626270, 35.915878, 42.698677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568733, 36.146641, 42.730900>,  <38.472839, 36.531246, 42.784603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568733, 36.146641, 42.730900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335196, 0.211761, -0.918042,
		0.911138, 0.175081, 0.373061,
		0.239731, -0.961511, -0.134257,
		38.640652, 35.858189, 42.690624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297855, 36.697811, 42.737534>,  <38.472839, 36.531246, 42.784603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297855, 36.697811, 42.737534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019371, 36.868317, 42.968563>,  <38.852280, 36.970619, 43.107182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019371, 36.868317, 42.968563>,  <39.297855, 36.697811, 42.737534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019371, 36.868317, 42.968563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267641, -0.900728, 0.342138,
		0.666073, 0.083620, 0.741184,
		-0.696215, 0.426260, 0.577570,
		38.810505, 36.996193, 43.141834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609310, 36.533360, 41.984005>,  <39.297855, 36.697811, 42.737534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609310, 36.533360, 41.984005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815598, 36.590126, 41.646038>,  <39.939369, 36.624187, 41.443256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815598, 36.590126, 41.646038>,  <39.609310, 36.533360, 41.984005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815598, 36.590126, 41.646038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557472, -0.693279, -0.456716,
		-0.650581, 0.706558, -0.278426,
		0.515723, 0.141916, -0.844920,
		39.970314, 36.632702, 41.392563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088688, 37.111595, 41.920597>,  <39.609310, 36.533360, 41.984005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088688, 37.111595, 41.920597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324715, 36.928246, 41.654751>,  <39.466331, 36.818233, 41.495243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324715, 36.928246, 41.654751>,  <39.088688, 37.111595, 41.920597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324715, 36.928246, 41.654751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624953, 0.261845, -0.735439,
		0.511134, 0.849311, -0.131958,
		0.590064, -0.458376, -0.664617,
		39.501736, 36.790733, 41.455364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191269, 37.511192, 41.386410>,  <39.088688, 37.111595, 41.920597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191269, 37.511192, 41.386410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282398, 37.152607, 41.234379>,  <39.337074, 36.937458, 41.143162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282398, 37.152607, 41.234379>,  <39.191269, 37.511192, 41.386410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282398, 37.152607, 41.234379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496874, 0.228660, -0.837156,
		0.837385, 0.379573, -0.393334,
		0.227823, -0.896459, -0.380077,
		39.350746, 36.883671, 41.120358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529743, 37.614201, 40.727371>,  <39.191269, 37.511192, 41.386410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529743, 37.614201, 40.727371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343376, 37.260380, 40.736202>,  <39.231556, 37.048088, 40.741501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343376, 37.260380, 40.736202>,  <39.529743, 37.614201, 40.727371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343376, 37.260380, 40.736202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612669, 0.304502, -0.729325,
		0.638405, -0.353329, -0.683811,
		-0.465914, -0.884555, 0.022078,
		39.203602, 36.995014, 40.742825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364967, 37.287457, 40.053734>,  <39.529743, 37.614201, 40.727371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364967, 37.287457, 40.053734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076630, 37.126350, 40.279358>,  <38.903625, 37.029686, 40.414730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076630, 37.126350, 40.279358>,  <39.364967, 37.287457, 40.053734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076630, 37.126350, 40.279358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687774, 0.315036, -0.654002,
		0.085711, -0.859379, -0.504104,
		-0.720847, -0.402765, 0.564056,
		38.860374, 37.005520, 40.448574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292011, 37.763268, 39.491299>,  <39.364967, 37.287457, 40.053734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292011, 37.763268, 39.491299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898563, 37.735916, 39.558014>,  <38.662495, 37.719505, 39.598042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898563, 37.735916, 39.558014>,  <39.292011, 37.763268, 39.491299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898563, 37.735916, 39.558014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030652, 0.848342, 0.528561,
		-0.177633, 0.525016, -0.832349,
		-0.983619, -0.068376, 0.166786,
		38.603477, 37.715405, 39.608051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880909, 38.005222, 39.508018>,  <39.292011, 37.763268, 39.491299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880909, 38.005222, 39.508018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058987, 37.787991, 39.792793>,  <40.165833, 37.657650, 39.963657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058987, 37.787991, 39.792793>,  <39.880909, 38.005222, 39.508018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058987, 37.787991, 39.792793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608246, -0.400081, -0.685546,
		0.657142, 0.738239, 0.152213,
		0.445199, -0.543083, 0.711940,
		40.192547, 37.625065, 40.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597954, 38.140717, 39.722908>,  <39.880909, 38.005222, 39.508018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597954, 38.140717, 39.722908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565102, 37.744194, 39.764030>,  <40.545391, 37.506279, 39.788704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565102, 37.744194, 39.764030>,  <40.597954, 38.140717, 39.722908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565102, 37.744194, 39.764030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778336, -0.128223, -0.614615,
		0.622453, 0.029538, 0.782100,
		-0.082129, -0.991305, 0.102803,
		40.540462, 37.446804, 39.794872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203640, 37.815243, 40.032810>,  <40.597954, 38.140717, 39.722908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203640, 37.815243, 40.032810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006756, 37.588234, 39.768795>,  <40.888626, 37.452030, 39.610386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006756, 37.588234, 39.768795>,  <41.203640, 37.815243, 40.032810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006756, 37.588234, 39.768795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786614, 0.034737, -0.616467,
		0.372787, -0.822625, 0.429323,
		-0.492208, -0.567522, -0.660038,
		40.859093, 37.417976, 39.570782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624207, 37.197731, 39.769512>,  <41.203640, 37.815243, 40.032810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624207, 37.197731, 39.769512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.390694, 37.210495, 39.445000>,  <41.250584, 37.218155, 39.250294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.390694, 37.210495, 39.445000>,  <41.624207, 37.197731, 39.769512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390694, 37.210495, 39.445000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784174, -0.236774, -0.573593,
		-0.210393, -0.971041, 0.113203,
		-0.583786, 0.031909, -0.811280,
		41.215557, 37.220070, 39.201614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795120, 36.586433, 39.316296>,  <41.624207, 37.197731, 39.769512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795120, 36.586433, 39.316296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641376, 36.895859, 39.114754>,  <41.549129, 37.081516, 38.993828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641376, 36.895859, 39.114754>,  <41.795120, 36.586433, 39.316296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641376, 36.895859, 39.114754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793367, -0.002301, -0.608740,
		-0.472060, -0.633712, -0.612837,
		-0.384356, 0.773566, -0.503852,
		41.526070, 37.127930, 38.963596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679863, 36.446270, 38.603325>,  <41.795120, 36.586433, 39.316296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679863, 36.446270, 38.603325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718884, 36.844170, 38.615665>,  <41.742294, 37.082909, 38.623070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718884, 36.844170, 38.615665>,  <41.679863, 36.446270, 38.603325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718884, 36.844170, 38.615665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820702, -0.062871, -0.567886,
		-0.562966, 0.080716, -0.822529,
		0.097551, 0.994752, 0.030849,
		41.748150, 37.142597, 38.624920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704643, 36.718727, 37.847721>,  <41.679863, 36.446270, 38.603325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704643, 36.718727, 37.847721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.915619, 36.890781, 38.140785>,  <42.042206, 36.994015, 38.316624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.915619, 36.890781, 38.140785>,  <41.704643, 36.718727, 37.847721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915619, 36.890781, 38.140785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849159, -0.239396, -0.470765,
		-0.027100, 0.870442, -0.491524,
		0.527442, 0.430140, 0.732656,
		42.073853, 37.019825, 38.360580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960438, 37.329102, 37.694160>,  <41.704643, 36.718727, 37.847721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960438, 37.329102, 37.694160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196625, 37.115288, 37.936028>,  <42.338337, 36.987000, 38.081146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196625, 37.115288, 37.936028>,  <41.960438, 37.329102, 37.694160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196625, 37.115288, 37.936028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627539, -0.167034, -0.760457,
		0.507491, 0.828476, 0.236813,
		0.590465, -0.534534, 0.604669,
		42.373764, 36.954929, 38.117428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581814, 37.690647, 37.636471>,  <41.960438, 37.329102, 37.694160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581814, 37.690647, 37.636471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.632072, 37.297672, 37.691647>,  <42.662228, 37.061886, 37.724751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.632072, 37.297672, 37.691647>,  <42.581814, 37.690647, 37.636471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632072, 37.297672, 37.691647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530868, -0.050878, -0.845926,
		0.838088, 0.179519, 0.515152,
		0.125649, -0.982438, 0.137941,
		42.669765, 37.002941, 37.733028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447960, 37.433140, 37.778843>,  <42.581814, 37.690647, 37.636471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447960, 37.433140, 37.778843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215069, 37.149841, 37.619141>,  <43.075336, 36.979862, 37.523319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215069, 37.149841, 37.619141>,  <43.447960, 37.433140, 37.778843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215069, 37.149841, 37.619141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584719, -0.023552, -0.810894,
		0.564907, -0.705575, 0.427836,
		-0.582223, -0.708244, -0.399258,
		43.040401, 36.937366, 37.499363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698624, 36.738262, 37.628071>,  <43.447960, 37.433140, 37.778843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698624, 36.738262, 37.628071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433884, 36.806702, 37.336128>,  <43.275040, 36.847763, 37.160965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433884, 36.806702, 37.336128>,  <43.698624, 36.738262, 37.628071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433884, 36.806702, 37.336128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748689, 0.101817, -0.655056,
		-0.037765, -0.979979, -0.195484,
		-0.661845, 0.171095, -0.729854,
		43.235329, 36.858028, 37.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813118, 36.206909, 37.055508>,  <43.698624, 36.738262, 37.628071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813118, 36.206909, 37.055508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.673466, 36.568546, 36.956940>,  <43.589676, 36.785530, 36.897800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.673466, 36.568546, 36.956940>,  <43.813118, 36.206909, 37.055508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673466, 36.568546, 36.956940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686119, 0.067526, -0.724349,
		-0.638241, -0.421964, -0.643891,
		-0.349128, 0.904095, -0.246419,
		43.568726, 36.839775, 36.883015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656937, 36.172989, 36.377132>,  <43.813118, 36.206909, 37.055508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656937, 36.172989, 36.377132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.747375, 36.548256, 36.481991>,  <43.801640, 36.773415, 36.544907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.747375, 36.548256, 36.481991>,  <43.656937, 36.172989, 36.377132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747375, 36.548256, 36.481991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661288, 0.049772, -0.748479,
		-0.715247, 0.342581, -0.609147,
		0.226096, 0.938169, 0.262144,
		43.815205, 36.829708, 36.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283882, 36.314434, 36.091724>,  <43.656937, 36.172989, 36.377132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283882, 36.314434, 36.091724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.244339, 36.705399, 36.166447>,  <44.220615, 36.939976, 36.211281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.244339, 36.705399, 36.166447>,  <44.283882, 36.314434, 36.091724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244339, 36.705399, 36.166447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682541, 0.203206, -0.702029,
		-0.724130, 0.058102, -0.687211,
		-0.098856, 0.977411, 0.186804,
		44.214684, 36.998623, 36.222488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851898, 35.764889, 36.084667>,  <44.283882, 36.314434, 36.091724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851898, 35.764889, 36.084667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.745052, 35.380421, 36.056973>,  <44.680946, 35.149738, 36.040356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.745052, 35.380421, 36.056973>,  <44.851898, 35.764889, 36.084667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745052, 35.380421, 36.056973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749795, -0.162165, -0.641490,
		0.605357, -0.223261, 0.764001,
		-0.267114, -0.961175, -0.069232,
		44.664917, 35.092068, 36.036201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208687, 35.326279, 36.325180>,  <44.851898, 35.764889, 36.084667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208687, 35.326279, 36.325180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.046024, 35.142628, 36.009247>,  <44.948429, 35.032436, 35.819687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.046024, 35.142628, 36.009247>,  <45.208687, 35.326279, 36.325180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046024, 35.142628, 36.009247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802634, 0.233391, -0.548914,
		0.436363, -0.857163, 0.273604,
		-0.406652, -0.459130, -0.789831,
		44.924030, 35.004890, 35.772297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717960, 34.968754, 35.969261>,  <45.208687, 35.326279, 36.325180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717960, 34.968754, 35.969261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.432056, 35.011612, 35.692818>,  <45.260513, 35.037327, 35.526951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.432056, 35.011612, 35.692818>,  <45.717960, 34.968754, 35.969261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432056, 35.011612, 35.692818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689783, 0.271043, -0.671368,
		0.115390, -0.956586, -0.267636,
		-0.714762, 0.107142, -0.691113,
		45.217628, 35.043755, 35.485485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174099, 35.422318, 36.441658>,  <45.717960, 34.968754, 35.969261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174099, 35.422318, 36.441658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.557743, 35.518780, 36.500912>,  <46.787930, 35.576656, 36.536465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.557743, 35.518780, 36.500912>,  <46.174099, 35.422318, 36.441658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557743, 35.518780, 36.500912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217629, -0.293809, -0.930760,
		-0.180932, 0.924944, -0.334279,
		0.959115, 0.241153, 0.148135,
		46.845478, 35.591125, 36.545353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432507, 35.808624, 35.864777>,  <46.174099, 35.422318, 36.441658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432507, 35.808624, 35.864777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.767540, 35.685848, 36.045551>,  <46.968559, 35.612183, 36.154015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.767540, 35.685848, 36.045551>,  <46.432507, 35.808624, 35.864777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767540, 35.685848, 36.045551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385037, -0.255198, -0.886917,
		0.387565, 0.916875, -0.095564,
		0.837580, -0.306942, 0.451936,
		47.018814, 35.593765, 36.181133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832325, 35.646049, 35.374565>,  <46.432507, 35.808624, 35.864777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832325, 35.646049, 35.374565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.092327, 35.488316, 35.634407>,  <47.248329, 35.393673, 35.790314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.092327, 35.488316, 35.634407>,  <46.832325, 35.646049, 35.374565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092327, 35.488316, 35.634407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603331, -0.251943, -0.756648,
		0.462039, 0.883754, 0.074152,
		0.650009, -0.394339, 0.649604,
		47.287331, 35.370014, 35.829288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306297, 35.535290, 34.896049>,  <46.832325, 35.646049, 35.374565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306297, 35.535290, 34.896049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.398254, 35.381001, 35.253456>,  <47.453426, 35.288425, 35.467899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.398254, 35.381001, 35.253456>,  <47.306297, 35.535290, 34.896049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.398254, 35.381001, 35.253456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661924, -0.611075, -0.434101,
		0.713447, 0.691235, 0.114839,
		0.229891, -0.385723, 0.893514,
		47.467220, 35.265282, 35.521511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.324245, 33.933811, 56.524502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683744, 33.909748, 56.698231>,  <31.899443, 33.895309, 56.802467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683744, 33.909748, 56.698231>,  <31.324245, 33.933811, 56.524502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683744, 33.909748, 56.698231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411140, -0.228626, -0.882436,
		0.152382, 0.971654, -0.180744,
		0.898745, -0.060157, 0.434325,
		31.953367, 33.891701, 56.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820246, 34.264362, 56.003799>,  <31.324245, 33.933811, 56.524502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820246, 34.264362, 56.003799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.036842, 34.053055, 56.265400>,  <32.166801, 33.926270, 56.422359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.036842, 34.053055, 56.265400>,  <31.820246, 34.264362, 56.003799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036842, 34.053055, 56.265400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672738, -0.194259, -0.713924,
		0.504192, 0.826554, 0.250200,
		0.541493, -0.528273, 0.653998,
		32.199291, 33.894573, 56.461597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565228, 34.524677, 56.021023>,  <31.820246, 34.264362, 56.003799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565228, 34.524677, 56.021023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.567337, 34.140938, 56.133896>,  <32.568604, 33.910694, 56.201618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.567337, 34.140938, 56.133896>,  <32.565228, 34.524677, 56.021023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567337, 34.140938, 56.133896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665921, -0.207146, -0.716686,
		0.746003, 0.191691, 0.637757,
		0.005273, -0.959346, 0.282182,
		32.568920, 33.853134, 56.218552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194370, 34.191551, 55.724354>,  <32.565228, 34.524677, 56.021023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194370, 34.191551, 55.724354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.974575, 33.868649, 55.810516>,  <32.842697, 33.674908, 55.862213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.974575, 33.868649, 55.810516>,  <33.194370, 34.191551, 55.724354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974575, 33.868649, 55.810516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414608, -0.487292, -0.768535,
		0.725371, -0.332992, 0.602456,
		-0.549488, -0.807256, 0.215406,
		32.809727, 33.626472, 55.875137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670094, 33.746147, 55.825558>,  <33.194370, 34.191551, 55.724354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670094, 33.746147, 55.825558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.340263, 33.543190, 55.725460>,  <33.142365, 33.421413, 55.665401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.340263, 33.543190, 55.725460>,  <33.670094, 33.746147, 55.825558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340263, 33.543190, 55.725460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426580, -0.267064, -0.864122,
		0.371621, -0.819284, 0.436660,
		-0.824577, -0.507396, -0.250243,
		33.092892, 33.390972, 55.650387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896923, 33.189789, 55.481396>,  <33.670094, 33.746147, 55.825558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896923, 33.189789, 55.481396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513611, 33.218269, 55.370674>,  <33.283623, 33.235355, 55.304241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513611, 33.218269, 55.370674>,  <33.896923, 33.189789, 55.481396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513611, 33.218269, 55.370674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234923, -0.355410, -0.904707,
		-0.162791, -0.931995, 0.323859,
		-0.958285, 0.071196, -0.276805,
		33.226124, 33.239628, 55.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761650, 32.516159, 55.254375>,  <33.896923, 33.189789, 55.481396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761650, 32.516159, 55.254375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513912, 32.776535, 55.078789>,  <33.365269, 32.932762, 54.973438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513912, 32.776535, 55.078789>,  <33.761650, 32.516159, 55.254375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513912, 32.776535, 55.078789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147932, -0.452337, -0.879493,
		-0.771060, -0.609642, 0.183855,
		-0.619340, 0.650944, -0.438964,
		33.328110, 32.971817, 54.947098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700851, 32.119057, 54.797203>,  <33.761650, 32.516159, 55.254375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700851, 32.119057, 54.797203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.510551, 32.453449, 54.687805>,  <33.396374, 32.654087, 54.622166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.510551, 32.453449, 54.687805>,  <33.700851, 32.119057, 54.797203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510551, 32.453449, 54.687805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026865, -0.296977, -0.954507,
		-0.879172, -0.461451, 0.118827,
		-0.475747, 0.835983, -0.273491,
		33.367828, 32.704243, 54.605759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103081, 31.986912, 54.345608>,  <33.700851, 32.119057, 54.797203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103081, 31.986912, 54.345608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.251621, 32.346073, 54.251060>,  <33.340744, 32.561569, 54.194332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.251621, 32.346073, 54.251060>,  <33.103081, 31.986912, 54.345608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251621, 32.346073, 54.251060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136626, -0.304645, -0.942616,
		-0.918385, 0.317749, -0.235807,
		0.371353, 0.897902, -0.236368,
		33.363026, 32.615444, 54.180149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999165, 32.132988, 53.671494>,  <33.103081, 31.986912, 54.345608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999165, 32.132988, 53.671494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.223614, 32.462460, 53.704220>,  <33.358284, 32.660141, 53.723858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.223614, 32.462460, 53.704220>,  <32.999165, 32.132988, 53.671494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223614, 32.462460, 53.704220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171398, -0.018918, -0.985020,
		-0.809791, 0.566743, -0.151792,
		0.561125, 0.823677, 0.081819,
		33.391953, 32.709564, 53.728764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804119, 32.607643, 53.105484>,  <32.999165, 32.132988, 53.671494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804119, 32.607643, 53.105484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.179951, 32.690346, 53.214622>,  <33.405449, 32.739967, 53.280106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.179951, 32.690346, 53.214622>,  <32.804119, 32.607643, 53.105484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179951, 32.690346, 53.214622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261235, 0.082079, -0.961779,
		-0.221249, 0.974943, 0.023107,
		0.939577, 0.206757, 0.272849,
		33.461823, 32.752373, 53.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925785, 33.264271, 52.943874>,  <32.804119, 32.607643, 53.105484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925785, 33.264271, 52.943874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.285778, 33.090569, 52.959148>,  <33.501774, 32.986347, 52.968311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.285778, 33.090569, 52.959148>,  <32.925785, 33.264271, 52.943874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285778, 33.090569, 52.959148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141094, 0.207295, -0.968050,
		0.412463, 0.876615, 0.247832,
		0.899982, -0.434252, 0.038184,
		33.555771, 32.960293, 52.970604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399426, 33.694305, 52.688309>,  <32.925785, 33.264271, 52.943874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399426, 33.694305, 52.688309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583393, 33.346828, 52.614712>,  <33.693771, 33.138344, 52.570553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583393, 33.346828, 52.614712>,  <33.399426, 33.694305, 52.688309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583393, 33.346828, 52.614712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107463, 0.260134, -0.959574,
		0.881435, 0.421552, 0.212993,
		0.459917, -0.868691, -0.183990,
		33.721367, 33.086220, 52.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719978, 33.874889, 52.131470>,  <33.399426, 33.694305, 52.688309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719978, 33.874889, 52.131470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762112, 33.477203, 52.122993>,  <33.787392, 33.238594, 52.117908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762112, 33.477203, 52.122993>,  <33.719978, 33.874889, 52.131470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762112, 33.477203, 52.122993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000836, 0.021221, -0.999775,
		0.994436, 0.105330, 0.001404,
		0.105336, -0.994211, -0.021191,
		33.793713, 33.178940, 52.116634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200089, 33.711998, 51.571480>,  <33.719978, 33.874889, 52.131470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200089, 33.711998, 51.571480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.037212, 33.356167, 51.654282>,  <33.939487, 33.142670, 51.703964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.037212, 33.356167, 51.654282>,  <34.200089, 33.711998, 51.571480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037212, 33.356167, 51.654282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163593, -0.151948, -0.974756,
		0.898572, -0.430779, -0.083656,
		-0.407193, -0.889574, 0.207009,
		33.915054, 33.089294, 51.716385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419613, 33.386589, 51.026810>,  <34.200089, 33.711998, 51.571480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419613, 33.386589, 51.026810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110954, 33.179478, 51.174576>,  <33.925758, 33.055210, 51.263237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110954, 33.179478, 51.174576>,  <34.419613, 33.386589, 51.026810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110954, 33.179478, 51.174576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353173, -0.134243, -0.925876,
		0.528993, -0.844914, -0.079279,
		-0.771644, -0.517782, 0.369415,
		33.879459, 33.024143, 51.285400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461929, 32.627697, 50.752510>,  <34.419613, 33.386589, 51.026810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461929, 32.627697, 50.752510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.080170, 32.688137, 50.855492>,  <33.851112, 32.724400, 50.917282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.080170, 32.688137, 50.855492>,  <34.461929, 32.627697, 50.752510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080170, 32.688137, 50.855492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298312, -0.514904, -0.803669,
		0.011135, -0.843827, 0.536500,
		-0.954404, 0.151096, 0.257457,
		33.793850, 32.733467, 50.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046715, 31.888626, 50.726479>,  <34.461929, 32.627697, 50.752510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046715, 31.888626, 50.726479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790009, 32.194958, 50.710243>,  <33.635986, 32.378757, 50.700500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790009, 32.194958, 50.710243>,  <34.046715, 31.888626, 50.726479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790009, 32.194958, 50.710243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492258, -0.451940, -0.743930,
		-0.588069, -0.457444, 0.667023,
		-0.641761, 0.765830, -0.040592,
		33.597481, 32.424706, 50.698067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371742, 31.633856, 50.577843>,  <34.046715, 31.888626, 50.726479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371742, 31.633856, 50.577843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.351738, 32.014355, 50.456104>,  <33.339737, 32.242653, 50.383060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.351738, 32.014355, 50.456104>,  <33.371742, 31.633856, 50.577843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351738, 32.014355, 50.456104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396347, -0.298604, -0.868185,
		-0.916738, 0.077209, 0.391957,
		-0.050008, 0.951249, -0.304344,
		33.336735, 32.299728, 50.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745312, 31.892498, 50.371597>,  <33.371742, 31.633856, 50.577843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745312, 31.892498, 50.371597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951454, 32.165844, 50.164745>,  <33.075138, 32.329853, 50.040634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951454, 32.165844, 50.164745>,  <32.745312, 31.892498, 50.371597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951454, 32.165844, 50.164745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512083, -0.238292, -0.825220,
		-0.687155, 0.690093, 0.227135,
		0.515354, 0.683365, -0.517128,
		33.106060, 32.370853, 50.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280670, 32.187851, 49.833866>,  <32.745312, 31.892498, 50.371597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280670, 32.187851, 49.833866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640465, 32.279205, 49.684864>,  <32.856342, 32.334019, 49.595463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640465, 32.279205, 49.684864>,  <32.280670, 32.187851, 49.833866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640465, 32.279205, 49.684864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309392, -0.269073, -0.912072,
		-0.308534, 0.935649, -0.171368,
		0.899491, 0.228385, -0.372501,
		32.910313, 32.347721, 49.573112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081993, 32.381523, 49.189510>,  <32.280670, 32.187851, 49.833866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081993, 32.381523, 49.189510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.476269, 32.338276, 49.137760>,  <32.712833, 32.312328, 49.106712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.476269, 32.338276, 49.137760>,  <32.081993, 32.381523, 49.189510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476269, 32.338276, 49.137760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156150, -0.295990, -0.942341,
		0.063587, 0.949053, -0.308635,
		0.985685, -0.108114, -0.129373,
		32.771973, 32.305843, 49.098949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533297, 31.767143, 49.071842>,  <32.081993, 32.381523, 49.189510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533297, 31.767143, 49.071842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.168625, 31.869625, 48.943340>,  <30.949821, 31.931114, 48.866238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.168625, 31.869625, 48.943340>,  <31.533297, 31.767143, 49.071842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168625, 31.869625, 48.943340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354096, -0.093199, 0.930553,
		0.208471, 0.962119, 0.175688,
		-0.911677, 0.256204, -0.321253,
		30.895123, 31.946486, 48.846966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297836, 32.360546, 49.446316>,  <31.533297, 31.767143, 49.071842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297836, 32.360546, 49.446316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.973858, 32.178123, 49.298805>,  <30.779470, 32.068672, 49.210297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.973858, 32.178123, 49.298805>,  <31.297836, 32.360546, 49.446316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973858, 32.178123, 49.298805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404552, -0.020835, 0.914277,
		-0.424644, 0.889708, -0.167623,
		-0.809948, -0.456054, -0.368781,
		30.730873, 32.041306, 49.188171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783934, 32.862495, 49.557728>,  <31.297836, 32.360546, 49.446316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783934, 32.862495, 49.557728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.599531, 32.510185, 49.514450>,  <30.488890, 32.298798, 49.488483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.599531, 32.510185, 49.514450>,  <30.783934, 32.862495, 49.557728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599531, 32.510185, 49.514450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284565, 0.031246, 0.958147,
		-0.840534, 0.472498, -0.265043,
		-0.461004, -0.880778, -0.108193,
		30.461229, 32.245953, 49.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195175, 32.892220, 50.069996>,  <30.783934, 32.862495, 49.557728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195175, 32.892220, 50.069996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.214834, 32.508289, 49.959492>,  <30.226629, 32.277931, 49.893188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.214834, 32.508289, 49.959492>,  <30.195175, 32.892220, 50.069996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214834, 32.508289, 49.959492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459184, -0.267345, 0.847158,
		-0.886981, 0.085220, -0.453875,
		0.049146, -0.959825, -0.276261,
		30.229578, 32.220341, 49.876614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499983, 32.499714, 49.979496>,  <30.195175, 32.892220, 50.069996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499983, 32.499714, 49.979496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.790674, 32.238903, 50.065960>,  <29.965090, 32.082417, 50.117840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.790674, 32.238903, 50.065960>,  <29.499983, 32.499714, 49.979496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790674, 32.238903, 50.065960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433871, -0.191722, 0.880340,
		-0.532563, -0.733554, -0.422226,
		0.726728, -0.652028, 0.216164,
		30.008692, 32.043293, 50.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131876, 31.905582, 50.349785>,  <29.499983, 32.499714, 49.979496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131876, 31.905582, 50.349785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.517118, 31.848642, 50.441143>,  <29.748264, 31.814478, 50.495960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.517118, 31.848642, 50.441143>,  <29.131876, 31.905582, 50.349785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517118, 31.848642, 50.441143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253228, -0.191963, 0.948170,
		-0.091125, -0.971024, -0.220926,
		0.963105, -0.142347, 0.228398,
		29.806049, 31.805939, 50.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019621, 31.346418, 50.764519>,  <29.131876, 31.905582, 50.349785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019621, 31.346418, 50.764519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.375244, 31.519739, 50.823616>,  <29.588617, 31.623732, 50.859074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.375244, 31.519739, 50.823616>,  <29.019621, 31.346418, 50.764519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375244, 31.519739, 50.823616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112781, -0.105472, 0.988006,
		0.443686, -0.895056, -0.044903,
		0.889057, 0.433300, 0.147742,
		29.641962, 31.649729, 50.867939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324753, 30.993435, 51.339333>,  <29.019621, 31.346418, 50.764519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324753, 30.993435, 51.339333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.471979, 31.364788, 51.318787>,  <29.560314, 31.587599, 51.306461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.471979, 31.364788, 51.318787>,  <29.324753, 30.993435, 51.339333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471979, 31.364788, 51.318787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139322, 0.109683, 0.984154,
		0.919303, -0.355076, 0.169714,
		0.368064, 0.928381, -0.051362,
		29.582397, 31.643303, 51.303379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872803, 31.028839, 51.927818>,  <29.324753, 30.993435, 51.339333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872803, 31.028839, 51.927818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.774307, 31.404930, 51.833717>,  <29.715210, 31.630585, 51.777256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.774307, 31.404930, 51.833717>,  <29.872803, 31.028839, 51.927818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774307, 31.404930, 51.833717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211865, 0.184634, 0.959700,
		0.945769, 0.286155, 0.153737,
		-0.246238, 0.940226, -0.235248,
		29.700436, 31.686998, 51.763142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393333, 31.510187, 52.286808>,  <29.872803, 31.028839, 51.927818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393333, 31.510187, 52.286808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.061932, 31.718435, 52.204315>,  <29.863091, 31.843384, 52.154819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.061932, 31.718435, 52.204315>,  <30.393333, 31.510187, 52.286808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061932, 31.718435, 52.204315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014884, 0.347679, 0.937495,
		0.559783, 0.779789, -0.280305,
		-0.828505, 0.520622, -0.206231,
		29.813379, 31.874622, 52.142445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520632, 32.153370, 52.581791>,  <30.393333, 31.510187, 52.286808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520632, 32.153370, 52.581791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.124294, 32.177631, 52.533535>,  <29.886492, 32.192188, 52.504581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.124294, 32.177631, 52.533535>,  <30.520632, 32.153370, 52.581791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124294, 32.177631, 52.533535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070116, 0.532406, 0.843580,
		0.115393, 0.844313, -0.523278,
		-0.990842, 0.060653, -0.120635,
		29.827042, 32.195827, 52.497345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269228, 32.785572, 52.802696>,  <30.520632, 32.153370, 52.581791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269228, 32.785572, 52.802696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.936764, 32.564075, 52.822838>,  <29.737286, 32.431175, 52.834923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.936764, 32.564075, 52.822838>,  <30.269228, 32.785572, 52.802696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936764, 32.564075, 52.822838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153971, 0.316235, 0.936103,
		-0.534286, 0.770300, -0.348104,
		-0.831163, -0.553744, 0.050356,
		29.687414, 32.397953, 52.837944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735666, 33.173218, 52.859455>,  <30.269228, 32.785572, 52.802696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735666, 33.173218, 52.859455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.576746, 32.828022, 52.984291>,  <29.481394, 32.620903, 53.059193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.576746, 32.828022, 52.984291>,  <29.735666, 33.173218, 52.859455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576746, 32.828022, 52.984291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099263, 0.378503, 0.920262,
		-0.912304, 0.334642, -0.236042,
		-0.397301, -0.862989, 0.312093,
		29.457556, 32.569126, 53.077919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176039, 33.415077, 53.110302>,  <29.735666, 33.173218, 52.859455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176039, 33.415077, 53.110302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.251013, 33.052338, 53.261299>,  <29.295998, 32.834694, 53.351898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.251013, 33.052338, 53.261299>,  <29.176039, 33.415077, 53.110302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251013, 33.052338, 53.261299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065270, 0.371956, 0.925953,
		-0.980106, -0.198193, 0.010527,
		0.187433, -0.906845, 0.377493,
		29.307243, 32.780285, 53.374546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666107, 33.223858, 53.538284>,  <29.176039, 33.415077, 53.110302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666107, 33.223858, 53.538284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.975254, 33.016190, 53.684235>,  <29.160742, 32.891590, 53.771805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.975254, 33.016190, 53.684235>,  <28.666107, 33.223858, 53.538284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975254, 33.016190, 53.684235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183597, 0.367466, 0.911735,
		-0.607427, -0.771642, 0.188685,
		0.772868, -0.519170, 0.364880,
		29.207115, 32.860439, 53.793697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384245, 32.927780, 54.220043>,  <28.666107, 33.223858, 53.538284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384245, 32.927780, 54.220043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.774162, 32.845261, 54.254032>,  <29.008112, 32.795750, 54.274426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.774162, 32.845261, 54.254032>,  <28.384245, 32.927780, 54.220043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774162, 32.845261, 54.254032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001883, 0.373238, 0.927734,
		-0.223111, -0.904506, 0.363441,
		0.974791, -0.206304, 0.084976,
		29.066599, 32.783371, 54.279526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427338, 32.738323, 54.869774>,  <28.384245, 32.927780, 54.220043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427338, 32.738323, 54.869774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.802378, 32.832993, 54.767879>,  <29.027403, 32.889793, 54.706741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.802378, 32.832993, 54.767879>,  <28.427338, 32.738323, 54.869774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802378, 32.832993, 54.767879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186353, 0.276488, 0.942776,
		0.293574, -0.931416, 0.215127,
		0.937596, 0.236685, -0.254742,
		29.083658, 32.903992, 54.691460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999884, 32.440002, 55.357742>,  <28.427338, 32.738323, 54.869774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999884, 32.440002, 55.357742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.135992, 32.758598, 55.157814>,  <29.217657, 32.949757, 55.037857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.135992, 32.758598, 55.157814>,  <28.999884, 32.440002, 55.357742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135992, 32.758598, 55.157814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229696, 0.445029, 0.865557,
		0.911841, -0.409331, -0.031520,
		0.340272, 0.796490, -0.499818,
		29.238073, 32.997547, 55.007870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.710558, 32.548130, 55.671917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655521, 32.885307, 55.463871>,  <29.622499, 33.087612, 55.339043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655521, 32.885307, 55.463871>,  <29.710558, 32.548130, 55.671917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655521, 32.885307, 55.463871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178872, 0.537620, 0.823996,
		0.974204, 0.020340, -0.224750,
		-0.137590, 0.842942, -0.520114,
		29.614244, 33.138191, 55.307838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243637, 32.994915, 55.884243>,  <29.710558, 32.548130, 55.671917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243637, 32.994915, 55.884243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983854, 33.263905, 55.742268>,  <29.827986, 33.425301, 55.657082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983854, 33.263905, 55.742268>,  <30.243637, 32.994915, 55.884243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983854, 33.263905, 55.742268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200105, 0.601474, 0.773426,
		0.733598, 0.431280, -0.525197,
		-0.649455, 0.672478, -0.354938,
		29.789019, 33.465649, 55.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551500, 33.773026, 55.943295>,  <30.243637, 32.994915, 55.884243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551500, 33.773026, 55.943295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151737, 33.785057, 55.936630>,  <29.911879, 33.792274, 55.932632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151737, 33.785057, 55.936630>,  <30.551500, 33.773026, 55.943295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151737, 33.785057, 55.936630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008225, 0.679682, 0.733461,
		0.033385, 0.732890, -0.679528,
		-0.999409, 0.030076, -0.016664,
		29.851915, 33.794079, 55.931633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352833, 34.536831, 56.087669>,  <30.551500, 33.773026, 55.943295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352833, 34.536831, 56.087669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022005, 34.321102, 56.151028>,  <29.823509, 34.191666, 56.189041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022005, 34.321102, 56.151028>,  <30.352833, 34.536831, 56.087669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022005, 34.321102, 56.151028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101723, 0.420743, 0.901459,
		-0.552819, 0.729457, -0.402845,
		-0.827070, -0.539322, 0.158392,
		29.773884, 34.159306, 56.198544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930246, 34.981491, 56.480606>,  <30.352833, 34.536831, 56.087669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930246, 34.981491, 56.480606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753551, 34.627270, 56.538116>,  <29.647535, 34.414738, 56.572624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753551, 34.627270, 56.538116>,  <29.930246, 34.981491, 56.480606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753551, 34.627270, 56.538116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027715, 0.146716, 0.988790,
		-0.896717, 0.440770, -0.040267,
		-0.441737, -0.885549, 0.143779,
		29.621031, 34.361607, 56.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282703, 35.133224, 56.714886>,  <29.930246, 34.981491, 56.480606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282703, 35.133224, 56.714886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313816, 34.752132, 56.832367>,  <29.332483, 34.523479, 56.902855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313816, 34.752132, 56.832367>,  <29.282703, 35.133224, 56.714886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313816, 34.752132, 56.832367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295130, 0.259391, 0.919573,
		-0.952286, -0.158208, -0.261002,
		0.077783, -0.952726, 0.293706,
		29.337151, 34.466316, 56.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621088, 34.891483, 57.046284>,  <29.282703, 35.133224, 56.714886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621088, 34.891483, 57.046284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933979, 34.678413, 57.175514>,  <29.121714, 34.550571, 57.253052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933979, 34.678413, 57.175514>,  <28.621088, 34.891483, 57.046284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933979, 34.678413, 57.175514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201909, 0.273829, 0.940346,
		-0.589364, -0.800798, 0.106646,
		0.782230, -0.532673, 0.323074,
		29.168648, 34.518612, 57.272438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354364, 34.704536, 57.620667>,  <28.621088, 34.891483, 57.046284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354364, 34.704536, 57.620667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741947, 34.609818, 57.649078>,  <28.974497, 34.552986, 57.666126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741947, 34.609818, 57.649078>,  <28.354364, 34.704536, 57.620667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741947, 34.609818, 57.649078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066179, 0.028396, 0.997404,
		-0.238200, -0.971144, 0.011844,
		0.968959, -0.236798, 0.071033,
		29.032635, 34.538776, 57.670387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464266, 34.061302, 58.008492>,  <28.354364, 34.704536, 57.620667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464266, 34.061302, 58.008492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801929, 34.268646, 58.063187>,  <29.004528, 34.393051, 58.096004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801929, 34.268646, 58.063187>,  <28.464266, 34.061302, 58.008492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801929, 34.268646, 58.063187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237424, 0.132807, 0.962285,
		0.480647, -0.844789, 0.235181,
		0.844161, 0.518357, 0.136740,
		29.055178, 34.424152, 58.104210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741201, 33.770741, 58.774075>,  <28.464266, 34.061302, 58.008492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741201, 33.770741, 58.774075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929749, 34.111965, 58.684536>,  <29.042877, 34.316700, 58.630814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929749, 34.111965, 58.684536>,  <28.741201, 33.770741, 58.774075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929749, 34.111965, 58.684536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168280, 0.336140, 0.926656,
		0.865733, -0.399129, 0.301998,
		0.471369, 0.853057, -0.223842,
		29.071159, 34.367882, 58.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154964, 33.869778, 59.330467>,  <28.741201, 33.770741, 58.774075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154964, 33.869778, 59.330467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116745, 34.225071, 59.150730>,  <29.093813, 34.438248, 59.042889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116745, 34.225071, 59.150730>,  <29.154964, 33.869778, 59.330467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116745, 34.225071, 59.150730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073270, 0.443911, 0.893070,
		0.992724, 0.118256, 0.022665,
		-0.095550, 0.888233, -0.449346,
		29.088079, 34.491539, 59.015926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499500, 34.251034, 59.764214>,  <29.154964, 33.869778, 59.330467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499500, 34.251034, 59.764214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256006, 34.495689, 59.562088>,  <29.109909, 34.642483, 59.440815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256006, 34.495689, 59.562088>,  <29.499500, 34.251034, 59.764214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256006, 34.495689, 59.562088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121793, 0.557323, 0.821314,
		0.783968, 0.561507, -0.264770,
		-0.608737, 0.611638, -0.505311,
		29.073385, 34.679180, 59.410496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618181, 34.885265, 60.023254>,  <29.499500, 34.251034, 59.764214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618181, 34.885265, 60.023254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262753, 34.910027, 59.841438>,  <29.049496, 34.924885, 59.732349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262753, 34.910027, 59.841438>,  <29.618181, 34.885265, 60.023254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262753, 34.910027, 59.841438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300052, 0.671074, 0.677959,
		0.346998, 0.738802, -0.577723,
		-0.888573, 0.061904, -0.454540,
		28.996181, 34.928596, 59.705078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448408, 35.570412, 59.990707>,  <29.618181, 34.885265, 60.023254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448408, 35.570412, 59.990707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099646, 35.389805, 59.914906>,  <28.890388, 35.281441, 59.869423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099646, 35.389805, 59.914906>,  <29.448408, 35.570412, 59.990707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099646, 35.389805, 59.914906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445531, 0.570917, 0.689606,
		-0.203177, 0.685702, -0.698950,
		-0.871907, -0.451516, -0.189504,
		28.838074, 35.254349, 59.858055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112801, 36.136299, 59.874268>,  <29.448408, 35.570412, 59.990707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112801, 36.136299, 59.874268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860914, 35.837421, 59.959267>,  <28.709782, 35.658096, 60.010265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860914, 35.837421, 59.959267>,  <29.112801, 36.136299, 59.874268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860914, 35.837421, 59.959267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508724, 0.603387, 0.614104,
		-0.587073, 0.278611, -0.760080,
		-0.629718, -0.747195, 0.212496,
		28.671999, 35.613262, 60.023014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363764, 36.317467, 59.860359>,  <29.112801, 36.136299, 59.874268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363764, 36.317467, 59.860359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377096, 36.024563, 60.132446>,  <28.385096, 35.848820, 60.295696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377096, 36.024563, 60.132446>,  <28.363764, 36.317467, 59.860359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377096, 36.024563, 60.132446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637847, 0.508381, 0.578532,
		-0.769441, -0.453156, -0.450122,
		0.033333, -0.732256, 0.680214,
		28.387096, 35.804886, 60.336510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581123, 36.252346, 60.290451>,  <28.363764, 36.317467, 59.860359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581123, 36.252346, 60.290451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815840, 36.022266, 60.518421>,  <27.956671, 35.884216, 60.655205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815840, 36.022266, 60.518421>,  <27.581123, 36.252346, 60.290451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815840, 36.022266, 60.518421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540214, 0.246222, 0.804701,
		-0.603194, -0.780075, -0.166250,
		0.586793, -0.575202, 0.569927,
		27.991879, 35.849705, 60.689400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163534, 36.122307, 60.902840>,  <27.581123, 36.252346, 60.290451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163534, 36.122307, 60.902840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514839, 35.989143, 61.040142>,  <27.725622, 35.909245, 61.122524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514839, 35.989143, 61.040142>,  <27.163534, 36.122307, 60.902840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514839, 35.989143, 61.040142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284782, 0.212507, 0.934741,
		-0.384128, -0.918702, 0.091831,
		0.878263, -0.332908, 0.343259,
		27.778318, 35.889271, 61.143120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080715, 35.727547, 61.576794>,  <27.163534, 36.122307, 60.902840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080715, 35.727547, 61.576794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454632, 35.869419, 61.569077>,  <27.678982, 35.954540, 61.564445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454632, 35.869419, 61.569077>,  <27.080715, 35.727547, 61.576794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454632, 35.869419, 61.569077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093726, 0.298694, 0.949735,
		0.342618, -0.885992, 0.312459,
		0.934788, 0.354682, -0.019297,
		27.735069, 35.975822, 61.563290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357697, 35.713089, 62.205860>,  <27.080715, 35.727547, 61.576794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357697, 35.713089, 62.205860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628202, 35.970921, 62.063210>,  <27.790506, 36.125622, 61.977619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628202, 35.970921, 62.063210>,  <27.357697, 35.713089, 62.205860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628202, 35.970921, 62.063210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191823, 0.313322, 0.930072,
		0.711246, -0.697382, 0.088243,
		0.676264, 0.644583, -0.356623,
		27.831081, 36.164295, 61.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912231, 35.676277, 62.710419>,  <27.357697, 35.713089, 62.205860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912231, 35.676277, 62.710419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923275, 36.023708, 62.512508>,  <27.929901, 36.232166, 62.393761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923275, 36.023708, 62.512508>,  <27.912231, 35.676277, 62.710419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923275, 36.023708, 62.512508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190909, 0.481272, 0.855529,
		0.981219, -0.118079, -0.152532,
		0.027611, 0.868582, -0.494776,
		27.931559, 36.284283, 62.364075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528454, 35.941059, 62.886208>,  <27.912231, 35.676277, 62.710419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528454, 35.941059, 62.886208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287687, 36.236809, 62.765533>,  <28.143227, 36.414261, 62.693130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287687, 36.236809, 62.765533>,  <28.528454, 35.941059, 62.886208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287687, 36.236809, 62.765533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206669, 0.509152, 0.835495,
		0.771351, 0.440550, -0.459275,
		-0.601918, 0.739378, -0.301687,
		28.107111, 36.458622, 62.675026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212030, 35.746349, 63.563202>,  <28.528454, 35.941059, 62.886208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212030, 35.746349, 63.563202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856174, 35.895275, 63.457428>,  <27.642662, 35.984631, 63.393963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856174, 35.895275, 63.457428>,  <28.212030, 35.746349, 63.563202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856174, 35.895275, 63.457428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220218, -0.157508, -0.962650,
		-0.400062, -0.914643, 0.058134,
		-0.889637, 0.372318, -0.264434,
		27.589283, 36.006969, 63.378098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784094, 35.793854, 64.011665>,  <28.212030, 35.746349, 63.563202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784094, 35.793854, 64.011665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067011, 36.064663, 64.093025>,  <29.236761, 36.227150, 64.141838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067011, 36.064663, 64.093025>,  <28.784094, 35.793854, 64.011665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067011, 36.064663, 64.093025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318358, -0.048164, -0.946746,
		-0.631176, 0.734381, -0.249602,
		0.707295, 0.677026, 0.203396,
		29.279200, 36.267769, 64.154045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818548, 36.345749, 63.579823>,  <28.784094, 35.793854, 64.011665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818548, 36.345749, 63.579823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199150, 36.304565, 63.695782>,  <29.427511, 36.279854, 63.765358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199150, 36.304565, 63.695782>,  <28.818548, 36.345749, 63.579823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199150, 36.304565, 63.695782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288172, -0.031613, -0.957057,
		0.107702, 0.994183, -0.000410,
		0.951503, -0.102959, 0.289901,
		29.484600, 36.273678, 63.782753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204407, 36.566895, 63.041069>,  <28.818548, 36.345749, 63.579823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204407, 36.566895, 63.041069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500515, 36.395164, 63.248020>,  <29.678181, 36.292126, 63.372192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500515, 36.395164, 63.248020>,  <29.204407, 36.566895, 63.041069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500515, 36.395164, 63.248020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475492, -0.209711, -0.854358,
		0.475294, 0.878467, 0.048896,
		0.740272, -0.429321, 0.517379,
		29.722597, 36.266369, 63.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836954, 36.857639, 62.791412>,  <29.204407, 36.566895, 63.041069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836954, 36.857639, 62.791412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943048, 36.512043, 62.962605>,  <30.006704, 36.304684, 63.065319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943048, 36.512043, 62.962605>,  <29.836954, 36.857639, 62.791412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943048, 36.512043, 62.962605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611874, -0.192219, -0.767244,
		0.745159, 0.465370, 0.477671,
		0.265235, -0.863992, 0.427981,
		30.022619, 36.252846, 63.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686413, 36.804993, 62.832767>,  <29.836954, 36.857639, 62.791412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686413, 36.804993, 62.832767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520222, 36.445580, 62.889351>,  <30.420507, 36.229931, 62.923302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520222, 36.445580, 62.889351>,  <30.686413, 36.804993, 62.832767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520222, 36.445580, 62.889351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547917, -0.371363, -0.749584,
		0.726061, -0.233927, 0.646617,
		-0.415478, -0.898536, 0.141460,
		30.395578, 36.176018, 62.931789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157902, 36.308762, 63.083019>,  <30.686413, 36.804993, 62.832767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157902, 36.308762, 63.083019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875750, 36.096451, 62.895096>,  <30.706459, 35.969067, 62.782341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875750, 36.096451, 62.895096>,  <31.157902, 36.308762, 63.083019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875750, 36.096451, 62.895096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647959, -0.214120, -0.730959,
		0.287379, -0.820019, 0.494956,
		-0.705381, -0.530774, -0.469806,
		30.664135, 35.937218, 62.754154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481720, 35.682213, 62.822720>,  <31.157902, 36.308762, 63.083019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481720, 35.682213, 62.822720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148592, 35.664371, 62.602024>,  <30.948715, 35.653667, 62.469604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148592, 35.664371, 62.602024>,  <31.481720, 35.682213, 62.822720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148592, 35.664371, 62.602024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545968, -0.230513, -0.805471,
		-0.091255, -0.972046, 0.216330,
		-0.832822, -0.044606, -0.551741,
		30.898745, 35.650990, 62.436501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552002, 34.993309, 62.449276>,  <31.481720, 35.682213, 62.822720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552002, 34.993309, 62.449276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285011, 35.218208, 62.253994>,  <31.124817, 35.353149, 62.136826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285011, 35.218208, 62.253994>,  <31.552002, 34.993309, 62.449276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285011, 35.218208, 62.253994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524135, -0.110950, -0.844377,
		-0.528918, -0.819490, -0.220639,
		-0.667479, 0.562251, -0.488207,
		31.084768, 35.386883, 62.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092144, 34.498760, 62.140728>,  <31.552002, 34.993309, 62.449276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092144, 34.498760, 62.140728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027678, 34.832027, 61.929119>,  <30.988998, 35.031986, 61.802155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027678, 34.832027, 61.929119>,  <31.092144, 34.498760, 62.140728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027678, 34.832027, 61.929119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167532, -0.505151, -0.846614,
		-0.972604, -0.225072, -0.058170,
		-0.161165, 0.833166, -0.529019,
		30.979328, 35.081978, 61.770412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682215, 34.300201, 61.533985>,  <31.092144, 34.498760, 62.140728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682215, 34.300201, 61.533985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882095, 34.639618, 61.464375>,  <31.002024, 34.843266, 61.422607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882095, 34.639618, 61.464375>,  <30.682215, 34.300201, 61.533985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882095, 34.639618, 61.464375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190808, -0.303801, -0.933433,
		-0.844921, 0.433232, -0.313717,
		0.499701, 0.848537, -0.174024,
		31.032005, 34.894180, 61.412167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469698, 34.431484, 60.925354>,  <30.682215, 34.300201, 61.533985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469698, 34.431484, 60.925354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799726, 34.654568, 60.961617>,  <30.997744, 34.788418, 60.983372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799726, 34.654568, 60.961617>,  <30.469698, 34.431484, 60.925354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799726, 34.654568, 60.961617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213528, -0.159218, -0.963875,
		-0.523128, 0.814623, -0.250453,
		0.825071, 0.557709, 0.090654,
		31.047249, 34.821880, 60.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410530, 34.905155, 60.395805>,  <30.469698, 34.431484, 60.925354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410530, 34.905155, 60.395805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793526, 34.871979, 60.506317>,  <31.023323, 34.852074, 60.572624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793526, 34.871979, 60.506317>,  <30.410530, 34.905155, 60.395805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793526, 34.871979, 60.506317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254365, -0.208969, -0.944262,
		0.136051, 0.974399, -0.178989,
		0.957491, -0.082939, 0.276283,
		31.080772, 34.847095, 60.589203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739779, 35.214855, 59.796173>,  <30.410530, 34.905155, 60.395805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739779, 35.214855, 59.796173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004040, 35.002510, 60.008484>,  <31.162596, 34.875103, 60.135872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004040, 35.002510, 60.008484>,  <30.739779, 35.214855, 59.796173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004040, 35.002510, 60.008484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380046, -0.373226, -0.846326,
		0.647380, 0.760848, -0.044822,
		0.660654, -0.530860, 0.530777,
		31.202236, 34.843250, 60.167717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284164, 35.328514, 59.456039>,  <30.739779, 35.214855, 59.796173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284164, 35.328514, 59.456039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384453, 35.003933, 59.667198>,  <31.444626, 34.809185, 59.793896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384453, 35.003933, 59.667198>,  <31.284164, 35.328514, 59.456039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384453, 35.003933, 59.667198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405356, -0.407208, -0.818455,
		0.879104, 0.419193, 0.226832,
		0.250723, -0.811455, 0.527900,
		31.459669, 34.760498, 59.825569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899881, 35.192162, 59.222931>,  <31.284164, 35.328514, 59.456039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899881, 35.192162, 59.222931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752007, 34.853336, 59.375675>,  <31.663280, 34.650040, 59.467319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752007, 34.853336, 59.375675>,  <31.899881, 35.192162, 59.222931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752007, 34.853336, 59.375675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164864, -0.464252, -0.870224,
		0.914412, -0.258757, 0.311279,
		-0.369689, -0.847062, 0.381858,
		31.641100, 34.599216, 59.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415386, 34.629601, 59.181969>,  <31.899881, 35.192162, 59.222931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415386, 34.629601, 59.181969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058514, 34.451168, 59.210327>,  <31.844391, 34.344109, 59.227345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058514, 34.451168, 59.210327>,  <32.415386, 34.629601, 59.181969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058514, 34.451168, 59.210327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178174, -0.491811, -0.852276,
		0.415058, -0.747749, 0.518264,
		-0.892177, -0.446085, 0.070901,
		31.790861, 34.317341, 59.231598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516151, 33.846214, 58.962784>,  <32.415386, 34.629601, 59.181969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516151, 33.846214, 58.962784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140766, 33.979099, 58.925003>,  <31.915535, 34.058830, 58.902332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140766, 33.979099, 58.925003>,  <32.516151, 33.846214, 58.962784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140766, 33.979099, 58.925003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052311, -0.407051, -0.911906,
		-0.341391, -0.850851, 0.399381,
		-0.938465, 0.332209, -0.094455,
		31.859226, 34.078762, 58.896667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178902, 33.286442, 58.613300>,  <32.516151, 33.846214, 58.962784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178902, 33.286442, 58.613300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923136, 33.585083, 58.539837>,  <31.769676, 33.764267, 58.495758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923136, 33.585083, 58.539837>,  <32.178902, 33.286442, 58.613300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923136, 33.585083, 58.539837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148120, -0.354012, -0.923437,
		-0.754460, -0.563256, 0.336948,
		-0.639414, 0.746604, -0.183659,
		31.731312, 33.809063, 58.484741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627110, 32.961716, 58.310379>,  <32.178902, 33.286442, 58.613300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627110, 32.961716, 58.310379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646963, 33.346996, 58.204723>,  <31.658875, 33.578167, 58.141331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646963, 33.346996, 58.204723>,  <31.627110, 32.961716, 58.310379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646963, 33.346996, 58.204723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078503, -0.267413, -0.960379,
		-0.995678, 0.026930, -0.088887,
		0.049633, 0.963206, -0.264143,
		31.661854, 33.635960, 58.125481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276657, 33.035652, 57.655521>,  <31.627110, 32.961716, 58.310379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276657, 33.035652, 57.655521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519724, 33.352718, 57.675194>,  <31.665564, 33.542957, 57.686996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519724, 33.352718, 57.675194>,  <31.276657, 33.035652, 57.655521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519724, 33.352718, 57.675194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097439, -0.012957, -0.995157,
		-0.788191, 0.609517, -0.085110,
		0.607668, 0.792667, 0.049179,
		31.702024, 33.590519, 57.689949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149504, 33.406506, 57.024391>,  <31.276657, 33.035652, 57.655521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149504, 33.406506, 57.024391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490526, 33.581860, 57.138210>,  <31.695139, 33.687073, 57.206501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490526, 33.581860, 57.138210>,  <31.149504, 33.406506, 57.024391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490526, 33.581860, 57.138210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306582, 0.021431, -0.951603,
		-0.423271, 0.898530, -0.116131,
		0.852555, 0.438389, 0.284544,
		31.746292, 33.713375, 57.223572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.649601, 36.989864, 51.809284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.784767, 36.624443, 51.718739>,  <46.865868, 36.405190, 51.664410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.784767, 36.624443, 51.718739>,  <46.649601, 36.989864, 51.809284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784767, 36.624443, 51.718739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543954, 0.006707, -0.839088,
		0.768066, 0.406674, -0.494662,
		0.337918, -0.913549, -0.226363,
		46.886143, 36.350380, 51.650829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753548, 36.924156, 51.029224>,  <46.649601, 36.989864, 51.809284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753548, 36.924156, 51.029224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.664036, 36.579842, 51.212074>,  <46.610329, 36.373253, 51.321785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.664036, 36.579842, 51.212074>,  <46.753548, 36.924156, 51.029224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664036, 36.579842, 51.212074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773797, -0.128249, -0.620315,
		0.592587, -0.492535, -0.637377,
		-0.223784, -0.860791, 0.457121,
		46.596901, 36.321606, 51.349213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428658, 36.560677, 50.520340>,  <46.753548, 36.924156, 51.029224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428658, 36.560677, 50.520340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.340244, 36.333389, 50.837395>,  <46.287197, 36.197018, 51.027626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.340244, 36.333389, 50.837395>,  <46.428658, 36.560677, 50.520340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340244, 36.333389, 50.837395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837074, -0.306517, -0.453161,
		0.500451, -0.763657, -0.407892,
		-0.221034, -0.568220, 0.792635,
		46.273933, 36.162922, 51.075184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214218, 35.972412, 50.182693>,  <46.428658, 36.560677, 50.520340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214218, 35.972412, 50.182693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.060631, 35.982971, 50.551880>,  <45.968479, 35.989307, 50.773392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.060631, 35.982971, 50.551880>,  <46.214218, 35.972412, 50.182693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060631, 35.982971, 50.551880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850577, -0.399069, -0.342438,
		0.359289, -0.916541, 0.175680,
		-0.383967, 0.026395, 0.922969,
		45.945442, 35.990891, 50.828770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012848, 35.279648, 50.199646>,  <46.214218, 35.972412, 50.182693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012848, 35.279648, 50.199646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.813892, 35.484531, 50.479717>,  <45.694519, 35.607460, 50.647758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.813892, 35.484531, 50.479717>,  <46.012848, 35.279648, 50.199646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813892, 35.484531, 50.479717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857371, -0.413378, -0.306648,
		0.132370, -0.752834, 0.644763,
		-0.497386, 0.512210, 0.700177,
		45.664677, 35.638195, 50.689770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514915, 34.762543, 50.400105>,  <46.012848, 35.279648, 50.199646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514915, 34.762543, 50.400105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.381641, 35.120098, 50.520077>,  <45.301678, 35.334629, 50.592060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.381641, 35.120098, 50.520077>,  <45.514915, 34.762543, 50.400105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381641, 35.120098, 50.520077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938831, -0.285142, -0.193105,
		-0.087090, -0.345926, 0.934211,
		-0.333183, 0.893884, 0.299934,
		45.281685, 35.388264, 50.610058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951263, 34.620552, 50.992077>,  <45.514915, 34.762543, 50.400105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951263, 34.620552, 50.992077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.888329, 34.975246, 50.818207>,  <44.850567, 35.188065, 50.713882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.888329, 34.975246, 50.818207>,  <44.951263, 34.620552, 50.992077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888329, 34.975246, 50.818207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948608, -0.258082, -0.183129,
		-0.274571, 0.383530, 0.881768,
		-0.157333, 0.886735, -0.434682,
		44.841129, 35.241268, 50.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321484, 34.921303, 51.228062>,  <44.951263, 34.620552, 50.992077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321484, 34.921303, 51.228062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.362656, 35.158325, 50.908493>,  <44.387360, 35.300541, 50.716751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.362656, 35.158325, 50.908493>,  <44.321484, 34.921303, 51.228062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362656, 35.158325, 50.908493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991161, -0.006481, -0.132509,
		-0.083697, 0.805502, 0.586653,
		0.102934, 0.592558, -0.798924,
		44.393536, 35.336094, 50.668816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714939, 35.424091, 51.264801>,  <44.321484, 34.921303, 51.228062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714939, 35.424091, 51.264801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.827129, 35.421021, 50.880871>,  <43.894444, 35.419178, 50.650513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.827129, 35.421021, 50.880871>,  <43.714939, 35.424091, 51.264801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827129, 35.421021, 50.880871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940412, -0.202470, -0.273186,
		-0.192240, 0.979258, -0.064006,
		0.280479, -0.007675, -0.959829,
		43.911274, 35.418716, 50.592922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231995, 35.865643, 50.975449>,  <43.714939, 35.424091, 51.264801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231995, 35.865643, 50.975449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.392960, 35.647663, 50.681210>,  <43.489536, 35.516876, 50.504665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.392960, 35.647663, 50.681210>,  <43.231995, 35.865643, 50.975449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392960, 35.647663, 50.681210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855497, 0.062171, -0.514062,
		0.325869, 0.836163, -0.441181,
		0.402411, -0.544946, -0.735595,
		43.513683, 35.484180, 50.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085487, 36.268620, 50.387150>,  <43.231995, 35.865643, 50.975449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085487, 36.268620, 50.387150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142689, 35.901062, 50.240082>,  <43.177010, 35.680527, 50.151840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142689, 35.901062, 50.240082>,  <43.085487, 36.268620, 50.387150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142689, 35.901062, 50.240082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937093, -0.006181, -0.349024,
		0.318444, 0.394453, -0.861974,
		0.143002, -0.918895, -0.367671,
		43.185589, 35.625393, 50.129780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974792, 36.240051, 49.668659>,  <43.085487, 36.268620, 50.387150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974792, 36.240051, 49.668659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891151, 35.875690, 49.810944>,  <42.840969, 35.657074, 49.896317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.891151, 35.875690, 49.810944>,  <42.974792, 36.240051, 49.668659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891151, 35.875690, 49.810944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952776, 0.107858, -0.283873,
		0.220215, -0.398273, -0.890440,
		-0.209100, -0.910903, 0.355713,
		42.828423, 35.602421, 49.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421196, 36.159962, 49.366356>,  <42.974792, 36.240051, 49.668659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421196, 36.159962, 49.366356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417206, 35.802036, 49.544884>,  <42.414814, 35.587280, 49.652000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417206, 35.802036, 49.544884>,  <42.421196, 36.159962, 49.366356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417206, 35.802036, 49.544884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943480, -0.139453, -0.300664,
		0.331280, -0.424096, -0.842850,
		-0.009972, -0.894816, 0.446324,
		42.414215, 35.533592, 49.678780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087433, 35.699436, 48.854855>,  <42.421196, 36.159962, 49.366356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087433, 35.699436, 48.854855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.045990, 35.536861, 49.217968>,  <42.021122, 35.439316, 49.435837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.045990, 35.536861, 49.217968>,  <42.087433, 35.699436, 48.854855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045990, 35.536861, 49.217968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967980, -0.168611, -0.185971,
		0.228648, -0.897985, -0.375957,
		-0.103609, -0.406441, 0.907784,
		42.014908, 35.414928, 49.490303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751072, 35.093113, 48.663826>,  <42.087433, 35.699436, 48.854855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751072, 35.093113, 48.663826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675671, 35.170403, 49.048977>,  <41.630432, 35.216778, 49.280067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675671, 35.170403, 49.048977>,  <41.751072, 35.093113, 48.663826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675671, 35.170403, 49.048977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952898, -0.273193, -0.131722,
		0.237599, -0.942353, 0.235623,
		-0.188499, 0.193228, 0.962876,
		41.619122, 35.228371, 49.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280548, 34.547421, 48.962429>,  <41.751072, 35.093113, 48.663826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280548, 34.547421, 48.962429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.236904, 34.882370, 49.176682>,  <41.210716, 35.083340, 49.305233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.236904, 34.882370, 49.176682>,  <41.280548, 34.547421, 48.962429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236904, 34.882370, 49.176682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985017, -0.018684, -0.171441,
		-0.133552, -0.546314, 0.826864,
		-0.109110, 0.837372, 0.535634,
		41.204170, 35.133583, 49.337372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562279, 34.509563, 49.272694>,  <41.280548, 34.547421, 48.962429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562279, 34.509563, 49.272694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665726, 34.895622, 49.288731>,  <40.727795, 35.127258, 49.298351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665726, 34.895622, 49.288731>,  <40.562279, 34.509563, 49.272694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665726, 34.895622, 49.288731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891892, 0.254519, -0.373831,
		-0.371006, 0.060920, 0.926630,
		0.258619, 0.965147, 0.040094,
		40.743313, 35.185165, 49.300758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973259, 34.811119, 49.510460>,  <40.562279, 34.509563, 49.272694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973259, 34.811119, 49.510460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190857, 35.090450, 49.324383>,  <40.321415, 35.258049, 49.212734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190857, 35.090450, 49.324383>,  <39.973259, 34.811119, 49.510460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190857, 35.090450, 49.324383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816550, 0.312950, -0.485086,
		-0.193165, 0.643742, 0.740462,
		0.543998, 0.698325, -0.465197,
		40.354057, 35.299950, 49.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550735, 35.424927, 49.447338>,  <39.973259, 34.811119, 49.510460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550735, 35.424927, 49.447338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827770, 35.501472, 49.169144>,  <39.993992, 35.547401, 49.002228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827770, 35.501472, 49.169144>,  <39.550735, 35.424927, 49.447338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827770, 35.501472, 49.169144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721327, 0.180923, -0.668546,
		-0.002107, 0.964700, 0.263343,
		0.692591, 0.191365, -0.695483,
		40.035549, 35.558884, 48.960499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380337, 36.008228, 49.163227>,  <39.550735, 35.424927, 49.447338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380337, 36.008228, 49.163227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592422, 35.839191, 48.869209>,  <39.719673, 35.737770, 48.692799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592422, 35.839191, 48.869209>,  <39.380337, 36.008228, 49.163227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592422, 35.839191, 48.869209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736547, 0.199839, -0.646191,
		0.419965, 0.884014, -0.205300,
		0.530215, -0.422590, -0.735044,
		39.751488, 35.712414, 48.648697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757107, 35.807510, 49.081219>,  <39.380337, 36.008228, 49.163227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757107, 35.807510, 49.081219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592060, 35.674332, 49.420372>,  <38.493034, 35.594425, 49.623863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592060, 35.674332, 49.420372>,  <38.757107, 35.807510, 49.081219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592060, 35.674332, 49.420372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357733, 0.915252, 0.185312,
		-0.837722, -0.226852, -0.496748,
		-0.412612, -0.332943, 0.847880,
		38.468277, 35.574448, 49.674736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007614, 35.875362, 48.916935>,  <38.757107, 35.807510, 49.081219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007614, 35.875362, 48.916935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143120, 35.913830, 49.291313>,  <38.224422, 35.936909, 49.515938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143120, 35.913830, 49.291313>,  <38.007614, 35.875362, 48.916935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143120, 35.913830, 49.291313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346970, 0.937419, 0.029271,
		-0.874557, -0.334660, 0.350931,
		0.338766, 0.096164, 0.935944,
		38.244751, 35.942680, 49.572098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536381, 35.870773, 48.247753>,  <38.007614, 35.875362, 48.916935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536381, 35.870773, 48.247753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851036, 35.627312, 48.206310>,  <38.039829, 35.481236, 48.181442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851036, 35.627312, 48.206310>,  <37.536381, 35.870773, 48.247753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851036, 35.627312, 48.206310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612111, -0.790769, -0.001960,
		-0.080739, 0.064963, -0.994616,
		0.786639, -0.608657, -0.103611,
		38.087029, 35.444714, 48.175228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304165, 35.282940, 47.735050>,  <37.536381, 35.870773, 48.247753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304165, 35.282940, 47.735050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610832, 35.198166, 47.977474>,  <37.794834, 35.147301, 48.122929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610832, 35.198166, 47.977474>,  <37.304165, 35.282940, 47.735050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610832, 35.198166, 47.977474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379829, -0.910763, 0.161992,
		0.517640, -0.354392, -0.778753,
		0.766667, -0.211939, 0.606055,
		37.840832, 35.134583, 48.159290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539753, 34.613846, 47.613773>,  <37.304165, 35.282940, 47.735050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539753, 34.613846, 47.613773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577988, 34.686539, 48.005249>,  <37.600929, 34.730152, 48.240135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577988, 34.686539, 48.005249>,  <37.539753, 34.613846, 47.613773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577988, 34.686539, 48.005249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507266, -0.837059, 0.204971,
		0.856472, -0.516049, 0.012176,
		0.095583, 0.181729, 0.978692,
		37.606663, 34.741058, 48.298855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216591, 33.970119, 47.402546>,  <37.539753, 34.613846, 47.613773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216591, 33.970119, 47.402546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159557, 33.677608, 47.135742>,  <37.125336, 33.502102, 46.975658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159557, 33.677608, 47.135742>,  <37.216591, 33.970119, 47.402546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159557, 33.677608, 47.135742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923480, -0.144211, 0.355511,
		-0.356167, 0.666663, -0.654756,
		-0.142583, -0.731275, -0.667013,
		37.116783, 33.458225, 46.935638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664547, 34.123024, 46.931095>,  <37.216591, 33.970119, 47.402546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664547, 34.123024, 46.931095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692165, 33.724091, 46.921635>,  <36.708736, 33.484730, 46.915958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692165, 33.724091, 46.921635>,  <36.664547, 34.123024, 46.931095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692165, 33.724091, 46.921635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959709, -0.072876, 0.271381,
		-0.272381, 0.003964, -0.962181,
		0.069044, -0.997333, -0.023655,
		36.712879, 33.424892, 46.914539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058830, 33.852371, 46.616547>,  <36.664547, 34.123024, 46.931095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058830, 33.852371, 46.616547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183830, 33.518635, 46.798191>,  <36.258831, 33.318394, 46.907177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183830, 33.518635, 46.798191>,  <36.058830, 33.852371, 46.616547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183830, 33.518635, 46.798191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936144, -0.189387, 0.296255,
		-0.161173, -0.517698, -0.840245,
		0.312502, -0.834339, 0.454116,
		36.277580, 33.268333, 46.934425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747200, 33.237053, 46.266582>,  <36.058830, 33.852371, 46.616547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747200, 33.237053, 46.266582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860229, 33.126877, 46.634121>,  <35.928047, 33.060772, 46.854645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860229, 33.126877, 46.634121>,  <35.747200, 33.237053, 46.266582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860229, 33.126877, 46.634121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925651, -0.329585, 0.185862,
		0.251645, -0.903054, -0.348093,
		0.282569, -0.275441, 0.918851,
		35.945000, 33.044243, 46.909775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520145, 32.562462, 46.334244>,  <35.747200, 33.237053, 46.266582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520145, 32.562462, 46.334244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.552822, 32.724636, 46.698429>,  <35.572430, 32.821941, 46.916943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.552822, 32.724636, 46.698429>,  <35.520145, 32.562462, 46.334244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552822, 32.724636, 46.698429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870409, -0.415982, 0.263337,
		0.485504, -0.813991, 0.318911,
		0.081693, 0.405434, 0.910466,
		35.577332, 32.846268, 46.971569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514725, 32.006615, 46.763660>,  <35.520145, 32.562462, 46.334244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514725, 32.006615, 46.763660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389462, 32.337547, 46.950184>,  <35.314304, 32.536106, 47.062099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389462, 32.337547, 46.950184>,  <35.514725, 32.006615, 46.763660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389462, 32.337547, 46.950184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858549, -0.456528, 0.233401,
		0.405985, -0.327259, 0.853275,
		-0.313161, 0.827335, 0.466311,
		35.295513, 32.585747, 47.090076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092865, 31.822739, 47.344791>,  <35.514725, 32.006615, 46.763660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092865, 31.822739, 47.344791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002438, 32.211178, 47.314171>,  <34.948181, 32.444241, 47.295799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002438, 32.211178, 47.314171>,  <35.092865, 31.822739, 47.344791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002438, 32.211178, 47.314171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905450, -0.180498, 0.384162,
		0.359242, 0.156159, 0.920087,
		-0.226064, 0.971100, -0.076552,
		34.934620, 32.502506, 47.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808926, 32.090237, 48.020218>,  <35.092865, 31.822739, 47.344791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808926, 32.090237, 48.020218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670033, 32.328259, 47.730297>,  <34.586697, 32.471073, 47.556343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670033, 32.328259, 47.730297>,  <34.808926, 32.090237, 48.020218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670033, 32.328259, 47.730297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934483, -0.154811, 0.320586,
		0.078560, 0.788633, 0.609825,
		-0.347232, 0.595057, -0.724802,
		34.565865, 32.506775, 47.512856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251247, 32.459743, 48.271465>,  <34.808926, 32.090237, 48.020218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251247, 32.459743, 48.271465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197899, 32.527283, 47.880836>,  <34.165890, 32.567806, 47.646458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197899, 32.527283, 47.880836>,  <34.251247, 32.459743, 48.271465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197899, 32.527283, 47.880836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990356, 0.014578, 0.137776,
		0.037500, 0.985534, 0.165278,
		-0.133373, 0.168850, -0.976576,
		34.157887, 32.577938, 47.587864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790005, 33.077126, 48.307125>,  <34.251247, 32.459743, 48.271465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790005, 33.077126, 48.307125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752224, 32.925076, 47.939087>,  <33.729557, 32.833843, 47.718262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752224, 32.925076, 47.939087>,  <33.790005, 33.077126, 48.307125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752224, 32.925076, 47.939087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953334, 0.300763, -0.026395,
		0.286765, 0.874668, -0.390796,
		-0.094450, -0.380129, -0.920099,
		33.723888, 32.811039, 47.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.540142, 31.685421, 52.786457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.882286, 31.892305, 52.798157>,  <29.087572, 32.016438, 52.805176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.882286, 31.892305, 52.798157>,  <28.540142, 31.685421, 52.786457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882286, 31.892305, 52.798157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115191, -0.134850, -0.984148,
		-0.505068, 0.845168, -0.174923,
		0.855358, 0.517211, 0.029247,
		29.138893, 32.047470, 52.806931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509331, 32.123817, 52.302250>,  <28.540142, 31.685421, 52.786457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509331, 32.123817, 52.302250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.905247, 32.125473, 52.359234>,  <29.142797, 32.126465, 52.393425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.905247, 32.125473, 52.359234>,  <28.509331, 32.123817, 52.302250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905247, 32.125473, 52.359234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142473, -0.003582, -0.989792,
		-0.003582, 0.999985, -0.004134,
		0.989792, 0.004134, 0.142458,
		29.202185, 32.126713, 52.401970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831335, 32.668617, 51.823395>,  <28.509331, 32.123817, 52.302250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831335, 32.668617, 51.823395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.136774, 32.438198, 51.940071>,  <29.320038, 32.299946, 52.010078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.136774, 32.438198, 51.940071>,  <28.831335, 32.668617, 51.823395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136774, 32.438198, 51.940071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452903, 0.155851, -0.877832,
		0.460213, 0.802421, 0.379902,
		0.763599, -0.576048, 0.291694,
		29.365854, 32.265385, 52.027580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407887, 32.920139, 51.533737>,  <28.831335, 32.668617, 51.823395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407887, 32.920139, 51.533737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516415, 32.542870, 51.610485>,  <29.581532, 32.316509, 51.656532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.516415, 32.542870, 51.610485>,  <29.407887, 32.920139, 51.533737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516415, 32.542870, 51.610485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434297, -0.057933, -0.898905,
		0.858937, 0.327219, 0.393898,
		0.271319, -0.943171, 0.191871,
		29.597811, 32.259918, 51.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135681, 32.771652, 51.371532>,  <29.407887, 32.920139, 51.533737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135681, 32.771652, 51.371532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.958284, 32.414371, 51.341827>,  <29.851847, 32.200005, 51.324005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.958284, 32.414371, 51.341827>,  <30.135681, 32.771652, 51.371532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958284, 32.414371, 51.341827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586229, -0.226403, -0.777867,
		0.677976, -0.388510, 0.624026,
		-0.443491, -0.893198, -0.074260,
		29.825237, 32.146412, 51.319550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752071, 32.241127, 51.161377>,  <30.135681, 32.771652, 51.371532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752071, 32.241127, 51.161377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.410830, 32.052349, 51.072403>,  <30.206083, 31.939083, 51.019016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.410830, 32.052349, 51.072403>,  <30.752071, 32.241127, 51.161377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410830, 32.052349, 51.072403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381014, -0.272292, -0.883564,
		0.356426, -0.838525, 0.412112,
		-0.853105, -0.471945, -0.222438,
		30.154898, 31.910765, 51.005672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920746, 31.497150, 50.965675>,  <30.752071, 32.241127, 51.161377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920746, 31.497150, 50.965675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585852, 31.651491, 50.810673>,  <30.384916, 31.744095, 50.717670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585852, 31.651491, 50.810673>,  <30.920746, 31.497150, 50.965675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585852, 31.651491, 50.810673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259963, -0.342595, -0.902800,
		-0.481104, -0.856591, 0.186524,
		-0.837232, 0.385852, -0.387505,
		30.334682, 31.767246, 50.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680904, 31.002958, 50.484295>,  <30.920746, 31.497150, 50.965675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680904, 31.002958, 50.484295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496889, 31.340544, 50.373955>,  <30.386480, 31.543095, 50.307751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496889, 31.340544, 50.373955>,  <30.680904, 31.002958, 50.484295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496889, 31.340544, 50.373955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252326, -0.173601, -0.951942,
		-0.851290, -0.507535, -0.133091,
		-0.460039, 0.843962, -0.275850,
		30.358877, 31.593733, 50.291199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395741, 30.955166, 49.823849>,  <30.680904, 31.002958, 50.484295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395741, 30.955166, 49.823849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304361, 31.344587, 49.825039>,  <30.249535, 31.578239, 49.825752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304361, 31.344587, 49.825039>,  <30.395741, 30.955166, 49.823849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304361, 31.344587, 49.825039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069820, 0.019430, -0.997370,
		-0.971049, -0.227640, -0.072412,
		-0.228448, 0.973552, 0.002973,
		30.235826, 31.636652, 49.825932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922199, 31.142853, 49.234371>,  <30.395741, 30.955166, 49.823849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922199, 31.142853, 49.234371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114679, 31.478176, 49.336887>,  <30.230167, 31.679371, 49.398399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114679, 31.478176, 49.336887>,  <29.922199, 31.142853, 49.234371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114679, 31.478176, 49.336887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202397, 0.178222, -0.962950,
		-0.852926, 0.515243, -0.083911,
		0.481198, 0.838309, 0.256294,
		30.259039, 31.729670, 49.413776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713955, 31.497852, 48.630722>,  <29.922199, 31.142853, 49.234371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713955, 31.497852, 48.630722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.028770, 31.674589, 48.802929>,  <30.217659, 31.780630, 48.906254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.028770, 31.674589, 48.802929>,  <29.713955, 31.497852, 48.630722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028770, 31.674589, 48.802929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442896, 0.081103, -0.892897,
		-0.429435, 0.893420, -0.131858,
		0.787038, 0.441841, 0.430520,
		30.264881, 31.807142, 48.932083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734125, 32.199574, 48.350601>,  <29.713955, 31.497852, 48.630722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734125, 32.199574, 48.350601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.088337, 32.090664, 48.501179>,  <30.300863, 32.025318, 48.591526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.088337, 32.090664, 48.501179>,  <29.734125, 32.199574, 48.350601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088337, 32.090664, 48.501179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425089, 0.147902, -0.892986,
		0.187458, 0.950786, 0.246711,
		0.885528, -0.272271, 0.376443,
		30.353994, 32.008984, 48.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266153, 32.732960, 48.199413>,  <29.734125, 32.199574, 48.350601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266153, 32.732960, 48.199413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.444281, 32.377106, 48.239902>,  <30.551157, 32.163593, 48.264194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.444281, 32.377106, 48.239902>,  <30.266153, 32.732960, 48.199413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444281, 32.377106, 48.239902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482051, 0.142951, -0.864403,
		0.754531, 0.433728, 0.492507,
		0.445320, -0.889632, 0.101218,
		30.577877, 32.110214, 48.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159636, 33.238163, 47.530769>,  <30.266153, 32.732960, 48.199413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159636, 33.238163, 47.530769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.295374, 33.481586, 47.243855>,  <30.376818, 33.627640, 47.071705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.295374, 33.481586, 47.243855>,  <30.159636, 33.238163, 47.530769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295374, 33.481586, 47.243855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073277, 0.777323, 0.624820,
		0.937802, -0.159471, 0.308376,
		0.339348, 0.608554, -0.717290,
		30.397179, 33.664154, 47.028667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770456, 33.627018, 47.899418>,  <30.159636, 33.238163, 47.530769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770456, 33.627018, 47.899418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638443, 33.809818, 47.569031>,  <30.559235, 33.919498, 47.370796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638443, 33.809818, 47.569031>,  <30.770456, 33.627018, 47.899418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638443, 33.809818, 47.569031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133045, 0.888782, 0.438595,
		0.934546, 0.034860, -0.354130,
		-0.330034, 0.457003, -0.825970,
		30.539433, 33.946918, 47.321239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244364, 34.252224, 47.792057>,  <30.770456, 33.627018, 47.899418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244364, 34.252224, 47.792057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903904, 34.339470, 47.601070>,  <30.699629, 34.391815, 47.486481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903904, 34.339470, 47.601070>,  <31.244364, 34.252224, 47.792057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903904, 34.339470, 47.601070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033134, 0.885451, 0.463551,
		0.523875, 0.410372, -0.746425,
		-0.851150, 0.218110, -0.477463,
		30.648560, 34.404903, 47.457832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377014, 34.894592, 47.524548>,  <31.244364, 34.252224, 47.792057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377014, 34.894592, 47.524548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981039, 34.838139, 47.528599>,  <30.743454, 34.804264, 47.531029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981039, 34.838139, 47.528599>,  <31.377014, 34.894592, 47.524548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981039, 34.838139, 47.528599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109025, 0.806425, 0.581199,
		-0.090197, 0.574247, -0.813699,
		-0.989938, -0.141136, 0.010130,
		30.684057, 34.795799, 47.531639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009893, 35.592625, 47.496376>,  <31.377014, 34.894592, 47.524548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009893, 35.592625, 47.496376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694216, 35.370396, 47.601070>,  <30.504808, 35.237057, 47.663887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694216, 35.370396, 47.601070>,  <31.009893, 35.592625, 47.496376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694216, 35.370396, 47.601070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259325, 0.687787, 0.678012,
		-0.556704, 0.467210, -0.686873,
		-0.789196, -0.555576, 0.261735,
		30.457457, 35.203724, 47.679592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428810, 36.068832, 47.557602>,  <31.009893, 35.592625, 47.496376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428810, 36.068832, 47.557602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.325251, 35.752235, 47.779053>,  <30.263115, 35.562275, 47.911922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.325251, 35.752235, 47.779053>,  <30.428810, 36.068832, 47.557602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325251, 35.752235, 47.779053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178940, 0.602552, 0.777760,
		-0.949185, 0.102295, -0.297631,
		-0.258899, -0.791496, 0.553629,
		30.247581, 35.514786, 47.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659342, 36.122078, 47.746037>,  <30.428810, 36.068832, 47.557602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659342, 36.122078, 47.746037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.791473, 35.857304, 48.015175>,  <29.870752, 35.698441, 48.176659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.791473, 35.857304, 48.015175>,  <29.659342, 36.122078, 47.746037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791473, 35.857304, 48.015175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356572, 0.572523, 0.738291,
		-0.873922, -0.483797, -0.046906,
		0.330328, -0.661934, 0.672849,
		29.890572, 35.658722, 48.217030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099392, 35.847836, 48.198769>,  <29.659342, 36.122078, 47.746037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099392, 35.847836, 48.198769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420334, 35.779377, 48.427479>,  <29.612900, 35.738300, 48.564705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420334, 35.779377, 48.427479>,  <29.099392, 35.847836, 48.198769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420334, 35.779377, 48.427479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453669, 0.447616, 0.770600,
		-0.387824, -0.877695, 0.281503,
		0.802357, -0.171148, 0.571779,
		29.661041, 35.728031, 48.599014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789778, 35.609562, 48.907070>,  <29.099392, 35.847836, 48.198769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789778, 35.609562, 48.907070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171598, 35.690250, 48.994835>,  <29.400690, 35.738663, 49.047493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171598, 35.690250, 48.994835>,  <28.789778, 35.609562, 48.907070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171598, 35.690250, 48.994835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290906, 0.470373, 0.833141,
		0.064854, -0.859104, 0.507676,
		0.954551, 0.201718, 0.219413,
		29.457964, 35.750767, 49.060658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866512, 35.436031, 49.586399>,  <28.789778, 35.609562, 48.907070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866512, 35.436031, 49.586399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.195509, 35.659771, 49.545151>,  <29.392906, 35.794014, 49.520401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.195509, 35.659771, 49.545151>,  <28.866512, 35.436031, 49.586399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195509, 35.659771, 49.545151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111722, 0.336649, 0.934979,
		0.557696, -0.757492, 0.339383,
		0.822492, 0.559351, -0.103119,
		29.442257, 35.827576, 49.514214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295694, 35.262161, 50.045666>,  <28.866512, 35.436031, 49.586399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295694, 35.262161, 50.045666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391453, 35.640953, 49.959953>,  <29.448908, 35.868229, 49.908527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.391453, 35.640953, 49.959953>,  <29.295694, 35.262161, 50.045666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391453, 35.640953, 49.959953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112127, 0.246185, 0.962715,
		0.964426, -0.206445, 0.165118,
		0.239397, 0.946981, -0.214279,
		29.463272, 35.925049, 49.895668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639751, 35.428905, 50.589012>,  <29.295694, 35.262161, 50.045666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639751, 35.428905, 50.589012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598324, 35.797771, 50.439941>,  <29.573467, 36.019089, 50.350498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598324, 35.797771, 50.439941>,  <29.639751, 35.428905, 50.589012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598324, 35.797771, 50.439941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108846, 0.361937, 0.925826,
		0.988649, 0.136452, 0.062888,
		-0.103569, 0.922162, -0.372681,
		29.567253, 36.074421, 50.328136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063086, 35.850430, 50.990967>,  <29.639751, 35.428905, 50.589012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063086, 35.850430, 50.990967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783066, 36.094143, 50.841995>,  <29.615053, 36.240372, 50.752613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783066, 36.094143, 50.841995>,  <30.063086, 35.850430, 50.990967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783066, 36.094143, 50.841995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164232, 0.370190, 0.914323,
		0.694951, 0.701238, -0.159088,
		-0.700051, 0.609282, -0.372430,
		29.573051, 36.276928, 50.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200075, 36.559071, 51.341892>,  <30.063086, 35.850430, 50.990967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200075, 36.559071, 51.341892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831484, 36.546730, 51.187012>,  <29.610329, 36.539326, 51.094086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831484, 36.546730, 51.187012>,  <30.200075, 36.559071, 51.341892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831484, 36.546730, 51.187012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366356, 0.400252, 0.839989,
		0.129062, 0.915886, -0.380127,
		-0.921481, -0.030851, -0.387197,
		29.555040, 36.537476, 51.070854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972191, 37.146572, 51.599167>,  <30.200075, 36.559071, 51.341892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972191, 37.146572, 51.599167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621714, 36.980431, 51.501377>,  <29.411427, 36.880745, 51.442703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621714, 36.980431, 51.501377>,  <29.972191, 37.146572, 51.599167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621714, 36.980431, 51.501377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439975, 0.482267, 0.757522,
		-0.196738, 0.771298, -0.605304,
		-0.876194, -0.415352, -0.244472,
		29.358856, 36.855824, 51.428036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060472, 37.805607, 51.471764>,  <29.972191, 37.146572, 51.599167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060472, 37.805607, 51.471764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376015, 37.940559, 51.677238>,  <30.565340, 38.021530, 51.800522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376015, 37.940559, 51.677238>,  <30.060472, 37.805607, 51.471764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376015, 37.940559, 51.677238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560885, -0.053561, -0.826159,
		-0.251220, 0.939842, -0.231486,
		0.788858, 0.337384, 0.513688,
		30.612673, 38.041775, 51.831345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315834, 38.293156, 51.072041>,  <30.060472, 37.805607, 51.471764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315834, 38.293156, 51.072041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621653, 38.242798, 51.324902>,  <30.805143, 38.212582, 51.476620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621653, 38.242798, 51.324902>,  <30.315834, 38.293156, 51.072041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621653, 38.242798, 51.324902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644186, 0.115454, -0.756105,
		0.022204, 0.985303, 0.169369,
		0.764546, -0.125894, 0.632155,
		30.851017, 38.205029, 51.514549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802473, 38.902027, 51.073792>,  <30.315834, 38.293156, 51.072041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802473, 38.902027, 51.073792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999191, 38.576626, 51.197948>,  <31.117222, 38.381386, 51.272442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999191, 38.576626, 51.197948>,  <30.802473, 38.902027, 51.073792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999191, 38.576626, 51.197948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609086, 0.066677, -0.790296,
		0.622214, 0.577723, 0.528286,
		0.491797, -0.813505, 0.310395,
		31.146730, 38.332573, 51.291065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505169, 39.051254, 51.018463>,  <30.802473, 38.902027, 51.073792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505169, 39.051254, 51.018463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529825, 38.652416, 51.036331>,  <31.544619, 38.413113, 51.047050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529825, 38.652416, 51.036331>,  <31.505169, 39.051254, 51.018463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529825, 38.652416, 51.036331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672225, 0.008392, -0.740299,
		0.737776, 0.075660, 0.670792,
		0.061640, -0.997098, 0.044669,
		31.548317, 38.353287, 51.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217407, 38.963120, 50.851788>,  <31.505169, 39.051254, 51.018463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217407, 38.963120, 50.851788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037701, 38.609928, 50.797382>,  <31.929876, 38.398014, 50.764740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037701, 38.609928, 50.797382>,  <32.217407, 38.963120, 50.851788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037701, 38.609928, 50.797382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429675, -0.080075, -0.899426,
		0.783286, -0.462526, 0.415370,
		-0.449269, -0.882982, -0.136014,
		31.902920, 38.345032, 50.756577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732964, 38.407814, 50.788658>,  <32.217407, 38.963120, 50.851788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732964, 38.407814, 50.788658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402439, 38.300694, 50.590469>,  <32.204124, 38.236420, 50.471558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402439, 38.300694, 50.590469>,  <32.732964, 38.407814, 50.788658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402439, 38.300694, 50.590469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548776, -0.184934, -0.815257,
		0.126701, -0.945558, 0.299778,
		-0.826312, -0.267805, -0.495468,
		32.154545, 38.220352, 50.441830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952419, 37.823616, 50.425026>,  <32.732964, 38.407814, 50.788658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952419, 37.823616, 50.425026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599842, 37.888805, 50.247715>,  <32.388294, 37.927921, 50.141331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599842, 37.888805, 50.247715>,  <32.952419, 37.823616, 50.425026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599842, 37.888805, 50.247715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389524, -0.279874, -0.877463,
		-0.267063, -0.946103, 0.183212,
		-0.881447, 0.162973, -0.443274,
		32.335407, 37.937698, 50.114731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897633, 37.281166, 49.917374>,  <32.952419, 37.823616, 50.425026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897633, 37.281166, 49.917374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645851, 37.567726, 49.797005>,  <32.494781, 37.739662, 49.724781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645851, 37.567726, 49.797005>,  <32.897633, 37.281166, 49.917374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645851, 37.567726, 49.797005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408721, -0.024116, -0.912341,
		-0.660859, -0.697272, -0.277629,
		-0.629454, 0.716401, -0.300927,
		32.457016, 37.782646, 49.706726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575115, 36.979130, 49.291454>,  <32.897633, 37.281166, 49.917374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575115, 36.979130, 49.291454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529663, 37.376331, 49.278664>,  <32.502392, 37.614655, 49.270988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529663, 37.376331, 49.278664>,  <32.575115, 36.979130, 49.291454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529663, 37.376331, 49.278664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366822, 0.012021, -0.930214,
		-0.923325, -0.117432, -0.365623,
		-0.113632, 0.993008, -0.031977,
		32.495575, 37.674232, 49.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244808, 37.100292, 48.651379>,  <32.575115, 36.979130, 49.291454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244808, 37.100292, 48.651379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373672, 37.467037, 48.745682>,  <32.450993, 37.687084, 48.802265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373672, 37.467037, 48.745682>,  <32.244808, 37.100292, 48.651379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373672, 37.467037, 48.745682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147319, 0.197450, -0.969181,
		-0.935152, 0.346965, -0.071459,
		0.322162, 0.916858, 0.235760,
		32.470322, 37.742096, 48.816410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864193, 37.692204, 48.314312>,  <32.244808, 37.100292, 48.651379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864193, 37.692204, 48.314312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227531, 37.833282, 48.404217>,  <32.445534, 37.917931, 48.458160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227531, 37.833282, 48.404217>,  <31.864193, 37.692204, 48.314312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227531, 37.833282, 48.404217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175800, 0.165635, -0.970391,
		-0.379478, 0.920963, 0.088450,
		0.908345, 0.352693, 0.224760,
		32.500034, 37.939091, 48.471645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912485, 38.151478, 47.811409>,  <31.864193, 37.692204, 48.314312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912485, 38.151478, 47.811409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284332, 38.091293, 47.945972>,  <32.507439, 38.055183, 48.026711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284332, 38.091293, 47.945972>,  <31.912485, 38.151478, 47.811409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284332, 38.091293, 47.945972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361259, 0.191662, -0.912556,
		0.072830, 0.969859, 0.232529,
		0.929617, -0.150465, 0.336412,
		32.563217, 38.046154, 48.046894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.130213, 38.670933, 57.647022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.804047, 38.888023, 57.566479>,  <30.608347, 39.018276, 57.518154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.804047, 38.888023, 57.566479>,  <31.130213, 38.670933, 57.647022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804047, 38.888023, 57.566479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065469, -0.432074, -0.899459,
		-0.575162, -0.720250, 0.387851,
		-0.815416, 0.542727, -0.201358,
		30.559422, 39.050842, 57.506073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731514, 38.272270, 57.165020>,  <31.130213, 38.670933, 57.647022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731514, 38.272270, 57.165020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583845, 38.643147, 57.139622>,  <30.495243, 38.865673, 57.124382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583845, 38.643147, 57.139622>,  <30.731514, 38.272270, 57.165020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583845, 38.643147, 57.139622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274614, -0.174100, -0.945662,
		-0.887861, -0.331678, 0.318892,
		-0.369174, 0.927189, -0.063493,
		30.473093, 38.921303, 57.120575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151186, 38.172977, 56.712383>,  <30.731514, 38.272270, 57.165020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151186, 38.172977, 56.712383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241947, 38.562408, 56.702030>,  <30.296404, 38.796066, 56.695820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241947, 38.562408, 56.702030>,  <30.151186, 38.172977, 56.712383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241947, 38.562408, 56.702030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374839, 0.062775, -0.924962,
		-0.898894, 0.219578, 0.379177,
		0.226904, 0.973573, -0.025878,
		30.310019, 38.854481, 56.694267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538330, 38.567360, 56.444710>,  <30.151186, 38.172977, 56.712383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538330, 38.567360, 56.444710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836391, 38.830528, 56.401093>,  <30.015228, 38.988430, 56.374924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836391, 38.830528, 56.401093>,  <29.538330, 38.567360, 56.444710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836391, 38.830528, 56.401093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239457, 0.111357, -0.964500,
		-0.622420, 0.744811, 0.240521,
		0.745153, 0.657919, -0.109039,
		30.059938, 39.027905, 56.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310816, 39.142899, 55.945789>,  <29.538330, 38.567360, 56.444710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310816, 39.142899, 55.945789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.709982, 39.123135, 55.929199>,  <29.949482, 39.111275, 55.919243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.709982, 39.123135, 55.929199>,  <29.310816, 39.142899, 55.945789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709982, 39.123135, 55.929199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038930, 0.051443, -0.997917,
		0.051443, 0.997453, 0.049412,
		0.997917, -0.049412, -0.041477,
		30.009357, 39.108311, 55.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416601, 39.357830, 55.364441>,  <29.310816, 39.142899, 55.945789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416601, 39.357830, 55.364441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772478, 39.192528, 55.442070>,  <29.986004, 39.093346, 55.488647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772478, 39.192528, 55.442070>,  <29.416601, 39.357830, 55.364441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772478, 39.192528, 55.442070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146409, -0.144392, -0.978629,
		0.432451, 0.899093, -0.067959,
		0.889691, -0.413260, 0.194077,
		30.039385, 39.068550, 55.500294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846052, 39.673336, 54.751427>,  <29.416601, 39.357830, 55.364441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846052, 39.673336, 54.751427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046886, 39.356655, 54.890633>,  <30.167387, 39.166645, 54.974155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046886, 39.356655, 54.890633>,  <29.846052, 39.673336, 54.751427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046886, 39.356655, 54.890633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112668, -0.339107, -0.933977,
		0.857446, 0.508149, -0.081063,
		0.502088, -0.791701, 0.348018,
		30.197514, 39.119144, 54.995037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477989, 39.695854, 54.441273>,  <29.846052, 39.673336, 54.751427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477989, 39.695854, 54.441273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433407, 39.313435, 54.549755>,  <30.406658, 39.083984, 54.614845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433407, 39.313435, 54.549755>,  <30.477989, 39.695854, 54.441273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433407, 39.313435, 54.549755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234752, -0.290513, -0.927628,
		0.965645, -0.039723, 0.256813,
		-0.111456, -0.956046, 0.271207,
		30.399971, 39.026619, 54.631119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060606, 39.319233, 54.109734>,  <30.477989, 39.695854, 54.441273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060606, 39.319233, 54.109734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777582, 39.046478, 54.183918>,  <30.607767, 38.882828, 54.228428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777582, 39.046478, 54.183918>,  <31.060606, 39.319233, 54.109734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777582, 39.046478, 54.183918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188380, -0.434959, -0.880525,
		0.681082, -0.588086, 0.436212,
		-0.707559, -0.681884, 0.185460,
		30.565315, 38.841915, 54.239555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472452, 38.777561, 53.951805>,  <31.060606, 39.319233, 54.109734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472452, 38.777561, 53.951805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092810, 38.652969, 53.933151>,  <30.865025, 38.578213, 53.921959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.092810, 38.652969, 53.933151>,  <31.472452, 38.777561, 53.951805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092810, 38.652969, 53.933151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210116, -0.515905, -0.830477,
		0.234622, -0.798010, 0.555097,
		-0.949107, -0.311484, -0.046632,
		30.808077, 38.559525, 53.919163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453865, 38.164318, 53.676105>,  <31.472452, 38.777561, 53.951805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453865, 38.164318, 53.676105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.064526, 38.235451, 53.618183>,  <30.830921, 38.278130, 53.583431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.064526, 38.235451, 53.618183>,  <31.453865, 38.164318, 53.676105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064526, 38.235451, 53.618183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021073, -0.559388, -0.828638,
		-0.228360, -0.809605, 0.540732,
		-0.973349, 0.177833, -0.144803,
		30.772522, 38.288799, 53.574741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111452, 37.546860, 53.349434>,  <31.453865, 38.164318, 53.676105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111452, 37.546860, 53.349434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875721, 37.861240, 53.274624>,  <30.734283, 38.049870, 53.229736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875721, 37.861240, 53.274624>,  <31.111452, 37.546860, 53.349434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875721, 37.861240, 53.274624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045018, -0.263087, -0.963721,
		-0.806640, -0.559526, 0.190426,
		-0.589326, 0.785949, -0.187027,
		30.698923, 38.097027, 53.218517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637669, 37.340763, 52.858242>,  <31.111452, 37.546860, 53.349434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637669, 37.340763, 52.858242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623617, 37.738827, 52.821514>,  <30.615187, 37.977665, 52.799477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623617, 37.738827, 52.821514>,  <30.637669, 37.340763, 52.858242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623617, 37.738827, 52.821514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229745, -0.097457, -0.968359,
		-0.972617, -0.012921, 0.232055,
		-0.035128, 0.995156, -0.091820,
		30.613079, 38.037373, 52.793968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106256, 37.418350, 52.304878>,  <30.637669, 37.340763, 52.858242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106256, 37.418350, 52.304878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320276, 37.754990, 52.334347>,  <30.448689, 37.956974, 52.352028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320276, 37.754990, 52.334347>,  <30.106256, 37.418350, 52.304878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320276, 37.754990, 52.334347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140084, -0.002381, -0.990137,
		-0.833125, 0.540094, -0.119169,
		0.535050, 0.841602, 0.073675,
		30.480791, 38.007469, 52.356449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500486, 37.643532, 51.903095>,  <30.106256, 37.418350, 52.304878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500486, 37.643532, 51.903095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293564, 37.314907, 51.807232>,  <29.169411, 37.117733, 51.749714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293564, 37.314907, 51.807232>,  <29.500486, 37.643532, 51.903095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293564, 37.314907, 51.807232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663676, 0.208322, 0.718426,
		-0.540305, 0.530698, -0.653016,
		-0.517305, -0.821560, -0.239654,
		29.138372, 37.068439, 51.735336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728003, 37.821327, 51.856430>,  <29.500486, 37.643532, 51.903095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728003, 37.821327, 51.856430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775600, 37.432018, 51.934994>,  <28.804159, 37.198433, 51.982132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775600, 37.432018, 51.934994>,  <28.728003, 37.821327, 51.856430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775600, 37.432018, 51.934994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693019, 0.060244, 0.718398,
		-0.711031, -0.221601, -0.667329,
		0.118995, -0.973275, 0.196409,
		28.811298, 37.140038, 51.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097769, 37.687588, 52.048374>,  <28.728003, 37.821327, 51.856430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097769, 37.687588, 52.048374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326662, 37.391594, 52.189777>,  <28.463997, 37.213997, 52.274620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326662, 37.391594, 52.189777>,  <28.097769, 37.687588, 52.048374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326662, 37.391594, 52.189777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602584, -0.086997, 0.793300,
		-0.556278, -0.666970, -0.495687,
		0.572231, -0.739988, 0.353511,
		28.498331, 37.169598, 52.295830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670841, 37.275963, 52.434708>,  <28.097769, 37.687588, 52.048374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670841, 37.275963, 52.434708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021851, 37.132156, 52.561642>,  <28.232456, 37.045872, 52.637802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021851, 37.132156, 52.561642>,  <27.670841, 37.275963, 52.434708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021851, 37.132156, 52.561642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368718, -0.082773, 0.925849,
		-0.306595, -0.929459, -0.205196,
		0.877523, -0.359520, 0.317330,
		28.285109, 37.024300, 52.656841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500942, 36.785324, 52.934021>,  <27.670841, 37.275963, 52.434708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500942, 36.785324, 52.934021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870138, 36.917377, 53.013123>,  <28.091656, 36.996609, 53.060585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870138, 36.917377, 53.013123>,  <27.500942, 36.785324, 52.934021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870138, 36.917377, 53.013123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269686, 0.188312, 0.944356,
		0.274523, -0.924960, 0.262842,
		0.922988, 0.330132, 0.197753,
		28.147034, 37.016418, 53.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724134, 36.400738, 53.546181>,  <27.500942, 36.785324, 52.934021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724134, 36.400738, 53.546181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956091, 36.726490, 53.555134>,  <28.095264, 36.921944, 53.560505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956091, 36.726490, 53.555134>,  <27.724134, 36.400738, 53.546181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956091, 36.726490, 53.555134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241530, 0.145611, 0.959407,
		0.778067, -0.561760, 0.281137,
		0.579893, 0.814385, 0.022386,
		28.130058, 36.970806, 53.561852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245762, 36.338108, 54.124588>,  <27.724134, 36.400738, 53.546181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245762, 36.338108, 54.124588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191118, 36.719494, 54.017075>,  <28.158333, 36.948326, 53.952568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191118, 36.719494, 54.017075>,  <28.245762, 36.338108, 54.124588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191118, 36.719494, 54.017075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293066, 0.220284, 0.930369,
		0.946282, 0.205868, 0.249335,
		-0.136608, 0.953464, -0.268784,
		28.150135, 37.005531, 53.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591490, 36.743820, 54.576736>,  <28.245762, 36.338108, 54.124588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591490, 36.743820, 54.576736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337152, 37.018265, 54.435337>,  <28.184551, 37.182930, 54.350498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337152, 37.018265, 54.435337>,  <28.591490, 36.743820, 54.576736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337152, 37.018265, 54.435337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042382, 0.426276, 0.903600,
		0.770655, 0.589528, -0.241965,
		-0.635841, 0.686109, -0.353497,
		28.146400, 37.224098, 54.329288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759594, 37.276917, 54.903259>,  <28.591490, 36.743820, 54.576736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759594, 37.276917, 54.903259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381395, 37.334106, 54.786232>,  <28.154476, 37.368420, 54.716015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381395, 37.334106, 54.786232>,  <28.759594, 37.276917, 54.903259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381395, 37.334106, 54.786232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209903, 0.419290, 0.883253,
		0.248955, 0.896523, -0.366426,
		-0.945496, 0.142977, -0.292568,
		28.097746, 37.376999, 54.698463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751488, 37.830879, 55.167492>,  <28.759594, 37.276917, 54.903259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751488, 37.830879, 55.167492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364531, 37.758022, 55.097092>,  <28.132357, 37.714310, 55.054852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364531, 37.758022, 55.097092>,  <28.751488, 37.830879, 55.167492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364531, 37.758022, 55.097092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247801, 0.536911, 0.806425,
		-0.052384, 0.823743, -0.564538,
		-0.967393, -0.182137, -0.175999,
		28.074312, 37.703381, 55.044292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472441, 38.586342, 55.207954>,  <28.751488, 37.830879, 55.167492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472441, 38.586342, 55.207954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192345, 38.302914, 55.242790>,  <28.024286, 38.132854, 55.263691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192345, 38.302914, 55.242790>,  <28.472441, 38.586342, 55.207954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192345, 38.302914, 55.242790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397590, 0.488391, 0.776786,
		-0.592946, 0.509310, -0.623714,
		-0.700241, -0.708575, 0.087093,
		27.982273, 38.090340, 55.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819366, 38.893345, 55.145924>,  <28.472441, 38.586342, 55.207954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819366, 38.893345, 55.145924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808151, 38.557755, 55.363304>,  <27.801422, 38.356400, 55.493732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808151, 38.557755, 55.363304>,  <27.819366, 38.893345, 55.145924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808151, 38.557755, 55.363304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356271, 0.516348, 0.778753,
		-0.933962, -0.171780, -0.313379,
		-0.028038, -0.838973, 0.543450,
		27.799740, 38.306061, 55.526340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229584, 39.006969, 55.632793>,  <27.819366, 38.893345, 55.145924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229584, 39.006969, 55.632793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435617, 38.704407, 55.794052>,  <27.559238, 38.522869, 55.890808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435617, 38.704407, 55.794052>,  <27.229584, 39.006969, 55.632793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435617, 38.704407, 55.794052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395887, 0.207227, 0.894612,
		-0.760239, -0.620402, -0.192714,
		0.515084, -0.756412, 0.403151,
		27.590143, 38.477482, 55.914997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756544, 38.621494, 56.020947>,  <27.229584, 39.006969, 55.632793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756544, 38.621494, 56.020947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104277, 38.501858, 56.178329>,  <27.312916, 38.430077, 56.272758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104277, 38.501858, 56.178329>,  <26.756544, 38.621494, 56.020947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104277, 38.501858, 56.178329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336700, 0.224375, 0.914488,
		-0.361798, -0.927470, 0.094352,
		0.869330, -0.299091, 0.393458,
		27.365076, 38.412132, 56.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.547089, 34.636074, 59.705284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375114, 34.827461, 59.399021>,  <34.271931, 34.942295, 59.215263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375114, 34.827461, 59.399021>,  <34.547089, 34.636074, 59.705284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375114, 34.827461, 59.399021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173461, -0.788458, -0.590124,
		-0.886042, -0.386524, 0.255987,
		-0.429931, 0.478471, -0.765653,
		34.246136, 34.971001, 59.169327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413105, 34.163506, 59.269375>,  <34.547089, 34.636074, 59.705284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413105, 34.163506, 59.269375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373249, 34.479805, 59.027782>,  <34.349335, 34.669582, 58.882828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373249, 34.479805, 59.027782>,  <34.413105, 34.163506, 59.269375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373249, 34.479805, 59.027782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117360, -0.593425, -0.796287,
		-0.988079, -0.150221, -0.033676,
		-0.099635, 0.790746, -0.603981,
		34.343357, 34.717030, 58.846588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017689, 33.862904, 58.686054>,  <34.413105, 34.163506, 59.269375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017689, 33.862904, 58.686054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207130, 34.187553, 58.549252>,  <34.320797, 34.382343, 58.467171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207130, 34.187553, 58.549252>,  <34.017689, 33.862904, 58.686054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207130, 34.187553, 58.549252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034288, -0.405018, -0.913666,
		-0.880070, 0.420990, -0.219647,
		0.473605, 0.811621, -0.342009,
		34.349213, 34.431038, 58.446648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729427, 33.986012, 58.028149>,  <34.017689, 33.862904, 58.686054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729427, 33.986012, 58.028149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070091, 34.195499, 58.036030>,  <34.274490, 34.321194, 58.040760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070091, 34.195499, 58.036030>,  <33.729427, 33.986012, 58.028149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070091, 34.195499, 58.036030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245683, -0.365743, -0.897704,
		-0.462941, 0.769380, -0.440159,
		0.851660, 0.523723, 0.019706,
		34.325588, 34.352615, 58.041943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794155, 34.188000, 57.371838>,  <33.729427, 33.986012, 58.028149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794155, 34.188000, 57.371838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153782, 34.245796, 57.537151>,  <34.369556, 34.280472, 57.636341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153782, 34.245796, 57.537151>,  <33.794155, 34.188000, 57.371838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153782, 34.245796, 57.537151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436854, -0.358661, -0.824937,
		0.029036, 0.922217, -0.385580,
		0.899064, 0.144489, 0.413288,
		34.423500, 34.289143, 57.661137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228588, 34.616985, 56.958084>,  <33.794155, 34.188000, 57.371838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228588, 34.616985, 56.958084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501530, 34.414215, 57.168770>,  <34.665295, 34.292553, 57.295181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501530, 34.414215, 57.168770>,  <34.228588, 34.616985, 56.958084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501530, 34.414215, 57.168770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374081, -0.376898, -0.847355,
		0.628063, 0.775226, -0.067545,
		0.682349, -0.506925, 0.526713,
		34.706234, 34.262138, 57.326782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958519, 34.857597, 56.795158>,  <34.228588, 34.616985, 56.958084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958519, 34.857597, 56.795158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032669, 34.483398, 56.915478>,  <35.077160, 34.258881, 56.987671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032669, 34.483398, 56.915478>,  <34.958519, 34.857597, 56.795158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032669, 34.483398, 56.915478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491147, -0.176923, -0.852920,
		0.851124, 0.305844, 0.426670,
		0.185373, -0.935499, 0.300798,
		35.088280, 34.202747, 57.005718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714104, 34.647995, 56.606541>,  <34.958519, 34.857597, 56.795158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714104, 34.647995, 56.606541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518532, 34.303177, 56.659946>,  <35.401188, 34.096287, 56.691990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518532, 34.303177, 56.659946>,  <35.714104, 34.647995, 56.606541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518532, 34.303177, 56.659946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335359, -0.327046, -0.883502,
		0.805283, -0.387195, 0.448997,
		-0.488930, -0.862045, 0.133515,
		35.371853, 34.044563, 56.700001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233765, 34.227959, 56.443039>,  <35.714104, 34.647995, 56.606541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233765, 34.227959, 56.443039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907921, 33.999226, 56.404213>,  <35.712414, 33.861988, 56.380917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907921, 33.999226, 56.404213>,  <36.233765, 34.227959, 56.443039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907921, 33.999226, 56.404213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396979, -0.427680, -0.812094,
		0.422870, -0.700071, 0.575397,
		-0.814609, -0.571831, -0.097061,
		35.663540, 33.827675, 56.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489799, 33.571777, 56.226055>,  <36.233765, 34.227959, 56.443039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489799, 33.571777, 56.226055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102589, 33.578823, 56.125961>,  <35.870262, 33.583050, 56.065907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102589, 33.578823, 56.125961>,  <36.489799, 33.571777, 56.226055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102589, 33.578823, 56.125961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217262, -0.439763, -0.871439,
		-0.125392, -0.897941, 0.421875,
		-0.968026, 0.017614, -0.250231,
		35.812180, 33.584106, 56.050892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416382, 33.024914, 55.749077>,  <36.489799, 33.571777, 56.226055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416382, 33.024914, 55.749077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078415, 33.232727, 55.698162>,  <35.875637, 33.357414, 55.667614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078415, 33.232727, 55.698162>,  <36.416382, 33.024914, 55.749077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078415, 33.232727, 55.698162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008749, -0.251354, -0.967856,
		-0.534830, -0.816642, 0.216918,
		-0.844914, 0.519536, -0.127287,
		35.824940, 33.388588, 55.659977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911034, 32.663998, 55.255520>,  <36.416382, 33.024914, 55.749077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911034, 32.663998, 55.255520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841389, 33.057720, 55.243996>,  <35.799603, 33.293953, 55.237080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841389, 33.057720, 55.243996>,  <35.911034, 32.663998, 55.255520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841389, 33.057720, 55.243996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014383, -0.031797, -0.999391,
		-0.984621, -0.173589, 0.019693,
		-0.174110, 0.984304, -0.028812,
		35.789154, 33.353012, 55.235352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517616, 32.730938, 54.640148>,  <35.911034, 32.663998, 55.255520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517616, 32.730938, 54.640148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634357, 33.100933, 54.737484>,  <35.704403, 33.322929, 54.795883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634357, 33.100933, 54.737484>,  <35.517616, 32.730938, 54.640148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634357, 33.100933, 54.737484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031518, 0.244975, -0.969017,
		-0.955944, 0.290480, 0.042343,
		0.291853, 0.924991, 0.243338,
		35.721912, 33.378429, 54.810486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079323, 33.142174, 54.225170>,  <35.517616, 32.730938, 54.640148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079323, 33.142174, 54.225170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388386, 33.383766, 54.303352>,  <35.573826, 33.528721, 54.350262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388386, 33.383766, 54.303352>,  <35.079323, 33.142174, 54.225170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388386, 33.383766, 54.303352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106454, 0.180259, -0.977841,
		-0.625829, 0.776347, 0.074983,
		0.772661, 0.603980, 0.195457,
		35.620186, 33.564960, 54.361988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363079, 33.468834, 54.033257>,  <35.079323, 33.142174, 54.225170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363079, 33.468834, 54.033257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059345, 33.232876, 53.923393>,  <33.877106, 33.091301, 53.857475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059345, 33.232876, 53.923393>,  <34.363079, 33.468834, 54.033257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059345, 33.232876, 53.923393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515508, 0.287781, 0.807114,
		-0.397069, 0.754459, -0.522617,
		-0.759334, -0.589893, -0.274661,
		33.831547, 33.055908, 53.840996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738697, 33.826332, 53.999454>,  <34.363079, 33.468834, 54.033257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738697, 33.826332, 53.999454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599911, 33.453709, 54.042931>,  <33.516640, 33.230137, 54.069016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599911, 33.453709, 54.042931>,  <33.738697, 33.826332, 53.999454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599911, 33.453709, 54.042931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551362, 0.296354, 0.779855,
		-0.758691, 0.210657, -0.616451,
		-0.346970, -0.931557, 0.108693,
		33.495819, 33.174240, 54.075539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996609, 33.874435, 54.118240>,  <33.738697, 33.826332, 53.999454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996609, 33.874435, 54.118240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122417, 33.529213, 54.276333>,  <33.197903, 33.322079, 54.371189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122417, 33.529213, 54.276333>,  <32.996609, 33.874435, 54.118240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122417, 33.529213, 54.276333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313377, 0.298617, 0.901456,
		-0.896031, -0.407385, -0.176540,
		0.314522, -0.863056, 0.395235,
		33.216774, 33.270298, 54.394905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452732, 33.765514, 54.436966>,  <32.996609, 33.874435, 54.118240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452732, 33.765514, 54.436966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713440, 33.496143, 54.576508>,  <32.869865, 33.334522, 54.660233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713440, 33.496143, 54.576508>,  <32.452732, 33.765514, 54.436966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713440, 33.496143, 54.576508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289351, 0.204393, 0.935147,
		-0.701053, -0.710440, -0.061639,
		0.651767, -0.673423, 0.348857,
		32.908970, 33.294117, 54.681164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021740, 33.379681, 54.850277>,  <32.452732, 33.765514, 54.436966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021740, 33.379681, 54.850277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387207, 33.298351, 54.991058>,  <32.606487, 33.249554, 55.075527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387207, 33.298351, 54.991058>,  <32.021740, 33.379681, 54.850277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387207, 33.298351, 54.991058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358120, 0.006879, 0.933650,
		-0.192251, -0.979088, -0.066528,
		0.913668, -0.203321, 0.351954,
		32.661308, 33.237354, 55.096645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996420, 32.767387, 55.344490>,  <32.021740, 33.379681, 54.850277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996420, 32.767387, 55.344490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343277, 32.944244, 55.436207>,  <32.551392, 33.050358, 55.491238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343277, 32.944244, 55.436207>,  <31.996420, 32.767387, 55.344490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343277, 32.944244, 55.436207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286750, 0.066774, 0.955675,
		0.407232, -0.894457, 0.184686,
		0.867143, 0.442140, 0.229293,
		32.603420, 33.076885, 55.504993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993282, 32.597073, 56.020149>,  <31.996420, 32.767387, 55.344490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993282, 32.597073, 56.020149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258945, 32.895622, 56.003082>,  <32.418343, 33.074753, 55.992844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258945, 32.895622, 56.003082>,  <31.993282, 32.597073, 56.020149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258945, 32.895622, 56.003082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296600, 0.315453, 0.901397,
		0.686238, -0.586016, 0.430886,
		0.664158, 0.746374, -0.042663,
		32.458195, 33.119534, 55.990284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384819, 32.721664, 56.739952>,  <31.993282, 32.597073, 56.020149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384819, 32.721664, 56.739952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462074, 33.070511, 56.560123>,  <32.508427, 33.279819, 56.452225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462074, 33.070511, 56.560123>,  <32.384819, 32.721664, 56.739952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462074, 33.070511, 56.560123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296888, 0.488664, 0.820405,
		0.935178, -0.024975, 0.353297,
		0.193133, 0.872114, -0.449573,
		32.520016, 33.332146, 56.425251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779316, 32.991425, 57.209187>,  <32.384819, 32.721664, 56.739952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779316, 32.991425, 57.209187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625038, 33.288570, 56.990322>,  <32.532471, 33.466858, 56.859001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625038, 33.288570, 56.990322>,  <32.779316, 32.991425, 57.209187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625038, 33.288570, 56.990322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279475, 0.471120, 0.836624,
		0.879280, 0.475601, 0.025904,
		-0.385695, 0.742866, -0.547165,
		32.509331, 33.511429, 56.826172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033878, 33.653767, 57.432693>,  <32.779316, 32.991425, 57.209187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033878, 33.653767, 57.432693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693916, 33.736443, 57.238808>,  <32.489941, 33.786049, 57.122478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.693916, 33.736443, 57.238808>,  <33.033878, 33.653767, 57.432693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693916, 33.736443, 57.238808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382018, 0.391891, 0.836949,
		0.362947, 0.896492, -0.254107,
		-0.849901, 0.206694, -0.484712,
		32.438946, 33.798450, 57.093395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798485, 34.302959, 57.604359>,  <33.033878, 33.653767, 57.432693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798485, 34.302959, 57.604359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464146, 34.114555, 57.491566>,  <32.263542, 34.001514, 57.423889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464146, 34.114555, 57.491566>,  <32.798485, 34.302959, 57.604359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464146, 34.114555, 57.491566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494781, 0.423852, 0.758644,
		-0.237808, 0.773629, -0.587321,
		-0.835847, -0.471007, -0.281981,
		32.213390, 33.973255, 57.406971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152878, 34.779072, 57.620823>,  <32.798485, 34.302959, 57.604359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152878, 34.779072, 57.620823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024509, 34.402939, 57.666054>,  <31.947487, 34.177261, 57.693192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024509, 34.402939, 57.666054>,  <32.152878, 34.779072, 57.620823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024509, 34.402939, 57.666054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556283, 0.283772, 0.781040,
		-0.766523, 0.187753, -0.614159,
		-0.320924, -0.940331, 0.113074,
		31.928232, 34.120838, 57.699974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503859, 34.893826, 57.771656>,  <32.152878, 34.779072, 57.620823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503859, 34.893826, 57.771656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582481, 34.518425, 57.885204>,  <31.629656, 34.293186, 57.953331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582481, 34.518425, 57.885204>,  <31.503859, 34.893826, 57.771656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582481, 34.518425, 57.885204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475879, 0.161817, 0.864497,
		-0.857265, -0.305011, -0.414806,
		0.196559, -0.938501, 0.283868,
		31.641449, 34.236874, 57.970364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899473, 34.715973, 58.195942>,  <31.503859, 34.893826, 57.771656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899473, 34.715973, 58.195942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179163, 34.448910, 58.298168>,  <31.346977, 34.288670, 58.359505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179163, 34.448910, 58.298168>,  <30.899473, 34.715973, 58.195942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179163, 34.448910, 58.298168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277674, 0.075783, 0.957682,
		-0.658773, -0.740599, -0.132403,
		0.699225, -0.667660, 0.255568,
		31.388931, 34.248611, 58.374840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288805, 34.378960, 57.976704>,  <30.899473, 34.715973, 58.195942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288805, 34.378960, 57.976704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902479, 34.383400, 57.873108>,  <29.670683, 34.386066, 57.810951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902479, 34.383400, 57.873108>,  <30.288805, 34.378960, 57.976704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902479, 34.383400, 57.873108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248301, -0.247365, -0.936567,
		-0.074462, -0.968858, 0.236153,
		-0.965817, 0.011101, -0.258987,
		29.612734, 34.386730, 57.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182671, 33.714703, 57.618652>,  <30.288805, 34.378960, 57.976704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182671, 33.714703, 57.618652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882164, 33.959900, 57.520805>,  <29.701860, 34.107018, 57.462097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882164, 33.959900, 57.520805>,  <30.182671, 33.714703, 57.618652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882164, 33.959900, 57.520805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108256, -0.251170, -0.961870,
		-0.651061, -0.749102, 0.122335,
		-0.751266, 0.612992, -0.244622,
		29.656784, 34.143799, 57.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802671, 33.275860, 57.141399>,  <30.182671, 33.714703, 57.618652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802671, 33.275860, 57.141399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674904, 33.652336, 57.097343>,  <29.598244, 33.878223, 57.070908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.674904, 33.652336, 57.097343>,  <29.802671, 33.275860, 57.141399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674904, 33.652336, 57.097343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153546, -0.166104, -0.974081,
		-0.935091, -0.294229, 0.197573,
		-0.319420, 0.941190, -0.110144,
		29.579079, 33.934692, 57.064301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097681, 33.261028, 56.883965>,  <29.802671, 33.275860, 57.141399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097681, 33.261028, 56.883965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270245, 33.607178, 56.781971>,  <29.373783, 33.814869, 56.720776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270245, 33.607178, 56.781971>,  <29.097681, 33.261028, 56.883965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270245, 33.607178, 56.781971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179766, -0.194509, -0.964288,
		-0.884066, 0.461838, 0.071652,
		0.431407, 0.865374, -0.254981,
		29.399668, 33.866791, 56.705475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657625, 33.593521, 56.365707>,  <29.097681, 33.261028, 56.883965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657625, 33.593521, 56.365707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.022081, 33.752865, 56.323513>,  <29.240755, 33.848473, 56.298195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.022081, 33.752865, 56.323513>,  <28.657625, 33.593521, 56.365707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022081, 33.752865, 56.323513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091726, -0.053509, -0.994345,
		-0.401755, 0.915666, -0.012214,
		0.911142, 0.398363, -0.105488,
		29.295424, 33.872375, 56.291866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622917, 34.096104, 55.771145>,  <28.657625, 33.593521, 56.365707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622917, 34.096104, 55.771145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.999908, 33.973831, 55.825253>,  <29.226103, 33.900467, 55.857716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.999908, 33.973831, 55.825253>,  <28.622917, 34.096104, 55.771145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999908, 33.973831, 55.825253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042254, -0.292480, -0.955338,
		0.331590, 0.906100, -0.262739,
		0.942477, -0.305678, 0.135270,
		29.282652, 33.882126, 55.865833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020355, 34.373547, 55.193760>,  <28.622917, 34.096104, 55.771145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020355, 34.373547, 55.193760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.229317, 34.066849, 55.342995>,  <29.354692, 33.882828, 55.432533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.229317, 34.066849, 55.342995>,  <29.020355, 34.373547, 55.193760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229317, 34.066849, 55.342995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215689, -0.304484, -0.927776,
		0.824969, 0.565142, 0.006316,
		0.522402, -0.766749, 0.373084,
		29.386038, 33.836823, 55.454922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559357, 34.342266, 54.763817>,  <29.020355, 34.373547, 55.193760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559357, 34.342266, 54.763817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544273, 33.981113, 54.935112>,  <29.535223, 33.764423, 55.037891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544273, 33.981113, 54.935112>,  <29.559357, 34.342266, 54.763817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544273, 33.981113, 54.935112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062535, -0.429839, -0.900738,
		0.997330, -0.007187, 0.072671,
		-0.037710, -0.902877, 0.428242,
		29.532961, 33.710251, 55.063583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866541, 33.865524, 54.315598>,  <29.559357, 34.342266, 54.763817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866541, 33.865524, 54.315598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654982, 33.608047, 54.536842>,  <29.528046, 33.453560, 54.669590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654982, 33.608047, 54.536842>,  <29.866541, 33.865524, 54.315598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654982, 33.608047, 54.536842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100289, -0.694562, -0.712409,
		0.842740, -0.321320, 0.431907,
		-0.528897, -0.643691, 0.553110,
		29.496313, 33.414940, 54.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231709, 33.287449, 54.137287>,  <29.866541, 33.865524, 54.315598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231709, 33.287449, 54.137287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894247, 33.174122, 54.319710>,  <29.691771, 33.106125, 54.429161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894247, 33.174122, 54.319710>,  <30.231709, 33.287449, 54.137287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894247, 33.174122, 54.319710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132082, -0.713805, -0.687776,
		0.520389, -0.640481, 0.564783,
		-0.843652, -0.283313, 0.456053,
		29.641151, 33.089127, 54.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322153, 32.572765, 54.386158>,  <30.231709, 33.287449, 54.137287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322153, 32.572765, 54.386158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932537, 32.654156, 54.346466>,  <29.698769, 32.702991, 54.322651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932537, 32.654156, 54.346466>,  <30.322153, 32.572765, 54.386158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932537, 32.654156, 54.346466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051914, -0.627411, -0.776956,
		-0.220348, -0.751634, 0.621686,
		-0.974039, 0.203474, -0.099229,
		29.640326, 32.715199, 54.316696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121212, 31.972750, 54.121387>,  <30.322153, 32.572765, 54.386158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121212, 31.972750, 54.121387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829473, 32.235863, 54.046158>,  <29.654430, 32.393730, 54.001022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829473, 32.235863, 54.046158>,  <30.121212, 31.972750, 54.121387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829473, 32.235863, 54.046158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184209, -0.453564, -0.871978,
		-0.658877, -0.601331, 0.451976,
		-0.729348, 0.657784, -0.188072,
		29.610670, 32.433197, 53.989735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579153, 31.578787, 53.826782>,  <30.121212, 31.972750, 54.121387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579153, 31.578787, 53.826782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.506660, 31.952538, 53.704079>,  <29.463165, 32.176788, 53.630455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.506660, 31.952538, 53.704079>,  <29.579153, 31.578787, 53.826782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506660, 31.952538, 53.704079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127540, -0.331619, -0.934753,
		-0.975136, -0.130281, 0.179269,
		-0.181230, 0.934374, -0.306757,
		29.452291, 32.232849, 53.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982534, 31.442474, 53.400169>,  <29.579153, 31.578787, 53.826782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982534, 31.442474, 53.400169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.108662, 31.808636, 53.300079>,  <29.184338, 32.028332, 53.240025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.108662, 31.808636, 53.300079>,  <28.982534, 31.442474, 53.400169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108662, 31.808636, 53.300079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016410, -0.258380, -0.965904,
		-0.948844, 0.308674, -0.066450,
		0.315319, 0.915402, -0.250228,
		29.203257, 32.083256, 53.225010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.504604, 38.248177, 56.641853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.902609, 38.257004, 56.680763>,  <27.141413, 38.262299, 56.704109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.902609, 38.257004, 56.680763>,  <26.504604, 38.248177, 56.641853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902609, 38.257004, 56.680763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099001, 0.099610, 0.990089,
		0.012156, -0.994782, 0.101298,
		0.995013, 0.022064, 0.097273,
		27.201113, 38.263622, 56.709946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567312, 37.800419, 57.166046>,  <26.504604, 38.248177, 56.641853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567312, 37.800419, 57.166046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881416, 38.047581, 57.150253>,  <27.069880, 38.195877, 57.140778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881416, 38.047581, 57.150253>,  <26.567312, 37.800419, 57.166046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881416, 38.047581, 57.150253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137992, 0.236813, 0.961706,
		0.603592, -0.749742, 0.271226,
		0.785261, 0.617905, -0.039480,
		27.116995, 38.232952, 57.138409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007721, 37.570164, 57.757423>,  <26.567312, 37.800419, 57.166046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007721, 37.570164, 57.757423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.082565, 37.953007, 57.668945>,  <27.127472, 38.182713, 57.615860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.082565, 37.953007, 57.668945>,  <27.007721, 37.570164, 57.757423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082565, 37.953007, 57.668945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023591, 0.229482, 0.973027,
		0.982055, -0.176848, 0.065518,
		0.187113, 0.957112, -0.221192,
		27.138699, 38.240139, 57.602589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428268, 37.825211, 58.289715>,  <27.007721, 37.570164, 57.757423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428268, 37.825211, 58.289715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.288788, 38.161804, 58.124638>,  <27.205099, 38.363758, 58.025593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.288788, 38.161804, 58.124638>,  <27.428268, 37.825211, 58.289715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288788, 38.161804, 58.124638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001113, 0.439960, 0.898017,
		0.937233, 0.313599, -0.152478,
		-0.348701, 0.841482, -0.412694,
		27.184177, 38.414249, 58.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755035, 38.383339, 58.593952>,  <27.428268, 37.825211, 58.289715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755035, 38.383339, 58.593952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.443150, 38.571514, 58.428673>,  <27.256018, 38.684418, 58.329506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.443150, 38.571514, 58.428673>,  <27.755035, 38.383339, 58.593952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443150, 38.571514, 58.428673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303014, 0.293995, 0.906504,
		0.547933, 0.832019, -0.086682,
		-0.779713, 0.470437, -0.413203,
		27.209236, 38.712646, 58.304710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746515, 39.051914, 58.832134>,  <27.755035, 38.383339, 58.593952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746515, 39.051914, 58.832134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.365335, 38.964989, 58.747597>,  <27.136627, 38.912834, 58.696873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.365335, 38.964989, 58.747597>,  <27.746515, 39.051914, 58.832134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365335, 38.964989, 58.747597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228460, 0.056607, 0.971906,
		-0.199243, 0.974459, -0.103591,
		-0.952947, -0.217312, -0.211346,
		27.079451, 38.899796, 58.684193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300749, 39.775230, 58.985859>,  <27.746515, 39.051914, 58.832134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300749, 39.775230, 58.985859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.032410, 39.479874, 59.013397>,  <26.871407, 39.302658, 59.029922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.032410, 39.479874, 59.013397>,  <27.300749, 39.775230, 58.985859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032410, 39.479874, 59.013397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149810, 0.225859, 0.962572,
		-0.726305, 0.635426, -0.262135,
		-0.670848, -0.738392, 0.068849,
		26.831156, 39.258358, 59.034054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702021, 39.973175, 59.368641>,  <27.300749, 39.775230, 58.985859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702021, 39.973175, 59.368641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.713394, 39.575912, 59.413948>,  <26.720219, 39.337555, 59.441132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.713394, 39.575912, 59.413948>,  <26.702021, 39.973175, 59.368641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713394, 39.575912, 59.413948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141993, 0.108151, 0.983942,
		-0.989459, -0.044058, -0.137946,
		0.028432, -0.993158, 0.113267,
		26.721924, 39.277966, 59.447929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216801, 39.819103, 59.935177>,  <26.702021, 39.973175, 59.368641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216801, 39.819103, 59.935177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.439484, 39.487576, 59.912754>,  <26.573093, 39.288658, 59.899300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.439484, 39.487576, 59.912754>,  <26.216801, 39.819103, 59.935177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439484, 39.487576, 59.912754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111082, -0.141149, 0.983737,
		-0.823249, -0.541425, -0.170645,
		0.556706, -0.828816, -0.056058,
		26.606495, 39.238930, 59.895935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917425, 39.381474, 60.432552>,  <26.216801, 39.819103, 59.935177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917425, 39.381474, 60.432552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.263412, 39.189407, 60.374222>,  <26.471004, 39.074165, 60.339226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.263412, 39.189407, 60.374222>,  <25.917425, 39.381474, 60.432552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263412, 39.189407, 60.374222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019914, -0.323201, 0.946121,
		-0.501430, -0.815462, -0.289121,
		0.864969, -0.480171, -0.145823,
		26.522903, 39.045357, 60.330475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805387, 38.731838, 60.718384>,  <25.917425, 39.381474, 60.432552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805387, 38.731838, 60.718384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.196903, 38.813618, 60.723671>,  <26.431812, 38.862686, 60.726841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.196903, 38.813618, 60.723671>,  <25.805387, 38.731838, 60.718384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196903, 38.813618, 60.723671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089918, -0.486645, 0.868960,
		0.184091, -0.849339, -0.494705,
		0.978788, 0.204451, 0.013216,
		26.490540, 38.874954, 60.727634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143723, 38.181702, 60.713348>,  <25.805387, 38.731838, 60.718384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143723, 38.181702, 60.713348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.405355, 38.435913, 60.877438>,  <26.562336, 38.588440, 60.975891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.405355, 38.435913, 60.877438>,  <26.143723, 38.181702, 60.713348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405355, 38.435913, 60.877438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068737, -0.590009, 0.804466,
		0.753294, -0.497989, -0.429598,
		0.654082, 0.635529, 0.410220,
		26.601580, 38.626572, 61.000504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693480, 37.727303, 60.907166>,  <26.143723, 38.181702, 60.713348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693480, 37.727303, 60.907166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724545, 38.060947, 61.125603>,  <26.743183, 38.261135, 61.256664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724545, 38.060947, 61.125603>,  <26.693480, 37.727303, 60.907166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724545, 38.060947, 61.125603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155450, -0.551182, 0.819776,
		0.984786, 0.021225, -0.172469,
		0.077662, 0.834115, 0.546096,
		26.747843, 38.311180, 61.289433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314522, 37.893280, 61.291401>,  <26.693480, 37.727303, 60.907166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314522, 37.893280, 61.291401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.990202, 37.994591, 61.502476>,  <26.795610, 38.055378, 61.629120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.990202, 37.994591, 61.502476>,  <27.314522, 37.893280, 61.291401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990202, 37.994591, 61.502476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259688, -0.652287, 0.712098,
		0.524564, 0.714402, 0.463100,
		-0.810798, 0.253280, 0.527688,
		26.746962, 38.070576, 61.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556799, 37.541721, 61.957680>,  <27.314522, 37.893280, 61.291401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556799, 37.541721, 61.957680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.754400, 37.272449, 62.177788>,  <27.872961, 37.110886, 62.309853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.754400, 37.272449, 62.177788>,  <27.556799, 37.541721, 61.957680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754400, 37.272449, 62.177788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419625, -0.369701, -0.828997,
		0.761495, 0.640435, 0.099847,
		0.494005, -0.673175, 0.550268,
		27.902601, 37.070496, 62.342869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120462, 37.269798, 61.573875>,  <27.556799, 37.541721, 61.957680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120462, 37.269798, 61.573875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071955, 36.974442, 61.839226>,  <28.042850, 36.797226, 61.998436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071955, 36.974442, 61.839226>,  <28.120462, 37.269798, 61.573875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071955, 36.974442, 61.839226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247504, -0.669693, -0.700181,
		0.961267, 0.079277, 0.263970,
		-0.121271, -0.738395, 0.663375,
		28.035574, 36.752922, 62.038239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584347, 36.944633, 61.370041>,  <28.120462, 37.269798, 61.573875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584347, 36.944633, 61.370041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.360338, 36.694847, 61.587818>,  <28.225933, 36.544975, 61.718483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.360338, 36.694847, 61.587818>,  <28.584347, 36.944633, 61.370041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360338, 36.694847, 61.587818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270997, -0.759081, -0.591910,
		0.782903, -0.183941, 0.594331,
		-0.560021, -0.624470, 0.544439,
		28.192331, 36.507507, 61.751148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945074, 36.430370, 61.583519>,  <28.584347, 36.944633, 61.370041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945074, 36.430370, 61.583519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.574051, 36.280899, 61.584412>,  <28.351437, 36.191216, 61.584946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.574051, 36.280899, 61.584412>,  <28.945074, 36.430370, 61.583519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574051, 36.280899, 61.584412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257647, -0.643842, -0.720476,
		0.270662, -0.667707, 0.693476,
		-0.927556, -0.373678, 0.002231,
		28.295784, 36.168797, 61.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984234, 35.705799, 61.644844>,  <28.945074, 36.430370, 61.583519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984234, 35.705799, 61.644844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.626183, 35.764194, 61.476353>,  <28.411352, 35.799232, 61.375259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.626183, 35.764194, 61.476353>,  <28.984234, 35.705799, 61.644844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626183, 35.764194, 61.476353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223388, -0.670802, -0.707193,
		-0.385805, -0.727125, 0.567841,
		-0.895127, 0.145990, -0.421230,
		28.357645, 35.807991, 61.349983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802992, 35.061222, 61.327740>,  <28.984234, 35.705799, 61.644844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802992, 35.061222, 61.327740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.547342, 35.311588, 61.148968>,  <28.393953, 35.461807, 61.041702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.547342, 35.311588, 61.148968>,  <28.802992, 35.061222, 61.327740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547342, 35.311588, 61.148968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117256, -0.495016, -0.860936,
		-0.760114, -0.602649, 0.242984,
		-0.639122, 0.625918, -0.446933,
		28.355606, 35.499363, 61.014889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315451, 34.703720, 60.952511>,  <28.802992, 35.061222, 61.327740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315451, 34.703720, 60.952511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.306095, 35.050007, 60.752514>,  <28.300482, 35.257778, 60.632515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.306095, 35.050007, 60.752514>,  <28.315451, 34.703720, 60.952511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306095, 35.050007, 60.752514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158456, -0.490597, -0.856858,
		-0.987089, -0.099267, -0.125703,
		-0.023389, 0.865714, -0.499993,
		28.299078, 35.309719, 60.602516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988663, 34.537052, 60.341705>,  <28.315451, 34.703720, 60.952511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988663, 34.537052, 60.341705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185055, 34.870712, 60.241199>,  <28.302891, 35.070908, 60.180897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185055, 34.870712, 60.241199>,  <27.988663, 34.537052, 60.341705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185055, 34.870712, 60.241199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094010, -0.337471, -0.936630,
		-0.866083, 0.436245, -0.244110,
		0.490980, 0.834148, -0.251267,
		28.332350, 35.120956, 60.165821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666193, 34.784981, 59.671597>,  <27.988663, 34.537052, 60.341705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666193, 34.784981, 59.671597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041868, 34.909225, 59.730171>,  <28.267273, 34.983772, 59.765316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041868, 34.909225, 59.730171>,  <27.666193, 34.784981, 59.671597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041868, 34.909225, 59.730171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246679, -0.313567, -0.916965,
		-0.238903, 0.897327, -0.371120,
		0.939188, 0.310613, 0.146440,
		28.323626, 35.002411, 59.774105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906328, 35.049034, 59.065010>,  <27.666193, 34.784981, 59.671597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906328, 35.049034, 59.065010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.248560, 34.979469, 59.260040>,  <28.453899, 34.937729, 59.377060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.248560, 34.979469, 59.260040>,  <27.906328, 35.049034, 59.065010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248560, 34.979469, 59.260040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432312, -0.278060, -0.857781,
		0.284757, 0.944689, -0.162718,
		0.855582, -0.173914, 0.487580,
		28.505234, 34.927296, 59.406315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261389, 35.356281, 58.673233>,  <27.906328, 35.049034, 59.065010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261389, 35.356281, 58.673233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536753, 35.180660, 58.904171>,  <28.701971, 35.075287, 59.042732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536753, 35.180660, 58.904171>,  <28.261389, 35.356281, 58.673233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536753, 35.180660, 58.904171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481601, -0.318514, -0.816462,
		0.542361, 0.840109, -0.007821,
		0.688408, -0.439050, 0.577346,
		28.743275, 35.048946, 59.077374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997570, 35.660545, 58.504448>,  <28.261389, 35.356281, 58.673233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997570, 35.660545, 58.504448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978727, 35.290329, 58.654732>,  <28.967422, 35.068199, 58.744900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.978727, 35.290329, 58.654732>,  <28.997570, 35.660545, 58.504448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978727, 35.290329, 58.654732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465392, -0.353143, -0.811603,
		0.883850, 0.136620, 0.447375,
		-0.047106, -0.925540, 0.375707,
		28.964596, 35.012669, 58.767445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648108, 35.448341, 58.434341>,  <28.997570, 35.660545, 58.504448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648108, 35.448341, 58.434341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439548, 35.108471, 58.465816>,  <29.314413, 34.904549, 58.484699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439548, 35.108471, 58.465816>,  <29.648108, 35.448341, 58.434341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439548, 35.108471, 58.465816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365273, -0.305577, -0.879317,
		0.771180, -0.429734, 0.469692,
		-0.521399, -0.849677, 0.078685,
		29.283129, 34.853569, 58.489422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181770, 34.968170, 58.359615>,  <29.648108, 35.448341, 58.434341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181770, 34.968170, 58.359615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824551, 34.815647, 58.264065>,  <29.610218, 34.724133, 58.206734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824551, 34.815647, 58.264065>,  <30.181770, 34.968170, 58.359615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824551, 34.815647, 58.264065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353427, -0.265878, -0.896882,
		0.278476, -0.885388, 0.372207,
		-0.893051, -0.381309, -0.238880,
		29.556635, 34.701256, 58.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585978, 34.319988, 58.741390>,  <30.181770, 34.968170, 58.359615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585978, 34.319988, 58.741390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.971874, 34.228340, 58.793198>,  <31.203413, 34.173351, 58.824284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.971874, 34.228340, 58.793198>,  <30.585978, 34.319988, 58.741390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971874, 34.228340, 58.793198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125836, 0.030672, 0.991577,
		-0.231163, -0.972915, 0.000760,
		0.964743, -0.229120, 0.129518,
		31.261297, 34.159603, 58.832054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597864, 33.812107, 59.279762>,  <30.585978, 34.319988, 58.741390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597864, 33.812107, 59.279762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.971031, 33.956055, 59.274773>,  <31.194931, 34.042423, 59.271778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.971031, 33.956055, 59.274773>,  <30.597864, 33.812107, 59.279762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971031, 33.956055, 59.274773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033339, 0.120811, 0.992116,
		0.358539, -0.925148, 0.124704,
		0.932919, 0.359870, -0.012472,
		31.250908, 34.064014, 59.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951365, 33.537685, 59.964935>,  <30.597864, 33.812107, 59.279762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951365, 33.537685, 59.964935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140213, 33.857552, 59.816540>,  <31.253523, 34.049473, 59.727505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140213, 33.857552, 59.816540>,  <30.951365, 33.537685, 59.964935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140213, 33.857552, 59.816540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137024, 0.482296, 0.865226,
		0.870818, -0.357659, 0.337277,
		0.472123, 0.799669, -0.370984,
		31.281851, 34.097454, 59.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622868, 33.642677, 60.410503>,  <30.951365, 33.537685, 59.964935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622868, 33.642677, 60.410503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.506361, 33.980820, 60.231377>,  <31.436457, 34.183704, 60.123901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.506361, 33.980820, 60.231377>,  <31.622868, 33.642677, 60.410503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506361, 33.980820, 60.231377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093963, 0.491132, 0.866003,
		0.952016, 0.210159, -0.222482,
		-0.291266, 0.845353, -0.447819,
		31.418982, 34.234425, 60.097031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042877, 34.069660, 60.782120>,  <31.622868, 33.642677, 60.410503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042877, 34.069660, 60.782120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779028, 34.305401, 60.595543>,  <31.620718, 34.446846, 60.483597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779028, 34.305401, 60.595543>,  <32.042877, 34.069660, 60.782120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779028, 34.305401, 60.595543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118526, 0.531263, 0.838875,
		0.742193, 0.608625, -0.280579,
		-0.659621, 0.589352, -0.466438,
		31.581142, 34.482208, 60.455612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293987, 34.697742, 60.920120>,  <32.042877, 34.069660, 60.782120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293987, 34.697742, 60.920120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920731, 34.775909, 60.799412>,  <31.696777, 34.822807, 60.726986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920731, 34.775909, 60.799412>,  <32.293987, 34.697742, 60.920120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920731, 34.775909, 60.799412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043463, 0.771911, 0.634243,
		0.356882, 0.604952, -0.711807,
		-0.933138, 0.195413, -0.301774,
		31.640789, 34.834534, 60.708881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168777, 35.489410, 60.965916>,  <32.293987, 34.697742, 60.920120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168777, 35.489410, 60.965916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.816936, 35.300171, 60.985832>,  <31.605831, 35.186626, 60.997780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.816936, 35.300171, 60.985832>,  <32.168777, 35.489410, 60.965916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816936, 35.300171, 60.985832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271370, 0.584975, 0.764305,
		-0.390716, 0.658773, -0.642930,
		-0.879602, -0.473098, 0.049788,
		31.553057, 35.158241, 61.000767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317776, 36.218010, 60.868015>,  <32.168777, 35.489410, 60.965916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317776, 36.218010, 60.868015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684776, 36.319344, 60.990658>,  <32.904976, 36.380142, 61.064243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684776, 36.319344, 60.990658>,  <32.317776, 36.218010, 60.868015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684776, 36.319344, 60.990658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359236, -0.197010, -0.912215,
		-0.170691, 0.947105, -0.271765,
		0.917504, 0.253335, 0.306606,
		32.960026, 36.395344, 61.082642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583363, 36.599464, 60.402000>,  <32.317776, 36.218010, 60.868015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583363, 36.599464, 60.402000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909153, 36.440502, 60.571087>,  <33.104630, 36.345123, 60.672539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909153, 36.440502, 60.571087>,  <32.583363, 36.599464, 60.402000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909153, 36.440502, 60.571087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299505, -0.336009, -0.892969,
		0.496910, 0.853912, -0.154647,
		0.814480, -0.397408, 0.422717,
		33.153496, 36.321281, 60.697903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076931, 36.867195, 59.962772>,  <32.583363, 36.599464, 60.402000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076931, 36.867195, 59.962772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256088, 36.562542, 60.150093>,  <33.363583, 36.379749, 60.262486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256088, 36.562542, 60.150093>,  <33.076931, 36.867195, 59.962772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256088, 36.562542, 60.150093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421463, -0.282075, -0.861860,
		0.788518, 0.583391, 0.194661,
		0.447892, -0.761635, 0.468300,
		33.390457, 36.334053, 60.290585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734272, 36.791710, 59.625767>,  <33.076931, 36.867195, 59.962772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734272, 36.791710, 59.625767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690136, 36.452049, 59.832363>,  <33.663654, 36.248253, 59.956322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690136, 36.452049, 59.832363>,  <33.734272, 36.791710, 59.625767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690136, 36.452049, 59.832363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559607, -0.482542, -0.673790,
		0.821380, 0.214684, 0.528438,
		-0.110342, -0.849155, 0.516489,
		33.657032, 36.197304, 59.987309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424610, 36.553425, 59.655750>,  <33.734272, 36.791710, 59.625767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424610, 36.553425, 59.655750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.142960, 36.274311, 59.708359>,  <33.973969, 36.106842, 59.739925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.142960, 36.274311, 59.708359>,  <34.424610, 36.553425, 59.655750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142960, 36.274311, 59.708359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471948, -0.598291, -0.647544,
		0.530535, -0.393883, 0.750592,
		-0.704129, -0.697786, 0.131522,
		33.931721, 36.064976, 59.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889454, 35.990891, 59.582104>,  <34.424610, 36.553425, 59.655750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889454, 35.990891, 59.582104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517151, 35.844662, 59.579201>,  <34.293770, 35.756924, 59.577457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517151, 35.844662, 59.579201>,  <34.889454, 35.990891, 59.582104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517151, 35.844662, 59.579201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297825, -0.746460, -0.595061,
		0.212118, -0.556018, 0.803648,
		-0.930756, -0.365570, -0.007259,
		34.237923, 35.734989, 59.577023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880241, 35.332001, 59.822178>,  <34.889454, 35.990891, 59.582104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880241, 35.332001, 59.822178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554825, 35.378460, 59.594261>,  <34.359573, 35.406334, 59.457512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554825, 35.378460, 59.594261>,  <34.880241, 35.332001, 59.822178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554825, 35.378460, 59.594261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369612, -0.653172, -0.660873,
		-0.448927, -0.748250, 0.488455,
		-0.813542, 0.116144, -0.569788,
		34.310760, 35.413303, 59.423325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.939680, 41.499004, 61.538067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760960, 41.152214, 61.626362>,  <28.653727, 40.944141, 61.679340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760960, 41.152214, 61.626362>,  <28.939680, 41.499004, 61.538067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760960, 41.152214, 61.626362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348876, -0.396056, -0.849368,
		0.823805, -0.302487, 0.479424,
		-0.446801, -0.866973, 0.220742,
		28.626919, 40.892120, 61.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473862, 41.071896, 61.702427>,  <28.939680, 41.499004, 61.538067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473862, 41.071896, 61.702427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128309, 40.944649, 61.546215>,  <28.920977, 40.868301, 61.452488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128309, 40.944649, 61.546215>,  <29.473862, 41.071896, 61.702427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128309, 40.944649, 61.546215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487533, -0.333276, -0.806994,
		0.126564, -0.887542, 0.443003,
		-0.863882, -0.318115, -0.390525,
		28.869144, 40.849213, 61.429058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507744, 40.288612, 61.664829>,  <29.473862, 41.071896, 61.702427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507744, 40.288612, 61.664829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274946, 40.476505, 61.399307>,  <29.135267, 40.589241, 61.239994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274946, 40.476505, 61.399307>,  <29.507744, 40.288612, 61.664829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274946, 40.476505, 61.399307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582944, -0.328140, -0.743304,
		-0.566971, -0.819560, -0.082850,
		-0.581996, 0.469729, -0.663804,
		29.100348, 40.617424, 61.200165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529266, 39.863907, 61.111752>,  <29.507744, 40.288612, 61.664829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529266, 39.863907, 61.111752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356857, 40.179291, 60.936230>,  <29.253412, 40.368523, 60.830917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356857, 40.179291, 60.936230>,  <29.529266, 39.863907, 61.111752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356857, 40.179291, 60.936230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386366, -0.278193, -0.879392,
		-0.815439, -0.548576, -0.184728,
		-0.431023, 0.788463, -0.438800,
		29.227551, 40.415829, 60.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260393, 39.596340, 60.448769>,  <29.529266, 39.863907, 61.111752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260393, 39.596340, 60.448769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257318, 39.992638, 60.394566>,  <29.255474, 40.230415, 60.362045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257318, 39.992638, 60.394566>,  <29.260393, 39.596340, 60.448769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257318, 39.992638, 60.394566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432099, -0.118917, -0.893952,
		-0.901794, -0.065423, -0.427186,
		-0.007685, 0.990746, -0.135508,
		29.255013, 40.289860, 60.353912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771021, 39.794315, 59.900337>,  <29.260393, 39.596340, 60.448769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771021, 39.794315, 59.900337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050257, 40.079567, 59.926006>,  <29.217798, 40.250717, 59.941410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050257, 40.079567, 59.926006>,  <28.771021, 39.794315, 59.900337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050257, 40.079567, 59.926006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208566, -0.116783, -0.971011,
		-0.684963, 0.691236, -0.230259,
		0.698088, 0.713130, 0.064176,
		29.259684, 40.293507, 59.945259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644989, 40.319340, 59.412243>,  <28.771021, 39.794315, 59.900337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644989, 40.319340, 59.412243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035402, 40.332890, 59.498230>,  <29.269650, 40.341019, 59.549824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035402, 40.332890, 59.498230>,  <28.644989, 40.319340, 59.412243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035402, 40.332890, 59.498230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211136, 0.091944, -0.973123,
		-0.052727, 0.995188, 0.082589,
		0.976033, 0.033872, 0.214968,
		29.328213, 40.343052, 59.562721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869925, 40.476730, 58.776382>,  <28.644989, 40.319340, 59.412243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869925, 40.476730, 58.776382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216875, 40.421165, 58.967533>,  <29.425045, 40.387825, 59.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216875, 40.421165, 58.967533>,  <28.869925, 40.476730, 58.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216875, 40.421165, 58.967533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492885, 0.107135, -0.863473,
		0.068750, 0.984492, 0.161394,
		0.867374, -0.138913, 0.477876,
		29.477087, 40.379490, 59.110897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347706, 40.672421, 58.343784>,  <28.869925, 40.476730, 58.776382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347706, 40.672421, 58.343784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593977, 40.464680, 58.580837>,  <29.741739, 40.340034, 58.723068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593977, 40.464680, 58.580837>,  <29.347706, 40.672421, 58.343784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593977, 40.464680, 58.580837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631596, -0.124474, -0.765240,
		0.471198, 0.845445, 0.251387,
		0.615677, -0.519355, 0.592632,
		29.778681, 40.308872, 58.758625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996367, 40.834496, 58.108234>,  <29.347706, 40.672421, 58.343784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996367, 40.834496, 58.108234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038603, 40.492516, 58.311375>,  <30.063946, 40.287327, 58.433258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038603, 40.492516, 58.311375>,  <29.996367, 40.834496, 58.108234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038603, 40.492516, 58.311375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346290, -0.447129, -0.824717,
		0.932166, 0.262949, 0.248846,
		0.105592, -0.854946, 0.507855,
		30.070280, 40.236031, 58.463730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723692, 40.571484, 58.048084>,  <29.996367, 40.834496, 58.108234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723692, 40.571484, 58.048084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524204, 40.239059, 58.146572>,  <30.404512, 40.039604, 58.205666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524204, 40.239059, 58.146572>,  <30.723692, 40.571484, 58.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524204, 40.239059, 58.146572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471879, -0.498607, -0.727132,
		0.727057, -0.246446, 0.640822,
		-0.498717, -0.831057, 0.246223,
		30.374590, 39.989742, 58.220440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156340, 39.979156, 58.175739>,  <30.723692, 40.571484, 58.048084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156340, 39.979156, 58.175739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807240, 39.827950, 58.052185>,  <30.597778, 39.737225, 57.978054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807240, 39.827950, 58.052185>,  <31.156340, 39.979156, 58.175739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807240, 39.827950, 58.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474194, -0.506191, -0.720354,
		0.115949, -0.775162, 0.621031,
		-0.872752, -0.378014, -0.308885,
		30.545414, 39.714546, 57.959518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818195, 40.015884, 57.903023>,  <31.156340, 39.979156, 58.175739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818195, 40.015884, 57.903023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151093, 39.918182, 58.102104>,  <32.350830, 39.859562, 58.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151093, 39.918182, 58.102104>,  <31.818195, 40.015884, 57.903023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151093, 39.918182, 58.102104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534457, -0.114802, 0.837363,
		-0.147398, -0.962890, -0.226090,
		0.832244, -0.244261, 0.497702,
		32.400764, 39.844906, 58.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637476, 39.428020, 58.483166>,  <31.818195, 40.015884, 57.903023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637476, 39.428020, 58.483166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975506, 39.610870, 58.594082>,  <32.178322, 39.720581, 58.660633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975506, 39.610870, 58.594082>,  <31.637476, 39.428020, 58.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975506, 39.610870, 58.594082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243554, -0.132558, 0.960786,
		0.475954, -0.879470, -0.000687,
		0.845073, 0.457123, 0.277290,
		32.229027, 39.748009, 58.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718462, 39.074993, 59.076351>,  <31.637476, 39.428020, 58.483166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718462, 39.074993, 59.076351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979359, 39.376827, 59.105133>,  <32.135895, 39.557930, 59.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979359, 39.376827, 59.105133>,  <31.718462, 39.074993, 59.076351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979359, 39.376827, 59.105133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040327, -0.060250, 0.997368,
		0.756939, -0.653425, -0.008867,
		0.652240, 0.754590, 0.071956,
		32.175030, 39.603203, 59.126720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360867, 38.811249, 59.421185>,  <31.718462, 39.074993, 59.076351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360867, 38.811249, 59.421185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294952, 39.202190, 59.474285>,  <32.255402, 39.436756, 59.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294952, 39.202190, 59.474285>,  <32.360867, 38.811249, 59.421185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294952, 39.202190, 59.474285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227980, -0.093207, 0.969194,
		0.959620, 0.189976, -0.207458,
		-0.164788, 0.977354, 0.132754,
		32.245518, 39.495396, 59.514111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588928, 38.893776, 60.088009>,  <32.360867, 38.811249, 59.421185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588928, 38.893776, 60.088009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423229, 39.252087, 60.023525>,  <32.323811, 39.467072, 59.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423229, 39.252087, 60.023525>,  <32.588928, 38.893776, 60.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423229, 39.252087, 60.023525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100959, 0.130809, 0.986254,
		0.904548, 0.424828, 0.036249,
		-0.414246, 0.895774, -0.161213,
		32.298954, 39.520821, 59.975163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054420, 39.465069, 60.359184>,  <32.588928, 38.893776, 60.088009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054420, 39.465069, 60.359184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689087, 39.627941, 60.357002>,  <32.469887, 39.725666, 60.355694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689087, 39.627941, 60.357002>,  <33.054420, 39.465069, 60.359184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689087, 39.627941, 60.357002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026724, 0.073306, 0.996951,
		0.406342, 0.910400, -0.077834,
		-0.913330, 0.407183, -0.005458,
		32.415089, 39.750095, 60.355366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120007, 40.109188, 60.725906>,  <33.054420, 39.465069, 60.359184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120007, 40.109188, 60.725906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732536, 40.011280, 60.742634>,  <32.500053, 39.952534, 60.752670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732536, 40.011280, 60.742634>,  <33.120007, 40.109188, 60.725906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732536, 40.011280, 60.742634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011923, 0.214050, 0.976750,
		-0.248032, 0.945658, -0.210264,
		-0.968679, -0.244772, 0.041816,
		32.441933, 39.937847, 60.755180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747372, 40.650753, 61.153553>,  <33.120007, 40.109188, 60.725906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747372, 40.650753, 61.153553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567795, 40.293327, 61.153038>,  <32.460049, 40.078873, 61.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567795, 40.293327, 61.153038>,  <32.747372, 40.650753, 61.153553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567795, 40.293327, 61.153038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149537, 0.073710, 0.986005,
		-0.880962, 0.442847, -0.166712,
		-0.448938, -0.893562, -0.001286,
		32.433113, 40.025257, 61.152653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226822, 40.716591, 61.685551>,  <32.747372, 40.650753, 61.153553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226822, 40.716591, 61.685551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222603, 40.323624, 61.610989>,  <32.220074, 40.087845, 61.566250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222603, 40.323624, 61.610989>,  <32.226822, 40.716591, 61.685551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222603, 40.323624, 61.610989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198674, -0.180645, 0.963274,
		-0.980009, 0.047193, -0.193275,
		-0.010546, -0.982415, -0.186410,
		32.219440, 40.028900, 61.555065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585966, 40.469021, 62.002090>,  <32.226822, 40.716591, 61.685551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585966, 40.469021, 62.002090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843481, 40.163975, 61.976929>,  <31.997990, 39.980946, 61.961830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843481, 40.163975, 61.976929>,  <31.585966, 40.469021, 62.002090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843481, 40.163975, 61.976929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363232, -0.376919, 0.852054,
		-0.673501, -0.525690, -0.519661,
		0.643786, -0.762616, -0.062908,
		32.036617, 39.935188, 61.958057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281734, 39.862003, 62.464813>,  <31.585966, 40.469021, 62.002090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281734, 39.862003, 62.464813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662216, 39.766705, 62.386375>,  <31.890505, 39.709526, 62.339314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662216, 39.766705, 62.386375>,  <31.281734, 39.862003, 62.464813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662216, 39.766705, 62.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077703, -0.430080, 0.899441,
		-0.298624, -0.870788, -0.390581,
		0.951202, -0.238245, -0.196095,
		31.947577, 39.695232, 62.327545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363638, 39.192974, 62.546391>,  <31.281734, 39.862003, 62.464813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363638, 39.192974, 62.546391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723427, 39.360146, 62.597435>,  <31.939301, 39.460449, 62.628059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723427, 39.360146, 62.597435>,  <31.363638, 39.192974, 62.546391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723427, 39.360146, 62.597435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000063, -0.291903, 0.956448,
		0.436974, -0.860308, -0.262532,
		0.899474, 0.417926, 0.127608,
		31.993269, 39.485523, 62.635719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663227, 38.670910, 62.969612>,  <31.363638, 39.192974, 62.546391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663227, 38.670910, 62.969612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893873, 38.996525, 62.997498>,  <32.032261, 39.191895, 63.014229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893873, 38.996525, 62.997498>,  <31.663227, 38.670910, 62.969612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893873, 38.996525, 62.997498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251537, -0.258065, 0.932808,
		0.777330, -0.520337, -0.353565,
		0.576618, 0.814034, 0.069718,
		32.066860, 39.240734, 63.018414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201763, 38.418159, 63.353523>,  <31.663227, 38.670910, 62.969612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201763, 38.418159, 63.353523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190876, 38.816566, 63.387497>,  <32.184345, 39.055611, 63.407883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190876, 38.816566, 63.387497>,  <32.201763, 38.418159, 63.353523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190876, 38.816566, 63.387497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325554, -0.071502, 0.942816,
		0.945132, 0.053309, -0.322311,
		-0.027215, 0.996015, 0.084933,
		32.182713, 39.115372, 63.412975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802593, 38.494282, 62.892452>,  <32.201763, 38.418159, 63.353523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802593, 38.494282, 62.892452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636009, 38.195259, 63.099419>,  <32.536057, 38.015846, 63.223598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636009, 38.195259, 63.099419>,  <32.802593, 38.494282, 62.892452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636009, 38.195259, 63.099419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031917, -0.580790, -0.813427,
		0.908592, -0.322248, 0.265738,
		-0.416464, -0.747555, 0.517416,
		32.511070, 37.970993, 63.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172604, 37.954323, 62.736542>,  <32.802593, 38.494282, 62.892452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172604, 37.954323, 62.736542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842182, 37.772583, 62.869930>,  <32.643929, 37.663540, 62.949963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842182, 37.772583, 62.869930>,  <33.172604, 37.954323, 62.736542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842182, 37.772583, 62.869930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148236, -0.746004, -0.649234,
		0.543749, -0.486869, 0.683590,
		-0.826053, -0.454353, 0.333467,
		32.594368, 37.636276, 62.969971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316196, 37.348507, 63.105949>,  <33.172604, 37.954323, 62.736542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316196, 37.348507, 63.105949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949860, 37.296543, 62.953968>,  <32.730057, 37.265366, 62.862782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949860, 37.296543, 62.953968>,  <33.316196, 37.348507, 63.105949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949860, 37.296543, 62.953968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333958, -0.771807, -0.541097,
		-0.222955, -0.622445, 0.750235,
		-0.915840, -0.129906, -0.379949,
		32.675106, 37.257572, 62.839985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266705, 36.627762, 63.077507>,  <33.316196, 37.348507, 63.105949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266705, 36.627762, 63.077507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985714, 36.780525, 62.837284>,  <32.817120, 36.872185, 62.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985714, 36.780525, 62.837284>,  <33.266705, 36.627762, 63.077507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985714, 36.780525, 62.837284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328671, -0.574380, -0.749709,
		-0.631271, -0.724039, 0.277964,
		-0.702476, 0.381911, -0.600560,
		32.774971, 36.895100, 62.657116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004234, 35.996872, 62.703362>,  <33.266705, 36.627762, 63.077507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004234, 35.996872, 62.703362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928398, 36.318073, 62.477356>,  <32.882896, 36.510796, 62.341755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928398, 36.318073, 62.477356>,  <33.004234, 35.996872, 62.703362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928398, 36.318073, 62.477356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477144, -0.427580, -0.767795,
		-0.858131, -0.415159, -0.302084,
		-0.189592, 0.803006, -0.565010,
		32.871521, 36.558975, 62.307854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708397, 35.771954, 62.149952>,  <33.004234, 35.996872, 62.703362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708397, 35.771954, 62.149952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803982, 36.135235, 62.012512>,  <32.861332, 36.353203, 61.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803982, 36.135235, 62.012512>,  <32.708397, 35.771954, 62.149952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803982, 36.135235, 62.012512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178797, -0.388956, -0.903739,
		-0.954427, 0.154521, -0.255328,
		0.238958, 0.908205, -0.343603,
		32.875668, 36.407696, 61.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399036, 35.882202, 61.498581>,  <32.708397, 35.771954, 62.149952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399036, 35.882202, 61.498581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675587, 36.170918, 61.511341>,  <32.841518, 36.344147, 61.518997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675587, 36.170918, 61.511341>,  <32.399036, 35.882202, 61.498581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675587, 36.170918, 61.511341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284947, -0.231829, -0.930086,
		-0.663930, 0.652131, -0.365953,
		0.691377, 0.721790, 0.031904,
		32.882999, 36.387455, 61.520912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718147, 36.019543, 61.241177>,  <32.399036, 35.882202, 61.498581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718147, 36.019543, 61.241177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499537, 35.686615, 61.278179>,  <31.368370, 35.486858, 61.300381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499537, 35.686615, 61.278179>,  <31.718147, 36.019543, 61.241177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499537, 35.686615, 61.278179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528009, 0.428215, 0.733374,
		-0.650011, 0.351966, -0.673502,
		-0.546527, -0.832317, 0.092503,
		31.335579, 35.436920, 61.305931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981155, 36.226742, 61.157890>,  <31.718147, 36.019543, 61.241177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981155, 36.226742, 61.157890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969236, 35.872749, 61.343761>,  <30.962086, 35.660355, 61.455284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969236, 35.872749, 61.343761>,  <30.981155, 36.226742, 61.157890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969236, 35.872749, 61.343761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453413, 0.426271, 0.782758,
		-0.890803, -0.187368, -0.413961,
		-0.029796, -0.884978, 0.464678,
		30.960299, 35.607254, 61.483166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234339, 36.093952, 61.451675>,  <30.981155, 36.226742, 61.157890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234339, 36.093952, 61.451675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496637, 35.884693, 61.669415>,  <30.654016, 35.759140, 61.800060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496637, 35.884693, 61.669415>,  <30.234339, 36.093952, 61.451675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496637, 35.884693, 61.669415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448478, 0.310102, 0.838275,
		-0.607343, -0.793824, -0.031271,
		0.655745, -0.523145, 0.544351,
		30.693361, 35.727749, 61.832718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823248, 35.642826, 61.773029>,  <30.234339, 36.093952, 61.451675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823248, 35.642826, 61.773029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164619, 35.663776, 61.980457>,  <30.369442, 35.676346, 62.104912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164619, 35.663776, 61.980457>,  <29.823248, 35.642826, 61.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164619, 35.663776, 61.980457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516621, 0.216679, 0.828343,
		-0.068977, -0.974837, 0.211979,
		0.853431, 0.052376, 0.518568,
		30.420649, 35.679489, 62.136028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621519, 35.292839, 62.283680>,  <29.823248, 35.642826, 61.773029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621519, 35.292839, 62.283680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944160, 35.496185, 62.404316>,  <30.137745, 35.618195, 62.476696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944160, 35.496185, 62.404316>,  <29.621519, 35.292839, 62.283680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944160, 35.496185, 62.404316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443679, 0.183579, 0.877181,
		0.390564, -0.841346, 0.373627,
		0.806603, 0.508366, 0.301589,
		30.186142, 35.648693, 62.494793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676325, 35.099937, 62.950249>,  <29.621519, 35.292839, 62.283680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676325, 35.099937, 62.950249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908791, 35.424980, 62.932743>,  <30.048269, 35.620007, 62.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908791, 35.424980, 62.932743>,  <29.676325, 35.099937, 62.950249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908791, 35.424980, 62.932743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235536, 0.219444, 0.946766,
		0.778955, -0.539918, 0.318932,
		0.581164, 0.812608, -0.043767,
		30.083139, 35.668762, 62.919613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320494, 35.090874, 63.449699>,  <29.676325, 35.099937, 62.950249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320494, 35.090874, 63.449699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241203, 35.474533, 63.368965>,  <30.193630, 35.704731, 63.320526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241203, 35.474533, 63.368965>,  <30.320494, 35.090874, 63.449699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241203, 35.474533, 63.368965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122676, 0.180023, 0.975983,
		0.972449, 0.218224, 0.081980,
		-0.198225, 0.959151, -0.201834,
		30.181736, 35.762280, 63.308414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708015, 35.553669, 63.861286>,  <30.320494, 35.090874, 63.449699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708015, 35.553669, 63.861286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397785, 35.770496, 63.731892>,  <30.211647, 35.900593, 63.654255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397785, 35.770496, 63.731892>,  <30.708015, 35.553669, 63.861286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397785, 35.770496, 63.731892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134926, 0.358251, 0.923824,
		0.616667, 0.760141, -0.204711,
		-0.775575, 0.542071, -0.323485,
		30.165113, 35.933117, 63.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778650, 36.161087, 64.166092>,  <30.708015, 35.553669, 63.861286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778650, 36.161087, 64.166092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390539, 36.168030, 64.069542>,  <30.157673, 36.172195, 64.011612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390539, 36.168030, 64.069542>,  <30.778650, 36.161087, 64.166092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390539, 36.168030, 64.069542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215317, 0.393403, 0.893797,
		0.110472, 0.919202, -0.377972,
		-0.970275, 0.017356, -0.241380,
		30.099457, 36.173237, 63.997128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<35.353691, 34.834770, 45.357056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660061, 34.874645, 45.611118>,  <35.843884, 34.898571, 45.763557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660061, 34.874645, 45.611118>,  <35.353691, 34.834770, 45.357056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660061, 34.874645, 45.611118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579370, 0.535317, 0.614627,
		-0.278737, -0.838747, 0.467770,
		0.765922, 0.099692, 0.635157,
		35.889839, 34.904552, 45.801666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080841, 34.475101, 45.963486>,  <35.353691, 34.834770, 45.357056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080841, 34.475101, 45.963486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345371, 34.763649, 46.045734>,  <35.504089, 34.936775, 46.095085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345371, 34.763649, 46.045734>,  <35.080841, 34.475101, 45.963486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345371, 34.763649, 46.045734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665633, 0.437994, 0.604231,
		0.345807, -0.536465, 0.769820,
		0.661325, 0.721364, 0.205627,
		35.543770, 34.980061, 46.107422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301529, 34.306183, 46.578114>,  <35.080841, 34.475101, 45.963486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301529, 34.306183, 46.578114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328957, 34.699047, 46.508072>,  <35.345413, 34.934765, 46.466049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328957, 34.699047, 46.508072>,  <35.301529, 34.306183, 46.578114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328957, 34.699047, 46.508072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593531, 0.181234, 0.784140,
		0.801885, 0.050162, 0.595369,
		0.068567, 0.982160, -0.175101,
		35.349525, 34.993694, 46.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501209, 34.547283, 47.203815>,  <35.301529, 34.306183, 46.578114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501209, 34.547283, 47.203815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351486, 34.875202, 47.030457>,  <35.261654, 35.071953, 46.926441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351486, 34.875202, 47.030457>,  <35.501209, 34.547283, 47.203815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351486, 34.875202, 47.030457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696949, 0.059586, 0.714641,
		0.611682, 0.569551, 0.549050,
		-0.374309, 0.819793, -0.433396,
		35.239193, 35.121140, 46.900436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371040, 35.020565, 47.762341>,  <35.501209, 34.547283, 47.203815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371040, 35.020565, 47.762341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177288, 35.157070, 47.440117>,  <35.061039, 35.238972, 47.246784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177288, 35.157070, 47.440117>,  <35.371040, 35.020565, 47.762341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177288, 35.157070, 47.440117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818814, 0.147430, 0.554804,
		0.308095, 0.928335, 0.208016,
		-0.484376, 0.341259, -0.805557,
		35.031975, 35.259449, 47.198448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066185, 35.619358, 48.053082>,  <35.371040, 35.020565, 47.762341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066185, 35.619358, 48.053082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875912, 35.514957, 47.717079>,  <34.761749, 35.452316, 47.515476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875912, 35.514957, 47.717079>,  <35.066185, 35.619358, 48.053082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875912, 35.514957, 47.717079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866106, -0.027770, 0.499088,
		-0.153590, 0.964939, -0.212846,
		-0.475679, -0.261003, -0.840005,
		34.733208, 35.436657, 47.465076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456783, 36.103413, 48.073807>,  <35.066185, 35.619358, 48.053082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456783, 36.103413, 48.073807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405506, 35.790157, 47.830410>,  <34.374741, 35.602203, 47.684372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405506, 35.790157, 47.830410>,  <34.456783, 36.103413, 48.073807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405506, 35.790157, 47.830410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951131, -0.076716, 0.299106,
		-0.280921, 0.617102, -0.735030,
		-0.128190, -0.783135, -0.608495,
		34.367050, 35.555218, 47.647861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808712, 36.203438, 47.748905>,  <34.456783, 36.103413, 48.073807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808712, 36.203438, 47.748905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897068, 35.814404, 47.719799>,  <33.950081, 35.580982, 47.702335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897068, 35.814404, 47.719799>,  <33.808712, 36.203438, 47.748905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897068, 35.814404, 47.719799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906179, -0.232247, 0.353413,
		-0.360622, -0.012126, -0.932633,
		0.220887, -0.972581, -0.072765,
		33.963333, 35.522629, 47.697968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162952, 35.986328, 47.448925>,  <33.808712, 36.203438, 47.748905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162952, 35.986328, 47.448925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.343403, 35.677967, 47.628788>,  <33.451675, 35.492950, 47.736706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.343403, 35.677967, 47.628788>,  <33.162952, 35.986328, 47.448925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343403, 35.677967, 47.628788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875872, -0.285755, 0.388834,
		-0.171263, -0.569254, -0.804126,
		0.451128, -0.770905, 0.449654,
		33.478741, 35.446697, 47.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681885, 35.392391, 47.371498>,  <33.162952, 35.986328, 47.448925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681885, 35.392391, 47.371498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918655, 35.260963, 47.665890>,  <33.060719, 35.182106, 47.842525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918655, 35.260963, 47.665890>,  <32.681885, 35.392391, 47.371498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918655, 35.260963, 47.665890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789568, -0.419797, 0.447608,
		0.161892, -0.846057, -0.507916,
		0.591924, -0.328570, 0.735981,
		33.096233, 35.162392, 47.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563667, 34.609188, 47.509418>,  <32.681885, 35.392391, 47.371498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563667, 34.609188, 47.509418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.704098, 34.813957, 47.823025>,  <32.788357, 34.936817, 48.011189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.704098, 34.813957, 47.823025>,  <32.563667, 34.609188, 47.509418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704098, 34.813957, 47.823025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786105, -0.293765, 0.543821,
		0.508711, -0.807241, 0.299291,
		0.351073, 0.511922, 0.784018,
		32.809422, 34.967533, 48.058231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440414, 34.209259, 48.048206>,  <32.563667, 34.609188, 47.509418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440414, 34.209259, 48.048206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510887, 34.556187, 48.234421>,  <32.553169, 34.764343, 48.346149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510887, 34.556187, 48.234421>,  <32.440414, 34.209259, 48.048206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510887, 34.556187, 48.234421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811563, -0.139663, 0.567327,
		0.557070, -0.477762, 0.679276,
		0.176178, 0.867316, 0.465536,
		32.563740, 34.816383, 48.374081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395542, 33.997944, 48.764736>,  <32.440414, 34.209259, 48.048206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395542, 33.997944, 48.764736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353275, 34.395096, 48.786724>,  <32.327915, 34.633389, 48.799915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353275, 34.395096, 48.786724>,  <32.395542, 33.997944, 48.764736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353275, 34.395096, 48.786724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720814, -0.114557, 0.683596,
		0.685027, 0.032614, 0.727788,
		-0.105668, 0.992881, 0.054966,
		32.321575, 34.692959, 48.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131321, 34.066597, 49.388897>,  <32.395542, 33.997944, 48.764736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131321, 34.066597, 49.388897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042908, 34.431404, 49.250698>,  <31.989861, 34.650288, 49.167778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042908, 34.431404, 49.250698>,  <32.131321, 34.066597, 49.388897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042908, 34.431404, 49.250698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869517, -0.023843, 0.493327,
		0.441684, 0.409460, 0.798284,
		-0.221032, 0.912016, -0.345501,
		31.976599, 34.705009, 49.147049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951082, 34.514061, 49.968590>,  <32.131321, 34.066597, 49.388897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951082, 34.514061, 49.968590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.775366, 34.665451, 49.642700>,  <31.669935, 34.756287, 49.447166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.775366, 34.665451, 49.642700>,  <31.951082, 34.514061, 49.968590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775366, 34.665451, 49.642700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863814, 0.071063, 0.498773,
		0.246670, 0.922879, 0.295715,
		-0.439293, 0.378475, -0.814726,
		31.643578, 34.778996, 49.398281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584633, 35.116425, 50.168461>,  <31.951082, 34.514061, 49.968590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584633, 35.116425, 50.168461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412636, 35.002842, 49.825657>,  <31.309437, 34.934692, 49.619972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412636, 35.002842, 49.825657>,  <31.584633, 35.116425, 50.168461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412636, 35.002842, 49.825657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902092, 0.173559, 0.395103,
		0.036549, 0.942997, -0.330788,
		-0.429993, -0.283961, -0.857014,
		31.283638, 34.917652, 49.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005613, 35.651611, 49.940628>,  <31.584633, 35.116425, 50.168461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005613, 35.651611, 49.940628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928066, 35.287109, 49.795284>,  <30.881538, 35.068409, 49.708076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928066, 35.287109, 49.795284>,  <31.005613, 35.651611, 49.940628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928066, 35.287109, 49.795284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936089, 0.061012, 0.346431,
		-0.293518, 0.407298, -0.864844,
		-0.193866, -0.911255, -0.363359,
		30.869905, 35.013733, 49.686275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219856, 35.570518, 49.767464>,  <31.005613, 35.651611, 49.940628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219856, 35.570518, 49.767464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.301033, 35.179783, 49.740349>,  <30.349739, 34.945339, 49.724079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.301033, 35.179783, 49.740349>,  <30.219856, 35.570518, 49.767464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301033, 35.179783, 49.740349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933869, -0.213904, 0.286589,
		-0.294452, 0.005143, -0.955652,
		0.202944, -0.976841, -0.067788,
		30.361916, 34.886730, 49.720013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736477, 35.313004, 49.427635>,  <30.219856, 35.570518, 49.767464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736477, 35.313004, 49.427635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875050, 34.993439, 49.624298>,  <29.958193, 34.801701, 49.742298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875050, 34.993439, 49.624298>,  <29.736477, 35.313004, 49.427635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875050, 34.993439, 49.624298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927732, -0.214163, 0.305693,
		-0.138925, -0.562031, -0.815366,
		0.346430, -0.798909, 0.491661,
		29.978979, 34.753765, 49.771797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313595, 34.638248, 49.203350>,  <29.736477, 35.313004, 49.427635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313595, 34.638248, 49.203350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.478157, 34.545433, 49.555920>,  <29.576895, 34.489742, 49.767460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.478157, 34.545433, 49.555920>,  <29.313595, 34.638248, 49.203350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478157, 34.545433, 49.555920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852803, -0.439287, 0.282405,
		0.321669, -0.867862, -0.378608,
		0.411407, -0.232037, 0.881421,
		29.601580, 34.475822, 49.820347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118219, 33.983170, 49.314533>,  <29.313595, 34.638248, 49.203350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118219, 33.983170, 49.314533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196991, 34.109421, 49.685822>,  <29.244255, 34.185173, 49.908596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196991, 34.109421, 49.685822>,  <29.118219, 33.983170, 49.314533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196991, 34.109421, 49.685822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874841, -0.370810, 0.311694,
		0.442573, -0.873429, 0.203101,
		0.196931, 0.315628, 0.928222,
		29.256071, 34.204109, 49.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855671, 33.368248, 49.731007>,  <29.118219, 33.983170, 49.314533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855671, 33.368248, 49.731007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.894705, 33.685913, 49.970936>,  <28.918125, 33.876511, 50.114895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.894705, 33.685913, 49.970936>,  <28.855671, 33.368248, 49.731007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894705, 33.685913, 49.970936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970959, -0.056316, 0.232522,
		0.218439, -0.605097, 0.765600,
		0.097582, 0.794158, 0.599826,
		28.923979, 33.924160, 50.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544102, 33.181931, 50.325123>,  <28.855671, 33.368248, 49.731007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544102, 33.181931, 50.325123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584410, 33.576721, 50.375267>,  <28.608595, 33.813595, 50.405354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584410, 33.576721, 50.375267>,  <28.544102, 33.181931, 50.325123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584410, 33.576721, 50.375267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923576, 0.045949, 0.380653,
		0.369937, -0.154138, 0.916181,
		0.100771, 0.986980, 0.125360,
		28.614641, 33.872814, 50.412876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251278, 33.281128, 51.017605>,  <28.544102, 33.181931, 50.325123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251278, 33.281128, 51.017605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.237146, 33.631336, 50.824852>,  <28.228666, 33.841461, 50.709202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.237146, 33.631336, 50.824852>,  <28.251278, 33.281128, 51.017605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237146, 33.631336, 50.824852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934708, 0.141684, 0.325954,
		0.353655, 0.461936, 0.813353,
		-0.035330, 0.875523, -0.481883,
		28.226547, 33.893993, 50.680286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865238, 33.680077, 51.430946>,  <28.251278, 33.281128, 51.017605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865238, 33.680077, 51.430946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816786, 33.890984, 51.094540>,  <27.787714, 34.017529, 50.892696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.816786, 33.890984, 51.094540>,  <27.865238, 33.680077, 51.430946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816786, 33.890984, 51.094540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923194, 0.251487, 0.290632,
		0.364747, 0.811628, 0.456310,
		-0.121130, 0.527270, -0.841020,
		27.780447, 34.049164, 50.842236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785971, 34.296528, 51.660275>,  <27.865238, 33.680077, 51.430946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785971, 34.296528, 51.660275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.611439, 34.292225, 51.300385>,  <27.506720, 34.289642, 51.084450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.611439, 34.292225, 51.300385>,  <27.785971, 34.296528, 51.660275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611439, 34.292225, 51.300385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873991, 0.242776, 0.420951,
		0.213904, 0.970023, -0.115331,
		-0.436332, -0.010755, -0.899722,
		27.480539, 34.288998, 51.030468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262449, 34.789204, 51.622768>,  <27.785971, 34.296528, 51.660275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262449, 34.789204, 51.622768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.124147, 34.561050, 51.324741>,  <27.041166, 34.424160, 51.145927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.124147, 34.561050, 51.324741>,  <27.262449, 34.789204, 51.622768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124147, 34.561050, 51.324741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934077, 0.284692, 0.215525,
		0.089182, 0.770465, -0.631213,
		-0.345755, -0.570381, -0.745063,
		27.020420, 34.389935, 51.101223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809290, 35.224743, 51.248016>,  <27.262449, 34.789204, 51.622768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809290, 35.224743, 51.248016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706539, 34.846848, 51.166546>,  <26.644890, 34.620110, 51.117664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.706539, 34.846848, 51.166546>,  <26.809290, 35.224743, 51.248016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706539, 34.846848, 51.166546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960849, 0.227008, 0.158862,
		-0.103847, 0.236509, -0.966064,
		-0.256876, -0.944739, -0.203675,
		26.629477, 34.563427, 51.105442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207279, 35.225048, 50.863487>,  <26.809290, 35.224743, 51.248016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207279, 35.225048, 50.863487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.213394, 34.868168, 51.044041>,  <26.217064, 34.654041, 51.152374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.213394, 34.868168, 51.044041>,  <26.207279, 35.225048, 50.863487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213394, 34.868168, 51.044041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972497, 0.091664, 0.214121,
		-0.232414, -0.442244, -0.866259,
		0.015289, -0.892198, 0.451385,
		26.217981, 34.600510, 51.179455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531599, 35.021408, 50.776566>,  <26.207279, 35.225048, 50.863487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531599, 35.021408, 50.776566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.686171, 34.760223, 51.037125>,  <25.778913, 34.603512, 51.193459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.686171, 34.760223, 51.037125>,  <25.531599, 35.021408, 50.776566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686171, 34.760223, 51.037125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832901, 0.056315, 0.550549,
		-0.396169, -0.755297, -0.522089,
		0.386427, -0.652959, 0.651398,
		25.802099, 34.564335, 51.232544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970768, 34.539536, 50.964497>,  <25.531599, 35.021408, 50.776566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970768, 34.539536, 50.964497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.239092, 34.507980, 51.259464>,  <25.400085, 34.489048, 51.436447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.239092, 34.507980, 51.259464>,  <24.970768, 34.539536, 50.964497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239092, 34.507980, 51.259464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736765, 0.042814, 0.674792,
		-0.084803, -0.995964, -0.029400,
		0.670810, -0.078885, 0.737422,
		25.440334, 34.484314, 51.480690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714531, 34.028816, 51.302818>,  <24.970768, 34.539536, 50.964497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714531, 34.028816, 51.302818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.935650, 34.253155, 51.549351>,  <25.068321, 34.387756, 51.697269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.935650, 34.253155, 51.549351>,  <24.714531, 34.028816, 51.302818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935650, 34.253155, 51.549351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775402, 0.075274, 0.626966,
		0.305237, -0.824492, 0.476492,
		0.552796, 0.560846, 0.616336,
		25.101488, 34.421410, 51.734253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544426, 33.758858, 51.928436>,  <24.714531, 34.028816, 51.302818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544426, 33.758858, 51.928436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.700899, 34.118729, 52.005959>,  <24.794783, 34.334652, 52.052471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.700899, 34.118729, 52.005959>,  <24.544426, 33.758858, 51.928436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700899, 34.118729, 52.005959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635785, 0.111929, 0.763708,
		0.665398, -0.421964, 0.615785,
		0.391182, 0.899677, 0.193801,
		24.818254, 34.388630, 52.064098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612970, 33.789776, 52.654789>,  <24.544426, 33.758858, 51.928436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612970, 33.789776, 52.654789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.604994, 34.171410, 52.535233>,  <24.600208, 34.400391, 52.463501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.604994, 34.171410, 52.535233>,  <24.612970, 33.789776, 52.654789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604994, 34.171410, 52.535233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647432, 0.215480, 0.731027,
		0.761863, 0.208087, 0.613404,
		-0.019940, 0.954080, -0.298889,
		24.599012, 34.457634, 52.445564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767797, 34.336418, 53.277824>,  <24.612970, 33.789776, 52.654789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767797, 34.336418, 53.277824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.577404, 34.535305, 52.987663>,  <24.463169, 34.654636, 52.813564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.577404, 34.535305, 52.987663>,  <24.767797, 34.336418, 53.277824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577404, 34.535305, 52.987663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507203, 0.518640, 0.688300,
		0.718461, 0.695547, 0.005327,
		-0.475982, 0.497219, -0.725406,
		24.434608, 34.684471, 52.770042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.037693, 32.133698, 48.966305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647247, 32.214237, 48.998928>,  <33.412979, 32.262562, 49.018501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647247, 32.214237, 48.998928>,  <34.037693, 32.133698, 48.966305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647247, 32.214237, 48.998928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179009, 0.532807, 0.827087,
		0.123079, 0.821934, -0.556126,
		-0.976118, 0.201348, 0.081557,
		33.354412, 32.274643, 49.023396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965752, 32.810169, 49.001766>,  <34.037693, 32.133698, 48.966305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965752, 32.810169, 49.001766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659966, 32.634602, 49.190636>,  <33.476494, 32.529259, 49.303955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659966, 32.634602, 49.190636>,  <33.965752, 32.810169, 49.001766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659966, 32.634602, 49.190636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263341, 0.455918, 0.850171,
		-0.588429, 0.774266, -0.232946,
		-0.764463, -0.438921, 0.472171,
		33.430626, 32.502926, 49.332287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695793, 33.347885, 49.469193>,  <33.965752, 32.810169, 49.001766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695793, 33.347885, 49.469193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517281, 33.033634, 49.640598>,  <33.410172, 32.845085, 49.743443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517281, 33.033634, 49.640598>,  <33.695793, 33.347885, 49.469193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517281, 33.033634, 49.640598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012157, 0.473479, 0.880721,
		-0.894809, 0.398261, -0.201755,
		-0.446283, -0.785625, 0.428515,
		33.383396, 32.797947, 49.769154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332943, 33.548489, 50.033234>,  <33.695793, 33.347885, 49.469193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332943, 33.548489, 50.033234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307178, 33.159004, 50.120632>,  <33.291718, 32.925316, 50.173073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307178, 33.159004, 50.120632>,  <33.332943, 33.548489, 50.033234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307178, 33.159004, 50.120632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181744, 0.226741, 0.956848,
		-0.981234, 0.021924, -0.191571,
		-0.064415, -0.973709, 0.218501,
		33.287853, 32.866890, 50.186184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753025, 33.409992, 50.649826>,  <33.332943, 33.548489, 50.033234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753025, 33.409992, 50.649826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033176, 33.124485, 50.650814>,  <33.201267, 32.953182, 50.651405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033176, 33.124485, 50.650814>,  <32.753025, 33.409992, 50.649826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033176, 33.124485, 50.650814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150021, 0.150588, 0.977148,
		-0.697824, -0.684007, 0.212548,
		0.700383, -0.713764, 0.002469,
		33.243290, 32.910355, 50.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521759, 32.921036, 51.165192>,  <32.753025, 33.409992, 50.649826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521759, 32.921036, 51.165192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913151, 32.867085, 51.102718>,  <33.147984, 32.834713, 51.065235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913151, 32.867085, 51.102718>,  <32.521759, 32.921036, 51.165192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913151, 32.867085, 51.102718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166571, 0.069424, 0.983582,
		-0.121827, -0.988426, 0.090397,
		0.978475, -0.134884, -0.156185,
		33.206692, 32.826618, 51.055862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750679, 32.392609, 51.623138>,  <32.521759, 32.921036, 51.165192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750679, 32.392609, 51.623138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084873, 32.594189, 51.535511>,  <33.285389, 32.715137, 51.482933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084873, 32.594189, 51.535511>,  <32.750679, 32.392609, 51.623138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084873, 32.594189, 51.535511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268886, -0.027248, 0.962787,
		0.479225, -0.863304, -0.158270,
		0.835490, 0.503948, -0.219072,
		33.335522, 32.745373, 51.469788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246452, 32.055908, 51.953030>,  <32.750679, 32.392609, 51.623138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246452, 32.055908, 51.953030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450451, 32.391533, 51.877254>,  <33.572849, 32.592907, 51.831791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450451, 32.391533, 51.877254>,  <33.246452, 32.055908, 51.953030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450451, 32.391533, 51.877254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334516, 0.009428, 0.942343,
		0.792467, -0.543959, -0.275871,
		0.509995, 0.839059, -0.189434,
		33.603451, 32.643250, 51.820423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948925, 31.870564, 52.139488>,  <33.246452, 32.055908, 51.953030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948925, 31.870564, 52.139488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904724, 32.268105, 52.142242>,  <33.878204, 32.506630, 52.143894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904724, 32.268105, 52.142242>,  <33.948925, 31.870564, 52.139488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904724, 32.268105, 52.142242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399490, 0.038068, 0.915947,
		0.910053, 0.103966, -0.401241,
		-0.110502, 0.993852, 0.006889,
		33.871574, 32.566261, 52.144310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495529, 32.043060, 52.458847>,  <33.948925, 31.870564, 52.139488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495529, 32.043060, 52.458847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236786, 32.346661, 52.488518>,  <34.081539, 32.528820, 52.506321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236786, 32.346661, 52.488518>,  <34.495529, 32.043060, 52.458847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236786, 32.346661, 52.488518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337244, 0.197456, 0.920477,
		0.683993, 0.620430, -0.383693,
		-0.646854, 0.758997, 0.074177,
		34.042728, 32.574360, 52.510773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682926, 32.377125, 53.060139>,  <34.495529, 32.043060, 52.458847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682926, 32.377125, 53.060139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329304, 32.560024, 53.021427>,  <34.117130, 32.669765, 52.998199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329304, 32.560024, 53.021427>,  <34.682926, 32.377125, 53.060139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329304, 32.560024, 53.021427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036838, 0.138262, 0.989710,
		0.465924, 0.878526, -0.105388,
		-0.884058, 0.457247, -0.096783,
		34.064087, 32.697197, 52.992393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676373, 32.918198, 53.687294>,  <34.682926, 32.377125, 53.060139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676373, 32.918198, 53.687294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295441, 32.876270, 53.572697>,  <34.066883, 32.851112, 53.503937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295441, 32.876270, 53.572697>,  <34.676373, 32.918198, 53.687294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295441, 32.876270, 53.572697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294664, 0.072878, 0.952818,
		-0.078995, 0.991817, -0.100291,
		-0.952330, -0.104820, -0.286496,
		34.009743, 32.844826, 53.486748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019577, 33.585400, 53.666477>,  <34.676373, 32.918198, 53.687294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019577, 33.585400, 53.666477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392475, 33.636868, 53.801746>,  <35.616215, 33.667747, 53.882908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392475, 33.636868, 53.801746>,  <35.019577, 33.585400, 53.666477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392475, 33.636868, 53.801746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311654, 0.189244, -0.931160,
		-0.183813, 0.973463, 0.136321,
		0.932247, 0.128674, 0.338169,
		35.672150, 33.675468, 53.903198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298786, 34.115280, 53.300419>,  <35.019577, 33.585400, 53.666477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298786, 34.115280, 53.300419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623997, 33.931580, 53.443573>,  <35.819122, 33.821358, 53.529465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623997, 33.931580, 53.443573>,  <35.298786, 34.115280, 53.300419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623997, 33.931580, 53.443573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504773, 0.249639, -0.826368,
		0.290172, 0.852506, 0.434781,
		0.813022, -0.459254, 0.357883,
		35.867905, 33.793804, 53.550938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730595, 34.564529, 53.146214>,  <35.298786, 34.115280, 53.300419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730595, 34.564529, 53.146214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925140, 34.217316, 53.186138>,  <36.041870, 34.008987, 53.210091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925140, 34.217316, 53.186138>,  <35.730595, 34.564529, 53.146214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925140, 34.217316, 53.186138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467444, 0.161988, -0.869055,
		0.738201, 0.469336, 0.484544,
		0.486369, -0.868034, 0.099808,
		36.071053, 33.956905, 53.216080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446812, 34.660511, 52.897282>,  <35.730595, 34.564529, 53.146214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446812, 34.660511, 52.897282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407459, 34.262806, 52.880455>,  <36.383846, 34.024185, 52.870361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407459, 34.262806, 52.880455>,  <36.446812, 34.660511, 52.897282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407459, 34.262806, 52.880455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606429, -0.026386, -0.794700,
		0.789028, -0.103696, 0.605543,
		-0.098385, -0.994259, -0.042064,
		36.377945, 33.964527, 52.867836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072346, 34.401207, 52.697353>,  <36.446812, 34.660511, 52.897282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072346, 34.401207, 52.697353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791916, 34.133781, 52.598148>,  <36.623657, 33.973328, 52.538624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791916, 34.133781, 52.598148>,  <37.072346, 34.401207, 52.697353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791916, 34.133781, 52.598148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357120, -0.028143, -0.933634,
		0.617215, -0.743121, 0.258488,
		-0.701078, -0.668565, -0.248013,
		36.581593, 33.933212, 52.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414619, 34.150520, 52.204250>,  <37.072346, 34.401207, 52.697353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414619, 34.150520, 52.204250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088943, 33.929245, 52.133732>,  <36.893539, 33.796478, 52.091423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088943, 33.929245, 52.133732>,  <37.414619, 34.150520, 52.204250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088943, 33.929245, 52.133732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387705, -0.291995, -0.874313,
		0.432186, -0.780203, 0.452214,
		-0.814186, -0.553192, -0.176293,
		36.844688, 33.763287, 52.080845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523209, 33.335026, 51.907661>,  <37.414619, 34.150520, 52.204250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523209, 33.335026, 51.907661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183006, 33.503723, 51.781948>,  <36.978886, 33.604942, 51.706520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183006, 33.503723, 51.781948>,  <37.523209, 33.335026, 51.907661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183006, 33.503723, 51.781948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326984, -0.044055, -0.944002,
		-0.411975, -0.905643, -0.100435,
		-0.850504, 0.421746, -0.314281,
		36.927856, 33.630245, 51.687664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317383, 33.138222, 51.135143>,  <37.523209, 33.335026, 51.907661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317383, 33.138222, 51.135143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104290, 33.471272, 51.195709>,  <36.976433, 33.671101, 51.232048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104290, 33.471272, 51.195709>,  <37.317383, 33.138222, 51.135143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104290, 33.471272, 51.195709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173650, 0.282660, -0.943371,
		-0.828277, -0.476270, -0.295168,
		-0.532732, 0.832628, 0.151416,
		36.944469, 33.721062, 51.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816662, 33.100780, 50.526932>,  <37.317383, 33.138222, 51.135143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816662, 33.100780, 50.526932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860218, 33.472210, 50.668861>,  <36.886353, 33.695068, 50.754021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860218, 33.472210, 50.668861>,  <36.816662, 33.100780, 50.526932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860218, 33.472210, 50.668861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053544, 0.350948, -0.934863,
		-0.992611, 0.120796, -0.011505,
		0.108890, 0.928571, 0.354823,
		36.892883, 33.750782, 50.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370583, 33.415894, 50.164593>,  <36.816662, 33.100780, 50.526932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370583, 33.415894, 50.164593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632229, 33.692245, 50.287762>,  <36.789219, 33.858055, 50.361664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632229, 33.692245, 50.287762>,  <36.370583, 33.415894, 50.164593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632229, 33.692245, 50.287762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028385, 0.429226, -0.902751,
		-0.755858, 0.581767, 0.300376,
		0.654120, 0.690878, 0.307920,
		36.828465, 33.899509, 50.380138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238045, 34.015362, 49.738190>,  <36.370583, 33.415894, 50.164593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238045, 34.015362, 49.738190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582397, 34.160080, 49.881294>,  <36.789009, 34.246910, 49.967155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582397, 34.160080, 49.881294>,  <36.238045, 34.015362, 49.738190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582397, 34.160080, 49.881294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162780, 0.470342, -0.867342,
		-0.482072, 0.804911, 0.346013,
		0.860877, 0.361797, 0.357762,
		36.840660, 34.268620, 49.988625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316410, 34.778893, 49.654205>,  <36.238045, 34.015362, 49.738190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316410, 34.778893, 49.654205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694881, 34.656170, 49.695408>,  <36.921967, 34.582535, 49.720127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694881, 34.656170, 49.695408>,  <36.316410, 34.778893, 49.654205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694881, 34.656170, 49.695408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257089, 0.519207, -0.815064,
		0.196589, 0.797679, 0.570141,
		0.946181, -0.306809, 0.103004,
		36.978737, 34.564129, 49.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756763, 35.369522, 49.628983>,  <36.316410, 34.778893, 49.654205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756763, 35.369522, 49.628983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985947, 35.062603, 49.513760>,  <37.123455, 34.878452, 49.444626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985947, 35.062603, 49.513760>,  <36.756763, 35.369522, 49.628983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985947, 35.062603, 49.513760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317940, 0.532028, -0.784767,
		0.755404, 0.358053, 0.548783,
		0.572956, -0.767297, -0.288057,
		37.157833, 34.832413, 49.427341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902645, 35.559574, 48.819187>,  <36.756763, 35.369522, 49.628983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902645, 35.559574, 48.819187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675690, 35.616287, 48.494724>,  <36.539516, 35.650314, 48.300049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675690, 35.616287, 48.494724>,  <36.902645, 35.559574, 48.819187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675690, 35.616287, 48.494724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806778, -0.292940, 0.513124,
		-0.164867, 0.945560, 0.280598,
		-0.567388, 0.141783, -0.811153,
		36.505474, 35.658821, 48.251377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328957, 35.900753, 48.949444>,  <36.902645, 35.559574, 48.819187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328957, 35.900753, 48.949444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199425, 35.704235, 48.626022>,  <36.121704, 35.586323, 48.431969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199425, 35.704235, 48.626022>,  <36.328957, 35.900753, 48.949444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199425, 35.704235, 48.626022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776910, -0.349638, 0.523607,
		-0.539947, 0.797736, -0.268467,
		-0.323834, -0.491294, -0.808555,
		36.102276, 35.556847, 48.383457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602291, 36.039059, 48.824898>,  <36.328957, 35.900753, 48.949444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602291, 36.039059, 48.824898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723248, 35.679432, 48.698257>,  <35.795822, 35.463654, 48.622272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723248, 35.679432, 48.698257>,  <35.602291, 36.039059, 48.824898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723248, 35.679432, 48.698257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695279, -0.435256, 0.571960,
		-0.652033, 0.047170, -0.756721,
		0.302388, -0.899070, -0.316598,
		35.813965, 35.409710, 48.603279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894947, 35.835300, 48.834160>,  <35.602291, 36.039059, 48.824898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894947, 35.835300, 48.834160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597980, 36.103271, 48.835445>,  <34.419800, 36.264053, 48.836216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597980, 36.103271, 48.835445>,  <34.894947, 35.835300, 48.834160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597980, 36.103271, 48.835445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219969, 0.239236, 0.945717,
		0.632793, 0.702825, -0.324977,
		-0.742419, 0.669928, 0.003213,
		34.375256, 36.304249, 48.836411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146587, 36.591373, 48.742863>,  <34.894947, 35.835300, 48.834160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146587, 36.591373, 48.742863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798775, 36.578865, 48.940018>,  <34.590088, 36.571362, 49.058311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798775, 36.578865, 48.940018>,  <35.146587, 36.591373, 48.742863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798775, 36.578865, 48.940018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450668, 0.357988, 0.817767,
		-0.202017, 0.933203, -0.297191,
		-0.869533, -0.031269, 0.492884,
		34.537914, 36.569485, 49.087883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156483, 37.089626, 49.158417>,  <35.146587, 36.591373, 48.742863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156483, 37.089626, 49.158417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847801, 36.900082, 49.328087>,  <34.662594, 36.786354, 49.429890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847801, 36.900082, 49.328087>,  <35.156483, 37.089626, 49.158417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847801, 36.900082, 49.328087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171220, 0.487543, 0.856146,
		-0.612503, 0.733317, -0.295103,
		-0.771702, -0.473865, 0.424180,
		34.616291, 36.757923, 49.455341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691505, 37.598827, 49.518120>,  <35.156483, 37.089626, 49.158417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691505, 37.598827, 49.518120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617676, 37.240318, 49.679428>,  <34.573376, 37.025211, 49.776211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617676, 37.240318, 49.679428>,  <34.691505, 37.598827, 49.518120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617676, 37.240318, 49.679428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004469, 0.409547, 0.912278,
		-0.982808, 0.170188, -0.071588,
		-0.184577, -0.896274, 0.403266,
		34.562302, 36.971436, 49.800407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058117, 37.689068, 49.952374>,  <34.691505, 37.598827, 49.518120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058117, 37.689068, 49.952374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224144, 37.353218, 50.092518>,  <34.323761, 37.151707, 50.176605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224144, 37.353218, 50.092518>,  <34.058117, 37.689068, 49.952374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224144, 37.353218, 50.092518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026289, 0.396006, 0.917871,
		-0.909412, -0.371765, 0.186441,
		0.415064, -0.839625, 0.350359,
		34.348663, 37.101330, 50.197624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699627, 37.511196, 50.535728>,  <34.058117, 37.689068, 49.952374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699627, 37.511196, 50.535728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038807, 37.307686, 50.595238>,  <34.242313, 37.185577, 50.630943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038807, 37.307686, 50.595238>,  <33.699627, 37.511196, 50.535728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038807, 37.307686, 50.595238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021122, 0.312860, 0.949564,
		-0.529661, -0.802037, 0.276035,
		0.847946, -0.508778, 0.148769,
		34.293190, 37.155052, 50.639870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590908, 37.158592, 51.186272>,  <33.699627, 37.511196, 50.535728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590908, 37.158592, 51.186272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988556, 37.151741, 51.143494>,  <34.227142, 37.147633, 51.117828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988556, 37.151741, 51.143494>,  <33.590908, 37.158592, 51.186272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988556, 37.151741, 51.143494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107054, 0.304931, 0.946339,
		0.016404, -0.952221, 0.304971,
		0.994118, -0.017125, -0.106941,
		34.286793, 37.146603, 51.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781807, 36.878994, 51.827454>,  <33.590908, 37.158592, 51.186272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781807, 36.878994, 51.827454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113380, 37.061031, 51.697372>,  <34.312325, 37.170254, 51.619324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113380, 37.061031, 51.697372>,  <33.781807, 36.878994, 51.827454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113380, 37.061031, 51.697372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203313, 0.296482, 0.933146,
		0.521082, -0.839638, 0.153239,
		0.828937, 0.455090, -0.325201,
		34.362061, 37.197559, 51.599812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205540, 36.760151, 52.374535>,  <33.781807, 36.878994, 51.827454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205540, 36.760151, 52.374535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373852, 37.060989, 52.171638>,  <34.474838, 37.241493, 52.049900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373852, 37.060989, 52.171638>,  <34.205540, 36.760151, 52.374535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373852, 37.060989, 52.171638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102559, 0.516125, 0.850351,
		0.901345, -0.409836, 0.140043,
		0.420784, 0.752096, -0.507239,
		34.500088, 37.286617, 52.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853764, 36.879997, 52.710083>,  <34.205540, 36.760151, 52.374535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853764, 36.879997, 52.710083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739742, 37.207233, 52.510296>,  <34.671329, 37.403576, 52.390423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739742, 37.207233, 52.510296>,  <34.853764, 36.879997, 52.710083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739742, 37.207233, 52.510296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001422, 0.520730, 0.853720,
		0.958510, 0.244067, -0.147273,
		-0.285054, 0.818090, -0.499472,
		34.654224, 37.452660, 52.360455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360470, 37.395386, 52.786324>,  <34.853764, 36.879997, 52.710083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360470, 37.395386, 52.786324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016663, 37.595112, 52.742657>,  <34.810379, 37.714947, 52.716457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016663, 37.595112, 52.742657>,  <35.360470, 37.395386, 52.786324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016663, 37.595112, 52.742657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167449, 0.476890, 0.862865,
		0.482901, 0.723367, -0.493504,
		-0.859516, 0.499316, -0.109164,
		34.758808, 37.744907, 52.709908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423473, 37.972740, 53.231953>,  <35.360470, 37.395386, 52.786324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423473, 37.972740, 53.231953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038933, 38.023071, 53.133999>,  <34.808208, 38.053272, 53.075226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038933, 38.023071, 53.133999>,  <35.423473, 37.972740, 53.231953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038933, 38.023071, 53.133999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138648, 0.547165, 0.825462,
		0.237858, 0.827513, -0.508572,
		-0.961353, 0.125830, -0.244880,
		34.750526, 38.060822, 53.060535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231880, 38.840847, 53.270020>,  <35.423473, 37.972740, 53.231953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231880, 38.840847, 53.270020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896088, 38.624958, 53.295208>,  <34.694611, 38.495426, 53.310322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896088, 38.624958, 53.295208>,  <35.231880, 38.840847, 53.270020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896088, 38.624958, 53.295208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284862, 0.535817, 0.794829,
		-0.462728, 0.649309, -0.603557,
		-0.839486, -0.539720, 0.062974,
		34.644241, 38.463043, 53.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730316, 39.346432, 53.482376>,  <35.231880, 38.840847, 53.270020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730316, 39.346432, 53.482376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577023, 38.987808, 53.571201>,  <34.485046, 38.772633, 53.624496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577023, 38.987808, 53.571201>,  <34.730316, 39.346432, 53.482376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577023, 38.987808, 53.571201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452671, 0.391873, 0.800952,
		-0.805124, 0.206427, -0.556025,
		-0.383230, -0.896562, 0.222063,
		34.462055, 38.718842, 53.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110909, 39.506012, 53.761662>,  <34.730316, 39.346432, 53.482376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110909, 39.506012, 53.761662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172882, 39.134811, 53.897194>,  <34.210068, 38.912090, 53.978516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172882, 39.134811, 53.897194>,  <34.110909, 39.506012, 53.761662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172882, 39.134811, 53.897194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394434, 0.256347, 0.882444,
		-0.905769, -0.270368, -0.326319,
		0.154934, -0.928002, 0.338834,
		34.219360, 38.856411, 53.998844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474659, 39.245060, 54.148369>,  <34.110909, 39.506012, 53.761662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474659, 39.245060, 54.148369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765629, 39.009670, 54.289536>,  <33.940212, 38.868439, 54.374237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765629, 39.009670, 54.289536>,  <33.474659, 39.245060, 54.148369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765629, 39.009670, 54.289536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442871, -0.009778, 0.896532,
		-0.524134, -0.808458, -0.267730,
		0.727426, -0.588473, 0.352918,
		33.983856, 38.833130, 54.395412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131470, 38.749958, 54.514099>,  <33.474659, 39.245060, 54.148369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131470, 38.749958, 54.514099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508987, 38.763332, 54.645638>,  <33.735497, 38.771358, 54.724560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508987, 38.763332, 54.645638>,  <33.131470, 38.749958, 54.514099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508987, 38.763332, 54.645638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329469, 0.015229, 0.944044,
		0.026577, -0.999324, 0.025396,
		0.943792, 0.033457, 0.328841,
		33.792126, 38.773365, 54.744289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091190, 38.321732, 55.104774>,  <33.131470, 38.749958, 54.514099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091190, 38.321732, 55.104774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426010, 38.534924, 55.154213>,  <33.626904, 38.662838, 55.183876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426010, 38.534924, 55.154213>,  <33.091190, 38.321732, 55.104774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426010, 38.534924, 55.154213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255388, 0.180835, 0.949777,
		0.483858, -0.826580, 0.287484,
		0.837053, 0.532977, 0.123600,
		33.677128, 38.694817, 55.191292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503155, 38.094913, 55.721386>,  <33.091190, 38.321732, 55.104774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503155, 38.094913, 55.721386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647964, 38.459930, 55.645271>,  <33.734848, 38.678940, 55.599602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647964, 38.459930, 55.645271>,  <33.503155, 38.094913, 55.721386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647964, 38.459930, 55.645271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025465, 0.194373, 0.980597,
		0.931822, -0.359843, 0.047129,
		0.362021, 0.912542, -0.190284,
		33.756573, 38.733692, 55.588184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040615, 38.179546, 56.178276>,  <33.503155, 38.094913, 55.721386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040615, 38.179546, 56.178276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908028, 38.537876, 56.059864>,  <33.828476, 38.752872, 55.988815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908028, 38.537876, 56.059864>,  <34.040615, 38.179546, 56.178276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908028, 38.537876, 56.059864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058996, 0.293473, 0.954145,
		0.941620, 0.333733, -0.044427,
		-0.331468, 0.895821, -0.296029,
		33.808586, 38.806622, 55.971054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414711, 38.611156, 56.643700>,  <34.040615, 38.179546, 56.178276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414711, 38.611156, 56.643700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117237, 38.836060, 56.499035>,  <33.938751, 38.971001, 56.412235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117237, 38.836060, 56.499035>,  <34.414711, 38.611156, 56.643700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117237, 38.836060, 56.499035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128324, 0.410866, 0.902620,
		0.656097, 0.717676, -0.233405,
		-0.743687, 0.562254, -0.361663,
		33.894131, 39.004734, 56.390537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538536, 39.147797, 56.975082>,  <34.414711, 38.611156, 56.643700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538536, 39.147797, 56.975082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161556, 39.203754, 56.853607>,  <33.935368, 39.237331, 56.780724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161556, 39.203754, 56.853607>,  <34.538536, 39.147797, 56.975082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161556, 39.203754, 56.853607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194472, 0.509479, 0.838220,
		0.271985, 0.849035, -0.452951,
		-0.942446, 0.139897, -0.303684,
		33.878822, 39.245724, 56.762501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356220, 39.816597, 57.051903>,  <34.538536, 39.147797, 56.975082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356220, 39.816597, 57.051903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984322, 39.669682, 57.062290>,  <33.761181, 39.581532, 57.068523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984322, 39.669682, 57.062290>,  <34.356220, 39.816597, 57.051903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984322, 39.669682, 57.062290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165452, 0.479741, 0.861670,
		-0.328935, 0.796838, -0.506805,
		-0.929746, -0.367285, 0.025965,
		33.705399, 39.559498, 57.070080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838516, 40.398788, 57.212231>,  <34.356220, 39.816597, 57.051903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838516, 40.398788, 57.212231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648937, 40.060837, 57.311466>,  <33.535191, 39.858067, 57.371006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648937, 40.060837, 57.311466>,  <33.838516, 40.398788, 57.212231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648937, 40.060837, 57.311466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361211, 0.443484, 0.820273,
		-0.803057, 0.299154, -0.515369,
		-0.473946, -0.844884, 0.248086,
		33.506752, 39.807373, 57.385891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189182, 40.625916, 57.548817>,  <33.838516, 40.398788, 57.212231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189182, 40.625916, 57.548817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225929, 40.241219, 57.652050>,  <33.247978, 40.010399, 57.713989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225929, 40.241219, 57.652050>,  <33.189182, 40.625916, 57.548817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225929, 40.241219, 57.652050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467808, 0.187108, 0.863798,
		-0.879042, -0.200088, -0.432723,
		0.091870, -0.961746, 0.258079,
		33.253490, 39.952694, 57.729473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449848, 40.451412, 57.585384>,  <33.189182, 40.625916, 57.548817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449848, 40.451412, 57.585384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674259, 40.214874, 57.817093>,  <32.808907, 40.072952, 57.956120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674259, 40.214874, 57.817093>,  <32.449848, 40.451412, 57.585384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674259, 40.214874, 57.817093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723032, -0.009306, 0.690752,
		-0.403085, -0.806362, -0.432785,
		0.561023, -0.591349, 0.579274,
		32.842567, 40.037468, 57.990875>
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
