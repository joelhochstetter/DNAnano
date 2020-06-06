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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<45.556652, 43.269535, 44.764690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427170, 43.536308, 45.033142>,  <45.349480, 43.696373, 45.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427170, 43.536308, 45.033142>,  <45.556652, 43.269535, 44.764690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427170, 43.536308, 45.033142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363624, -0.567155, 0.738994,
		0.873495, 0.483254, -0.058923,
		-0.323704, 0.666934, 0.671130,
		45.330059, 43.736389, 45.234482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130936, 43.323971, 45.208122>,  <45.556652, 43.269535, 44.764690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130936, 43.323971, 45.208122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839066, 43.475494, 45.435833>,  <45.663944, 43.566410, 45.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839066, 43.475494, 45.435833>,  <46.130936, 43.323971, 45.208122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839066, 43.475494, 45.435833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415847, -0.415043, 0.809203,
		0.542809, 0.827188, 0.145320,
		-0.729678, 0.378812, 0.569273,
		45.620163, 43.589138, 45.606613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492100, 43.469410, 45.811493>,  <46.130936, 43.323971, 45.208122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492100, 43.469410, 45.811493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107086, 43.476227, 45.919739>,  <45.876076, 43.480316, 45.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107086, 43.476227, 45.919739>,  <46.492100, 43.469410, 45.811493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107086, 43.476227, 45.919739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235430, -0.442603, 0.865260,
		0.134523, 0.896556, 0.422009,
		-0.962536, 0.017044, 0.270616,
		45.818325, 43.481339, 46.000923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460930, 43.557320, 46.547714>,  <46.492100, 43.469410, 45.811493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460930, 43.557320, 46.547714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107391, 43.392723, 46.458733>,  <45.895267, 43.293964, 46.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107391, 43.392723, 46.458733>,  <46.460930, 43.557320, 46.547714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107391, 43.392723, 46.458733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027528, -0.520491, 0.853424,
		-0.466962, 0.748174, 0.471363,
		-0.883849, -0.411492, -0.222454,
		45.842236, 43.269276, 46.391998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927383, 43.754932, 47.071934>,  <46.460930, 43.557320, 46.547714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927383, 43.754932, 47.071934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801132, 43.407059, 46.920128>,  <45.725380, 43.198334, 46.829044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801132, 43.407059, 46.920128>,  <45.927383, 43.754932, 47.071934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801132, 43.407059, 46.920128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150067, -0.349179, 0.924961,
		-0.936941, 0.348897, -0.020300,
		-0.315628, -0.869681, -0.379518,
		45.706444, 43.146152, 46.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223526, 43.742752, 47.333511>,  <45.927383, 43.754932, 47.071934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223526, 43.742752, 47.333511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369293, 43.386185, 47.225754>,  <45.456753, 43.172245, 47.161098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369293, 43.386185, 47.225754>,  <45.223526, 43.742752, 47.333511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369293, 43.386185, 47.225754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203444, -0.358507, 0.911089,
		-0.908740, -0.277212, -0.312001,
		0.364420, -0.891418, -0.269393,
		45.478619, 43.118759, 47.144936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614880, 43.297531, 47.492542>,  <45.223526, 43.742752, 47.333511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614880, 43.297531, 47.492542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915886, 43.037209, 47.452225>,  <45.096489, 42.881016, 47.428032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915886, 43.037209, 47.452225>,  <44.614880, 43.297531, 47.492542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915886, 43.037209, 47.452225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367331, -0.541820, 0.755975,
		-0.546645, -0.531831, -0.646789,
		0.752494, -0.650835, -0.100825,
		45.141644, 42.841965, 47.421986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305447, 42.715919, 47.562160>,  <44.614880, 43.297531, 47.492542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305447, 42.715919, 47.562160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690018, 42.635506, 47.637253>,  <44.920761, 42.587257, 47.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690018, 42.635506, 47.637253>,  <44.305447, 42.715919, 47.562160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690018, 42.635506, 47.637253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263539, -0.477824, 0.837993,
		-0.078760, -0.855144, -0.512372,
		0.961428, -0.201030, 0.187730,
		44.978447, 42.575195, 47.693573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298557, 42.032719, 47.931171>,  <44.305447, 42.715919, 47.562160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298557, 42.032719, 47.931171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670422, 42.162216, 48.001518>,  <44.893539, 42.239914, 48.043724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670422, 42.162216, 48.001518>,  <44.298557, 42.032719, 47.931171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670422, 42.162216, 48.001518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098313, -0.242038, 0.965273,
		0.355065, -0.914663, -0.193184,
		0.929658, 0.323743, 0.175863,
		44.949318, 42.259338, 48.054276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735394, 41.459949, 48.206848>,  <44.298557, 42.032719, 47.931171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735394, 41.459949, 48.206848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892479, 41.809883, 48.320297>,  <44.986729, 42.019844, 48.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892479, 41.809883, 48.320297>,  <44.735394, 41.459949, 48.206848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892479, 41.809883, 48.320297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107576, -0.262587, 0.958893,
		0.913350, -0.407077, -0.009009,
		0.392709, 0.874835, 0.283625,
		45.010292, 42.072334, 48.405384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263584, 41.316856, 48.740334>,  <44.735394, 41.459949, 48.206848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263584, 41.316856, 48.740334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117149, 41.686867, 48.780941>,  <45.029289, 41.908875, 48.805305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117149, 41.686867, 48.780941>,  <45.263584, 41.316856, 48.740334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117149, 41.686867, 48.780941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222976, -0.193105, 0.955506,
		0.903472, 0.327164, 0.276952,
		-0.366088, 0.925027, 0.101515,
		45.007324, 41.964375, 48.811394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600163, 41.452587, 49.340973>,  <45.263584, 41.316856, 48.740334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600163, 41.452587, 49.340973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324577, 41.740799, 49.309578>,  <45.159225, 41.913727, 49.290741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324577, 41.740799, 49.309578>,  <45.600163, 41.452587, 49.340973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324577, 41.740799, 49.309578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169308, -0.054700, 0.984044,
		0.704742, 0.691261, 0.159679,
		-0.688966, 0.720532, -0.078487,
		45.117889, 41.956959, 49.286034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703072, 42.010719, 49.919025>,  <45.600163, 41.452587, 49.340973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703072, 42.010719, 49.919025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318970, 42.043159, 49.812195>,  <45.088509, 42.062622, 49.748096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318970, 42.043159, 49.812195>,  <45.703072, 42.010719, 49.919025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318970, 42.043159, 49.812195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267971, -0.000171, 0.963427,
		0.078088, 0.996706, 0.021897,
		-0.960257, 0.081099, -0.267075,
		45.030891, 42.067490, 49.732071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499359, 42.259541, 50.488491>,  <45.703072, 42.010719, 49.919025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499359, 42.259541, 50.488491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147011, 42.178535, 50.317352>,  <44.935600, 42.129932, 50.214668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147011, 42.178535, 50.317352>,  <45.499359, 42.259541, 50.488491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147011, 42.178535, 50.317352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385784, -0.216608, 0.896801,
		-0.274291, 0.955023, 0.112676,
		-0.880872, -0.202515, -0.427846,
		44.882748, 42.117783, 50.188999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069164, 42.646255, 50.884487>,  <45.499359, 42.259541, 50.488491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069164, 42.646255, 50.884487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855873, 42.356560, 50.709602>,  <44.727898, 42.182743, 50.604671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855873, 42.356560, 50.709602>,  <45.069164, 42.646255, 50.884487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855873, 42.356560, 50.709602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599792, -0.040812, 0.799114,
		-0.596591, 0.688343, -0.412629,
		-0.533224, -0.724237, -0.437211,
		44.695908, 42.139290, 50.578438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383160, 42.905884, 50.926857>,  <45.069164, 42.646255, 50.884487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383160, 42.905884, 50.926857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389038, 42.507668, 50.889580>,  <44.392567, 42.268738, 50.867214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389038, 42.507668, 50.889580>,  <44.383160, 42.905884, 50.926857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389038, 42.507668, 50.889580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546356, -0.086057, 0.833120,
		-0.837424, 0.038676, -0.545183,
		0.014695, -0.995539, -0.093198,
		44.393448, 42.209007, 50.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740040, 42.639763, 51.125374>,  <44.383160, 42.905884, 50.926857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740040, 42.639763, 51.125374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000153, 42.341820, 51.185116>,  <44.156219, 42.163052, 51.220963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000153, 42.341820, 51.185116>,  <43.740040, 42.639763, 51.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000153, 42.341820, 51.185116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449931, -0.219206, 0.865743,
		-0.612120, -0.630181, -0.477683,
		0.650286, -0.744863, 0.149358,
		44.195240, 42.118362, 51.229923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322666, 42.114784, 51.571690>,  <43.740040, 42.639763, 51.125374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322666, 42.114784, 51.571690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695660, 41.974770, 51.607368>,  <43.919456, 41.890762, 51.628777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695660, 41.974770, 51.607368>,  <43.322666, 42.114784, 51.571690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695660, 41.974770, 51.607368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242792, -0.424507, 0.872265,
		-0.267455, -0.835027, -0.480829,
		0.932480, -0.350033, 0.089201,
		43.975403, 41.869759, 51.634129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243923, 41.556225, 51.935429>,  <43.322666, 42.114784, 51.571690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243923, 41.556225, 51.935429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639923, 41.596436, 51.975006>,  <43.877525, 41.620564, 51.998753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639923, 41.596436, 51.975006>,  <43.243923, 41.556225, 51.935429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639923, 41.596436, 51.975006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082110, -0.159593, 0.983762,
		0.114684, -0.982051, -0.149743,
		0.990002, 0.100527, 0.098939,
		43.936924, 41.626595, 52.004688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466480, 40.937126, 52.330391>,  <43.243923, 41.556225, 51.935429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466480, 40.937126, 52.330391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739555, 41.225410, 52.378582>,  <43.903400, 41.398380, 52.407497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739555, 41.225410, 52.378582>,  <43.466480, 40.937126, 52.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739555, 41.225410, 52.378582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059878, -0.219501, 0.973773,
		0.728255, -0.657566, -0.193005,
		0.682685, 0.720712, 0.120479,
		43.944363, 41.441624, 52.414726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987171, 40.761513, 52.933464>,  <43.466480, 40.937126, 52.330391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987171, 40.761513, 52.933464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048332, 41.156792, 52.929665>,  <44.085030, 41.393959, 52.927383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048332, 41.156792, 52.929665>,  <43.987171, 40.761513, 52.933464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048332, 41.156792, 52.929665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022975, 0.006057, 0.999718,
		0.987974, -0.153079, -0.021778,
		0.152904, 0.988196, -0.009501,
		44.094204, 41.453251, 52.926815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634502, 41.032654, 53.324425>,  <43.987171, 40.761513, 52.933464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634502, 41.032654, 53.324425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381931, 41.341400, 53.294724>,  <44.230389, 41.526649, 53.276901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381931, 41.341400, 53.294724>,  <44.634502, 41.032654, 53.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381931, 41.341400, 53.294724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101969, 0.012274, 0.994712,
		0.768698, 0.635663, 0.070957,
		-0.631431, 0.771869, -0.074252,
		44.192501, 41.572960, 53.272449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701401, 41.334503, 54.051617>,  <44.634502, 41.032654, 53.324425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701401, 41.334503, 54.051617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404724, 41.542953, 53.882706>,  <44.226719, 41.668026, 53.781361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404724, 41.542953, 53.882706>,  <44.701401, 41.334503, 54.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404724, 41.542953, 53.882706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360299, 0.221481, 0.906163,
		0.565755, 0.824239, 0.023492,
		-0.741691, 0.521130, -0.422276,
		44.182217, 41.699291, 53.756023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703423, 42.006298, 54.313587>,  <44.701401, 41.334503, 54.051617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703423, 42.006298, 54.313587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336708, 41.912842, 54.184017>,  <44.116680, 41.856770, 54.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336708, 41.912842, 54.184017>,  <44.703423, 42.006298, 54.313587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336708, 41.912842, 54.184017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361693, 0.141727, 0.921461,
		-0.169380, 0.961939, -0.214438,
		-0.916781, -0.233638, -0.323921,
		44.061672, 41.842751, 54.086842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271854, 42.517521, 54.648163>,  <44.703423, 42.006298, 54.313587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271854, 42.517521, 54.648163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015053, 42.232224, 54.535652>,  <43.860970, 42.061047, 54.468147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015053, 42.232224, 54.535652>,  <44.271854, 42.517521, 54.648163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015053, 42.232224, 54.535652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463042, 0.068302, 0.883701,
		-0.611079, 0.697584, -0.374111,
		-0.642008, -0.713240, -0.281273,
		43.822449, 42.018253, 54.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579979, 42.852669, 54.702507>,  <44.271854, 42.517521, 54.648163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579979, 42.852669, 54.702507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550358, 42.453835, 54.695255>,  <43.532585, 42.214535, 54.690907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550358, 42.453835, 54.695255>,  <43.579979, 42.852669, 54.702507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550358, 42.453835, 54.695255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593701, 0.029475, 0.804146,
		-0.801271, 0.070311, -0.594156,
		-0.074053, -0.997089, -0.018126,
		43.528141, 42.154709, 54.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993515, 42.790070, 55.033726>,  <43.579979, 42.852669, 54.702507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993515, 42.790070, 55.033726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143406, 42.421646, 55.076107>,  <43.233341, 42.200592, 55.101536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143406, 42.421646, 55.076107>,  <42.993515, 42.790070, 55.033726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143406, 42.421646, 55.076107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604176, -0.155910, 0.781450,
		-0.703246, -0.356840, -0.614907,
		0.374723, -0.921063, 0.105951,
		43.255821, 42.145329, 55.107891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368160, 42.399422, 55.132515>,  <42.993515, 42.790070, 55.033726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368160, 42.399422, 55.132515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694839, 42.217438, 55.274506>,  <42.890846, 42.108250, 55.359699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694839, 42.217438, 55.274506>,  <42.368160, 42.399422, 55.132515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694839, 42.217438, 55.274506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503823, -0.262247, 0.823036,
		-0.281368, -0.851015, -0.443402,
		0.816697, -0.454972, 0.354973,
		42.939850, 42.080952, 55.381001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163334, 41.688519, 55.331230>,  <42.368160, 42.399422, 55.132515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163334, 41.688519, 55.331230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491753, 41.755516, 55.549526>,  <42.688805, 41.795715, 55.680504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491753, 41.755516, 55.549526>,  <42.163334, 41.688519, 55.331230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491753, 41.755516, 55.549526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421481, -0.466900, 0.777405,
		0.385019, -0.868302, -0.312749,
		0.821044, 0.167498, 0.545738,
		42.738068, 41.805767, 55.713249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298138, 41.065094, 55.735886>,  <42.163334, 41.688519, 55.331230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298138, 41.065094, 55.735886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526665, 41.338654, 55.917377>,  <42.663780, 41.502789, 56.026272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526665, 41.338654, 55.917377>,  <42.298138, 41.065094, 55.735886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526665, 41.338654, 55.917377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294237, -0.345416, 0.891130,
		0.766170, -0.642626, 0.003885,
		0.571321, 0.683901, 0.453731,
		42.698063, 41.543823, 56.053497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528713, 40.702576, 56.378185>,  <42.298138, 41.065094, 55.735886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528713, 40.702576, 56.378185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567734, 41.096466, 56.435875>,  <42.591145, 41.332802, 56.470490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567734, 41.096466, 56.435875>,  <42.528713, 40.702576, 56.378185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567734, 41.096466, 56.435875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377654, -0.097454, 0.920804,
		0.920794, -0.144293, 0.362378,
		0.097551, 0.984724, 0.144228,
		42.597000, 41.391884, 56.479145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708309, 40.632942, 56.995907>,  <42.528713, 40.702576, 56.378185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708309, 40.632942, 56.995907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597118, 41.011238, 56.928608>,  <42.530403, 41.238216, 56.888229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597118, 41.011238, 56.928608>,  <42.708309, 40.632942, 56.995907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597118, 41.011238, 56.928608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430035, 0.034100, 0.902168,
		0.858951, 0.323140, 0.397221,
		-0.277982, 0.945737, -0.168252,
		42.513725, 41.294960, 56.878132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143936, 41.131329, 57.478184>,  <42.708309, 40.632942, 56.995907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143936, 41.131329, 57.478184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785934, 41.276695, 57.374725>,  <42.571133, 41.363914, 57.312649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785934, 41.276695, 57.374725>,  <43.143936, 41.131329, 57.478184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785934, 41.276695, 57.374725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306784, -0.080562, 0.948364,
		0.323813, 0.928137, 0.183593,
		-0.895002, 0.363416, -0.258651,
		42.517433, 41.385719, 57.297131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976070, 41.451839, 58.058193>,  <43.143936, 41.131329, 57.478184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976070, 41.451839, 58.058193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622566, 41.453552, 57.871025>,  <42.410461, 41.454578, 57.758724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622566, 41.453552, 57.871025>,  <42.976070, 41.451839, 58.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622566, 41.453552, 57.871025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465788, 0.087651, 0.880544,
		0.044780, 0.996142, -0.075470,
		-0.883762, 0.004278, -0.467917,
		42.357437, 41.454834, 57.730652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557064, 41.969528, 58.298393>,  <42.976070, 41.451839, 58.058193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557064, 41.969528, 58.298393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292927, 41.700867, 58.164036>,  <42.134445, 41.539669, 58.083420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292927, 41.700867, 58.164036>,  <42.557064, 41.969528, 58.298393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292927, 41.700867, 58.164036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528886, 0.098412, 0.842967,
		-0.533127, 0.734299, -0.420215,
		-0.660344, -0.671655, -0.335895,
		42.094822, 41.499371, 58.063267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013340, 42.131939, 58.642475>,  <42.557064, 41.969528, 58.298393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013340, 42.131939, 58.642475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902920, 41.777168, 58.494331>,  <41.836670, 41.564308, 58.405445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902920, 41.777168, 58.494331>,  <42.013340, 42.131939, 58.642475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902920, 41.777168, 58.494331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729906, -0.057253, 0.681146,
		-0.625328, 0.458355, -0.631566,
		-0.276047, -0.886923, -0.370358,
		41.820107, 41.511093, 58.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257359, 42.169918, 58.570892>,  <42.013340, 42.131939, 58.642475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257359, 42.169918, 58.570892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338516, 41.778801, 58.591908>,  <41.387211, 41.544132, 58.604519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338516, 41.778801, 58.591908>,  <41.257359, 42.169918, 58.570892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338516, 41.778801, 58.591908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737589, -0.117323, 0.664980,
		-0.644046, -0.173676, -0.745011,
		0.202898, -0.977790, 0.052540,
		41.399387, 41.485466, 58.607670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685318, 41.825520, 58.675068>,  <41.257359, 42.169918, 58.570892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685318, 41.825520, 58.675068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954315, 41.589439, 58.853691>,  <41.115711, 41.447792, 58.960865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954315, 41.589439, 58.853691>,  <40.685318, 41.825520, 58.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954315, 41.589439, 58.853691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550981, 0.003612, 0.834510,
		-0.494143, -0.807247, -0.322761,
		0.672490, -0.590203, 0.446562,
		41.156063, 41.412380, 58.987659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289009, 41.315056, 58.943607>,  <40.685318, 41.825520, 58.675068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289009, 41.315056, 58.943607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631699, 41.284584, 59.147652>,  <40.837315, 41.266300, 59.270081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631699, 41.284584, 59.147652>,  <40.289009, 41.315056, 58.943607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631699, 41.284584, 59.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514289, -0.051291, 0.856081,
		-0.039009, -0.995778, -0.083096,
		0.856729, -0.076130, 0.510117,
		40.888718, 41.261730, 59.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066757, 40.845058, 59.507065>,  <40.289009, 41.315056, 58.943607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066757, 40.845058, 59.507065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410233, 41.005196, 59.635056>,  <40.616318, 41.101280, 59.711849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410233, 41.005196, 59.635056>,  <40.066757, 40.845058, 59.507065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410233, 41.005196, 59.635056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379332, 0.076648, 0.922081,
		0.344626, -0.913153, 0.217681,
		0.858686, 0.400346, 0.319973,
		40.667839, 41.125298, 59.731049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276215, 40.502495, 60.048500>,  <40.066757, 40.845058, 59.507065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276215, 40.502495, 60.048500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506645, 40.826233, 60.094276>,  <40.644901, 41.020477, 60.121742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506645, 40.826233, 60.094276>,  <40.276215, 40.502495, 60.048500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506645, 40.826233, 60.094276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230132, 0.026254, 0.972805,
		0.784333, -0.586743, 0.201381,
		0.576074, 0.809348, 0.114437,
		40.679466, 41.069038, 60.128609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735825, 40.326180, 60.526520>,  <40.276215, 40.502495, 60.048500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735825, 40.326180, 60.526520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701221, 40.724403, 60.511692>,  <40.680462, 40.963337, 60.502796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701221, 40.724403, 60.511692>,  <40.735825, 40.326180, 60.526520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701221, 40.724403, 60.511692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187796, 0.020244, 0.981999,
		0.978391, 0.091909, 0.185211,
		-0.086505, 0.995562, -0.037067,
		40.675270, 41.023071, 60.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198032, 40.685711, 61.063786>,  <40.735825, 40.326180, 60.526520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198032, 40.685711, 61.063786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889244, 40.926392, 60.981789>,  <40.703972, 41.070801, 60.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889244, 40.926392, 60.981789>,  <41.198032, 40.685711, 61.063786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889244, 40.926392, 60.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030245, 0.287347, 0.957349,
		0.634939, 0.745244, -0.203624,
		-0.771970, 0.601700, -0.204988,
		40.657654, 41.106903, 60.920292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363773, 41.374241, 61.338165>,  <41.198032, 40.685711, 61.063786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363773, 41.374241, 61.338165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968197, 41.324730, 61.305489>,  <40.730850, 41.295025, 61.285885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968197, 41.324730, 61.305489>,  <41.363773, 41.374241, 61.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968197, 41.324730, 61.305489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124388, 0.392390, 0.911350,
		-0.080748, 0.911433, -0.403447,
		-0.988943, -0.123773, -0.081687,
		40.671513, 41.287598, 61.280983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026970, 42.020359, 61.540092>,  <41.363773, 41.374241, 61.338165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026970, 42.020359, 61.540092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756111, 41.728935, 61.581413>,  <40.593597, 41.554081, 61.606205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756111, 41.728935, 61.581413>,  <41.026970, 42.020359, 61.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756111, 41.728935, 61.581413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150447, 0.274492, 0.949747,
		-0.720306, 0.627574, -0.295481,
		-0.677144, -0.728563, 0.103302,
		40.552967, 41.510365, 61.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175533, 42.695568, 61.494862>,  <41.026970, 42.020359, 61.540092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175533, 42.695568, 61.494862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942749, 43.020424, 61.511623>,  <40.803078, 43.215336, 61.521683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942749, 43.020424, 61.511623>,  <41.175533, 42.695568, 61.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942749, 43.020424, 61.511623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028964, -0.072201, 0.996970,
		0.812701, 0.578983, 0.065541,
		-0.581961, 0.812136, 0.041908,
		40.768162, 43.264065, 61.524197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510559, 43.187698, 62.024513>,  <41.175533, 42.695568, 61.494862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510559, 43.187698, 62.024513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114761, 43.221870, 61.977859>,  <40.877281, 43.242374, 61.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114761, 43.221870, 61.977859>,  <41.510559, 43.187698, 62.024513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114761, 43.221870, 61.977859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130361, -0.178437, 0.975277,
		0.062503, 0.980236, 0.187699,
		-0.989495, 0.085426, -0.116631,
		40.817913, 43.247498, 61.942871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048439, 42.583275, 62.286449>,  <41.510559, 43.187698, 62.024513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048439, 42.583275, 62.286449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911617, 42.759689, 62.618351>,  <40.829525, 42.865540, 62.817490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911617, 42.759689, 62.618351>,  <41.048439, 42.583275, 62.286449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911617, 42.759689, 62.618351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591462, 0.585102, -0.554823,
		-0.730185, -0.680546, 0.060718,
		-0.342056, 0.441036, 0.829750,
		40.809002, 42.891998, 62.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331787, 42.589920, 62.333454>,  <41.048439, 42.583275, 62.286449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331787, 42.589920, 62.333454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486183, 42.907570, 62.521233>,  <40.578823, 43.098160, 62.633900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486183, 42.907570, 62.521233>,  <40.331787, 42.589920, 62.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486183, 42.907570, 62.521233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548489, 0.606725, -0.575364,
		-0.741734, -0.035399, 0.669760,
		0.385993, 0.794123, 0.469445,
		40.601982, 43.145805, 62.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767532, 43.134342, 62.603485>,  <40.331787, 42.589920, 62.333454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767532, 43.134342, 62.603485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123802, 43.273254, 62.486115>,  <40.337563, 43.356602, 62.415691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123802, 43.273254, 62.486115>,  <39.767532, 43.134342, 62.603485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123802, 43.273254, 62.486115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450657, 0.589050, -0.670767,
		-0.060101, 0.729668, 0.681155,
		0.890672, 0.347281, -0.293427,
		40.391003, 43.377438, 62.398087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626053, 43.631088, 62.043530>,  <39.767532, 43.134342, 62.603485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626053, 43.631088, 62.043530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011055, 43.569534, 61.954174>,  <40.242058, 43.532600, 61.900562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011055, 43.569534, 61.954174>,  <39.626053, 43.631088, 62.043530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011055, 43.569534, 61.954174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148902, 0.388615, -0.909289,
		0.226737, 0.908459, 0.351131,
		0.962506, -0.153885, -0.223385,
		40.299809, 43.523369, 61.887157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858364, 44.192093, 61.610638>,  <39.626053, 43.631088, 62.043530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858364, 44.192093, 61.610638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151482, 43.922607, 61.572433>,  <40.327351, 43.760918, 61.549511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151482, 43.922607, 61.572433>,  <39.858364, 44.192093, 61.610638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151482, 43.922607, 61.572433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122533, 0.268720, -0.955393,
		0.669327, 0.688403, 0.279468,
		0.732794, -0.673714, -0.095510,
		40.371319, 43.720493, 61.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487099, 44.468914, 61.255398>,  <39.858364, 44.192093, 61.610638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487099, 44.468914, 61.255398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496490, 44.073929, 61.192963>,  <40.502125, 43.836937, 61.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496490, 44.073929, 61.192963>,  <40.487099, 44.468914, 61.255398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496490, 44.073929, 61.192963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161333, 0.157822, -0.974199,
		0.986621, -0.002310, 0.163016,
		0.023477, -0.987465, -0.156083,
		40.503532, 43.777691, 61.146137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013416, 44.387238, 60.782272>,  <40.487099, 44.468914, 61.255398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013416, 44.387238, 60.782272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823944, 44.035034, 60.774944>,  <40.710258, 43.823711, 60.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823944, 44.035034, 60.774944>,  <41.013416, 44.387238, 60.782272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823944, 44.035034, 60.774944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010190, 0.015316, -0.999831,
		0.880636, -0.473790, 0.001718,
		-0.473683, -0.880505, -0.018316,
		40.681839, 43.770882, 60.769451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363194, 44.046066, 60.316170>,  <41.013416, 44.387238, 60.782272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363194, 44.046066, 60.316170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061043, 43.784088, 60.324669>,  <40.879753, 43.626900, 60.329769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061043, 43.784088, 60.324669>,  <41.363194, 44.046066, 60.316170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061043, 43.784088, 60.324669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068749, -0.111448, -0.991389,
		0.651676, -0.747410, 0.129212,
		-0.755375, -0.654948, 0.021244,
		40.834431, 43.587605, 60.331043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547867, 43.430874, 59.801399>,  <41.363194, 44.046066, 60.316170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547867, 43.430874, 59.801399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154625, 43.486641, 59.848831>,  <40.918678, 43.520103, 59.877289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154625, 43.486641, 59.848831>,  <41.547867, 43.430874, 59.801399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154625, 43.486641, 59.848831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118177, 0.011201, -0.992929,
		-0.139764, -0.990170, 0.005465,
		-0.983107, 0.139421, 0.118581,
		40.859692, 43.528465, 59.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317039, 43.036674, 59.347282>,  <41.547867, 43.430874, 59.801399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317039, 43.036674, 59.347282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005863, 43.270256, 59.440075>,  <40.819157, 43.410404, 59.495750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005863, 43.270256, 59.440075>,  <41.317039, 43.036674, 59.347282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005863, 43.270256, 59.440075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344044, -0.086926, -0.934921,
		-0.525783, -0.807121, 0.268528,
		-0.777936, 0.583951, 0.231981,
		40.772484, 43.445442, 59.509670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693340, 42.663132, 59.169895>,  <41.317039, 43.036674, 59.347282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693340, 42.663132, 59.169895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614342, 43.055237, 59.166153>,  <40.566940, 43.290501, 59.163906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614342, 43.055237, 59.166153>,  <40.693340, 42.663132, 59.169895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614342, 43.055237, 59.166153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146034, -0.038861, -0.988516,
		-0.969365, -0.193864, 0.150826,
		-0.197499, 0.980258, -0.009359,
		40.555092, 43.349316, 59.163345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316860, 42.638748, 58.519623>,  <40.693340, 42.663132, 59.169895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316860, 42.638748, 58.519623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388390, 43.022095, 58.608669>,  <40.431309, 43.252102, 58.662098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388390, 43.022095, 58.608669>,  <40.316860, 42.638748, 58.519623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388390, 43.022095, 58.608669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089829, 0.241220, -0.966304,
		-0.979772, 0.152801, 0.129225,
		0.178824, 0.958365, 0.222615,
		40.442036, 43.309605, 58.675453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 43.162811, 58.286648>,  <40.316860, 42.638748, 58.519623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701397, 43.162811, 58.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048073, 43.358742, 58.324417>,  <40.256077, 43.476299, 58.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048073, 43.358742, 58.324417>,  <39.701397, 43.162811, 58.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048073, 43.358742, 58.324417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030263, 0.240562, -0.970162,
		-0.497928, 0.837972, 0.223316,
		0.866690, 0.489829, 0.094423,
		40.308079, 43.505692, 58.352745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538502, 43.838223, 57.994690>,  <39.701397, 43.162811, 58.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538502, 43.838223, 57.994690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935638, 43.795349, 58.015755>,  <40.173920, 43.769627, 58.028393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935638, 43.795349, 58.015755>,  <39.538502, 43.838223, 57.994690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935638, 43.795349, 58.015755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073328, 0.199130, -0.977226,
		0.094256, 0.974094, 0.205564,
		0.992844, -0.107183, 0.052659,
		40.233490, 43.763195, 58.031551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822105, 44.383976, 57.634644>,  <39.538502, 43.838223, 57.994690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822105, 44.383976, 57.634644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125134, 44.123024, 57.643391>,  <40.306950, 43.966454, 57.648640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125134, 44.123024, 57.643391>,  <39.822105, 44.383976, 57.634644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125134, 44.123024, 57.643391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189334, 0.187552, -0.963834,
		0.624686, 0.734317, 0.265603,
		0.757575, -0.652382, 0.021871,
		40.352406, 43.927311, 57.649952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429104, 44.732613, 57.388813>,  <39.822105, 44.383976, 57.634644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429104, 44.732613, 57.388813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507992, 44.345215, 57.327980>,  <40.555325, 44.112778, 57.291481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507992, 44.345215, 57.327980>,  <40.429104, 44.732613, 57.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507992, 44.345215, 57.327980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393368, 0.220270, -0.892605,
		0.897978, 0.116217, 0.424415,
		0.197222, -0.968491, -0.152081,
		40.567158, 44.054668, 57.282356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121758, 44.762478, 57.048252>,  <40.429104, 44.732613, 57.388813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121758, 44.762478, 57.048252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975330, 44.396423, 56.980701>,  <40.887474, 44.176792, 56.940170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975330, 44.396423, 56.980701>,  <41.121758, 44.762478, 57.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975330, 44.396423, 56.980701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575344, -0.079933, -0.813996,
		0.731419, -0.395139, 0.555780,
		-0.366067, -0.915137, -0.168876,
		40.865509, 44.121883, 56.930038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776657, 44.385780, 56.859200>,  <41.121758, 44.762478, 57.048252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776657, 44.385780, 56.859200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465088, 44.166580, 56.737225>,  <41.278149, 44.035061, 56.664040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465088, 44.166580, 56.737225>,  <41.776657, 44.385780, 56.859200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465088, 44.166580, 56.737225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425402, -0.104437, -0.898958,
		0.460780, -0.829935, 0.314467,
		-0.778919, -0.547997, -0.304934,
		41.231411, 44.002182, 56.645744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122204, 43.817490, 56.513294>,  <41.776657, 44.385780, 56.859200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122204, 43.817490, 56.513294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744186, 43.824150, 56.382690>,  <41.517376, 43.828144, 56.304329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744186, 43.824150, 56.382690>,  <42.122204, 43.817490, 56.513294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744186, 43.824150, 56.382690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326908, 0.061301, -0.943066,
		0.004314, -0.997980, -0.063376,
		-0.945046, 0.016650, -0.326512,
		41.460674, 43.829144, 56.284737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082275, 43.416145, 55.918316>,  <42.122204, 43.817490, 56.513294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082275, 43.416145, 55.918316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745716, 43.631699, 55.902058>,  <41.543781, 43.761032, 55.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745716, 43.631699, 55.902058>,  <42.082275, 43.416145, 55.918316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745716, 43.631699, 55.902058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166167, 0.186407, -0.968319,
		-0.514237, -0.821495, -0.246387,
		-0.841397, 0.538886, -0.040648,
		41.493298, 43.793365, 55.889862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696457, 43.040024, 55.396767>,  <42.082275, 43.416145, 55.918316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696457, 43.040024, 55.396767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561096, 43.415771, 55.418926>,  <41.479881, 43.641220, 55.432220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561096, 43.415771, 55.418926>,  <41.696457, 43.040024, 55.396767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561096, 43.415771, 55.418926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119119, 0.101157, -0.987714,
		-0.933432, -0.327646, -0.146129,
		-0.338402, 0.939370, 0.055395,
		41.459576, 43.697582, 55.435543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130013, 43.131165, 54.901165>,  <41.696457, 43.040024, 55.396767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130013, 43.131165, 54.901165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202900, 43.521225, 54.951561>,  <41.246632, 43.755260, 54.981800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202900, 43.521225, 54.951561>,  <41.130013, 43.131165, 54.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202900, 43.521225, 54.951561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162534, 0.096502, -0.981973,
		-0.969731, 0.199414, -0.140910,
		0.182221, 0.975152, 0.125992,
		41.257565, 43.813770, 54.989357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765213, 43.597668, 54.355713>,  <41.130013, 43.131165, 54.901165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765213, 43.597668, 54.355713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098831, 43.786400, 54.470070>,  <41.299004, 43.899639, 54.538685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098831, 43.786400, 54.470070>,  <40.765213, 43.597668, 54.355713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098831, 43.786400, 54.470070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214100, 0.200780, -0.955954,
		-0.508452, 0.858523, 0.066441,
		0.834049, 0.471832, 0.285897,
		41.349045, 43.927948, 54.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875195, 44.060822, 53.811302>,  <40.765213, 43.597668, 54.355713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875195, 44.060822, 53.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230133, 44.082474, 53.994473>,  <41.443096, 44.095463, 54.104374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230133, 44.082474, 53.994473>,  <40.875195, 44.060822, 53.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230133, 44.082474, 53.994473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431794, 0.250904, -0.866372,
		-0.161788, 0.966498, 0.199267,
		0.887344, 0.054126, 0.457921,
		41.496338, 44.098713, 54.131847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139297, 44.701134, 53.623783>,  <40.875195, 44.060822, 53.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139297, 44.701134, 53.623783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437675, 44.459641, 53.736259>,  <41.616703, 44.314743, 53.803745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437675, 44.459641, 53.736259>,  <41.139297, 44.701134, 53.623783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437675, 44.459641, 53.736259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474927, 0.186212, -0.860099,
		0.466909, 0.775134, 0.425633,
		0.745949, -0.603733, 0.281188,
		41.661461, 44.278522, 53.820614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697540, 45.159447, 53.534332>,  <41.139297, 44.701134, 53.623783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697540, 45.159447, 53.534332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845695, 44.788040, 53.544647>,  <41.934589, 44.565197, 53.550835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845695, 44.788040, 53.544647>,  <41.697540, 45.159447, 53.534332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845695, 44.788040, 53.544647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608947, 0.221758, -0.761581,
		0.701426, 0.297780, 0.647556,
		0.370385, -0.928521, 0.025785,
		41.956810, 44.509483, 53.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437401, 45.221428, 53.363785>,  <41.697540, 45.159447, 53.534332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437401, 45.221428, 53.363785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393257, 44.828293, 53.304661>,  <42.366772, 44.592411, 53.269188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393257, 44.828293, 53.304661>,  <42.437401, 45.221428, 53.363785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393257, 44.828293, 53.304661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694184, 0.030208, -0.719163,
		0.711287, -0.181974, 0.678937,
		-0.110360, -0.982839, -0.147810,
		42.360149, 44.533440, 53.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207874, 44.847492, 53.312519>,  <42.437401, 45.221428, 53.363785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207874, 44.847492, 53.312519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929031, 44.646973, 53.107487>,  <42.761726, 44.526661, 52.984467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929031, 44.646973, 53.107487>,  <43.207874, 44.847492, 53.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929031, 44.646973, 53.107487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559803, 0.066106, -0.825985,
		0.447946, -0.862748, 0.234542,
		-0.697112, -0.501294, -0.512581,
		42.719898, 44.496586, 52.953712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637913, 44.404320, 52.811840>,  <43.207874, 44.847492, 53.312519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637913, 44.404320, 52.811840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257301, 44.392151, 52.689415>,  <43.028934, 44.384850, 52.615959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257301, 44.392151, 52.689415>,  <43.637913, 44.404320, 52.811840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257301, 44.392151, 52.689415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307509, -0.113730, -0.944724,
		-0.006064, -0.993046, 0.117573,
		-0.951526, -0.030426, -0.306060,
		42.971844, 44.383022, 52.597595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580513, 43.766872, 52.454350>,  <43.637913, 44.404320, 52.811840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580513, 43.766872, 52.454350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292259, 44.008812, 52.318794>,  <43.119308, 44.153976, 52.237461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292259, 44.008812, 52.318794>,  <43.580513, 43.766872, 52.454350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292259, 44.008812, 52.318794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244144, -0.236097, -0.940559,
		-0.648911, -0.760533, 0.022468,
		-0.720631, 0.604854, -0.338886,
		43.076069, 44.190269, 52.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250217, 43.395283, 52.006767>,  <43.580513, 43.766872, 52.454350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250217, 43.395283, 52.006767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 43.760452, 51.911186>,  <43.038456, 43.979553, 51.853836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 43.760452, 51.911186>,  <43.250217, 43.395283, 52.006767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117867, 43.760452, 51.911186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271839, -0.150277, -0.950537,
		-0.903673, -0.379466, -0.198444,
		-0.330875, 0.912920, -0.238955,
		43.018604, 44.034328, 51.839500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828766, 43.391556, 51.257778>,  <43.250217, 43.395283, 52.006767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828766, 43.391556, 51.257778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935638, 43.774872, 51.298370>,  <42.999760, 44.004860, 51.322723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935638, 43.774872, 51.298370>,  <42.828766, 43.391556, 51.257778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935638, 43.774872, 51.298370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028835, 0.113210, -0.993153,
		-0.963216, 0.262421, 0.057880,
		0.267177, 0.958290, 0.101479,
		43.015793, 44.062359, 51.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464367, 43.744625, 50.673759>,  <42.828766, 43.391556, 51.257778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464367, 43.744625, 50.673759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742443, 44.003822, 50.798222>,  <42.909286, 44.159340, 50.872898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742443, 44.003822, 50.798222>,  <42.464367, 43.744625, 50.673759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742443, 44.003822, 50.798222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145061, 0.297499, -0.943637,
		-0.704041, 0.701141, 0.112818,
		0.695186, 0.647994, 0.311160,
		42.951000, 44.198219, 50.891571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265717, 44.357765, 50.307262>,  <42.464367, 43.744625, 50.673759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265717, 44.357765, 50.307262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650291, 44.383476, 50.414230>,  <42.881035, 44.398903, 50.478413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650291, 44.383476, 50.414230>,  <42.265717, 44.357765, 50.307262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650291, 44.383476, 50.414230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239961, 0.279110, -0.929794,
		-0.134404, 0.958106, 0.252921,
		0.961433, 0.064277, 0.267422,
		42.938721, 44.402760, 50.494457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475388, 44.992550, 50.061443>,  <42.265717, 44.357765, 50.307262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475388, 44.992550, 50.061443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805939, 44.769440, 50.092400>,  <43.004269, 44.635574, 50.110973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805939, 44.769440, 50.092400>,  <42.475388, 44.992550, 50.061443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805939, 44.769440, 50.092400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331292, 0.370426, -0.867773,
		0.455354, 0.742746, 0.490898,
		0.826377, -0.557774, 0.077391,
		43.053852, 44.602108, 50.115616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026581, 45.376659, 49.856415>,  <42.475388, 44.992550, 50.061443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026581, 45.376659, 49.856415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199791, 45.016235, 49.846821>,  <43.303719, 44.799980, 49.841064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199791, 45.016235, 49.846821>,  <43.026581, 45.376659, 49.856415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199791, 45.016235, 49.846821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609780, 0.312434, -0.728391,
		0.663818, 0.300790, 0.684742,
		0.433029, -0.901061, -0.023983,
		43.329700, 44.745918, 49.839626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733673, 45.454197, 49.681774>,  <43.026581, 45.376659, 49.856415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733673, 45.454197, 49.681774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663757, 45.077820, 49.565788>,  <43.621807, 44.851994, 49.496197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663757, 45.077820, 49.565788>,  <43.733673, 45.454197, 49.681774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663757, 45.077820, 49.565788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483110, 0.174650, -0.857964,
		0.857936, -0.290043, 0.424053,
		-0.174785, -0.940942, -0.289961,
		43.611320, 44.795536, 49.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420471, 45.191078, 49.476521>,  <43.733673, 45.454197, 49.681774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420471, 45.191078, 49.476521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134262, 44.960892, 49.318100>,  <43.962536, 44.822781, 49.223045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134262, 44.960892, 49.318100>,  <44.420471, 45.191078, 49.476521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134262, 44.960892, 49.318100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389529, 0.141961, -0.910008,
		0.579905, -0.805409, 0.122585,
		-0.715526, -0.575468, -0.396054,
		43.919605, 44.788250, 49.199284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748348, 44.732006, 48.994122>,  <44.420471, 45.191078, 49.476521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748348, 44.732006, 48.994122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373672, 44.707481, 48.856224>,  <44.148865, 44.692768, 48.773483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373672, 44.707481, 48.856224>,  <44.748348, 44.732006, 48.994122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373672, 44.707481, 48.856224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344967, 0.007297, -0.938587,
		0.060057, -0.998093, 0.014313,
		-0.936692, -0.061306, -0.344747,
		44.092667, 44.689091, 48.752800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778450, 44.223034, 48.536659>,  <44.748348, 44.732006, 48.994122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778450, 44.223034, 48.536659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463512, 44.450447, 48.441277>,  <44.274551, 44.586895, 48.384048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463512, 44.450447, 48.441277>,  <44.778450, 44.223034, 48.536659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463512, 44.450447, 48.441277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387280, 0.155155, -0.908813,
		-0.479693, -0.807897, -0.342342,
		-0.787343, 0.568533, -0.238455,
		44.227310, 44.621006, 48.369740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713154, 44.081985, 47.880863>,  <44.778450, 44.223034, 48.536659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713154, 44.081985, 47.880863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457176, 44.388939, 47.896851>,  <44.303589, 44.573109, 47.906441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457176, 44.388939, 47.896851>,  <44.713154, 44.081985, 47.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457176, 44.388939, 47.896851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379948, 0.361202, -0.851571,
		-0.667913, -0.529776, -0.522714,
		-0.639947, 0.767379, 0.039964,
		44.265194, 44.619152, 47.908840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349243, 44.263992, 47.216042>,  <44.713154, 44.081985, 47.880863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349243, 44.263992, 47.216042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316666, 44.610580, 47.413055>,  <44.297119, 44.818535, 47.531265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316666, 44.610580, 47.413055>,  <44.349243, 44.263992, 47.216042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316666, 44.610580, 47.413055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260525, 0.495506, -0.828614,
		-0.962026, 0.060831, -0.266095,
		-0.081447, 0.866472, 0.492538,
		44.292233, 44.870522, 47.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975826, 44.713547, 46.807590>,  <44.349243, 44.263992, 47.216042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975826, 44.713547, 46.807590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180031, 44.948509, 47.058773>,  <44.302555, 45.089485, 47.209484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180031, 44.948509, 47.058773>,  <43.975826, 44.713547, 46.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180031, 44.948509, 47.058773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000051, 0.730276, -0.683152,
		-0.859869, 0.348791, 0.372787,
		0.510515, 0.587403, 0.627959,
		44.333187, 45.124729, 47.247162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629223, 45.444805, 46.988342>,  <43.975826, 44.713547, 46.807590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629223, 45.444805, 46.988342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018291, 45.511192, 47.053284>,  <44.251732, 45.551025, 47.092251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018291, 45.511192, 47.053284>,  <43.629223, 45.444805, 46.988342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018291, 45.511192, 47.053284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014954, 0.742610, -0.669557,
		-0.231694, 0.648833, 0.724799,
		0.972674, 0.165971, 0.162356,
		44.310093, 45.560982, 47.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689808, 46.205654, 47.236107>,  <43.629223, 45.444805, 46.988342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689808, 46.205654, 47.236107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028687, 46.055527, 47.085701>,  <44.232014, 45.965450, 46.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028687, 46.055527, 47.085701>,  <43.689808, 46.205654, 47.236107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028687, 46.055527, 47.085701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093904, 0.802407, -0.589343,
		0.522908, 0.463982, 0.715044,
		0.847201, -0.375318, -0.376015,
		44.282848, 45.942932, 46.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080105, 46.481293, 47.003387>,  <43.689808, 46.205654, 47.236107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080105, 46.481293, 47.003387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758778, 46.461884, 46.765957>,  <42.565983, 46.450237, 46.623497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758778, 46.461884, 46.765957>,  <43.080105, 46.481293, 47.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758778, 46.461884, 46.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591819, -0.046421, 0.804733,
		-0.066601, 0.997743, 0.008575,
		-0.803314, -0.048521, -0.593575,
		42.517784, 46.447327, 46.587883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659908, 47.087139, 47.249672>,  <43.080105, 46.481293, 47.003387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659908, 47.087139, 47.249672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425850, 46.829819, 47.052185>,  <42.285416, 46.675426, 46.933693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425850, 46.829819, 47.052185>,  <42.659908, 47.087139, 47.249672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425850, 46.829819, 47.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661995, 0.027302, 0.749010,
		-0.468363, 0.765123, -0.441840,
		-0.585148, -0.643305, -0.493721,
		42.250305, 46.636826, 46.904068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038368, 47.294807, 47.492634>,  <42.659908, 47.087139, 47.249672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038368, 47.294807, 47.492634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966930, 46.943726, 47.314766>,  <41.924068, 46.733074, 47.208046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966930, 46.943726, 47.314766>,  <42.038368, 47.294807, 47.492634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966930, 46.943726, 47.314766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666712, -0.224417, 0.710726,
		-0.723602, 0.423399, -0.545099,
		-0.178592, -0.877707, -0.444674,
		41.913353, 46.680412, 47.181362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332352, 47.277821, 47.314396>,  <42.038368, 47.294807, 47.492634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332352, 47.277821, 47.314396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445652, 46.895927, 47.350727>,  <41.513634, 46.666790, 47.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445652, 46.895927, 47.350727>,  <41.332352, 47.277821, 47.314396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445652, 46.895927, 47.350727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858960, -0.210427, 0.466806,
		-0.426563, -0.210243, -0.879683,
		0.283252, -0.954735, 0.090829,
		41.530628, 46.609509, 47.377975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739822, 46.835640, 47.161926>,  <41.332352, 47.277821, 47.314396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739822, 46.835640, 47.161926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982903, 46.613792, 47.389294>,  <41.128750, 46.480686, 47.525715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982903, 46.613792, 47.389294>,  <40.739822, 46.835640, 47.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982903, 46.613792, 47.389294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780754, -0.286250, 0.555414,
		-0.145331, -0.781321, -0.606973,
		0.607702, -0.554616, 0.568418,
		41.165215, 46.447407, 47.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368610, 46.189220, 47.283253>,  <40.739822, 46.835640, 47.161926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368610, 46.189220, 47.283253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668343, 46.157333, 47.546204>,  <40.848183, 46.138199, 47.703976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668343, 46.157333, 47.546204>,  <40.368610, 46.189220, 47.283253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668343, 46.157333, 47.546204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644355, -0.316670, 0.696079,
		0.152682, -0.945180, -0.288658,
		0.749330, -0.079719, 0.657381,
		40.893143, 46.133419, 47.743420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318871, 45.521233, 47.634918>,  <40.368610, 46.189220, 47.283253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318871, 45.521233, 47.634918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531857, 45.746368, 47.887802>,  <40.659649, 45.881451, 48.039532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531857, 45.746368, 47.887802>,  <40.318871, 45.521233, 47.634918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531857, 45.746368, 47.887802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525978, -0.365175, 0.768111,
		0.663192, -0.741522, 0.101599,
		0.532470, 0.562843, 0.632205,
		40.691597, 45.915222, 48.077465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449577, 45.046608, 48.179531>,  <40.318871, 45.521233, 47.634918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449577, 45.046608, 48.179531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571495, 45.394302, 48.335243>,  <40.644646, 45.602917, 48.428669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571495, 45.394302, 48.335243>,  <40.449577, 45.046608, 48.179531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571495, 45.394302, 48.335243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564475, -0.164339, 0.808926,
		0.767117, -0.466293, 0.440570,
		0.304794, 0.869232, 0.389278,
		40.662933, 45.655071, 48.452026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685268, 44.995823, 48.910034>,  <40.449577, 45.046608, 48.179531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685268, 44.995823, 48.910034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533386, 45.363518, 48.868423>,  <40.442257, 45.584137, 48.843456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533386, 45.363518, 48.868423>,  <40.685268, 44.995823, 48.910034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533386, 45.363518, 48.868423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390264, -0.057211, 0.918924,
		0.838759, 0.389520, 0.380470,
		-0.379706, 0.919239, -0.104030,
		40.419476, 45.639290, 48.837215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857807, 45.312019, 49.517029>,  <40.685268, 44.995823, 48.910034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857807, 45.312019, 49.517029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545841, 45.507469, 49.360580>,  <40.358662, 45.624737, 49.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545841, 45.507469, 49.360580>,  <40.857807, 45.312019, 49.517029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545841, 45.507469, 49.360580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447378, 0.001794, 0.894343,
		0.437698, 0.872493, 0.217200,
		-0.779918, 0.488623, -0.391120,
		40.311867, 45.654057, 49.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776810, 45.902718, 49.915321>,  <40.857807, 45.312019, 49.517029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776810, 45.902718, 49.915321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426300, 45.849037, 49.730225>,  <40.215992, 45.816830, 49.619167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426300, 45.849037, 49.730225>,  <40.776810, 45.902718, 49.915321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426300, 45.849037, 49.730225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476930, 0.105295, 0.872611,
		-0.068379, 0.985344, -0.156271,
		-0.876277, -0.134199, -0.462741,
		40.163418, 45.808777, 49.591404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240891, 46.345558, 50.258240>,  <40.776810, 45.902718, 49.915321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240891, 46.345558, 50.258240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996399, 46.098785, 50.059929>,  <39.849705, 45.950722, 49.940945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996399, 46.098785, 50.059929>,  <40.240891, 46.345558, 50.258240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996399, 46.098785, 50.059929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653114, 0.039356, 0.756236,
		-0.447037, 0.786029, -0.426985,
		-0.611228, -0.616935, -0.495773,
		39.813030, 45.913704, 49.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553795, 46.641457, 50.356876>,  <40.240891, 46.345558, 50.258240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553795, 46.641457, 50.356876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554668, 46.247360, 50.288414>,  <39.555195, 46.010902, 50.247337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554668, 46.247360, 50.288414>,  <39.553795, 46.641457, 50.356876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554668, 46.247360, 50.288414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611755, -0.136709, 0.779145,
		-0.791044, 0.102999, -0.603026,
		0.002188, -0.985242, -0.171153,
		39.555325, 45.951786, 50.237068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871220, 46.481037, 50.556000>,  <39.553795, 46.641457, 50.356876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871220, 46.481037, 50.556000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078674, 46.139229, 50.544670>,  <39.203148, 45.934143, 50.537872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078674, 46.139229, 50.544670>,  <38.871220, 46.481037, 50.556000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078674, 46.139229, 50.544670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438878, -0.294507, 0.848912,
		-0.733757, -0.427849, -0.527775,
		0.518639, -0.854524, -0.028323,
		39.234264, 45.882874, 50.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356255, 45.990978, 50.888149>,  <38.871220, 46.481037, 50.556000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356255, 45.990978, 50.888149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688969, 45.771111, 50.857185>,  <38.888599, 45.639191, 50.838608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688969, 45.771111, 50.857185>,  <38.356255, 45.990978, 50.888149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688969, 45.771111, 50.857185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003520, -0.144682, 0.989472,
		-0.555082, -0.822758, -0.122280,
		0.831788, -0.549669, -0.077414,
		38.938503, 45.606209, 50.833961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213486, 45.280766, 51.117073>,  <38.356255, 45.990978, 50.888149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213486, 45.280766, 51.117073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604084, 45.355705, 51.159683>,  <38.838444, 45.400669, 51.185249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604084, 45.355705, 51.159683>,  <38.213486, 45.280766, 51.117073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604084, 45.355705, 51.159683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018986, -0.417556, 0.908453,
		0.214681, -0.889126, -0.404187,
		0.976499, 0.187354, 0.106523,
		38.897034, 45.411911, 51.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360577, 44.851276, 51.645393>,  <38.213486, 45.280766, 51.117073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360577, 44.851276, 51.645393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676865, 45.094582, 51.673031>,  <38.866638, 45.240566, 51.689613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676865, 45.094582, 51.673031>,  <38.360577, 44.851276, 51.645393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676865, 45.094582, 51.673031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068230, -0.199733, 0.977472,
		0.608363, -0.768193, -0.199435,
		0.790721, 0.608265, 0.069097,
		38.914082, 45.277061, 51.693760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740128, 44.407307, 52.046700>,  <38.360577, 44.851276, 51.645393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740128, 44.407307, 52.046700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898800, 44.773369, 52.075371>,  <38.994003, 44.993008, 52.092571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898800, 44.773369, 52.075371>,  <38.740128, 44.407307, 52.046700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898800, 44.773369, 52.075371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166313, -0.148440, 0.974836,
		0.902765, -0.374778, -0.211085,
		0.396680, 0.915154, 0.071675,
		39.017803, 45.047916, 52.096874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333824, 44.357361, 52.391041>,  <38.740128, 44.407307, 52.046700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333824, 44.357361, 52.391041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268547, 44.749138, 52.438469>,  <39.229382, 44.984203, 52.466927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268547, 44.749138, 52.438469>,  <39.333824, 44.357361, 52.391041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268547, 44.749138, 52.438469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045827, -0.112529, 0.992591,
		0.985529, 0.167418, -0.026521,
		-0.163194, 0.979443, 0.118573,
		39.219589, 45.042973, 52.474041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877048, 44.608150, 52.872372>,  <39.333824, 44.357361, 52.391041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877048, 44.608150, 52.872372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589905, 44.885925, 52.892117>,  <39.417618, 45.052589, 52.903961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589905, 44.885925, 52.892117>,  <39.877048, 44.608150, 52.872372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589905, 44.885925, 52.892117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007943, -0.079064, 0.996838,
		0.696148, 0.715193, 0.062272,
		-0.717855, 0.694441, 0.049360,
		39.374550, 45.094257, 52.906925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137760, 44.961590, 53.380527>,  <39.877048, 44.608150, 52.872372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137760, 44.961590, 53.380527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749916, 45.054474, 53.349709>,  <39.517208, 45.110203, 53.331215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749916, 45.054474, 53.349709>,  <40.137760, 44.961590, 53.380527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749916, 45.054474, 53.349709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081871, -0.011181, 0.996580,
		0.230556, 0.972601, 0.029852,
		-0.969609, 0.232211, -0.077050,
		39.459034, 45.124138, 53.326595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951664, 45.506699, 53.950115>,  <40.137760, 44.961590, 53.380527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951664, 45.506699, 53.950115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633514, 45.302704, 53.819088>,  <39.442627, 45.180309, 53.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633514, 45.302704, 53.819088>,  <39.951664, 45.506699, 53.950115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633514, 45.302704, 53.819088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231270, -0.244204, 0.941742,
		-0.560265, 0.824792, 0.076290,
		-0.795372, -0.509982, -0.327569,
		39.394901, 45.149708, 53.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407825, 45.710934, 54.370399>,  <39.951664, 45.506699, 53.950115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407825, 45.710934, 54.370399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308540, 45.348991, 54.232056>,  <39.248970, 45.131824, 54.149048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308540, 45.348991, 54.232056>,  <39.407825, 45.710934, 54.370399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308540, 45.348991, 54.232056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175192, -0.309217, 0.934715,
		-0.952731, 0.292604, -0.081771,
		-0.248217, -0.904858, -0.345863,
		39.234074, 45.077534, 54.128296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911774, 45.676785, 54.764778>,  <39.407825, 45.710934, 54.370399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911774, 45.676785, 54.764778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986248, 45.301811, 54.647102>,  <39.030933, 45.076828, 54.576496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986248, 45.301811, 54.647102>,  <38.911774, 45.676785, 54.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986248, 45.301811, 54.647102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271577, -0.336866, 0.901536,
		-0.944235, -0.087959, -0.317306,
		0.186188, -0.937434, -0.294193,
		39.042103, 45.020580, 54.558846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361340, 45.260139, 55.019882>,  <38.911774, 45.676785, 54.764778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361340, 45.260139, 55.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639793, 44.980721, 54.953640>,  <38.806866, 44.813068, 54.913895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639793, 44.980721, 54.953640>,  <38.361340, 45.260139, 55.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639793, 44.980721, 54.953640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311050, -0.501381, 0.807382,
		-0.647030, -0.510533, -0.566312,
		0.696133, -0.698551, -0.165607,
		38.848633, 44.771156, 54.903957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989227, 44.611156, 55.198208>,  <38.361340, 45.260139, 55.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989227, 44.611156, 55.198208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383316, 44.549980, 55.229069>,  <38.619770, 44.513275, 55.247585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383316, 44.549980, 55.229069>,  <37.989227, 44.611156, 55.198208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383316, 44.549980, 55.229069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153596, -0.589332, 0.793156,
		-0.075834, -0.793283, -0.604112,
		0.985220, -0.152937, 0.077153,
		38.678883, 44.504101, 55.252216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164783, 43.863827, 55.031506>,  <37.989227, 44.611156, 55.198208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164783, 43.863827, 55.031506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460991, 44.004082, 55.260834>,  <38.638714, 44.088234, 55.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460991, 44.004082, 55.260834>,  <38.164783, 43.863827, 55.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460991, 44.004082, 55.260834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182274, -0.716333, 0.673531,
		0.646848, -0.603261, -0.466544,
		0.740516, 0.350633, 0.573317,
		38.683147, 44.109272, 55.432831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393017, 43.211151, 55.356884>,  <38.164783, 43.863827, 55.031506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393017, 43.211151, 55.356884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589722, 43.476151, 55.582901>,  <38.707745, 43.635151, 55.718510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589722, 43.476151, 55.582901>,  <38.393017, 43.211151, 55.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589722, 43.476151, 55.582901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074267, -0.614648, 0.785297,
		0.867556, -0.428144, -0.253060,
		0.491763, 0.662496, 0.565039,
		38.737251, 43.674900, 55.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952801, 42.829437, 55.782505>,  <38.393017, 43.211151, 55.356884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952801, 42.829437, 55.782505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851597, 43.159325, 55.984818>,  <38.790874, 43.357258, 56.106205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851597, 43.159325, 55.984818>,  <38.952801, 42.829437, 55.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851597, 43.159325, 55.984818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187510, -0.554684, 0.810657,
		0.949119, 0.110264, 0.294984,
		-0.253009, 0.824722, 0.505786,
		38.775696, 43.406742, 56.136555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349327, 42.618145, 56.401028>,  <38.952801, 42.829437, 55.782505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349327, 42.618145, 56.401028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087227, 42.903931, 56.499161>,  <38.929966, 43.075401, 56.558041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087227, 42.903931, 56.499161>,  <39.349327, 42.618145, 56.401028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087227, 42.903931, 56.499161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111850, -0.412947, 0.903861,
		0.747084, 0.564816, 0.350497,
		-0.655252, 0.714463, 0.245331,
		38.890652, 43.118271, 56.572762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417061, 42.889915, 57.042908>,  <39.349327, 42.618145, 56.401028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417061, 42.889915, 57.042908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036442, 43.004280, 56.997643>,  <38.808071, 43.072899, 56.970482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036442, 43.004280, 56.997643>,  <39.417061, 42.889915, 57.042908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036442, 43.004280, 56.997643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209397, -0.333016, 0.919376,
		0.225176, 0.898529, 0.376751,
		-0.951551, 0.285912, -0.113162,
		38.750977, 43.090054, 56.963696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210529, 43.053711, 57.639324>,  <39.417061, 42.889915, 57.042908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210529, 43.053711, 57.639324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852402, 42.992310, 57.472065>,  <38.637527, 42.955467, 57.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852402, 42.992310, 57.472065>,  <39.210529, 43.053711, 57.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852402, 42.992310, 57.472065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324582, -0.418065, 0.848450,
		-0.305055, 0.895353, 0.324475,
		-0.895314, -0.153505, -0.418149,
		38.583809, 42.946259, 57.346619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670609, 43.322456, 58.050606>,  <39.210529, 43.053711, 57.639324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670609, 43.322456, 58.050606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497940, 43.045357, 57.819519>,  <38.394337, 42.879097, 57.680866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497940, 43.045357, 57.819519>,  <38.670609, 43.322456, 58.050606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497940, 43.045357, 57.819519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451811, -0.388282, 0.803183,
		-0.780720, 0.607735, -0.145378,
		-0.431675, -0.692744, -0.577721,
		38.368439, 42.837532, 57.646202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001423, 43.344849, 58.268250>,  <38.670609, 43.322456, 58.050606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001423, 43.344849, 58.268250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021973, 42.997490, 58.070969>,  <38.034302, 42.789074, 57.952599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021973, 42.997490, 58.070969>,  <38.001423, 43.344849, 58.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021973, 42.997490, 58.070969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551601, -0.436365, 0.710860,
		-0.832524, 0.235527, -0.501428,
		0.051379, -0.868397, -0.493201,
		38.037388, 42.736969, 57.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283272, 42.968662, 58.348492>,  <38.001423, 43.344849, 58.268250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283272, 42.968662, 58.348492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519043, 42.673187, 58.217697>,  <37.660507, 42.495903, 58.139221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519043, 42.673187, 58.217697>,  <37.283272, 42.968662, 58.348492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519043, 42.673187, 58.217697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370712, -0.606977, 0.702959,
		-0.717736, -0.293129, -0.631609,
		0.589430, -0.738684, -0.326983,
		37.695873, 42.451584, 58.119602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904915, 42.339294, 58.142433>,  <37.283272, 42.968662, 58.348492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904915, 42.339294, 58.142433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270233, 42.211983, 58.244087>,  <37.489426, 42.135593, 58.305080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270233, 42.211983, 58.244087>,  <36.904915, 42.339294, 58.142433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270233, 42.211983, 58.244087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396264, -0.550137, 0.735068,
		-0.094148, -0.772040, -0.628562,
		0.913297, -0.318282, 0.254137,
		37.544224, 42.116497, 58.320328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821709, 41.648918, 58.438740>,  <36.904915, 42.339294, 58.142433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821709, 41.648918, 58.438740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184952, 41.759018, 58.564960>,  <37.402897, 41.825077, 58.640694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184952, 41.759018, 58.564960>,  <36.821709, 41.648918, 58.438740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184952, 41.759018, 58.564960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175506, -0.433991, 0.883657,
		0.380176, -0.857839, -0.345802,
		0.908110, 0.275254, 0.315549,
		37.457386, 41.841595, 58.659626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192036, 41.085480, 58.812824>,  <36.821709, 41.648918, 58.438740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192036, 41.085480, 58.812824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347645, 41.429703, 58.944344>,  <37.441010, 41.636234, 59.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347645, 41.429703, 58.944344>,  <37.192036, 41.085480, 58.812824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347645, 41.429703, 58.944344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225536, -0.257086, 0.939702,
		0.893195, -0.439719, 0.094074,
		0.389020, 0.860554, 0.328801,
		37.464352, 41.687870, 59.042984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070381, 40.288929, 58.747234>,  <37.192036, 41.085480, 58.812824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070381, 40.288929, 58.747234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817657, 40.043427, 58.557869>,  <36.666023, 39.896126, 58.444248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817657, 40.043427, 58.557869>,  <37.070381, 40.288929, 58.747234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817657, 40.043427, 58.557869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215628, 0.447483, -0.867908,
		0.744525, -0.650436, -0.150383,
		-0.631813, -0.613752, -0.473414,
		36.628113, 39.859303, 58.415844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429115, 39.986656, 58.104717>,  <37.070381, 40.288929, 58.747234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429115, 39.986656, 58.104717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043182, 39.955544, 58.004288>,  <36.811623, 39.936874, 57.944031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043182, 39.955544, 58.004288>,  <37.429115, 39.986656, 58.104717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043182, 39.955544, 58.004288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199663, 0.404373, -0.892534,
		0.170951, -0.911281, -0.374624,
		-0.964837, -0.077781, -0.251078,
		36.753731, 39.932209, 57.928963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413090, 39.552494, 57.524273>,  <37.429115, 39.986656, 58.104717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413090, 39.552494, 57.524273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063553, 39.745522, 57.500511>,  <36.853832, 39.861336, 57.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063553, 39.745522, 57.500511>,  <37.413090, 39.552494, 57.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063553, 39.745522, 57.500511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262962, 0.366299, -0.892567,
		-0.408961, -0.795585, -0.446985,
		-0.873843, 0.482565, -0.059407,
		36.801399, 39.890289, 57.482689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159203, 39.500717, 56.837551>,  <37.413090, 39.552494, 57.524273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159203, 39.500717, 56.837551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977943, 39.819801, 56.996708>,  <36.869186, 40.011250, 57.092201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977943, 39.819801, 56.996708>,  <37.159203, 39.500717, 56.837551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977943, 39.819801, 56.996708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133838, 0.502175, -0.854346,
		-0.881331, -0.333892, -0.334323,
		-0.453147, 0.797707, 0.397895,
		36.841999, 40.059113, 57.116077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635536, 39.657589, 56.368847>,  <37.159203, 39.500717, 56.837551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635536, 39.657589, 56.368847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664955, 40.005157, 56.564632>,  <36.682606, 40.213699, 56.682102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664955, 40.005157, 56.564632>,  <36.635536, 39.657589, 56.368847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664955, 40.005157, 56.564632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005647, 0.490422, -0.871467,
		-0.997276, 0.066860, 0.031163,
		0.073549, 0.868917, 0.489463,
		36.687019, 40.265831, 56.711472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282089, 40.104324, 55.989212>,  <36.635536, 39.657589, 56.368847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282089, 40.104324, 55.989212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492966, 40.362694, 56.210064>,  <36.619492, 40.517715, 56.342575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492966, 40.362694, 56.210064>,  <36.282089, 40.104324, 55.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492966, 40.362694, 56.210064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092812, 0.602105, -0.793004,
		-0.844663, 0.469309, 0.257475,
		0.527191, 0.645925, 0.552133,
		36.651123, 40.556473, 56.375706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949043, 40.806061, 55.932178>,  <36.282089, 40.104324, 55.989212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949043, 40.806061, 55.932178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336433, 40.836922, 56.026917>,  <36.568867, 40.855438, 56.083759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336433, 40.836922, 56.026917>,  <35.949043, 40.806061, 55.932178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336433, 40.836922, 56.026917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154739, 0.558774, -0.814756,
		-0.195201, 0.825724, 0.529223,
		0.968479, 0.077150, 0.236845,
		36.626976, 40.860065, 56.097969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995777, 41.478340, 55.872997>,  <35.949043, 40.806061, 55.932178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995777, 41.478340, 55.872997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354656, 41.303017, 55.851414>,  <36.569984, 41.197823, 55.838463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354656, 41.303017, 55.851414>,  <35.995777, 41.478340, 55.872997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354656, 41.303017, 55.851414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107484, 0.335248, -0.935979,
		0.428341, 0.833962, 0.347896,
		0.897202, -0.438311, -0.053963,
		36.623817, 41.171524, 55.835224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326366, 41.953159, 55.549084>,  <35.995777, 41.478340, 55.872997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326366, 41.953159, 55.549084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581444, 41.647675, 55.508911>,  <36.734489, 41.464382, 55.484806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581444, 41.647675, 55.508911>,  <36.326366, 41.953159, 55.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581444, 41.647675, 55.508911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245368, 0.324990, -0.913332,
		0.730168, 0.557780, 0.394635,
		0.637691, -0.763716, -0.100436,
		36.772751, 41.418560, 55.478779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027042, 42.329323, 55.443504>,  <36.326366, 41.953159, 55.549084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027042, 42.329323, 55.443504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041542, 41.952866, 55.309074>,  <37.050240, 41.726994, 55.228416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041542, 41.952866, 55.309074>,  <37.027042, 42.329323, 55.443504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041542, 41.952866, 55.309074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259447, 0.333624, -0.906302,
		0.965077, -0.054342, 0.256268,
		0.036246, -0.941139, -0.336072,
		37.052418, 41.670525, 55.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649899, 42.222130, 55.104744>,  <37.027042, 42.329323, 55.443504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649899, 42.222130, 55.104744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402367, 41.944801, 54.957039>,  <37.253849, 41.778404, 54.868416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402367, 41.944801, 54.957039>,  <37.649899, 42.222130, 55.104744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402367, 41.944801, 54.957039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364877, 0.162583, -0.916750,
		0.695639, -0.702048, 0.152366,
		-0.618831, -0.693322, -0.369261,
		37.216717, 41.736805, 54.846260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046364, 41.936047, 54.577301>,  <37.649899, 42.222130, 55.104744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046364, 41.936047, 54.577301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674294, 41.814468, 54.494949>,  <37.451050, 41.741524, 54.445538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674294, 41.814468, 54.494949>,  <38.046364, 41.936047, 54.577301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674294, 41.814468, 54.494949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183399, 0.101064, -0.977830,
		0.318010, -0.947315, -0.038265,
		-0.930179, -0.303942, -0.205876,
		37.395241, 41.723286, 54.433186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123238, 41.413040, 54.156754>,  <38.046364, 41.936047, 54.577301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123238, 41.413040, 54.156754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761791, 41.572083, 54.093025>,  <37.544922, 41.667507, 54.054787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761791, 41.572083, 54.093025>,  <38.123238, 41.413040, 54.156754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761791, 41.572083, 54.093025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200061, 0.062876, -0.977764,
		-0.378746, -0.915400, -0.136361,
		-0.903619, 0.397605, -0.159322,
		37.490707, 41.691364, 54.045227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858582, 41.073158, 53.521435>,  <38.123238, 41.413040, 54.156754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858582, 41.073158, 53.521435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657242, 41.417519, 53.551048>,  <37.536438, 41.624134, 53.568817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657242, 41.417519, 53.551048>,  <37.858582, 41.073158, 53.521435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657242, 41.417519, 53.551048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012698, 0.093043, -0.995581,
		-0.863990, -0.500185, -0.057765,
		-0.503350, 0.860905, 0.074037,
		37.506237, 41.675789, 53.573257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367065, 41.050240, 52.983322>,  <37.858582, 41.073158, 53.521435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367065, 41.050240, 52.983322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414413, 41.432571, 53.090931>,  <37.442822, 41.661972, 53.155499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414413, 41.432571, 53.090931>,  <37.367065, 41.050240, 52.983322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414413, 41.432571, 53.090931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042287, 0.275535, -0.960360,
		-0.992069, 0.102304, 0.073035,
		0.118372, 0.955832, 0.269024,
		37.449924, 41.719322, 53.171638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882591, 41.358906, 52.465153>,  <37.367065, 41.050240, 52.983322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882591, 41.358906, 52.465153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116592, 41.644371, 52.619270>,  <37.256992, 41.815651, 52.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116592, 41.644371, 52.619270>,  <36.882591, 41.358906, 52.465153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116592, 41.644371, 52.619270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202805, 0.331256, -0.921487,
		-0.785266, 0.617212, 0.049050,
		0.585002, 0.713665, 0.385298,
		37.292091, 41.858471, 52.734859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709648, 41.914448, 52.211292>,  <36.882591, 41.358906, 52.465153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709648, 41.914448, 52.211292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076809, 42.034706, 52.314880>,  <37.297104, 42.106861, 52.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076809, 42.034706, 52.314880>,  <36.709648, 41.914448, 52.211292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076809, 42.034706, 52.314880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094985, 0.467196, -0.879037,
		-0.385270, 0.831468, 0.400284,
		0.917902, 0.300646, 0.258974,
		37.352180, 42.124901, 52.392574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707050, 42.618526, 52.022820>,  <36.709648, 41.914448, 52.211292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707050, 42.618526, 52.022820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095646, 42.526077, 52.043930>,  <37.328804, 42.470608, 52.056595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095646, 42.526077, 52.043930>,  <36.707050, 42.618526, 52.022820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095646, 42.526077, 52.043930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122835, 0.300336, -0.945891,
		0.202766, 0.925409, 0.320164,
		0.971493, -0.231122, 0.052774,
		37.387093, 42.456741, 52.059761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056358, 43.311310, 51.831306>,  <36.707050, 42.618526, 52.022820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056358, 43.311310, 51.831306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309219, 43.006317, 51.776165>,  <37.460938, 42.823322, 51.743080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309219, 43.006317, 51.776165>,  <37.056358, 43.311310, 51.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309219, 43.006317, 51.776165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177898, 0.315978, -0.931939,
		0.754146, 0.564604, 0.335391,
		0.632152, -0.762483, -0.137852,
		37.498863, 42.777573, 51.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685665, 43.694534, 51.630402>,  <37.056358, 43.311310, 51.831306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685665, 43.694534, 51.630402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726364, 43.314896, 51.511158>,  <37.750786, 43.087112, 51.439613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726364, 43.314896, 51.511158>,  <37.685665, 43.694534, 51.630402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726364, 43.314896, 51.511158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388767, 0.313769, -0.866262,
		0.915700, -0.027750, 0.400902,
		0.101751, -0.949094, -0.298107,
		37.756889, 43.030167, 51.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385826, 43.699333, 51.451401>,  <37.685665, 43.694534, 51.630402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385826, 43.699333, 51.451401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189369, 43.400856, 51.271637>,  <38.071495, 43.221767, 51.163776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189369, 43.400856, 51.271637>,  <38.385826, 43.699333, 51.451401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189369, 43.400856, 51.271637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442139, 0.230976, -0.866697,
		0.750529, -0.624373, 0.216480,
		-0.491141, -0.746196, -0.449414,
		38.042027, 43.176998, 51.136814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869503, 43.426594, 50.952583>,  <38.385826, 43.699333, 51.451401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869503, 43.426594, 50.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507721, 43.304260, 50.833637>,  <38.290653, 43.230858, 50.762268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507721, 43.304260, 50.833637>,  <38.869503, 43.426594, 50.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507721, 43.304260, 50.833637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263233, 0.148384, -0.953253,
		0.335663, -0.940450, -0.053701,
		-0.904455, -0.305836, -0.297365,
		38.236385, 43.212509, 50.744427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079170, 43.017708, 50.397480>,  <38.869503, 43.426594, 50.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079170, 43.017708, 50.397480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684799, 43.074821, 50.362705>,  <38.448177, 43.109089, 50.341839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684799, 43.074821, 50.362705>,  <39.079170, 43.017708, 50.397480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684799, 43.074821, 50.362705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128142, 0.311526, -0.941558,
		-0.107356, -0.939449, -0.325439,
		-0.985928, 0.142784, -0.086939,
		38.389019, 43.117657, 50.336624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885063, 42.727421, 49.811081>,  <39.079170, 43.017708, 50.397480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885063, 42.727421, 49.811081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591377, 42.994034, 49.862732>,  <38.415165, 43.153999, 49.893723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591377, 42.994034, 49.862732>,  <38.885063, 42.727421, 49.811081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591377, 42.994034, 49.862732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078586, 0.272348, -0.958984,
		-0.674357, -0.693950, -0.252341,
		-0.734212, 0.666528, 0.129126,
		38.371113, 43.193993, 49.901470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472000, 42.685116, 49.213726>,  <38.885063, 42.727421, 49.811081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472000, 42.685116, 49.213726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378136, 43.047668, 49.354248>,  <38.321819, 43.265198, 49.438560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378136, 43.047668, 49.354248>,  <38.472000, 42.685116, 49.213726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378136, 43.047668, 49.354248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006131, 0.360008, -0.932929,
		-0.972059, -0.221074, -0.078922,
		-0.234658, 0.906378, 0.351304,
		38.307739, 43.319580, 49.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950157, 42.918217, 48.786514>,  <38.472000, 42.685116, 49.213726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950157, 42.918217, 48.786514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097084, 43.249268, 48.956276>,  <38.185238, 43.447899, 49.058132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097084, 43.249268, 48.956276>,  <37.950157, 42.918217, 48.786514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097084, 43.249268, 48.956276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110792, 0.414119, -0.903455,
		-0.923475, 0.378871, 0.060417,
		0.367313, 0.827624, 0.424404,
		38.207279, 43.497555, 49.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610924, 43.469379, 48.437225>,  <37.950157, 42.918217, 48.786514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610924, 43.469379, 48.437225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934723, 43.626808, 48.611496>,  <38.129002, 43.721264, 48.716061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934723, 43.626808, 48.611496>,  <37.610924, 43.469379, 48.437225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934723, 43.626808, 48.611496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283556, 0.387706, -0.877086,
		-0.514112, 0.833538, 0.202247,
		0.809497, 0.393572, 0.435679,
		38.177570, 43.744881, 48.742199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683422, 44.111485, 48.054218>,  <37.610924, 43.469379, 48.437225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683422, 44.111485, 48.054218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037983, 44.046707, 48.227684>,  <38.250721, 44.007839, 48.331764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037983, 44.046707, 48.227684>,  <37.683422, 44.111485, 48.054218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037983, 44.046707, 48.227684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462845, 0.293538, -0.836427,
		0.008159, 0.942130, 0.335149,
		0.886402, -0.161947, 0.433665,
		38.303902, 43.998123, 48.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131927, 44.756680, 47.996555>,  <37.683422, 44.111485, 48.054218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131927, 44.756680, 47.996555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357254, 44.429947, 48.046288>,  <38.492451, 44.233906, 48.076126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357254, 44.429947, 48.046288>,  <38.131927, 44.756680, 47.996555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357254, 44.429947, 48.046288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502232, 0.219025, -0.836535,
		0.656078, 0.533676, 0.533620,
		0.563315, -0.816834, 0.124331,
		38.526249, 44.184898, 48.083588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831261, 44.911671, 47.862236>,  <38.131927, 44.756680, 47.996555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831261, 44.911671, 47.862236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839233, 44.512665, 47.835205>,  <38.844017, 44.273262, 47.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839233, 44.512665, 47.835205>,  <38.831261, 44.911671, 47.862236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839233, 44.512665, 47.835205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622863, 0.065260, -0.779604,
		0.782077, -0.026550, 0.622616,
		0.019933, -0.997515, -0.067575,
		38.845215, 44.213409, 47.814934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550812, 44.700108, 47.877197>,  <38.831261, 44.911671, 47.862236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550812, 44.700108, 47.877197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334339, 44.403709, 47.718174>,  <39.204456, 44.225872, 47.622761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334339, 44.403709, 47.718174>,  <39.550812, 44.700108, 47.877197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334339, 44.403709, 47.718174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632180, -0.046761, -0.773409,
		0.554499, -0.669885, 0.493746,
		-0.541183, -0.740991, -0.397559,
		39.171986, 44.181412, 47.598907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055870, 44.337582, 47.513371>,  <39.550812, 44.700108, 47.877197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055870, 44.337582, 47.513371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711685, 44.180313, 47.383739>,  <39.505177, 44.085953, 47.305962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711685, 44.180313, 47.383739>,  <40.055870, 44.337582, 47.513371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711685, 44.180313, 47.383739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400720, -0.129353, -0.907023,
		0.314695, -0.910321, 0.268855,
		-0.860459, -0.393171, -0.324078,
		39.453548, 44.062363, 47.286514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165348, 43.660721, 47.222355>,  <40.055870, 44.337582, 47.513371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165348, 43.660721, 47.222355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852814, 43.823036, 47.032681>,  <39.665295, 43.920425, 46.918877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852814, 43.823036, 47.032681>,  <40.165348, 43.660721, 47.222355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852814, 43.823036, 47.032681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542730, 0.066625, -0.837261,
		-0.308157, -0.911536, -0.272289,
		-0.781335, 0.405787, -0.474187,
		39.618412, 43.944771, 46.890423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255058, 43.541889, 46.582680>,  <40.165348, 43.660721, 47.222355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255058, 43.541889, 46.582680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948357, 43.782555, 46.493160>,  <39.764336, 43.926956, 46.439449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948357, 43.782555, 46.493160>,  <40.255058, 43.541889, 46.582680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948357, 43.782555, 46.493160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327829, 0.067258, -0.942340,
		-0.551921, -0.795911, -0.248814,
		-0.766754, 0.601666, -0.223801,
		39.718330, 43.963055, 46.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852287, 43.189621, 46.018490>,  <40.255058, 43.541889, 46.582680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852287, 43.189621, 46.018490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805733, 43.586761, 46.029110>,  <39.777802, 43.825047, 46.035480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805733, 43.586761, 46.029110>,  <39.852287, 43.189621, 46.018490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805733, 43.586761, 46.029110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327836, 0.063638, -0.942589,
		-0.937538, -0.101001, -0.332898,
		-0.116387, 0.992849, 0.026551,
		39.770817, 43.884617, 46.037075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485359, 43.337822, 45.485493>,  <39.852287, 43.189621, 46.018490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485359, 43.337822, 45.485493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669273, 43.681190, 45.576443>,  <39.779621, 43.887211, 45.631012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669273, 43.681190, 45.576443>,  <39.485359, 43.337822, 45.485493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669273, 43.681190, 45.576443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333250, 0.070544, -0.940196,
		-0.823128, 0.508065, -0.253635,
		0.459788, 0.858425, 0.227379,
		39.807209, 43.938717, 45.644657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241104, 43.709778, 44.917225>,  <39.485359, 43.337822, 45.485493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241104, 43.709778, 44.917225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570206, 43.874207, 45.074249>,  <39.767666, 43.972862, 45.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570206, 43.874207, 45.074249>,  <39.241104, 43.709778, 44.917225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570206, 43.874207, 45.074249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398983, 0.074239, -0.913948,
		-0.404840, 0.908576, -0.102930,
		0.822750, 0.411070, 0.392561,
		39.817032, 43.997528, 45.192017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223591, 44.350555, 44.589462>,  <39.241104, 43.709778, 44.917225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223591, 44.350555, 44.589462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600769, 44.298805, 44.712181>,  <39.827076, 44.267754, 44.785812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600769, 44.298805, 44.712181>,  <39.223591, 44.350555, 44.589462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600769, 44.298805, 44.712181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323840, 0.142183, -0.935367,
		0.077391, 0.981349, 0.175967,
		0.942941, -0.129374, 0.306796,
		39.883652, 44.259995, 44.804218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663467, 44.854340, 44.250488>,  <39.223591, 44.350555, 44.589462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663467, 44.854340, 44.250488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950317, 44.612175, 44.388592>,  <40.122429, 44.466877, 44.471455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950317, 44.612175, 44.388592>,  <39.663467, 44.854340, 44.250488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950317, 44.612175, 44.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508653, 0.115985, -0.853123,
		0.476442, 0.787419, 0.391119,
		0.717130, -0.605407, 0.345263,
		40.165455, 44.430553, 44.492172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290623, 45.177597, 44.077900>,  <39.663467, 44.854340, 44.250488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290623, 45.177597, 44.077900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399918, 44.796158, 44.128494>,  <40.465492, 44.567295, 44.158852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399918, 44.796158, 44.128494>,  <40.290623, 45.177597, 44.077900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399918, 44.796158, 44.128494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618649, 0.073508, -0.782221,
		0.736625, 0.291980, 0.610026,
		0.273235, -0.953595, 0.126485,
		40.481888, 44.510078, 44.166439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.825371, 38.952366, 52.719894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.055046, 39.235794, 52.883961>,  <42.192852, 39.405849, 52.982399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.055046, 39.235794, 52.883961>,  <41.825371, 38.952366, 52.719894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055046, 39.235794, 52.883961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264311, 0.313730, -0.911983,
		-0.774884, 0.632062, -0.007142,
		0.574189, 0.708569, 0.410166,
		42.227303, 39.448364, 53.007011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641621, 39.540806, 52.394775>,  <41.825371, 38.952366, 52.719894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641621, 39.540806, 52.394775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.995975, 39.651207, 52.543922>,  <42.208588, 39.717449, 52.633411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.995975, 39.651207, 52.543922>,  <41.641621, 39.540806, 52.394775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995975, 39.651207, 52.543922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218881, 0.459979, -0.860529,
		-0.409022, 0.843943, 0.347076,
		0.885885, 0.276007, 0.372865,
		42.261742, 39.734009, 52.655781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743183, 40.270481, 52.233727>,  <41.641621, 39.540806, 52.394775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743183, 40.270481, 52.233727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.108692, 40.122482, 52.300812>,  <42.327995, 40.033684, 52.341064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.108692, 40.122482, 52.300812>,  <41.743183, 40.270481, 52.233727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108692, 40.122482, 52.300812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353610, 0.521228, -0.776712,
		0.199960, 0.769043, 0.607116,
		0.913770, -0.369993, 0.167717,
		42.382824, 40.011486, 52.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108185, 40.768894, 51.969273>,  <41.743183, 40.270481, 52.233727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108185, 40.768894, 51.969273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.348808, 40.449402, 51.974129>,  <42.493183, 40.257706, 51.977043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.348808, 40.449402, 51.974129>,  <42.108185, 40.768894, 51.969273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348808, 40.449402, 51.974129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398054, 0.286551, -0.871460,
		0.692588, 0.529067, 0.490317,
		0.601561, -0.798735, 0.012136,
		42.529278, 40.209782, 51.977768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750298, 41.011398, 51.714924>,  <42.108185, 40.768894, 51.969273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750298, 41.011398, 51.714924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.770580, 40.617508, 51.648308>,  <42.782749, 40.381172, 51.608337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.770580, 40.617508, 51.648308>,  <42.750298, 41.011398, 51.714924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770580, 40.617508, 51.648308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461171, 0.170998, -0.870679,
		0.885861, -0.032650, 0.462800,
		0.050710, -0.984730, -0.166538,
		42.785793, 40.322090, 51.598347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421459, 40.857639, 51.544273>,  <42.750298, 41.011398, 51.714924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421459, 40.857639, 51.544273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247322, 40.530472, 51.393814>,  <43.142838, 40.334171, 51.303539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247322, 40.530472, 51.393814>,  <43.421459, 40.857639, 51.544273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247322, 40.530472, 51.393814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427212, 0.180085, -0.886036,
		0.792442, -0.546426, 0.271025,
		-0.435345, -0.817917, -0.376147,
		43.116718, 40.285095, 51.280972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909920, 40.468571, 51.191521>,  <43.421459, 40.857639, 51.544273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909920, 40.468571, 51.191521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.581703, 40.301628, 51.035301>,  <43.384773, 40.201462, 50.941570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.581703, 40.301628, 51.035301>,  <43.909920, 40.468571, 51.191521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581703, 40.301628, 51.035301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380371, 0.111309, -0.918111,
		0.426654, -0.901899, 0.067418,
		-0.820539, -0.417360, -0.390547,
		43.335541, 40.176422, 50.918137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160622, 40.022503, 50.685516>,  <43.909920, 40.468571, 51.191521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160622, 40.022503, 50.685516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.779755, 40.080933, 50.578156>,  <43.551235, 40.115990, 50.513741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.779755, 40.080933, 50.578156>,  <44.160622, 40.022503, 50.685516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779755, 40.080933, 50.578156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299517, 0.272102, -0.914467,
		-0.060549, -0.951117, -0.302839,
		-0.952168, 0.146075, -0.268400,
		43.494102, 40.124756, 50.497635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034496, 39.624660, 50.075390>,  <44.160622, 40.022503, 50.685516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034496, 39.624660, 50.075390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.726734, 39.880157, 50.077381>,  <43.542076, 40.033455, 50.078575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.726734, 39.880157, 50.077381>,  <44.034496, 39.624660, 50.075390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726734, 39.880157, 50.077381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051809, 0.070169, -0.996189,
		-0.636660, -0.766212, -0.087081,
		-0.769402, 0.638745, 0.004977,
		43.495914, 40.071781, 50.078873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614456, 39.400822, 49.509251>,  <44.034496, 39.624660, 50.075390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614456, 39.400822, 49.509251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.539154, 39.787064, 49.580994>,  <43.493973, 40.018810, 49.624039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.539154, 39.787064, 49.580994>,  <43.614456, 39.400822, 49.509251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539154, 39.787064, 49.580994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038936, 0.189818, -0.981047,
		-0.981349, -0.177699, -0.073330,
		-0.188250, 0.965605, 0.179359,
		43.482677, 40.076744, 49.634800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111015, 39.506256, 49.149410>,  <43.614456, 39.400822, 49.509251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111015, 39.506256, 49.149410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.274651, 39.868591, 49.193405>,  <43.372833, 40.085995, 49.219803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.274651, 39.868591, 49.193405>,  <43.111015, 39.506256, 49.149410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274651, 39.868591, 49.193405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177813, 0.197356, -0.964071,
		-0.895002, 0.374834, 0.241807,
		0.409089, 0.905842, 0.109984,
		43.397377, 40.140343, 49.226398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749477, 39.951504, 48.807652>,  <43.111015, 39.506256, 49.149410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749477, 39.951504, 48.807652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.079308, 40.176773, 48.829231>,  <43.277206, 40.311935, 48.842178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.079308, 40.176773, 48.829231>,  <42.749477, 39.951504, 48.807652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079308, 40.176773, 48.829231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201002, 0.380760, -0.902563,
		-0.528843, 0.733387, 0.427164,
		0.824575, 0.563174, 0.053950,
		43.326679, 40.345726, 48.845417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496727, 40.695648, 48.688274>,  <42.749477, 39.951504, 48.807652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496727, 40.695648, 48.688274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.877899, 40.631310, 48.585480>,  <43.106602, 40.592705, 48.523804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.877899, 40.631310, 48.585480>,  <42.496727, 40.695648, 48.688274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877899, 40.631310, 48.585480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175795, 0.397449, -0.900628,
		0.247005, 0.903417, 0.350466,
		0.952935, -0.160849, -0.256988,
		43.163780, 40.583054, 48.508385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720158, 41.329243, 48.367069>,  <42.496727, 40.695648, 48.688274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720158, 41.329243, 48.367069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.012375, 41.086754, 48.241341>,  <43.187706, 40.941261, 48.165901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.012375, 41.086754, 48.241341>,  <42.720158, 41.329243, 48.367069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012375, 41.086754, 48.241341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194264, 0.256781, -0.946744,
		0.654646, 0.752704, 0.069824,
		0.730548, -0.606218, -0.314324,
		43.231541, 40.904888, 48.147045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106361, 41.763062, 48.100155>,  <42.720158, 41.329243, 48.367069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106361, 41.763062, 48.100155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.173897, 41.401260, 47.943504>,  <43.214417, 41.184181, 47.849514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.173897, 41.401260, 47.943504>,  <43.106361, 41.763062, 48.100155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173897, 41.401260, 47.943504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055512, 0.387975, -0.919996,
		0.984080, 0.177068, 0.015293,
		0.168835, -0.904501, -0.391628,
		43.224548, 41.129910, 47.826015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578842, 41.924397, 47.650429>,  <43.106361, 41.763062, 48.100155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578842, 41.924397, 47.650429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.422211, 41.572784, 47.541634>,  <43.328232, 41.361816, 47.476357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.422211, 41.572784, 47.541634>,  <43.578842, 41.924397, 47.650429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422211, 41.572784, 47.541634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106641, 0.336954, -0.935462,
		0.913943, -0.337304, -0.225686,
		-0.391581, -0.879026, -0.271986,
		43.304737, 41.309078, 47.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869045, 41.878506, 46.990856>,  <43.578842, 41.924397, 47.650429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869045, 41.878506, 46.990856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.568855, 41.614426, 47.003059>,  <43.388741, 41.455978, 47.010380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.568855, 41.614426, 47.003059>,  <43.869045, 41.878506, 46.990856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568855, 41.614426, 47.003059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353403, 0.361860, -0.862649,
		0.558482, -0.658174, -0.504881,
		-0.750470, -0.660200, 0.030508,
		43.343716, 41.416367, 47.012211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805885, 41.635288, 46.343746>,  <43.869045, 41.878506, 46.990856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805885, 41.635288, 46.343746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.442757, 41.592735, 46.506004>,  <43.224880, 41.567204, 46.603359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.442757, 41.592735, 46.506004>,  <43.805885, 41.635288, 46.343746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442757, 41.592735, 46.506004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403187, 0.487483, -0.774467,
		-0.115359, -0.866627, -0.485437,
		-0.907817, -0.106381, 0.405649,
		43.170410, 41.560822, 46.627701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391315, 41.531879, 45.815796>,  <43.805885, 41.635288, 46.343746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391315, 41.531879, 45.815796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127983, 41.638367, 46.097427>,  <42.969986, 41.702259, 46.266407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127983, 41.638367, 46.097427>,  <43.391315, 41.531879, 45.815796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127983, 41.638367, 46.097427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421373, 0.644739, -0.637774,
		-0.623738, -0.716546, -0.312270,
		-0.658327, 0.266222, 0.704081,
		42.930485, 41.718235, 46.308651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772907, 41.304913, 45.620609>,  <43.391315, 41.531879, 45.815796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772907, 41.304913, 45.620609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726944, 41.622734, 45.859100>,  <42.699368, 41.813427, 46.002193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.726944, 41.622734, 45.859100>,  <42.772907, 41.304913, 45.620609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726944, 41.622734, 45.859100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477700, 0.482048, -0.734461,
		-0.870976, -0.369212, 0.324166,
		-0.114908, 0.794552, 0.596224,
		42.692471, 41.861099, 46.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081219, 41.555840, 45.500683>,  <42.772907, 41.304913, 45.620609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081219, 41.555840, 45.500683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.247124, 41.863770, 45.694733>,  <42.346668, 42.048527, 45.811161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.247124, 41.863770, 45.694733>,  <42.081219, 41.555840, 45.500683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247124, 41.863770, 45.694733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333598, 0.624671, -0.706044,
		-0.846572, 0.131005, 0.515901,
		0.414764, 0.769821, 0.485126,
		42.371552, 42.094715, 45.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642494, 42.103806, 45.510670>,  <42.081219, 41.555840, 45.500683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642494, 42.103806, 45.510670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996510, 42.283913, 45.557945>,  <42.208920, 42.391979, 45.586311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996510, 42.283913, 45.557945>,  <41.642494, 42.103806, 45.510670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996510, 42.283913, 45.557945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219183, 0.627032, -0.747523,
		-0.410698, 0.635678, 0.653637,
		0.885035, 0.450272, 0.118191,
		42.262020, 42.418995, 45.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235828, 41.911575, 44.939339>,  <41.642494, 42.103806, 45.510670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235828, 41.911575, 44.939339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844864, 41.886055, 44.858749>,  <40.610283, 41.870743, 44.810394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844864, 41.886055, 44.858749>,  <41.235828, 41.911575, 44.939339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844864, 41.886055, 44.858749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200906, -0.015254, 0.979492,
		-0.065568, 0.997846, 0.002091,
		-0.977414, -0.063803, -0.201473,
		40.551640, 41.866913, 44.798309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915016, 42.369125, 45.399555>,  <41.235828, 41.911575, 44.939339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915016, 42.369125, 45.399555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638397, 42.100296, 45.293659>,  <40.472427, 41.938999, 45.230122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638397, 42.100296, 45.293659>,  <40.915016, 42.369125, 45.399555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638397, 42.100296, 45.293659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253398, -0.117495, 0.960200,
		-0.676428, 0.731106, -0.089048,
		-0.691545, -0.672071, -0.264738,
		40.430935, 41.898674, 45.214237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252522, 42.452568, 45.742928>,  <40.915016, 42.369125, 45.399555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252522, 42.452568, 45.742928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.256500, 42.064270, 45.646961>,  <40.258888, 41.831291, 45.589382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.256500, 42.064270, 45.646961>,  <40.252522, 42.452568, 45.742928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256500, 42.064270, 45.646961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278693, -0.233110, 0.931660,
		-0.960329, 0.057590, -0.272859,
		0.009951, -0.970744, -0.239912,
		40.259487, 41.773048, 45.574989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797520, 42.194298, 46.183502>,  <40.252522, 42.452568, 45.742928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797520, 42.194298, 46.183502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937302, 41.839783, 46.061924>,  <40.021172, 41.627075, 45.988976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937302, 41.839783, 46.061924>,  <39.797520, 42.194298, 46.183502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937302, 41.839783, 46.061924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233192, -0.396461, 0.887941,
		-0.907471, -0.239418, -0.345219,
		0.349455, -0.886283, -0.303946,
		40.042137, 41.573898, 45.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342651, 41.686016, 46.268486>,  <39.797520, 42.194298, 46.183502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342651, 41.686016, 46.268486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645615, 41.430283, 46.215446>,  <39.827393, 41.276840, 46.183624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645615, 41.430283, 46.215446>,  <39.342651, 41.686016, 46.268486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645615, 41.430283, 46.215446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276320, -0.497846, 0.822069,
		-0.591592, -0.586002, -0.553734,
		0.757408, -0.639337, -0.132598,
		39.872837, 41.238483, 46.175667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068901, 41.052948, 46.399895>,  <39.342651, 41.686016, 46.268486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068901, 41.052948, 46.399895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463394, 41.014923, 46.454021>,  <39.700089, 40.992107, 46.486496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463394, 41.014923, 46.454021>,  <39.068901, 41.052948, 46.399895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463394, 41.014923, 46.454021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163593, -0.441165, 0.882389,
		-0.024186, -0.892377, -0.450643,
		0.986232, -0.095063, 0.135316,
		39.759262, 40.986404, 46.494617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123264, 40.363201, 46.569523>,  <39.068901, 41.052948, 46.399895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123264, 40.363201, 46.569523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463776, 40.520218, 46.708801>,  <39.668083, 40.614429, 46.792366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463776, 40.520218, 46.708801>,  <39.123264, 40.363201, 46.569523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463776, 40.520218, 46.708801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117917, -0.503495, 0.855914,
		0.511298, -0.769676, -0.382325,
		0.851276, 0.392544, 0.348194,
		39.719158, 40.637981, 46.813259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333187, 39.897072, 46.972775>,  <39.123264, 40.363201, 46.569523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333187, 39.897072, 46.972775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560303, 40.195747, 47.111382>,  <39.696571, 40.374954, 47.194546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560303, 40.195747, 47.111382>,  <39.333187, 39.897072, 46.972775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560303, 40.195747, 47.111382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070331, -0.463412, 0.883347,
		0.820166, -0.477182, -0.315634,
		0.567786, 0.746691, 0.346514,
		39.730640, 40.419754, 47.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974728, 39.642014, 47.291134>,  <39.333187, 39.897072, 46.972775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974728, 39.642014, 47.291134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977665, 40.003334, 47.462708>,  <39.979427, 40.220127, 47.565651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977665, 40.003334, 47.462708>,  <39.974728, 39.642014, 47.291134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977665, 40.003334, 47.462708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236130, -0.418385, 0.877038,
		0.971694, 0.094841, -0.216372,
		0.007348, 0.903304, 0.428937,
		39.979870, 40.274326, 47.591389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556816, 39.780930, 47.844509>,  <39.974728, 39.642014, 47.291134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556816, 39.780930, 47.844509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258751, 40.029625, 47.940990>,  <40.079910, 40.178841, 47.998878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258751, 40.029625, 47.940990>,  <40.556816, 39.780930, 47.844509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258751, 40.029625, 47.940990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003280, -0.365095, 0.930964,
		0.666876, 0.692928, 0.274094,
		-0.745162, 0.621737, 0.241200,
		40.035202, 40.216145, 48.013351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798458, 40.174805, 48.410545>,  <40.556816, 39.780930, 47.844509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798458, 40.174805, 48.410545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401840, 40.215912, 48.442215>,  <40.163868, 40.240578, 48.461216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401840, 40.215912, 48.442215>,  <40.798458, 40.174805, 48.410545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401840, 40.215912, 48.442215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044353, -0.305009, 0.951316,
		0.121918, 0.946788, 0.297873,
		-0.991549, 0.102771, 0.079179,
		40.104374, 40.246742, 48.465969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642941, 40.638538, 48.929710>,  <40.798458, 40.174805, 48.410545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642941, 40.638538, 48.929710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305279, 40.430298, 48.878532>,  <40.102680, 40.305351, 48.847824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305279, 40.430298, 48.878532>,  <40.642941, 40.638538, 48.929710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305279, 40.430298, 48.878532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044326, -0.305622, 0.951121,
		-0.534260, 0.797225, 0.281069,
		-0.844158, -0.520604, -0.127944,
		40.052032, 40.274117, 48.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271832, 40.776722, 49.555901>,  <40.642941, 40.638538, 48.929710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271832, 40.776722, 49.555901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136627, 40.437614, 49.392422>,  <40.055504, 40.234150, 49.294334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136627, 40.437614, 49.392422>,  <40.271832, 40.776722, 49.555901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136627, 40.437614, 49.392422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096090, -0.400901, 0.911068,
		-0.936222, 0.347227, 0.054048,
		-0.338015, -0.847769, -0.408697,
		40.035221, 40.183285, 49.269814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653275, 40.520931, 49.828522>,  <40.271832, 40.776722, 49.555901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653275, 40.520931, 49.828522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780567, 40.175659, 49.671730>,  <39.856941, 39.968494, 49.577656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780567, 40.175659, 49.671730>,  <39.653275, 40.520931, 49.828522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780567, 40.175659, 49.671730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098193, -0.441265, 0.891988,
		-0.942915, -0.245366, -0.225181,
		0.318228, -0.863180, -0.391982,
		39.876034, 39.916706, 49.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200375, 39.854691, 50.052628>,  <39.653275, 40.520931, 49.828522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200375, 39.854691, 50.052628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527138, 39.662888, 49.924419>,  <39.723198, 39.547806, 49.847496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527138, 39.662888, 49.924419>,  <39.200375, 39.854691, 50.052628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527138, 39.662888, 49.924419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236399, -0.785261, 0.572259,
		-0.526091, -0.391714, -0.754843,
		0.816911, -0.479505, -0.320518,
		39.772209, 39.519035, 49.828262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049988, 39.082962, 49.885708>,  <39.200375, 39.854691, 50.052628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049988, 39.082962, 49.885708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.442337, 39.101135, 49.961407>,  <39.677746, 39.112038, 50.006824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.442337, 39.101135, 49.961407>,  <39.049988, 39.082962, 49.885708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442337, 39.101135, 49.961407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072926, -0.815739, 0.573804,
		0.180447, -0.576633, -0.796827,
		0.980877, 0.045432, 0.189249,
		39.736599, 39.114765, 50.018181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203022, 38.407597, 49.914810>,  <39.049988, 39.082962, 49.885708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203022, 38.407597, 49.914810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520191, 38.585838, 50.081047>,  <39.710491, 38.692783, 50.180790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520191, 38.585838, 50.081047>,  <39.203022, 38.407597, 49.914810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520191, 38.585838, 50.081047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136362, -0.794523, 0.591724,
		0.593874, -0.412518, -0.690755,
		0.792918, 0.445602, 0.415595,
		39.758068, 38.719521, 50.205727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813614, 37.962891, 49.901245>,  <39.203022, 38.407597, 49.914810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813614, 37.962891, 49.901245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850338, 38.218407, 50.206799>,  <39.872372, 38.371716, 50.390129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850338, 38.218407, 50.206799>,  <39.813614, 37.962891, 49.901245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850338, 38.218407, 50.206799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220906, -0.761075, 0.609890,
		0.970964, 0.112750, -0.210990,
		0.091815, 0.638790, 0.763883,
		39.877884, 38.410042, 50.435963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.826424, 38.022762, 51.130985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.541084, 38.301476, 51.160988>,  <40.369881, 38.468704, 51.178989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.541084, 38.301476, 51.160988>,  <40.826424, 38.022762, 51.130985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541084, 38.301476, 51.160988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104884, -0.211972, 0.971631,
		0.692916, 0.685246, 0.224292,
		-0.713350, 0.696783, 0.075007,
		40.327080, 38.510509, 51.183491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978371, 38.342541, 51.785667>,  <40.826424, 38.022762, 51.130985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978371, 38.342541, 51.785667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598824, 38.427666, 51.692398>,  <40.371098, 38.478741, 51.636436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598824, 38.427666, 51.692398>,  <40.978371, 38.342541, 51.785667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598824, 38.427666, 51.692398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240601, -0.009309, 0.970580,
		0.204377, 0.977050, 0.060035,
		-0.948863, 0.212808, -0.233176,
		40.314163, 38.491508, 51.622444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792393, 38.864265, 52.189487>,  <40.978371, 38.342541, 51.785667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792393, 38.864265, 52.189487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437080, 38.711037, 52.088135>,  <40.223892, 38.619099, 52.027321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437080, 38.711037, 52.088135>,  <40.792393, 38.864265, 52.189487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437080, 38.711037, 52.088135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317732, 0.114149, 0.941284,
		-0.331660, 0.916637, -0.223112,
		-0.888284, -0.383076, -0.253386,
		40.170597, 38.596115, 52.012119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332897, 39.236408, 52.467819>,  <40.792393, 38.864265, 52.189487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332897, 39.236408, 52.467819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134560, 38.893761, 52.410778>,  <40.015556, 38.688171, 52.376553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134560, 38.893761, 52.410778>,  <40.332897, 39.236408, 52.467819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134560, 38.893761, 52.410778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196355, -0.049371, 0.979289,
		-0.845923, 0.513575, -0.143722,
		-0.495843, -0.856623, -0.142607,
		39.985806, 38.636772, 52.367996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576984, 39.280499, 52.720932>,  <40.332897, 39.236408, 52.467819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576984, 39.280499, 52.720932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642193, 38.886627, 52.696178>,  <39.681316, 38.650303, 52.681328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642193, 38.886627, 52.696178>,  <39.576984, 39.280499, 52.720932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642193, 38.886627, 52.696178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243930, -0.100999, 0.964519,
		-0.955993, -0.142143, -0.256658,
		0.163022, -0.984680, -0.061881,
		39.691101, 38.591225, 52.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001068, 38.959480, 53.100586>,  <39.576984, 39.280499, 52.720932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001068, 38.959480, 53.100586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308453, 38.703529, 53.098587>,  <39.492886, 38.549961, 53.097389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308453, 38.703529, 53.098587>,  <39.001068, 38.959480, 53.100586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308453, 38.703529, 53.098587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210965, -0.260712, 0.942085,
		-0.604119, -0.722903, -0.335338,
		0.768463, -0.639875, -0.004994,
		39.538990, 38.511566, 53.097088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728554, 38.542091, 53.541496>,  <39.001068, 38.959480, 53.100586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728554, 38.542091, 53.541496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111481, 38.427704, 53.524700>,  <39.341236, 38.359074, 53.514622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111481, 38.427704, 53.524700>,  <38.728554, 38.542091, 53.541496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111481, 38.427704, 53.524700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074738, -0.385242, 0.919784,
		-0.279203, -0.877389, -0.390172,
		0.957319, -0.285967, -0.041986,
		39.398678, 38.341915, 53.512104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744648, 37.875916, 53.831783>,  <38.728554, 38.542091, 53.541496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744648, 37.875916, 53.831783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116802, 38.021210, 53.851555>,  <39.340096, 38.108387, 53.863419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116802, 38.021210, 53.851555>,  <38.744648, 37.875916, 53.831783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116802, 38.021210, 53.851555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086941, -0.349620, 0.932849,
		0.356126, -0.863611, -0.356861,
		0.930385, 0.363237, 0.049426,
		39.395916, 38.130180, 53.866383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126900, 37.278069, 53.905647>,  <38.744648, 37.875916, 53.831783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126900, 37.278069, 53.905647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308739, 37.588791, 54.079960>,  <39.417843, 37.775227, 54.184547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308739, 37.588791, 54.079960>,  <39.126900, 37.278069, 53.905647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308739, 37.588791, 54.079960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053521, -0.512202, 0.857196,
		0.889087, -0.366356, -0.274422,
		0.454599, 0.776809, 0.435785,
		39.445118, 37.821835, 54.210693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407455, 36.998241, 54.454830>,  <39.126900, 37.278069, 53.905647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407455, 36.998241, 54.454830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531723, 37.368568, 54.540939>,  <39.606281, 37.590767, 54.592606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531723, 37.368568, 54.540939>,  <39.407455, 36.998241, 54.454830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531723, 37.368568, 54.540939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007714, -0.224020, 0.974554,
		0.950487, -0.304422, -0.062453,
		0.310667, 0.925820, 0.215277,
		39.624924, 37.646313, 54.605522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030617, 36.960606, 55.000557>,  <39.407455, 36.998241, 54.454830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030617, 36.960606, 55.000557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839371, 37.311920, 55.002174>,  <39.724625, 37.522709, 55.003147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839371, 37.311920, 55.002174>,  <40.030617, 36.960606, 55.000557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839371, 37.311920, 55.002174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117372, -0.068457, 0.990726,
		0.870421, 0.473203, 0.135817,
		-0.478111, 0.878290, 0.004045,
		39.695938, 37.575409, 55.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081554, 37.071308, 55.668571>,  <40.030617, 36.960606, 55.000557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081554, 37.071308, 55.668571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810028, 37.338585, 55.546768>,  <39.647110, 37.498951, 55.473686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810028, 37.338585, 55.546768>,  <40.081554, 37.071308, 55.668571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810028, 37.338585, 55.546768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385536, 0.028615, 0.922249,
		0.624954, 0.743437, 0.238188,
		-0.678819, 0.668193, -0.304505,
		39.606384, 37.539043, 55.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012768, 37.705559, 56.098087>,  <40.081554, 37.071308, 55.668571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012768, 37.705559, 56.098087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653343, 37.673653, 55.925468>,  <39.437691, 37.654507, 55.821899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653343, 37.673653, 55.925468>,  <40.012768, 37.705559, 56.098087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653343, 37.673653, 55.925468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435530, 0.041282, 0.899227,
		-0.053916, 0.995958, -0.071836,
		-0.898558, -0.079770, -0.431544,
		39.383774, 37.649723, 55.796005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698086, 38.277493, 56.212593>,  <40.012768, 37.705559, 56.098087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698086, 38.277493, 56.212593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392193, 38.032753, 56.131779>,  <39.208656, 37.885910, 56.083290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392193, 38.032753, 56.131779>,  <39.698086, 38.277493, 56.212593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392193, 38.032753, 56.131779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400005, 0.204984, 0.893296,
		-0.505147, 0.763952, -0.401501,
		-0.764737, -0.611849, -0.202037,
		39.162773, 37.849197, 56.071167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173122, 38.614170, 56.467911>,  <39.698086, 38.277493, 56.212593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173122, 38.614170, 56.467911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020054, 38.248291, 56.415916>,  <38.928211, 38.028763, 56.384720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020054, 38.248291, 56.415916>,  <39.173122, 38.614170, 56.467911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020054, 38.248291, 56.415916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432999, 0.053283, 0.899818,
		-0.816132, 0.400620, -0.416452,
		-0.382675, -0.914693, -0.129982,
		38.905251, 37.973885, 56.376923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477154, 38.681770, 56.594662>,  <39.173122, 38.614170, 56.467911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477154, 38.681770, 56.594662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527870, 38.288651, 56.648369>,  <38.558300, 38.052780, 56.680592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527870, 38.288651, 56.648369>,  <38.477154, 38.681770, 56.594662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527870, 38.288651, 56.648369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363885, 0.079835, 0.928017,
		-0.922774, -0.166523, -0.347503,
		0.126794, -0.982800, 0.134265,
		38.565907, 37.993809, 56.688648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941624, 38.458996, 56.891171>,  <38.477154, 38.681770, 56.594662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941624, 38.458996, 56.891171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183060, 38.155273, 56.988434>,  <38.327923, 37.973038, 57.046791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183060, 38.155273, 56.988434>,  <37.941624, 38.458996, 56.891171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183060, 38.155273, 56.988434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410357, -0.034377, 0.911277,
		-0.683582, -0.649821, -0.332338,
		0.603591, -0.759309, 0.243160,
		38.364136, 37.927479, 57.061382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553764, 37.831261, 57.056862>,  <37.941624, 38.458996, 56.891171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553764, 37.831261, 57.056862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904793, 37.771164, 57.238983>,  <38.115410, 37.735104, 57.348255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904793, 37.771164, 57.238983>,  <37.553764, 37.831261, 57.056862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904793, 37.771164, 57.238983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461038, -0.003781, 0.887372,
		-0.131602, -0.988642, -0.072586,
		0.877568, -0.150245, 0.455304,
		38.168064, 37.726089, 57.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355755, 37.264027, 57.555813>,  <37.553764, 37.831261, 57.056862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355755, 37.264027, 57.555813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696327, 37.431587, 57.682037>,  <37.900673, 37.532124, 57.757774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696327, 37.431587, 57.682037>,  <37.355755, 37.264027, 57.555813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696327, 37.431587, 57.682037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348915, 0.003216, 0.937149,
		0.391557, -0.908026, 0.148899,
		0.851435, 0.418901, 0.315565,
		37.951759, 37.557259, 57.776707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577766, 36.872013, 58.179031>,  <37.355755, 37.264027, 57.555813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577766, 36.872013, 58.179031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781487, 37.216248, 58.180008>,  <37.903717, 37.422787, 58.180595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781487, 37.216248, 58.180008>,  <37.577766, 36.872013, 58.179031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781487, 37.216248, 58.180008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284324, 0.165582, 0.944321,
		0.812266, -0.481635, 0.329016,
		0.509297, 0.860587, 0.002444,
		37.934277, 37.474422, 58.180740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083561, 36.852646, 58.660915>,  <37.577766, 36.872013, 58.179031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083561, 36.852646, 58.660915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999096, 37.241615, 58.621304>,  <37.948418, 37.474998, 58.597538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999096, 37.241615, 58.621304>,  <38.083561, 36.852646, 58.660915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999096, 37.241615, 58.621304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268042, 0.039819, 0.962584,
		0.939981, 0.229803, 0.252242,
		-0.211160, 0.972422, -0.099026,
		37.935749, 37.533340, 58.591595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345722, 37.098602, 59.248608>,  <38.083561, 36.852646, 58.660915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345722, 37.098602, 59.248608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117744, 37.403061, 59.124786>,  <37.980957, 37.585735, 59.050495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117744, 37.403061, 59.124786>,  <38.345722, 37.098602, 59.248608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117744, 37.403061, 59.124786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311545, 0.148425, 0.938568,
		0.760334, 0.631367, 0.152538,
		-0.569940, 0.761148, -0.309552,
		37.946762, 37.631405, 59.031921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495373, 37.611206, 59.687366>,  <38.345722, 37.098602, 59.248608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495373, 37.611206, 59.687366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128052, 37.619217, 59.529221>,  <37.907658, 37.624023, 59.434334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128052, 37.619217, 59.529221>,  <38.495373, 37.611206, 59.687366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128052, 37.619217, 59.529221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395871, -0.044563, 0.917224,
		0.000754, 0.998806, 0.048852,
		-0.918306, 0.020031, -0.395365,
		37.852562, 37.625225, 59.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050621, 38.195126, 59.954647>,  <38.495373, 37.611206, 59.687366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050621, 38.195126, 59.954647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869099, 37.856415, 59.843628>,  <37.760185, 37.653191, 59.777016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869099, 37.856415, 59.843628>,  <38.050621, 38.195126, 59.954647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869099, 37.856415, 59.843628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088387, -0.267157, 0.959591,
		-0.886704, 0.460003, 0.046395,
		-0.453810, -0.846773, -0.277547,
		37.732956, 37.602383, 59.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777546, 38.355598, 59.803112>,  <38.050621, 38.195126, 59.954647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777546, 38.355598, 59.803112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019173, 38.532555, 60.068260>,  <39.164150, 38.638729, 60.227348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019173, 38.532555, 60.068260>,  <38.777546, 38.355598, 59.803112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019173, 38.532555, 60.068260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607482, 0.282755, -0.742304,
		-0.515818, 0.851081, -0.097941,
		0.604068, 0.442391, 0.662866,
		39.200394, 38.665272, 60.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909954, 39.082161, 59.497787>,  <38.777546, 38.355598, 59.803112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909954, 39.082161, 59.497787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220860, 38.981667, 59.728523>,  <39.407402, 38.921371, 59.866962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220860, 38.981667, 59.728523>,  <38.909954, 39.082161, 59.497787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220860, 38.981667, 59.728523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619612, 0.146425, -0.771129,
		0.109271, 0.956787, 0.269479,
		0.777265, -0.251235, 0.576837,
		39.454041, 38.906296, 59.901573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424194, 39.603523, 59.550411>,  <38.909954, 39.082161, 59.497787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424194, 39.603523, 59.550411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619583, 39.258461, 59.602905>,  <39.736816, 39.051426, 59.634403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619583, 39.258461, 59.602905>,  <39.424194, 39.603523, 59.550411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619583, 39.258461, 59.602905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576200, 0.205950, -0.790935,
		0.655274, 0.461970, 0.597662,
		0.488477, -0.862652, 0.131234,
		39.766125, 38.999664, 59.642277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121983, 39.835049, 59.415951>,  <39.424194, 39.603523, 59.550411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121983, 39.835049, 59.415951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149605, 39.436333, 59.432144>,  <40.166180, 39.197102, 59.441860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149605, 39.436333, 59.432144>,  <40.121983, 39.835049, 59.415951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149605, 39.436333, 59.432144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798925, 0.030955, -0.600634,
		0.597453, 0.073824, 0.798498,
		0.069059, -0.996791, 0.040486,
		40.170322, 39.137295, 59.444290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831612, 39.745029, 59.557137>,  <40.121983, 39.835049, 59.415951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831612, 39.745029, 59.557137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685703, 39.419014, 59.377068>,  <40.598160, 39.223404, 59.269028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685703, 39.419014, 59.377068>,  <40.831612, 39.745029, 59.557137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685703, 39.419014, 59.377068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718677, 0.060939, -0.692669,
		0.591985, -0.576192, 0.563522,
		-0.364770, -0.815040, -0.450171,
		40.576271, 39.174503, 59.242016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316456, 39.295952, 59.593960>,  <40.831612, 39.745029, 59.557137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316456, 39.295952, 59.593960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076447, 39.160110, 59.304230>,  <40.932442, 39.078606, 59.130394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076447, 39.160110, 59.304230>,  <41.316456, 39.295952, 59.593960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076447, 39.160110, 59.304230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781250, -0.053963, -0.621881,
		0.172108, -0.939019, 0.297696,
		-0.600023, -0.339605, -0.724321,
		40.896439, 39.058228, 59.086933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800854, 38.937214, 59.092453>,  <41.316456, 39.295952, 59.593960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800854, 38.937214, 59.092453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470825, 38.978493, 58.870247>,  <41.272808, 39.003262, 58.736923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470825, 38.978493, 58.870247>,  <41.800854, 38.937214, 59.092453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470825, 38.978493, 58.870247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562464, 0.056536, -0.824887,
		-0.053721, -0.993053, -0.104692,
		-0.825075, 0.103200, -0.555519,
		41.223301, 39.009453, 58.703590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911465, 38.481792, 58.523159>,  <41.800854, 38.937214, 59.092453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911465, 38.481792, 58.523159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611588, 38.707550, 58.384933>,  <41.431660, 38.843006, 58.301998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611588, 38.707550, 58.384933>,  <41.911465, 38.481792, 58.523159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611588, 38.707550, 58.384933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413694, -0.007882, -0.910382,
		-0.516539, -0.825467, -0.227578,
		-0.749697, 0.564395, -0.345562,
		41.386677, 38.876869, 58.281265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720154, 38.170349, 57.872700>,  <41.911465, 38.481792, 58.523159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720154, 38.170349, 57.872700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.559334, 38.536316, 57.858345>,  <41.462841, 38.755894, 57.849731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.559334, 38.536316, 57.858345>,  <41.720154, 38.170349, 57.872700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559334, 38.536316, 57.858345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155349, 0.029533, -0.987418,
		-0.902343, -0.402567, -0.154005,
		-0.402050, 0.914914, -0.035890,
		41.438717, 38.810791, 57.847576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138817, 38.151577, 57.335964>,  <41.720154, 38.170349, 57.872700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138817, 38.151577, 57.335964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.279663, 38.524429, 57.369793>,  <41.364170, 38.748138, 57.390091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.279663, 38.524429, 57.369793>,  <41.138817, 38.151577, 57.335964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279663, 38.524429, 57.369793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115533, 0.046386, -0.992220,
		-0.928797, 0.359150, -0.091358,
		0.352118, 0.932126, 0.084576,
		41.385300, 38.804066, 57.395164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827450, 38.529385, 56.785461>,  <41.138817, 38.151577, 57.335964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827450, 38.529385, 56.785461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118340, 38.789146, 56.874382>,  <41.292873, 38.945004, 56.927734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118340, 38.789146, 56.874382>,  <40.827450, 38.529385, 56.785461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118340, 38.789146, 56.874382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103223, 0.216720, -0.970761,
		-0.678592, 0.728910, 0.090572,
		0.727226, 0.649402, 0.222305,
		41.336506, 38.983967, 56.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678955, 39.079227, 56.358166>,  <40.827450, 38.529385, 56.785461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678955, 39.079227, 56.358166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046249, 39.159103, 56.494965>,  <41.266628, 39.207027, 56.577045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046249, 39.159103, 56.494965>,  <40.678955, 39.079227, 56.358166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046249, 39.159103, 56.494965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258962, 0.350601, -0.900010,
		-0.299626, 0.914988, 0.270224,
		0.918239, 0.199688, 0.341996,
		41.321720, 39.219009, 56.597565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833344, 39.810341, 56.308254>,  <40.678955, 39.079227, 56.358166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833344, 39.810341, 56.308254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158417, 39.580109, 56.271923>,  <41.353462, 39.441971, 56.250126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158417, 39.580109, 56.271923>,  <40.833344, 39.810341, 56.308254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158417, 39.580109, 56.271923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152621, 0.360689, -0.920114,
		0.562358, 0.733903, 0.380973,
		0.812687, -0.575578, -0.090827,
		41.402222, 39.407436, 56.244675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340790, 40.208206, 55.911415>,  <40.833344, 39.810341, 56.308254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340790, 40.208206, 55.911415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477264, 39.833992, 55.874844>,  <41.559151, 39.609463, 55.852901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477264, 39.833992, 55.874844>,  <41.340790, 40.208206, 55.911415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477264, 39.833992, 55.874844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130860, 0.143591, -0.980947,
		0.930841, 0.322726, 0.171417,
		0.341191, -0.935537, -0.091429,
		41.579620, 39.553329, 55.847416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903366, 40.291164, 55.604298>,  <41.340790, 40.208206, 55.911415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903366, 40.291164, 55.604298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812447, 39.908195, 55.533108>,  <41.757896, 39.678413, 55.490395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812447, 39.908195, 55.533108>,  <41.903366, 40.291164, 55.604298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812447, 39.908195, 55.533108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186529, 0.136570, -0.972911,
		0.955794, -0.254339, 0.147545,
		-0.227298, -0.957424, -0.177975,
		41.744259, 39.620968, 55.479713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383926, 40.144344, 55.137638>,  <41.903366, 40.291164, 55.604298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383926, 40.144344, 55.137638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133820, 39.836464, 55.086105>,  <41.983753, 39.651737, 55.055183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133820, 39.836464, 55.086105>,  <42.383926, 40.144344, 55.137638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133820, 39.836464, 55.086105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175353, 0.022299, -0.984253,
		0.760453, -0.638015, 0.121027,
		-0.625270, -0.769701, -0.128835,
		41.946239, 39.605553, 55.047455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770138, 39.722820, 54.835403>,  <42.383926, 40.144344, 55.137638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770138, 39.722820, 54.835403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.397278, 39.599602, 54.759308>,  <42.173561, 39.525669, 54.713650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.397278, 39.599602, 54.759308>,  <42.770138, 39.722820, 54.835403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397278, 39.599602, 54.759308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261739, -0.210295, -0.941949,
		0.250162, -0.927836, 0.276657,
		-0.932154, -0.308051, -0.190243,
		42.117630, 39.507187, 54.702236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762260, 39.066311, 54.538704>,  <42.770138, 39.722820, 54.835403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762260, 39.066311, 54.538704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420349, 39.235260, 54.418068>,  <42.215202, 39.336628, 54.345688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420349, 39.235260, 54.418068>,  <42.762260, 39.066311, 54.538704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420349, 39.235260, 54.418068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261049, -0.152337, -0.953230,
		-0.448562, -0.893529, 0.019954,
		-0.854778, 0.422374, -0.301587,
		42.163914, 39.361973, 54.327591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636955, 38.687214, 53.980740>,  <42.762260, 39.066311, 54.538704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636955, 38.687214, 53.980740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.416443, 39.016296, 53.925251>,  <42.284138, 39.213745, 53.891960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.416443, 39.016296, 53.925251>,  <42.636955, 38.687214, 53.980740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416443, 39.016296, 53.925251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271784, 0.019885, -0.962153,
		-0.788813, -0.568115, -0.234561,
		-0.551277, 0.822709, -0.138719,
		42.251060, 39.263107, 53.883636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277966, 38.584225, 53.379230>,  <42.636955, 38.687214, 53.980740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277966, 38.584225, 53.379230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.274933, 38.980469, 53.433842>,  <42.273113, 39.218216, 53.466610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.274933, 38.980469, 53.433842>,  <42.277966, 38.584225, 53.379230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274933, 38.980469, 53.433842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321653, 0.131693, -0.937655,
		-0.946827, 0.036811, -0.319630,
		-0.007577, 0.990607, 0.136531,
		42.272659, 39.277649, 53.474800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.898022, 39.692478, 48.691116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242546, 39.888466, 48.744892>,  <39.449261, 40.006058, 48.777157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242546, 39.888466, 48.744892>,  <38.898022, 39.692478, 48.691116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242546, 39.888466, 48.744892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120083, 0.453423, -0.883169,
		-0.493682, 0.744540, 0.449376,
		0.861312, 0.489967, 0.134440,
		39.500938, 40.035458, 48.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835789, 40.409294, 48.497032>,  <38.898022, 39.692478, 48.691116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835789, 40.409294, 48.497032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234657, 40.379272, 48.495964>,  <39.473980, 40.361259, 48.495323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234657, 40.379272, 48.495964>,  <38.835789, 40.409294, 48.497032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234657, 40.379272, 48.495964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033045, 0.470447, -0.881810,
		0.067445, 0.879231, 0.471598,
		0.997176, -0.075058, -0.002675,
		39.533810, 40.356754, 48.495163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181717, 41.085003, 48.336300>,  <38.835789, 40.409294, 48.497032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181717, 41.085003, 48.336300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436684, 40.791313, 48.242828>,  <39.589664, 40.615097, 48.186745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436684, 40.791313, 48.242828>,  <39.181717, 41.085003, 48.336300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436684, 40.791313, 48.242828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203456, 0.452895, -0.868039,
		0.743170, 0.505762, 0.438067,
		0.637419, -0.734228, -0.233678,
		39.627911, 40.571045, 48.172726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747299, 41.420540, 48.133739>,  <39.181717, 41.085003, 48.336300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747299, 41.420540, 48.133739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811172, 41.070366, 47.951256>,  <39.849495, 40.860264, 47.841766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811172, 41.070366, 47.951256>,  <39.747299, 41.420540, 48.133739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811172, 41.070366, 47.951256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101561, 0.474251, -0.874512,
		0.981931, 0.093309, 0.164638,
		0.159680, -0.875431, -0.456205,
		39.859077, 40.807735, 47.814396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456989, 41.371975, 47.683483>,  <39.747299, 41.420540, 48.133739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456989, 41.371975, 47.683483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220451, 41.083939, 47.538280>,  <40.078529, 40.911118, 47.451160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220451, 41.083939, 47.538280>,  <40.456989, 41.371975, 47.683483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220451, 41.083939, 47.538280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250728, 0.263656, -0.931462,
		0.766449, -0.641833, 0.024636,
		-0.591347, -0.720095, -0.363005,
		40.043049, 40.867908, 47.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838783, 41.185646, 47.180382>,  <40.456989, 41.371975, 47.683483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838783, 41.185646, 47.180382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500122, 40.999367, 47.077385>,  <40.296925, 40.887600, 47.015587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500122, 40.999367, 47.077385>,  <40.838783, 41.185646, 47.180382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500122, 40.999367, 47.077385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191571, 0.184696, -0.963944,
		0.496464, -0.865455, -0.067160,
		-0.846655, -0.465698, -0.257491,
		40.246124, 40.859657, 47.000137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979588, 40.711693, 46.688034>,  <40.838783, 41.185646, 47.180382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979588, 40.711693, 46.688034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601860, 40.833664, 46.638584>,  <40.375225, 40.906845, 46.608913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601860, 40.833664, 46.638584>,  <40.979588, 40.711693, 46.688034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601860, 40.833664, 46.638584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188643, 0.193901, -0.962713,
		-0.269585, -0.932429, -0.240626,
		-0.944318, 0.304925, -0.123624,
		40.318565, 40.925140, 46.601498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906155, 40.458370, 46.105629>,  <40.979588, 40.711693, 46.688034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906155, 40.458370, 46.105629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609711, 40.724640, 46.140591>,  <40.431843, 40.884399, 46.161568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609711, 40.724640, 46.140591>,  <40.906155, 40.458370, 46.105629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609711, 40.724640, 46.140591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114642, 0.253739, -0.960455,
		-0.661523, -0.701783, -0.264362,
		-0.741110, 0.665671, 0.087400,
		40.387379, 40.924339, 46.166809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599804, 40.456783, 45.547874>,  <40.906155, 40.458370, 46.105629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599804, 40.456783, 45.547874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460159, 40.806473, 45.682846>,  <40.376373, 41.016285, 45.763828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460159, 40.806473, 45.682846>,  <40.599804, 40.456783, 45.547874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460159, 40.806473, 45.682846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063235, 0.337291, -0.939274,
		-0.934945, -0.349250, -0.062471,
		-0.349112, 0.874219, 0.337434,
		40.355427, 41.068737, 45.784077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945210, 40.587143, 45.208599>,  <40.599804, 40.456783, 45.547874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945210, 40.587143, 45.208599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045521, 40.956978, 45.323311>,  <40.105709, 41.178879, 45.392139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045521, 40.956978, 45.323311>,  <39.945210, 40.587143, 45.208599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045521, 40.956978, 45.323311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271478, 0.351533, -0.895949,
		-0.929197, 0.146833, 0.339164,
		0.250782, 0.924589, 0.286781,
		40.120754, 41.234356, 45.409344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533440, 40.994011, 44.811073>,  <39.945210, 40.587143, 45.208599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533440, 40.994011, 44.811073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804070, 41.260765, 44.935978>,  <39.966446, 41.420818, 45.010921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804070, 41.260765, 44.935978>,  <39.533440, 40.994011, 44.811073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804070, 41.260765, 44.935978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080147, 0.354848, -0.931482,
		-0.731999, 0.655244, 0.186633,
		0.676575, 0.666886, 0.312264,
		40.007042, 41.460831, 45.029655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287491, 41.647160, 44.511265>,  <39.533440, 40.994011, 44.811073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287491, 41.647160, 44.511265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672638, 41.717110, 44.593536>,  <39.903725, 41.759079, 44.642899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672638, 41.717110, 44.593536>,  <39.287491, 41.647160, 44.511265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672638, 41.717110, 44.593536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134608, 0.349417, -0.927248,
		-0.234021, 0.920503, 0.312903,
		0.962868, 0.174876, 0.205678,
		39.961498, 41.769573, 44.655239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458694, 42.325474, 44.316799>,  <39.287491, 41.647160, 44.511265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458694, 42.325474, 44.316799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772575, 42.077774, 44.327919>,  <39.960903, 41.929153, 44.334591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772575, 42.077774, 44.327919>,  <39.458694, 42.325474, 44.316799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772575, 42.077774, 44.327919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322693, 0.369793, -0.871276,
		0.529258, 0.692662, 0.490005,
		0.784701, -0.619251, 0.027801,
		40.007984, 41.891998, 44.336258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166660, 42.658604, 44.319836>,  <39.458694, 42.325474, 44.316799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166660, 42.658604, 44.319836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120087, 42.302650, 44.143406>,  <40.092144, 42.089077, 44.037548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120087, 42.302650, 44.143406>,  <40.166660, 42.658604, 44.319836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120087, 42.302650, 44.143406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227532, 0.408390, -0.883995,
		0.966785, -0.203283, 0.154928,
		-0.116431, -0.889884, -0.441078,
		40.085159, 42.035686, 44.011082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800205, 43.227818, 44.337868>,  <40.166660, 42.658604, 44.319836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800205, 43.227818, 44.337868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717186, 43.618454, 44.315250>,  <40.667374, 43.852837, 44.301682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717186, 43.618454, 44.315250>,  <40.800205, 43.227818, 44.337868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717186, 43.618454, 44.315250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195125, 0.015311, 0.980659,
		0.958566, 0.214569, 0.187379,
		-0.207550, 0.976589, -0.056544,
		40.654922, 43.911430, 44.298286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096027, 43.621410, 44.809032>,  <40.800205, 43.227818, 44.337868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096027, 43.621410, 44.809032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.794094, 43.868439, 44.720642>,  <40.612934, 44.016655, 44.667606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.794094, 43.868439, 44.720642>,  <41.096027, 43.621410, 44.809032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794094, 43.868439, 44.720642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232926, 0.062561, 0.970480,
		0.613167, 0.784021, 0.096626,
		-0.754832, 0.617573, -0.220979,
		40.567646, 44.053711, 44.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170971, 44.068714, 45.284832>,  <41.096027, 43.621410, 44.809032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170971, 44.068714, 45.284832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797165, 44.126633, 45.154781>,  <40.572880, 44.161385, 45.076752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797165, 44.126633, 45.154781>,  <41.170971, 44.068714, 45.284832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797165, 44.126633, 45.154781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300039, 0.170875, 0.938498,
		0.191452, 0.974595, -0.116240,
		-0.934517, 0.144801, -0.325131,
		40.516811, 44.170074, 45.057243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909996, 44.687851, 45.618774>,  <41.170971, 44.068714, 45.284832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909996, 44.687851, 45.618774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605225, 44.460167, 45.495190>,  <40.422359, 44.323555, 45.421040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605225, 44.460167, 45.495190>,  <40.909996, 44.687851, 45.618774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605225, 44.460167, 45.495190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459444, 0.138816, 0.877292,
		-0.456478, 0.810387, -0.367290,
		-0.761932, -0.569213, -0.308961,
		40.376644, 44.289402, 45.402500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289898, 45.087414, 45.923431>,  <40.909996, 44.687851, 45.618774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289898, 45.087414, 45.923431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167885, 44.718399, 45.828869>,  <40.094677, 44.496990, 45.772133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167885, 44.718399, 45.828869>,  <40.289898, 45.087414, 45.923431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167885, 44.718399, 45.828869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651251, 0.020944, 0.758574,
		-0.694859, 0.385345, -0.607190,
		-0.305029, -0.922535, -0.236403,
		40.076378, 44.441639, 45.757950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558014, 45.217628, 46.034042>,  <40.289898, 45.087414, 45.923431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558014, 45.217628, 46.034042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637848, 44.825760, 46.042221>,  <39.685749, 44.590641, 46.047131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637848, 44.825760, 46.042221>,  <39.558014, 45.217628, 46.034042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637848, 44.825760, 46.042221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740970, -0.137231, 0.657367,
		-0.641195, -0.146352, -0.753293,
		0.199582, -0.979667, 0.020451,
		39.697723, 44.531860, 46.048355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973091, 44.959297, 46.156166>,  <39.558014, 45.217628, 46.034042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973091, 44.959297, 46.156166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204269, 44.650291, 46.261383>,  <39.342976, 44.464886, 46.324512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204269, 44.650291, 46.261383>,  <38.973091, 44.959297, 46.156166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204269, 44.650291, 46.261383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564840, -0.146030, 0.812177,
		-0.589008, -0.617975, -0.520746,
		0.577950, -0.772516, 0.263044,
		39.377655, 44.418537, 46.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507786, 44.323483, 46.335278>,  <38.973091, 44.959297, 46.156166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507786, 44.323483, 46.335278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854507, 44.227814, 46.510300>,  <39.062538, 44.170414, 46.615314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854507, 44.227814, 46.510300>,  <38.507786, 44.323483, 46.335278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854507, 44.227814, 46.510300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496862, -0.339911, 0.798491,
		-0.042247, -0.909537, -0.413471,
		0.866800, -0.239172, 0.437554,
		39.114548, 44.156063, 46.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323269, 43.677822, 46.728062>,  <38.507786, 44.323483, 46.335278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323269, 43.677822, 46.728062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663357, 43.808937, 46.892830>,  <38.867409, 43.887608, 46.991692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663357, 43.808937, 46.892830>,  <38.323269, 43.677822, 46.728062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663357, 43.808937, 46.892830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322659, -0.293779, 0.899769,
		0.415950, -0.897912, -0.144012,
		0.850222, 0.327792, 0.411917,
		38.918423, 43.907276, 47.016403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351219, 43.215702, 47.244862>,  <38.323269, 43.677822, 46.728062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351219, 43.215702, 47.244862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596367, 43.517952, 47.337311>,  <38.743454, 43.699303, 47.392780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596367, 43.517952, 47.337311>,  <38.351219, 43.215702, 47.244862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596367, 43.517952, 47.337311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304741, -0.043844, 0.951426,
		0.729057, -0.653532, 0.203400,
		0.612869, 0.755628, 0.231122,
		38.780228, 43.744640, 47.406647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837257, 42.940945, 47.714062>,  <38.351219, 43.215702, 47.244862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837257, 42.940945, 47.714062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839996, 43.337990, 47.762516>,  <38.841640, 43.576218, 47.791588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839996, 43.337990, 47.762516>,  <38.837257, 42.940945, 47.714062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839996, 43.337990, 47.762516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253478, -0.115456, 0.960426,
		0.967317, -0.037282, 0.250814,
		0.006849, 0.992613, 0.121133,
		38.842052, 43.635773, 47.798855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266697, 43.121712, 48.307533>,  <38.837257, 42.940945, 47.714062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266697, 43.121712, 48.307533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023849, 43.434425, 48.250652>,  <38.878139, 43.622051, 48.216522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023849, 43.434425, 48.250652>,  <39.266697, 43.121712, 48.307533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023849, 43.434425, 48.250652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175168, 0.042880, 0.983604,
		0.775061, 0.622076, 0.110910,
		-0.607121, 0.781782, -0.142202,
		38.841713, 43.668961, 48.207993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445168, 43.759518, 48.853569>,  <39.266697, 43.121712, 48.307533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445168, 43.759518, 48.853569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076271, 43.817574, 48.710232>,  <38.854935, 43.852406, 48.624229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076271, 43.817574, 48.710232>,  <39.445168, 43.759518, 48.853569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076271, 43.817574, 48.710232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317943, 0.242628, 0.916539,
		0.219968, 0.959201, -0.177616,
		-0.922240, 0.145138, -0.358342,
		38.799599, 43.861115, 48.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213737, 44.365234, 49.183559>,  <39.445168, 43.759518, 48.853569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213737, 44.365234, 49.183559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890305, 44.161507, 49.065720>,  <38.696243, 44.039272, 48.995014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890305, 44.161507, 49.065720>,  <39.213737, 44.365234, 49.183559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890305, 44.161507, 49.065720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282427, -0.103279, 0.953713,
		-0.516166, 0.854361, -0.060335,
		-0.808584, -0.509314, -0.294603,
		38.647728, 44.008713, 48.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990135, 45.144447, 49.285267>,  <39.213737, 44.365234, 49.183559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990135, 45.144447, 49.285267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257370, 45.368797, 49.480850>,  <39.417709, 45.503407, 49.598202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257370, 45.368797, 49.480850>,  <38.990135, 45.144447, 49.285267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257370, 45.368797, 49.480850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324854, 0.371341, -0.869813,
		-0.669428, 0.739950, 0.065885,
		0.668084, 0.560874, 0.488962,
		39.457794, 45.537060, 49.627541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994526, 45.765762, 48.910366>,  <38.990135, 45.144447, 49.285267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994526, 45.765762, 48.910366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328037, 45.760429, 49.131142>,  <39.528145, 45.757229, 49.263607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328037, 45.760429, 49.131142>,  <38.994526, 45.765762, 48.910366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328037, 45.760429, 49.131142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539220, 0.234324, -0.808909,
		-0.118548, 0.972067, 0.202564,
		0.833779, -0.013332, 0.551937,
		39.578171, 45.756432, 49.296722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330303, 46.294262, 48.743984>,  <38.994526, 45.765762, 48.910366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330303, 46.294262, 48.743984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.624321, 46.064796, 48.888550>,  <39.800732, 45.927116, 48.975288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.624321, 46.064796, 48.888550>,  <39.330303, 46.294262, 48.743984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624321, 46.064796, 48.888550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641145, 0.414681, -0.645734,
		0.220563, 0.706362, 0.672610,
		0.735041, -0.573666, 0.361417,
		39.844833, 45.892696, 48.996975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894535, 46.794891, 48.875290>,  <39.330303, 46.294262, 48.743984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894535, 46.794891, 48.875290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056625, 46.430397, 48.845760>,  <40.153877, 46.211700, 48.828045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056625, 46.430397, 48.845760>,  <39.894535, 46.794891, 48.875290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056625, 46.430397, 48.845760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583367, 0.319900, -0.746557,
		0.703902, 0.259457, 0.661214,
		0.405221, -0.911233, -0.073820,
		40.178192, 46.157028, 48.823616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691219, 46.918018, 48.790363>,  <39.894535, 46.794891, 48.875290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691219, 46.918018, 48.790363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693962, 46.535011, 48.675049>,  <40.695606, 46.305206, 48.605862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693962, 46.535011, 48.675049>,  <40.691219, 46.918018, 48.790363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693962, 46.535011, 48.675049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863221, 0.151193, -0.481653,
		0.504779, -0.245554, 0.827588,
		0.006854, -0.957520, -0.288287,
		40.696018, 46.247757, 48.588562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404179, 46.597439, 48.893726>,  <40.691219, 46.918018, 48.790363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404179, 46.597439, 48.893726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204304, 46.360794, 48.640644>,  <41.084381, 46.218807, 48.488796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204304, 46.360794, 48.640644>,  <41.404179, 46.597439, 48.893726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204304, 46.360794, 48.640644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821028, -0.090655, -0.563645,
		0.276099, -0.801113, 0.531025,
		-0.499683, -0.591608, -0.632706,
		41.054398, 46.183311, 48.450832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829094, 45.951668, 48.642319>,  <41.404179, 46.597439, 48.893726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829094, 45.951668, 48.642319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.540619, 46.017494, 48.373154>,  <41.367535, 46.056988, 48.211655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.540619, 46.017494, 48.373154>,  <41.829094, 45.951668, 48.642319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540619, 46.017494, 48.373154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684996, 0.024577, -0.728132,
		-0.103285, -0.986060, -0.130450,
		-0.721188, 0.164563, -0.672909,
		41.324261, 46.066864, 48.171280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974152, 45.585255, 48.045769>,  <41.829094, 45.951668, 48.642319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974152, 45.585255, 48.045769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728020, 45.861938, 47.894554>,  <41.580341, 46.027950, 47.803825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728020, 45.861938, 47.894554>,  <41.974152, 45.585255, 48.045769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728020, 45.861938, 47.894554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559409, 0.045311, -0.827652,
		-0.555366, -0.720753, -0.414829,
		-0.615330, 0.691709, -0.378032,
		41.543419, 46.069450, 47.781143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754070, 45.274078, 47.453110>,  <41.974152, 45.585255, 48.045769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754070, 45.274078, 47.453110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 45.669411, 47.405376>,  <41.693512, 45.906612, 47.376736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 45.669411, 47.405376>,  <41.754070, 45.274078, 47.453110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716221, 45.669411, 47.405376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447218, -0.064888, -0.892068,
		-0.889406, -0.137779, -0.435861,
		-0.094626, 0.988335, -0.119329,
		41.687832, 45.965912, 47.369579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666252, 45.435471, 46.726601>,  <41.754070, 45.274078, 47.453110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666252, 45.435471, 46.726601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.744965, 45.802399, 46.865047>,  <41.792191, 46.022556, 46.948116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.744965, 45.802399, 46.865047>,  <41.666252, 45.435471, 46.726601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744965, 45.802399, 46.865047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594866, 0.168916, -0.785876,
		-0.779366, 0.360540, -0.512444,
		0.196780, 0.917321, 0.346121,
		41.803997, 46.077595, 46.968884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472099, 45.845596, 46.158646>,  <41.666252, 45.435471, 46.726601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472099, 45.845596, 46.158646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.704014, 46.081467, 46.383549>,  <41.843163, 46.222988, 46.518490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.704014, 46.081467, 46.383549>,  <41.472099, 45.845596, 46.158646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704014, 46.081467, 46.383549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473772, 0.317427, -0.821450,
		-0.662867, 0.742643, -0.095335,
		0.579782, 0.589679, 0.562256,
		41.877949, 46.258369, 46.552227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404465, 46.545166, 45.841000>,  <41.472099, 45.845596, 46.158646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404465, 46.545166, 45.841000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738316, 46.520813, 46.059975>,  <41.938625, 46.506199, 46.191360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738316, 46.520813, 46.059975>,  <41.404465, 46.545166, 45.841000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738316, 46.520813, 46.059975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548362, 0.185564, -0.815393,
		-0.051941, 0.980744, 0.188263,
		0.834627, -0.060884, 0.547441,
		41.988705, 46.502548, 46.224209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.195206, 45.279182, 53.184322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588570, 45.239456, 53.245049>,  <38.824589, 45.215618, 53.281487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588570, 45.239456, 53.245049>,  <38.195206, 45.279182, 53.184322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588570, 45.239456, 53.245049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180985, 0.479053, -0.858925,
		0.012579, 0.872149, 0.489079,
		0.983405, -0.099320, 0.151820,
		38.883591, 45.209660, 53.290596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398239, 45.893093, 53.015461>,  <38.195206, 45.279182, 53.184322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398239, 45.893093, 53.015461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708641, 45.644989, 52.969685>,  <38.894882, 45.496128, 52.942219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708641, 45.644989, 52.969685>,  <38.398239, 45.893093, 53.015461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708641, 45.644989, 52.969685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174930, 0.385968, -0.905775,
		0.605984, 0.682867, 0.408015,
		0.776005, -0.620259, -0.114436,
		38.941441, 45.458912, 52.935352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821980, 46.282459, 52.618977>,  <38.398239, 45.893093, 53.015461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821980, 46.282459, 52.618977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945377, 45.904015, 52.579578>,  <39.019417, 45.676949, 52.555939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945377, 45.904015, 52.579578>,  <38.821980, 46.282459, 52.618977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945377, 45.904015, 52.579578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245801, 0.179321, -0.952589,
		0.918919, 0.269658, 0.287875,
		0.308495, -0.946113, -0.098499,
		39.037926, 45.620182, 52.550030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491806, 46.229034, 52.337006>,  <38.821980, 46.282459, 52.618977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491806, 46.229034, 52.337006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320923, 45.878853, 52.246613>,  <39.218391, 45.668743, 52.192379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320923, 45.878853, 52.246613>,  <39.491806, 46.229034, 52.337006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320923, 45.878853, 52.246613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243211, 0.129452, -0.961297,
		0.870826, -0.465638, 0.157617,
		-0.427212, -0.875456, -0.225978,
		39.192760, 45.616215, 52.178818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002087, 45.999378, 51.770626>,  <39.491806, 46.229034, 52.337006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002087, 45.999378, 51.770626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674515, 45.770157, 51.758194>,  <39.477970, 45.632626, 51.750732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674515, 45.770157, 51.758194>,  <40.002087, 45.999378, 51.770626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674515, 45.770157, 51.758194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013024, 0.035591, -0.999281,
		0.573748, -0.818745, -0.021683,
		-0.818928, -0.573054, -0.031084,
		39.428837, 45.598240, 51.748867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159248, 45.588482, 51.254814>,  <40.002087, 45.999378, 51.770626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159248, 45.588482, 51.254814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767380, 45.510025, 51.237930>,  <39.532261, 45.462952, 51.227798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767380, 45.510025, 51.237930>,  <40.159248, 45.588482, 51.254814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767380, 45.510025, 51.237930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041415, 0.008177, -0.999109,
		0.196311, -0.980542, 0.000113,
		-0.979667, -0.196140, -0.042214,
		39.473480, 45.451183, 51.225266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069664, 44.928883, 50.864922>,  <40.159248, 45.588482, 51.254814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069664, 44.928883, 50.864922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728615, 45.137291, 50.849094>,  <39.523987, 45.262337, 50.839600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728615, 45.137291, 50.849094>,  <40.069664, 44.928883, 50.864922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728615, 45.137291, 50.849094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047317, 0.001580, -0.998879,
		-0.520379, -0.853540, -0.026000,
		-0.852624, 0.521025, -0.039565,
		39.472828, 45.293598, 50.837223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762383, 44.658413, 50.371529>,  <40.069664, 44.928883, 50.864922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762383, 44.658413, 50.371529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603771, 45.021790, 50.424435>,  <39.508602, 45.239815, 50.456181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603771, 45.021790, 50.424435>,  <39.762383, 44.658413, 50.371529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603771, 45.021790, 50.424435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071349, 0.174142, -0.982132,
		-0.915245, -0.380007, -0.133869,
		-0.396530, 0.908443, 0.132269,
		39.484814, 45.294323, 50.464115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350857, 44.748508, 49.872131>,  <39.762383, 44.658413, 50.371529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350857, 44.748508, 49.872131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408455, 45.129402, 49.979847>,  <39.443012, 45.357937, 50.044476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408455, 45.129402, 49.979847>,  <39.350857, 44.748508, 49.872131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408455, 45.129402, 49.979847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254247, 0.227394, -0.940027,
		-0.956360, 0.203822, -0.209360,
		0.143991, 0.952233, 0.269291,
		39.451653, 45.415073, 50.060635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723614, 44.539570, 49.695988>,  <39.350857, 44.748508, 49.872131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723614, 44.539570, 49.695988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576637, 44.217293, 49.510155>,  <38.488449, 44.023926, 49.398655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576637, 44.217293, 49.510155>,  <38.723614, 44.539570, 49.695988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576637, 44.217293, 49.510155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424361, -0.299255, 0.854614,
		-0.827588, 0.511174, -0.231947,
		-0.367445, -0.805697, -0.464582,
		38.466404, 43.975582, 49.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089573, 44.464893, 50.029350>,  <38.723614, 44.539570, 49.695988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089573, 44.464893, 50.029350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152557, 44.108414, 49.859184>,  <38.190350, 43.894527, 49.757084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152557, 44.108414, 49.859184>,  <38.089573, 44.464893, 50.029350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152557, 44.108414, 49.859184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352878, -0.453120, 0.818633,
		-0.922325, 0.021216, -0.385831,
		0.157459, -0.891197, -0.425411,
		38.199795, 43.841053, 49.731560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510395, 44.079144, 50.183372>,  <38.089573, 44.464893, 50.029350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510395, 44.079144, 50.183372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788837, 43.804214, 50.100403>,  <37.955902, 43.639256, 50.050621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788837, 43.804214, 50.100403>,  <37.510395, 44.079144, 50.183372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788837, 43.804214, 50.100403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254410, -0.506323, 0.823961,
		-0.671353, -0.520791, -0.527315,
		0.696104, -0.687323, -0.207427,
		37.997669, 43.598019, 50.038174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125149, 43.518219, 50.201550>,  <37.510395, 44.079144, 50.183372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125149, 43.518219, 50.201550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501137, 43.386154, 50.236084>,  <37.726730, 43.306915, 50.256805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501137, 43.386154, 50.236084>,  <37.125149, 43.518219, 50.201550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501137, 43.386154, 50.236084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244563, -0.475265, 0.845170,
		-0.238015, -0.815545, -0.527479,
		0.939967, -0.330165, 0.086332,
		37.783127, 43.287106, 50.261982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102524, 42.780476, 50.250820>,  <37.125149, 43.518219, 50.201550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102524, 42.780476, 50.250820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440109, 42.925743, 50.408726>,  <37.642658, 43.012905, 50.503471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440109, 42.925743, 50.408726>,  <37.102524, 42.780476, 50.250820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440109, 42.925743, 50.408726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158417, -0.534373, 0.830271,
		0.512481, -0.763253, -0.393457,
		0.843959, 0.363168, 0.394768,
		37.693298, 43.034695, 50.527157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408916, 42.171909, 50.529858>,  <37.102524, 42.780476, 50.250820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408916, 42.171909, 50.529858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602703, 42.472328, 50.709290>,  <37.718975, 42.652580, 50.816948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602703, 42.472328, 50.709290>,  <37.408916, 42.171909, 50.529858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602703, 42.472328, 50.709290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145588, -0.436408, 0.887892,
		0.862610, -0.495462, -0.102082,
		0.484466, 0.751043, 0.448583,
		37.748043, 42.697639, 50.843864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900009, 41.781570, 51.013424>,  <37.408916, 42.171909, 50.529858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900009, 41.781570, 51.013424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861229, 42.160942, 51.134136>,  <37.837959, 42.388565, 51.206566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861229, 42.160942, 51.134136>,  <37.900009, 41.781570, 51.013424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861229, 42.160942, 51.134136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246833, -0.316652, 0.915863,
		0.964196, 0.014306, 0.264805,
		-0.096953, 0.948434, 0.301784,
		37.832142, 42.445473, 51.224670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398079, 41.952042, 51.528374>,  <37.900009, 41.781570, 51.013424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398079, 41.952042, 51.528374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099831, 42.207283, 51.605175>,  <37.920879, 42.360428, 51.651257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099831, 42.207283, 51.605175>,  <38.398079, 41.952042, 51.528374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099831, 42.207283, 51.605175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057389, -0.225579, 0.972533,
		0.663890, 0.736164, 0.131577,
		-0.745625, 0.638104, 0.192007,
		37.876144, 42.398716, 51.662777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605507, 42.173794, 52.165253>,  <38.398079, 41.952042, 51.528374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605507, 42.173794, 52.165253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217491, 42.268776, 52.144703>,  <37.984680, 42.325764, 52.132374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217491, 42.268776, 52.144703>,  <38.605507, 42.173794, 52.165253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217491, 42.268776, 52.144703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090821, -0.158275, 0.983209,
		0.225336, 0.958418, 0.175099,
		-0.970039, 0.237455, -0.051379,
		37.926479, 42.340012, 52.129288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521328, 42.502956, 52.729336>,  <38.605507, 42.173794, 52.165253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521328, 42.502956, 52.729336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152336, 42.376724, 52.640396>,  <37.930943, 42.300987, 52.587032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152336, 42.376724, 52.640396>,  <38.521328, 42.502956, 52.729336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152336, 42.376724, 52.640396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198262, -0.106922, 0.974300,
		-0.331242, 0.942857, 0.036066,
		-0.922481, -0.315578, -0.222349,
		37.875591, 42.282051, 52.573692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141624, 42.795383, 53.242790>,  <38.521328, 42.502956, 52.729336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141624, 42.795383, 53.242790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881832, 42.538544, 53.079876>,  <37.725956, 42.384441, 52.982128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881832, 42.538544, 53.079876>,  <38.141624, 42.795383, 53.242790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881832, 42.538544, 53.079876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435734, -0.124672, 0.891399,
		-0.623141, 0.756419, -0.198810,
		-0.649486, -0.642095, -0.407286,
		37.686985, 42.345917, 52.957691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512581, 42.992775, 53.465034>,  <38.141624, 42.795383, 53.242790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512581, 42.992775, 53.465034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490551, 42.606636, 53.363003>,  <37.477333, 42.374950, 53.301785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490551, 42.606636, 53.363003>,  <37.512581, 42.992775, 53.465034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490551, 42.606636, 53.363003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338574, -0.222276, 0.914309,
		-0.939327, 0.136715, -0.314602,
		-0.055071, -0.965351, -0.255078,
		37.474030, 42.317032, 53.286480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778206, 42.748512, 53.573112>,  <37.512581, 42.992775, 53.465034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778206, 42.748512, 53.573112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030529, 42.438255, 53.581688>,  <37.181923, 42.252102, 53.586834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030529, 42.438255, 53.581688>,  <36.778206, 42.748512, 53.573112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030529, 42.438255, 53.581688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296695, -0.215579, 0.930321,
		-0.716978, -0.593211, -0.366118,
		0.630804, -0.775646, 0.021438,
		37.219772, 42.205563, 53.588120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290028, 42.068760, 53.764420>,  <36.778206, 42.748512, 53.573112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290028, 42.068760, 53.764420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666958, 41.964630, 53.848564>,  <36.893116, 41.902153, 53.899052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666958, 41.964630, 53.848564>,  <36.290028, 42.068760, 53.764420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666958, 41.964630, 53.848564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295813, -0.353762, 0.887326,
		-0.156574, -0.898378, -0.410366,
		0.942327, -0.260324, 0.210362,
		36.949657, 41.886532, 53.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.914928, 41.322697, 55.804245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.609493, 41.543404, 55.670090>,  <43.426231, 41.675827, 55.589596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.609493, 41.543404, 55.670090>,  <43.914928, 41.322697, 55.804245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609493, 41.543404, 55.670090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367651, -0.055480, -0.928308,
		-0.530815, -0.832152, -0.160493,
		-0.763589, 0.551765, -0.335391,
		43.380417, 41.708935, 55.569473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672684, 40.945049, 55.209404>,  <43.914928, 41.322697, 55.804245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672684, 40.945049, 55.209404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.548386, 41.324783, 55.190662>,  <43.473808, 41.552624, 55.179417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.548386, 41.324783, 55.190662>,  <43.672684, 40.945049, 55.209404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548386, 41.324783, 55.190662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215053, 0.022205, -0.976350,
		-0.925846, -0.313470, -0.211058,
		-0.310743, 0.949339, -0.046854,
		43.455162, 41.609585, 55.176605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364388, 40.901581, 54.657436>,  <43.672684, 40.945049, 55.209404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364388, 40.901581, 54.657436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.438789, 41.293884, 54.681160>,  <43.483429, 41.529266, 54.695396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.438789, 41.293884, 54.681160>,  <43.364388, 40.901581, 54.657436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438789, 41.293884, 54.681160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200787, 0.021152, -0.979407,
		-0.961815, 0.194080, -0.192989,
		0.186002, 0.980758, 0.059313,
		43.494591, 41.588112, 54.698956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010563, 41.099194, 54.129787>,  <43.364388, 40.901581, 54.657436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010563, 41.099194, 54.129787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.268013, 41.393959, 54.212448>,  <43.422482, 41.570816, 54.262047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.268013, 41.393959, 54.212448>,  <43.010563, 41.099194, 54.129787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268013, 41.393959, 54.212448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242677, 0.059581, -0.968276,
		-0.725846, 0.673358, -0.140483,
		0.643626, 0.736912, 0.206655,
		43.461102, 41.615032, 54.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911629, 41.597336, 53.582703>,  <43.010563, 41.099194, 54.129787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911629, 41.597336, 53.582703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264130, 41.675140, 53.755009>,  <43.475632, 41.721825, 53.858391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264130, 41.675140, 53.755009>,  <42.911629, 41.597336, 53.582703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264130, 41.675140, 53.755009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416249, 0.112327, -0.902286,
		-0.223893, 0.974447, 0.018022,
		0.881254, 0.194514, 0.430762,
		43.528507, 41.733494, 53.884235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090191, 42.224342, 53.248573>,  <42.911629, 41.597336, 53.582703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090191, 42.224342, 53.248573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431511, 42.070091, 53.388950>,  <43.636303, 41.977539, 53.473179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431511, 42.070091, 53.388950>,  <43.090191, 42.224342, 53.248573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431511, 42.070091, 53.388950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433414, 0.150400, -0.888556,
		0.289872, 0.910313, 0.295474,
		0.853303, -0.385630, 0.350946,
		43.687500, 41.954403, 53.494236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532040, 42.687340, 53.085247>,  <43.090191, 42.224342, 53.248573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532040, 42.687340, 53.085247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.747406, 42.356926, 53.151901>,  <43.876625, 42.158676, 53.191895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.747406, 42.356926, 53.151901>,  <43.532040, 42.687340, 53.085247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747406, 42.356926, 53.151901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427031, 0.096982, -0.899021,
		0.726465, 0.555207, 0.404961,
		0.538417, -0.826039, 0.166636,
		43.908932, 42.109116, 53.201893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095570, 42.747353, 52.696426>,  <43.532040, 42.687340, 53.085247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095570, 42.747353, 52.696426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.124538, 42.356491, 52.776344>,  <44.141918, 42.121975, 52.824295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.124538, 42.356491, 52.776344>,  <44.095570, 42.747353, 52.696426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124538, 42.356491, 52.776344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385798, -0.157284, -0.909077,
		0.919736, 0.142920, 0.365594,
		0.072423, -0.977157, 0.199798,
		44.146267, 42.063343, 52.836285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712120, 42.482918, 52.468380>,  <44.095570, 42.747353, 52.696426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712120, 42.482918, 52.468380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.477501, 42.158951, 52.467705>,  <44.336731, 41.964573, 52.467300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.477501, 42.158951, 52.467705>,  <44.712120, 42.482918, 52.468380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477501, 42.158951, 52.467705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265311, -0.190169, -0.945223,
		0.765228, -0.554865, 0.326422,
		-0.586546, -0.809914, -0.001690,
		44.301537, 41.915977, 52.467197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138996, 41.902489, 52.293285>,  <44.712120, 42.482918, 52.468380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138996, 41.902489, 52.293285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.758087, 41.828636, 52.196053>,  <44.529541, 41.784325, 52.137714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.758087, 41.828636, 52.196053>,  <45.138996, 41.902489, 52.293285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758087, 41.828636, 52.196053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239678, 0.040879, -0.969991,
		0.189032, -0.981957, 0.005325,
		-0.952272, -0.184635, -0.243081,
		44.472404, 41.773247, 52.123127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192539, 41.479855, 51.770607>,  <45.138996, 41.902489, 52.293285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192539, 41.479855, 51.770607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817921, 41.611977, 51.723640>,  <44.593151, 41.691250, 51.695461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817921, 41.611977, 51.723640>,  <45.192539, 41.479855, 51.770607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817921, 41.611977, 51.723640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089290, -0.099120, -0.991061,
		-0.338986, -0.938657, 0.063337,
		-0.936545, 0.330301, -0.117412,
		44.536957, 41.711067, 51.688416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864365, 41.017948, 51.320457>,  <45.192539, 41.479855, 51.770607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864365, 41.017948, 51.320457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.683640, 41.373573, 51.290962>,  <44.575203, 41.586948, 51.273266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.683640, 41.373573, 51.290962>,  <44.864365, 41.017948, 51.320457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683640, 41.373573, 51.290962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108933, -0.027058, -0.993681,
		-0.885437, -0.456990, -0.084623,
		-0.451813, 0.889060, -0.073739,
		44.548096, 41.640293, 51.268841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476883, 40.924610, 50.785442>,  <44.864365, 41.017948, 51.320457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476883, 40.924610, 50.785442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.449383, 41.323051, 50.807571>,  <44.432884, 41.562115, 50.820850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.449383, 41.323051, 50.807571>,  <44.476883, 40.924610, 50.785442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449383, 41.323051, 50.807571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086375, 0.061190, -0.994382,
		-0.993887, -0.063587, -0.090245,
		-0.068752, 0.996098, 0.055324,
		44.428757, 41.621880, 50.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969818, 41.072239, 50.230007>,  <44.476883, 40.924610, 50.785442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969818, 41.072239, 50.230007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.196701, 41.387230, 50.326469>,  <44.332832, 41.576225, 50.384346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.196701, 41.387230, 50.326469>,  <43.969818, 41.072239, 50.230007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196701, 41.387230, 50.326469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213072, 0.142537, -0.966583,
		-0.795532, 0.599641, -0.086940,
		0.567211, 0.787473, 0.241159,
		44.366863, 41.623470, 50.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234009, 41.295593, 49.935680>,  <43.969818, 41.072239, 50.230007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234009, 41.295593, 49.935680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.253723, 40.911880, 49.824429>,  <43.265553, 40.681652, 49.757679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.253723, 40.911880, 49.824429>,  <43.234009, 41.295593, 49.935680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253723, 40.911880, 49.824429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376587, -0.275765, 0.884384,
		-0.925069, 0.061149, -0.374844,
		0.049290, -0.959278, -0.278130,
		43.268509, 40.624096, 49.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583359, 40.967213, 50.090744>,  <43.234009, 41.295593, 49.935680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583359, 40.967213, 50.090744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852936, 40.671982, 50.077888>,  <43.014683, 40.494843, 50.070175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852936, 40.671982, 50.077888>,  <42.583359, 40.967213, 50.090744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852936, 40.671982, 50.077888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364486, -0.370025, 0.854536,
		-0.642609, -0.564196, -0.518397,
		0.673946, -0.738082, -0.032140,
		43.055119, 40.450558, 50.068245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228535, 40.260860, 50.282658>,  <42.583359, 40.967213, 50.090744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228535, 40.260860, 50.282658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613590, 40.167618, 50.337772>,  <42.844624, 40.111671, 50.370842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613590, 40.167618, 50.337772>,  <42.228535, 40.260860, 50.282658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613590, 40.167618, 50.337772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235740, -0.471083, 0.850004,
		-0.133228, -0.850731, -0.508436,
		0.962641, -0.233103, 0.137790,
		42.902382, 40.097687, 50.379108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245213, 39.550980, 50.553120>,  <42.228535, 40.260860, 50.282658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245213, 39.550980, 50.553120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.588562, 39.726532, 50.659386>,  <42.794571, 39.831863, 50.723145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.588562, 39.726532, 50.659386>,  <42.245213, 39.550980, 50.553120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588562, 39.726532, 50.659386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127252, -0.319520, 0.938996,
		0.496993, -0.839816, -0.218419,
		0.858374, 0.438880, 0.265667,
		42.846073, 39.858196, 50.739086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594360, 39.141819, 50.963161>,  <42.245213, 39.550980, 50.553120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594360, 39.141819, 50.963161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.744160, 39.502724, 51.048641>,  <42.834042, 39.719269, 51.099930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.744160, 39.502724, 51.048641>,  <42.594360, 39.141819, 50.963161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744160, 39.502724, 51.048641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023061, -0.221340, 0.974924,
		0.926940, -0.370038, -0.062085,
		0.374501, 0.902264, 0.213702,
		42.856510, 39.773403, 51.112751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845509, 39.037651, 51.587814>,  <42.594360, 39.141819, 50.963161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845509, 39.037651, 51.587814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.858246, 39.437035, 51.569649>,  <42.865887, 39.676666, 51.558750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.858246, 39.437035, 51.569649>,  <42.845509, 39.037651, 51.587814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858246, 39.437035, 51.569649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119122, 0.048906, 0.991674,
		0.992369, -0.026165, 0.120496,
		0.031840, 0.998460, -0.045416,
		42.867798, 39.736572, 51.556023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397305, 39.242908, 51.992657>,  <42.845509, 39.037651, 51.587814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397305, 39.242908, 51.992657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138149, 39.547585, 51.989567>,  <42.982655, 39.730392, 51.987713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138149, 39.547585, 51.989567>,  <43.397305, 39.242908, 51.992657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138149, 39.547585, 51.989567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101672, -0.076424, 0.991878,
		0.754917, 0.643414, 0.126957,
		-0.647891, 0.761694, -0.007723,
		42.943783, 39.776093, 51.987251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601810, 39.669632, 52.585796>,  <43.397305, 39.242908, 51.992657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601810, 39.669632, 52.585796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220623, 39.784325, 52.546532>,  <42.991909, 39.853142, 52.522972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220623, 39.784325, 52.546532>,  <43.601810, 39.669632, 52.585796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220623, 39.784325, 52.546532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178581, -0.269583, 0.946274,
		0.244865, 0.919299, 0.308109,
		-0.952969, 0.286732, -0.098157,
		42.934731, 39.870346, 52.517086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396557, 40.069466, 53.149868>,  <43.601810, 39.669632, 52.585796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396557, 40.069466, 53.149868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038322, 39.964836, 53.005920>,  <42.823383, 39.902058, 52.919552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038322, 39.964836, 53.005920>,  <43.396557, 40.069466, 53.149868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038322, 39.964836, 53.005920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339386, -0.121316, 0.932791,
		-0.287653, 0.957528, 0.019874,
		-0.895585, -0.261576, -0.359868,
		42.769646, 39.886364, 52.897961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904049, 40.458778, 53.505245>,  <43.396557, 40.069466, 53.149868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904049, 40.458778, 53.505245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691528, 40.150337, 53.364891>,  <42.564014, 39.965275, 53.280678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691528, 40.150337, 53.364891>,  <42.904049, 40.458778, 53.505245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691528, 40.150337, 53.364891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432011, -0.109674, 0.895175,
		-0.728753, 0.627196, -0.274853,
		-0.531306, -0.771101, -0.350881,
		42.532135, 39.919006, 53.259628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216507, 40.531582, 53.663395>,  <42.904049, 40.458778, 53.505245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216507, 40.531582, 53.663395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.233459, 40.135704, 53.608673>,  <42.243629, 39.898178, 53.575840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.233459, 40.135704, 53.608673>,  <42.216507, 40.531582, 53.663395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233459, 40.135704, 53.608673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589994, -0.135292, 0.795992,
		-0.806295, 0.046980, -0.589645,
		0.042379, -0.989691, -0.136803,
		42.246174, 39.838799, 53.567631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444717, 40.292580, 53.731987>,  <42.216507, 40.531582, 53.663395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444717, 40.292580, 53.731987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694695, 39.984901, 53.785347>,  <41.844681, 39.800297, 53.817364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694695, 39.984901, 53.785347>,  <41.444717, 40.292580, 53.731987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694695, 39.984901, 53.785347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461249, -0.225946, 0.858020,
		-0.629842, -0.597739, -0.495991,
		0.624939, -0.769192, 0.133396,
		41.882175, 39.754143, 53.825367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011589, 39.619217, 53.837849>,  <41.444717, 40.292580, 53.731987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011589, 39.619217, 53.837849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370090, 39.573265, 54.009212>,  <41.585190, 39.545696, 54.112030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370090, 39.573265, 54.009212>,  <41.011589, 39.619217, 53.837849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370090, 39.573265, 54.009212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442905, -0.283753, 0.850482,
		0.023864, -0.951992, -0.305193,
		0.896251, -0.114876, 0.428413,
		41.638966, 39.538803, 54.137737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856365, 39.228909, 54.382931>,  <41.011589, 39.619217, 53.837849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856365, 39.228909, 54.382931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.223450, 39.348595, 54.487446>,  <41.443703, 39.420406, 54.550156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.223450, 39.348595, 54.487446>,  <40.856365, 39.228909, 54.382931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223450, 39.348595, 54.487446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203618, -0.210466, 0.956161,
		0.341089, -0.930686, -0.132222,
		0.917714, 0.299213, 0.261292,
		41.498764, 39.438358, 54.565834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604877, 38.578945, 54.014889>,  <40.856365, 39.228909, 54.382931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604877, 38.578945, 54.014889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242714, 38.415138, 53.970112>,  <40.025417, 38.316853, 53.943245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242714, 38.415138, 53.970112>,  <40.604877, 38.578945, 54.014889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242714, 38.415138, 53.970112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093589, 0.064664, -0.993509,
		0.414097, -0.910008, -0.020222,
		-0.905408, -0.409517, -0.111944,
		39.971092, 38.292282, 53.936527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687370, 38.057240, 53.575024>,  <40.604877, 38.578945, 54.014889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687370, 38.057240, 53.575024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290878, 38.101540, 53.546196>,  <40.052982, 38.128120, 53.528900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290878, 38.101540, 53.546196>,  <40.687370, 38.057240, 53.575024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290878, 38.101540, 53.546196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082066, 0.088502, -0.992690,
		-0.103561, -0.989900, -0.096814,
		-0.991232, 0.110749, -0.072072,
		39.993507, 38.134766, 53.524574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430912, 37.575394, 53.023487>,  <40.687370, 38.057240, 53.575024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430912, 37.575394, 53.023487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156601, 37.864388, 53.058651>,  <39.992016, 38.037785, 53.079750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156601, 37.864388, 53.058651>,  <40.430912, 37.575394, 53.023487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156601, 37.864388, 53.058651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028526, 0.094017, -0.995162,
		-0.727251, -0.684968, -0.043866,
		-0.685779, 0.722481, 0.087913,
		39.950867, 38.081131, 53.085026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884205, 37.343288, 52.674549>,  <40.430912, 37.575394, 53.023487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884205, 37.343288, 52.674549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849319, 37.741714, 52.668320>,  <39.828388, 37.980770, 52.664581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849319, 37.741714, 52.668320>,  <39.884205, 37.343288, 52.674549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849319, 37.741714, 52.668320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030784, -0.018317, -0.999358,
		-0.995714, -0.086681, 0.032260,
		-0.087217, 0.996068, -0.015570,
		39.823154, 38.040535, 52.663651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465668, 37.476727, 52.177254>,  <39.884205, 37.343288, 52.674549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465668, 37.476727, 52.177254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624519, 37.838020, 52.242313>,  <39.719830, 38.054798, 52.281349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624519, 37.838020, 52.242313>,  <39.465668, 37.476727, 52.177254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624519, 37.838020, 52.242313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006944, 0.180175, -0.983610,
		-0.917736, 0.389492, 0.077826,
		0.397131, 0.903235, 0.162648,
		39.743660, 38.108990, 52.291107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981644, 38.073196, 51.897766>,  <39.465668, 37.476727, 52.177254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981644, 38.073196, 51.897766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358292, 38.207664, 51.890457>,  <39.584282, 38.288345, 51.886070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358292, 38.207664, 51.890457>,  <38.981644, 38.073196, 51.897766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358292, 38.207664, 51.890457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070972, 0.145142, -0.986862,
		-0.329099, 0.930551, 0.160527,
		0.941625, 0.336168, -0.018277,
		39.640778, 38.308514, 51.884975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053974, 38.680599, 51.327717>,  <38.981644, 38.073196, 51.897766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053974, 38.680599, 51.327717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438927, 38.634048, 51.425919>,  <39.669899, 38.606117, 51.484840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438927, 38.634048, 51.425919>,  <39.053974, 38.680599, 51.327717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438927, 38.634048, 51.425919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269177, 0.285801, -0.919708,
		0.036865, 0.951196, 0.306376,
		0.962385, -0.116374, 0.245504,
		39.727642, 38.599136, 51.499569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464954, 39.270828, 51.349560>,  <39.053974, 38.680599, 51.327717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464954, 39.270828, 51.349560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695953, 38.960121, 51.249065>,  <39.834553, 38.773697, 51.188766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695953, 38.960121, 51.249065>,  <39.464954, 39.270828, 51.349560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695953, 38.960121, 51.249065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137334, 0.395789, -0.908014,
		0.804758, 0.489873, 0.335245,
		0.577498, -0.776772, -0.251239,
		39.869202, 38.727089, 51.173695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137348, 39.474983, 51.247536>,  <39.464954, 39.270828, 51.349560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137348, 39.474983, 51.247536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056286, 39.161758, 51.012337>,  <40.007648, 38.973824, 50.871216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056286, 39.161758, 51.012337>,  <40.137348, 39.474983, 51.247536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056286, 39.161758, 51.012337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376869, 0.491843, -0.784895,
		0.903826, -0.380661, 0.195438,
		-0.202655, -0.783063, -0.588000,
		39.995491, 38.926838, 50.835938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795105, 39.327465, 50.764332>,  <40.137348, 39.474983, 51.247536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795105, 39.327465, 50.764332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465469, 39.150726, 50.622547>,  <40.267689, 39.044682, 50.537476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465469, 39.150726, 50.622547>,  <40.795105, 39.327465, 50.764332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465469, 39.150726, 50.622547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154990, 0.425989, -0.891354,
		0.544841, -0.789495, -0.282571,
		-0.824092, -0.441850, -0.354460,
		40.218243, 39.018173, 50.516209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994453, 39.216938, 50.159420>,  <40.795105, 39.327465, 50.764332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994453, 39.216938, 50.159420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.600388, 39.163246, 50.116638>,  <40.363949, 39.131031, 50.090969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.600388, 39.163246, 50.116638>,  <40.994453, 39.216938, 50.159420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600388, 39.163246, 50.116638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050498, 0.368915, -0.928090,
		0.164032, -0.919720, -0.356663,
		-0.985162, -0.134226, -0.106958,
		40.304840, 39.122978, 50.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890873, 38.913193, 49.421124>,  <40.994453, 39.216938, 50.159420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890873, 38.913193, 49.421124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562984, 39.107529, 49.542458>,  <40.366249, 39.224133, 49.615257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562984, 39.107529, 49.542458>,  <40.890873, 38.913193, 49.421124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562984, 39.107529, 49.542458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109654, 0.386682, -0.915671,
		-0.562165, -0.783858, -0.263698,
		-0.819723, 0.485842, 0.303332,
		40.317066, 39.253281, 49.633457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286255, 38.922691, 48.902065>,  <40.890873, 38.913193, 49.421124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286255, 38.922691, 48.902065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.146290, 39.224548, 49.124081>,  <40.062313, 39.405663, 49.257290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.146290, 39.224548, 49.124081>,  <40.286255, 38.922691, 48.902065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146290, 39.224548, 49.124081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379955, 0.427246, -0.820424,
		-0.856270, -0.497964, 0.137234,
		-0.349909, 0.754647, 0.555042,
		40.041317, 39.450943, 49.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643902, 39.055302, 48.753273>,  <40.286255, 38.922691, 48.902065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643902, 39.055302, 48.753273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774891, 39.399315, 48.909786>,  <39.853485, 39.605724, 49.003693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774891, 39.399315, 48.909786>,  <39.643902, 39.055302, 48.753273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774891, 39.399315, 48.909786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355415, 0.495823, -0.792364,
		-0.875467, 0.120408, 0.468037,
		0.327471, 0.860036, 0.391282,
		39.873131, 39.657326, 49.027172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.183884, 41.323322, 54.203701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562508, 41.440125, 54.258492>,  <36.789680, 41.510204, 54.291367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562508, 41.440125, 54.258492>,  <36.183884, 41.323322, 54.203701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562508, 41.440125, 54.258492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020171, -0.477453, 0.878426,
		0.321906, -0.828717, -0.457826,
		0.946557, 0.292005, 0.136979,
		36.846474, 41.527725, 54.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494011, 40.728642, 54.440281>,  <36.183884, 41.323322, 54.203701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494011, 40.728642, 54.440281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685753, 41.058578, 54.560181>,  <36.800797, 41.256542, 54.632122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685753, 41.058578, 54.560181>,  <36.494011, 40.728642, 54.440281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685753, 41.058578, 54.560181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033844, -0.323925, 0.945477,
		0.876968, -0.463365, -0.127359,
		0.479355, 0.824843, 0.299754,
		36.829559, 41.306030, 54.650108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006683, 40.419662, 54.743172>,  <36.494011, 40.728642, 54.440281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006683, 40.419662, 54.743172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015137, 40.797676, 54.873692>,  <37.020210, 41.024483, 54.952003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015137, 40.797676, 54.873692>,  <37.006683, 40.419662, 54.743172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015137, 40.797676, 54.873692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063239, -0.326979, 0.942913,
		0.997775, 0.000703, -0.066675,
		0.021138, 0.945031, 0.326296,
		37.021477, 41.081184, 54.971581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542530, 40.415012, 55.190968>,  <37.006683, 40.419662, 54.743172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542530, 40.415012, 55.190968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303337, 40.722000, 55.283398>,  <37.159821, 40.906193, 55.338856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303337, 40.722000, 55.283398>,  <37.542530, 40.415012, 55.190968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303337, 40.722000, 55.283398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078753, -0.343171, 0.935966,
		0.797629, 0.541496, 0.265652,
		-0.597986, 0.767474, 0.231078,
		37.123940, 40.952244, 55.352722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891861, 40.763020, 55.791756>,  <37.542530, 40.415012, 55.190968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891861, 40.763020, 55.791756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.497414, 40.828178, 55.804661>,  <37.260746, 40.867271, 55.812405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.497414, 40.828178, 55.804661>,  <37.891861, 40.763020, 55.791756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497414, 40.828178, 55.804661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016243, -0.287959, 0.957505,
		0.165262, 0.943687, 0.286607,
		-0.986116, 0.162895, 0.032260,
		37.201580, 40.877048, 55.814339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831398, 41.042519, 56.517250>,  <37.891861, 40.763020, 55.791756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831398, 41.042519, 56.517250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461521, 40.988342, 56.374924>,  <37.239597, 40.955837, 56.289528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461521, 40.988342, 56.374924>,  <37.831398, 41.042519, 56.517250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461521, 40.988342, 56.374924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305452, -0.293956, 0.905698,
		-0.227267, 0.946174, 0.230445,
		-0.924688, -0.135445, -0.355818,
		37.184116, 40.947708, 56.268177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418938, 41.378090, 57.054836>,  <37.831398, 41.042519, 56.517250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418938, 41.378090, 57.054836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183746, 41.127754, 56.849857>,  <37.042633, 40.977554, 56.726868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183746, 41.127754, 56.849857>,  <37.418938, 41.378090, 57.054836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183746, 41.127754, 56.849857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526801, -0.184470, 0.829730,
		-0.613809, 0.757823, -0.221228,
		-0.587979, -0.625839, -0.512451,
		37.007351, 40.940002, 56.696121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829426, 41.363564, 57.385960>,  <37.418938, 41.378090, 57.054836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829426, 41.363564, 57.385960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769386, 41.029236, 57.174725>,  <36.733360, 40.828640, 57.047985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769386, 41.029236, 57.174725>,  <36.829426, 41.363564, 57.385960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769386, 41.029236, 57.174725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373836, -0.446497, 0.812949,
		-0.915268, 0.319443, -0.245439,
		-0.150104, -0.835821, -0.528084,
		36.724354, 40.778488, 57.016300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195572, 41.071781, 57.604584>,  <36.829426, 41.363564, 57.385960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195572, 41.071781, 57.604584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.391098, 40.760506, 57.446861>,  <36.508415, 40.573738, 57.352230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.391098, 40.760506, 57.446861>,  <36.195572, 41.071781, 57.604584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391098, 40.760506, 57.446861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297458, -0.573572, 0.763239,
		-0.820110, -0.255793, -0.511850,
		0.488814, -0.778194, -0.394305,
		36.537743, 40.527046, 57.328571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680851, 40.535370, 57.552532>,  <36.195572, 41.071781, 57.604584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680851, 40.535370, 57.552532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049934, 40.381241, 57.557194>,  <36.271385, 40.288765, 57.559990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049934, 40.381241, 57.557194>,  <35.680851, 40.535370, 57.552532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049934, 40.381241, 57.557194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289688, -0.673120, 0.680434,
		-0.254340, -0.631219, -0.732717,
		0.922709, -0.385321, 0.011655,
		36.326748, 40.265644, 57.560692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516655, 39.832798, 57.530941>,  <35.680851, 40.535370, 57.552532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516655, 39.832798, 57.530941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887775, 39.877274, 57.673386>,  <36.110447, 39.903957, 57.758854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887775, 39.877274, 57.673386>,  <35.516655, 39.832798, 57.530941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887775, 39.877274, 57.673386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223456, -0.598754, 0.769130,
		0.298744, -0.793178, -0.530680,
		0.927804, 0.111189, 0.356114,
		36.166115, 39.910629, 57.780220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653511, 39.232521, 57.802361>,  <35.516655, 39.832798, 57.530941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653511, 39.232521, 57.802361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936035, 39.442627, 57.992191>,  <36.105549, 39.568691, 58.106091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936035, 39.442627, 57.992191>,  <35.653511, 39.232521, 57.802361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936035, 39.442627, 57.992191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041122, -0.638822, 0.768254,
		0.706706, -0.562142, -0.429608,
		0.706311, 0.525264, 0.474576,
		36.147930, 39.600204, 58.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076225, 38.838402, 58.144650>,  <35.653511, 39.232521, 57.802361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076225, 38.838402, 58.144650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102844, 39.190933, 58.331768>,  <36.118816, 39.402451, 58.444038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102844, 39.190933, 58.331768>,  <36.076225, 38.838402, 58.144650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102844, 39.190933, 58.331768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315231, -0.426256, 0.847901,
		0.946679, -0.203891, 0.249455,
		0.066548, 0.881325, 0.467801,
		36.122810, 39.455330, 58.472107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547695, 39.059288, 58.754768>,  <36.076225, 38.838402, 58.144650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547695, 39.059288, 58.754768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863808, 38.988182, 58.520210>,  <37.053474, 38.945518, 58.379475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863808, 38.988182, 58.520210>,  <36.547695, 39.059288, 58.754768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863808, 38.988182, 58.520210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475089, 0.782140, 0.403171,
		0.386977, -0.597208, 0.702560,
		0.790277, -0.177761, -0.586398,
		37.100891, 38.934853, 58.344292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155838, 38.502930, 58.603722>,  <36.547695, 39.059288, 58.754768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155838, 38.502930, 58.603722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426544, 38.245750, 58.747166>,  <37.588970, 38.091442, 58.833233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426544, 38.245750, 58.747166>,  <37.155838, 38.502930, 58.603722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426544, 38.245750, 58.747166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401289, -0.086208, -0.911886,
		0.617213, 0.761040, 0.199667,
		0.676768, -0.642951, 0.358606,
		37.629574, 38.052864, 58.854748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745789, 38.812809, 58.412262>,  <37.155838, 38.502930, 58.603722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745789, 38.812809, 58.412262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793640, 38.420723, 58.475327>,  <37.822353, 38.185471, 58.513165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793640, 38.420723, 58.475327>,  <37.745789, 38.812809, 58.412262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793640, 38.420723, 58.475327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445779, -0.088863, -0.890721,
		0.887113, 0.176844, 0.426330,
		0.119633, -0.980219, 0.157665,
		37.829529, 38.126656, 58.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394512, 38.675972, 58.259968>,  <37.745789, 38.812809, 58.412262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394512, 38.675972, 58.259968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224373, 38.316292, 58.218960>,  <38.122288, 38.100483, 58.194355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224373, 38.316292, 58.218960>,  <38.394512, 38.675972, 58.259968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224373, 38.316292, 58.218960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567070, -0.176515, -0.804533,
		0.705342, -0.400346, 0.584992,
		-0.425352, -0.899203, -0.102521,
		38.096767, 38.046532, 58.188202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018970, 38.226223, 58.116459>,  <38.394512, 38.675972, 58.259968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018970, 38.226223, 58.116459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683601, 38.036743, 58.008640>,  <38.482380, 37.923054, 57.943951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683601, 38.036743, 58.008640>,  <39.018970, 38.226223, 58.116459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683601, 38.036743, 58.008640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375266, -0.143097, -0.915805,
		0.395245, -0.868984, 0.297739,
		-0.838425, -0.473699, -0.269542,
		38.432076, 37.894634, 57.927776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307457, 37.497818, 57.858395>,  <39.018970, 38.226223, 58.116459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307457, 37.497818, 57.858395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954357, 37.584381, 57.691582>,  <38.742496, 37.636318, 57.591492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954357, 37.584381, 57.691582>,  <39.307457, 37.497818, 57.858395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954357, 37.584381, 57.691582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354080, -0.277020, -0.893245,
		-0.308838, -0.936176, 0.167911,
		-0.882750, 0.216414, -0.417036,
		38.689533, 37.649303, 57.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230873, 37.070305, 57.360725>,  <39.307457, 37.497818, 57.858395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230873, 37.070305, 57.360725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934402, 37.320145, 57.262306>,  <38.756519, 37.470047, 57.203255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934402, 37.320145, 57.262306>,  <39.230873, 37.070305, 57.360725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934402, 37.320145, 57.262306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157025, -0.195042, -0.968144,
		-0.652689, -0.756199, 0.046483,
		-0.741175, 0.624598, -0.246044,
		38.712051, 37.507523, 57.188492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941174, 36.739170, 56.811371>,  <39.230873, 37.070305, 57.360725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941174, 36.739170, 56.811371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816498, 37.118622, 56.789642>,  <38.741692, 37.346294, 56.776604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816498, 37.118622, 56.789642>,  <38.941174, 36.739170, 56.811371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816498, 37.118622, 56.789642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200420, 0.009753, -0.979661,
		-0.928805, -0.316240, -0.193164,
		-0.311693, 0.948629, -0.054322,
		38.722988, 37.403210, 56.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328220, 36.815369, 56.300777>,  <38.941174, 36.739170, 56.811371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328220, 36.815369, 56.300777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.502438, 37.174225, 56.330292>,  <38.606968, 37.389538, 56.348000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.502438, 37.174225, 56.330292>,  <38.328220, 36.815369, 56.300777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502438, 37.174225, 56.330292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257979, -0.045874, -0.965061,
		-0.862409, 0.439361, -0.251423,
		0.435544, 0.897139, 0.073783,
		38.633102, 37.443367, 56.352428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198700, 37.105343, 55.650723>,  <38.328220, 36.815369, 56.300777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198700, 37.105343, 55.650723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491844, 37.338036, 55.791866>,  <38.667728, 37.477650, 55.876553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491844, 37.338036, 55.791866>,  <38.198700, 37.105343, 55.650723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491844, 37.338036, 55.791866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311892, 0.173687, -0.934107,
		-0.604686, 0.794621, -0.054150,
		0.732856, 0.581730, 0.352862,
		38.711700, 37.512554, 55.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260288, 37.605408, 55.132080>,  <38.198700, 37.105343, 55.650723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260288, 37.605408, 55.132080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591366, 37.648254, 55.352425>,  <38.790012, 37.673962, 55.484631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591366, 37.648254, 55.352425>,  <38.260288, 37.605408, 55.132080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591366, 37.648254, 55.352425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522018, 0.213289, -0.825836,
		-0.205949, 0.971100, 0.120624,
		0.827697, 0.107112, 0.550858,
		38.839676, 37.680389, 55.517681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538643, 38.144970, 54.970142>,  <38.260288, 37.605408, 55.132080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538643, 38.144970, 54.970142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880180, 38.007385, 55.126419>,  <39.085102, 37.924835, 55.220184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880180, 38.007385, 55.126419>,  <38.538643, 38.144970, 54.970142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880180, 38.007385, 55.126419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495562, 0.307517, -0.812313,
		0.159260, 0.887201, 0.433026,
		0.853847, -0.343960, 0.390688,
		39.136333, 37.904198, 55.243626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030483, 38.669987, 54.901257>,  <38.538643, 38.144970, 54.970142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030483, 38.669987, 54.901257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249699, 38.340752, 54.960827>,  <39.381229, 38.143211, 54.996571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249699, 38.340752, 54.960827>,  <39.030483, 38.669987, 54.901257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249699, 38.340752, 54.960827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598452, 0.261444, -0.757300,
		0.584389, 0.504154, 0.635860,
		0.548037, -0.823089, 0.148927,
		39.414108, 38.093826, 55.005505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749836, 38.912437, 54.935574>,  <39.030483, 38.669987, 54.901257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749836, 38.912437, 54.935574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717140, 38.528221, 54.829231>,  <39.697521, 38.297691, 54.765427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717140, 38.528221, 54.829231>,  <39.749836, 38.912437, 54.935574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717140, 38.528221, 54.829231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466784, 0.198785, -0.861741,
		0.880586, -0.194536, 0.432116,
		-0.081741, -0.960541, -0.265854,
		39.692619, 38.240059, 54.749474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358154, 38.759396, 54.673267>,  <39.749836, 38.912437, 54.935574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358154, 38.759396, 54.673267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099232, 38.492622, 54.525650>,  <39.943878, 38.332558, 54.437080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099232, 38.492622, 54.525650>,  <40.358154, 38.759396, 54.673267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099232, 38.492622, 54.525650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440119, 0.068257, -0.895342,
		0.622321, -0.741986, 0.249346,
		-0.647311, -0.666932, -0.369039,
		39.905037, 38.292542, 54.414940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040390, 38.654640, 54.940727>,  <40.358154, 38.759396, 54.673267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040390, 38.654640, 54.940727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332237, 38.926254, 54.973145>,  <41.507343, 39.089222, 54.992596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332237, 38.926254, 54.973145>,  <41.040390, 38.654640, 54.940727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332237, 38.926254, 54.973145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080111, -0.202562, 0.975987,
		0.679149, -0.705603, -0.202191,
		0.729615, 0.679039, 0.081043,
		41.551121, 39.129967, 54.997456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529652, 38.324345, 55.330799>,  <41.040390, 38.654640, 54.940727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529652, 38.324345, 55.330799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609341, 38.713867, 55.374638>,  <41.657154, 38.947582, 55.400940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609341, 38.713867, 55.374638>,  <41.529652, 38.324345, 55.330799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609341, 38.713867, 55.374638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172180, -0.144884, 0.974352,
		0.964709, -0.175245, -0.196534,
		0.199225, 0.973806, 0.109597,
		41.669109, 39.006008, 55.407516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076031, 38.388386, 55.819893>,  <41.529652, 38.324345, 55.330799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076031, 38.388386, 55.819893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.900185, 38.747620, 55.825394>,  <41.794678, 38.963158, 55.828693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.900185, 38.747620, 55.825394>,  <42.076031, 38.388386, 55.819893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900185, 38.747620, 55.825394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098824, 0.033145, 0.994553,
		0.892734, 0.438578, -0.103323,
		-0.439614, 0.898082, 0.013752,
		41.768299, 39.017044, 55.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463512, 38.672192, 56.400658>,  <42.076031, 38.388386, 55.819893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463512, 38.672192, 56.400658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.156296, 38.921089, 56.340092>,  <41.971966, 39.070427, 56.303753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.156296, 38.921089, 56.340092>,  <42.463512, 38.672192, 56.400658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156296, 38.921089, 56.340092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110942, 0.103575, 0.988415,
		0.630715, 0.775943, -0.010517,
		-0.768043, 0.622242, -0.151411,
		41.925884, 39.107761, 56.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649006, 39.324654, 56.763691>,  <42.463512, 38.672192, 56.400658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649006, 39.324654, 56.763691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.252304, 39.315132, 56.713333>,  <42.014282, 39.309418, 56.683117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.252304, 39.315132, 56.713333>,  <42.649006, 39.324654, 56.763691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252304, 39.315132, 56.713333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126875, 0.045596, 0.990870,
		-0.017847, 0.998676, -0.048240,
		-0.991758, -0.023804, -0.125894,
		41.954777, 39.307991, 56.675564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372334, 39.702999, 57.258461>,  <42.649006, 39.324654, 56.763691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372334, 39.702999, 57.258461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.042690, 39.498436, 57.161041>,  <41.844906, 39.375698, 57.102589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.042690, 39.498436, 57.161041>,  <42.372334, 39.702999, 57.258461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042690, 39.498436, 57.161041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343974, 0.110216, 0.932488,
		-0.450039, 0.852241, -0.266740,
		-0.824104, -0.511407, -0.243547,
		41.795460, 39.345013, 57.087978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693295, 40.118168, 57.367886>,  <42.372334, 39.702999, 57.258461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693295, 40.118168, 57.367886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618683, 39.726814, 57.403584>,  <41.573917, 39.492001, 57.425003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.618683, 39.726814, 57.403584>,  <41.693295, 40.118168, 57.367886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618683, 39.726814, 57.403584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382851, 0.156048, 0.910535,
		-0.904783, 0.135671, -0.403684,
		-0.186527, -0.978388, 0.089248,
		41.562725, 39.433296, 57.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240788, 40.766731, 57.432377>,  <41.693295, 40.118168, 57.367886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240788, 40.766731, 57.432377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491203, 41.010277, 57.627254>,  <41.641453, 41.156403, 57.744183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.491203, 41.010277, 57.627254>,  <41.240788, 40.766731, 57.432377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491203, 41.010277, 57.627254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408526, 0.276088, -0.869990,
		-0.664213, 0.743681, -0.075894,
		0.626041, 0.608863, 0.487194,
		41.679016, 41.192936, 57.773411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203400, 41.380589, 57.175247>,  <41.240788, 40.766731, 57.432377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203400, 41.380589, 57.175247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557549, 41.402397, 57.359917>,  <41.770039, 41.415482, 57.470718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557549, 41.402397, 57.359917>,  <41.203400, 41.380589, 57.175247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557549, 41.402397, 57.359917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412613, 0.365345, -0.834430,
		-0.214166, 0.929274, 0.300970,
		0.885372, 0.054522, 0.461675,
		41.823158, 41.418755, 57.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438274, 42.004601, 56.923969>,  <41.203400, 41.380589, 57.175247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438274, 42.004601, 56.923969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770943, 41.826530, 57.056717>,  <41.970543, 41.719688, 57.136364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770943, 41.826530, 57.056717>,  <41.438274, 42.004601, 56.923969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770943, 41.826530, 57.056717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505283, 0.358947, -0.784758,
		0.230235, 0.820349, 0.523468,
		0.831673, -0.445178, 0.331867,
		42.020443, 41.692978, 57.156277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033768, 42.528324, 56.880325>,  <41.438274, 42.004601, 56.923969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033768, 42.528324, 56.880325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191235, 42.160713, 56.872124>,  <42.285713, 41.940147, 56.867203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191235, 42.160713, 56.872124>,  <42.033768, 42.528324, 56.880325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191235, 42.160713, 56.872124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575744, 0.263886, -0.773875,
		0.716623, 0.292840, 0.633006,
		0.393663, -0.919026, -0.020506,
		42.309334, 41.885006, 56.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753960, 42.593277, 56.822151>,  <42.033768, 42.528324, 56.880325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753960, 42.593277, 56.822151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.704208, 42.219444, 56.688835>,  <42.674358, 41.995144, 56.608845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.704208, 42.219444, 56.688835>,  <42.753960, 42.593277, 56.822151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704208, 42.219444, 56.688835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737112, 0.137833, -0.661565,
		0.664226, -0.327959, 0.671749,
		-0.124377, -0.934583, -0.333295,
		42.666897, 41.939068, 56.588848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428478, 42.386139, 56.732479>,  <42.753960, 42.593277, 56.822151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428478, 42.386139, 56.732479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195293, 42.127586, 56.535561>,  <43.055382, 41.972454, 56.417412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195293, 42.127586, 56.535561>,  <43.428478, 42.386139, 56.732479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195293, 42.127586, 56.535561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547478, 0.135200, -0.825826,
		0.600357, -0.750940, 0.275064,
		-0.582957, -0.646382, -0.492292,
		43.020405, 41.933670, 56.387875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834221, 41.853390, 56.393536>,  <43.428478, 42.386139, 56.732479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834221, 41.853390, 56.393536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.496094, 41.854469, 56.179832>,  <43.293217, 41.855118, 56.051613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.496094, 41.854469, 56.179832>,  <43.834221, 41.853390, 56.393536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496094, 41.854469, 56.179832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526819, -0.162136, -0.834370,
		-0.088875, -0.986765, 0.135634,
		-0.845318, 0.002700, -0.534256,
		43.242496, 41.855278, 56.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.133312, 42.765827, 59.112717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.992355, 42.391487, 59.113934>,  <37.907780, 42.166885, 59.114666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.992355, 42.391487, 59.113934>,  <38.133312, 42.765827, 59.112717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992355, 42.391487, 59.113934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110349, -0.044784, -0.992883,
		0.929324, -0.349548, 0.119051,
		-0.352392, -0.935847, 0.003047,
		37.886639, 42.110733, 59.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695511, 42.202721, 58.870953>,  <38.133312, 42.765827, 59.112717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695511, 42.202721, 58.870953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315739, 42.094475, 58.807274>,  <38.087875, 42.029526, 58.769066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315739, 42.094475, 58.807274>,  <38.695511, 42.202721, 58.870953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315739, 42.094475, 58.807274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171288, -0.021495, -0.984986,
		0.263130, -0.962448, 0.066761,
		-0.949433, -0.270615, -0.159200,
		38.030910, 42.013290, 58.759514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829437, 41.787056, 58.366287>,  <38.695511, 42.202721, 58.870953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829437, 41.787056, 58.366287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441338, 41.883881, 58.368595>,  <38.208477, 41.941975, 58.369980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441338, 41.883881, 58.368595>,  <38.829437, 41.787056, 58.366287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441338, 41.883881, 58.368595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078553, 0.337234, -0.938138,
		-0.229031, -0.909770, -0.346214,
		-0.970244, 0.242058, 0.005772,
		38.150265, 41.956497, 58.370327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551327, 41.484425, 57.819103>,  <38.829437, 41.787056, 58.366287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551327, 41.484425, 57.819103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.310673, 41.789429, 57.914280>,  <38.166283, 41.972431, 57.971386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.310673, 41.789429, 57.914280>,  <38.551327, 41.484425, 57.819103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310673, 41.789429, 57.914280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108131, 0.372892, -0.921552,
		-0.791420, -0.528708, -0.306795,
		-0.601633, 0.762509, 0.237945,
		38.130184, 42.018181, 57.985664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229733, 41.582191, 57.237835>,  <38.551327, 41.484425, 57.819103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229733, 41.582191, 57.237835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178581, 41.916687, 57.451134>,  <38.147888, 42.117382, 57.579113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178581, 41.916687, 57.451134>,  <38.229733, 41.582191, 57.237835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178581, 41.916687, 57.451134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048738, 0.542313, -0.838762,
		-0.990591, -0.081274, -0.110109,
		-0.127883, 0.836236, 0.533249,
		38.140217, 42.167557, 57.611107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830765, 42.010159, 56.825451>,  <38.229733, 41.582191, 57.237835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830765, 42.010159, 56.825451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972225, 42.269585, 57.095055>,  <38.057102, 42.425240, 57.256817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972225, 42.269585, 57.095055>,  <37.830765, 42.010159, 56.825451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972225, 42.269585, 57.095055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257474, 0.625241, -0.736737,
		-0.899244, 0.434087, 0.054126,
		0.353649, 0.648570, 0.674010,
		38.078320, 42.464157, 57.297256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511532, 42.673981, 56.656574>,  <37.830765, 42.010159, 56.825451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511532, 42.673981, 56.656574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841187, 42.742096, 56.872650>,  <38.038979, 42.782963, 57.002296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841187, 42.742096, 56.872650>,  <37.511532, 42.673981, 56.656574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841187, 42.742096, 56.872650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327276, 0.635235, -0.699548,
		-0.462272, 0.753312, 0.467788,
		0.824133, 0.170286, 0.540192,
		38.088425, 42.793182, 57.034706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559650, 43.477032, 56.672108>,  <37.511532, 42.673981, 56.656574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559650, 43.477032, 56.672108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924770, 43.365845, 56.791798>,  <38.143841, 43.299133, 56.863609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924770, 43.365845, 56.791798>,  <37.559650, 43.477032, 56.672108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924770, 43.365845, 56.791798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407528, 0.668092, -0.622555,
		-0.026858, 0.690208, 0.723112,
		0.912798, -0.277968, 0.299223,
		38.198608, 43.282455, 56.881565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019417, 44.087238, 56.898170>,  <37.559650, 43.477032, 56.672108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019417, 44.087238, 56.898170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.268173, 43.795067, 56.785225>,  <38.417427, 43.619762, 56.717457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.268173, 43.795067, 56.785225>,  <38.019417, 44.087238, 56.898170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268173, 43.795067, 56.785225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450216, 0.628501, -0.634265,
		0.640750, 0.267319, 0.719709,
		0.621888, -0.730430, -0.282361,
		38.454739, 43.575939, 56.700516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638985, 44.438183, 56.877029>,  <38.019417, 44.087238, 56.898170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638985, 44.438183, 56.877029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699551, 44.119354, 56.643188>,  <38.735889, 43.928059, 56.502884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699551, 44.119354, 56.643188>,  <38.638985, 44.438183, 56.877029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699551, 44.119354, 56.643188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378974, 0.593036, -0.710413,
		0.912936, -0.113981, 0.391863,
		0.151415, -0.797068, -0.584599,
		38.744976, 43.880234, 56.467808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305794, 44.549927, 56.547493>,  <38.638985, 44.438183, 56.877029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305794, 44.549927, 56.547493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126736, 44.298195, 56.293385>,  <39.019302, 44.147156, 56.140919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126736, 44.298195, 56.293385>,  <39.305794, 44.549927, 56.547493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126736, 44.298195, 56.293385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372805, 0.514394, -0.772279,
		0.812794, -0.582535, 0.004352,
		-0.447641, -0.629326, -0.635269,
		38.992443, 44.109398, 56.102802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770760, 44.461529, 56.010361>,  <39.305794, 44.549927, 56.547493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770760, 44.461529, 56.010361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425835, 44.344803, 55.844826>,  <39.218880, 44.274765, 55.745502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425835, 44.344803, 55.844826>,  <39.770760, 44.461529, 56.010361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425835, 44.344803, 55.844826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260790, 0.444612, -0.856918,
		0.434053, -0.846858, -0.307295,
		-0.862315, -0.291808, -0.413837,
		39.167141, 44.257259, 55.720673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179432, 43.830505, 55.971184>,  <39.770760, 44.461529, 56.010361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179432, 43.830505, 55.971184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568035, 43.833443, 56.065933>,  <40.801197, 43.835205, 56.122784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568035, 43.833443, 56.065933>,  <40.179432, 43.830505, 55.971184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568035, 43.833443, 56.065933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217821, -0.366131, 0.904711,
		0.093367, -0.930534, -0.354103,
		0.971513, 0.007339, 0.236875,
		40.859489, 43.835644, 56.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319828, 43.166393, 56.209862>,  <40.179432, 43.830505, 55.971184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319828, 43.166393, 56.209862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.603256, 43.410904, 56.350864>,  <40.773315, 43.557610, 56.435467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.603256, 43.410904, 56.350864>,  <40.319828, 43.166393, 56.209862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603256, 43.410904, 56.350864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180236, -0.326205, 0.927957,
		0.682229, -0.721062, -0.120967,
		0.708575, 0.611277, 0.352508,
		40.815830, 43.594288, 56.456615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402821, 42.888615, 56.807175>,  <40.319828, 43.166393, 56.209862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402821, 42.888615, 56.807175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580853, 43.245667, 56.835785>,  <40.687672, 43.459896, 56.852951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580853, 43.245667, 56.835785>,  <40.402821, 42.888615, 56.807175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580853, 43.245667, 56.835785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119072, -0.020171, 0.992681,
		0.887539, -0.450339, 0.097309,
		0.445080, 0.892630, 0.071525,
		40.714378, 43.513454, 56.857243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983105, 42.773434, 57.183376>,  <40.402821, 42.888615, 56.807175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983105, 42.773434, 57.183376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862232, 43.153511, 57.213898>,  <40.789707, 43.381557, 57.232212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862232, 43.153511, 57.213898>,  <40.983105, 42.773434, 57.183376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862232, 43.153511, 57.213898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077675, -0.104328, 0.991505,
		0.950081, 0.293686, 0.105332,
		-0.302180, 0.950192, 0.076308,
		40.771580, 43.438568, 57.236790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279366, 43.066162, 57.786148>,  <40.983105, 42.773434, 57.183376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279366, 43.066162, 57.786148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019028, 43.364037, 57.727020>,  <40.862823, 43.542759, 57.691544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019028, 43.364037, 57.727020>,  <41.279366, 43.066162, 57.786148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019028, 43.364037, 57.727020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131159, 0.081485, 0.988007,
		0.747797, 0.662426, 0.044638,
		-0.650844, 0.744683, -0.147817,
		40.823776, 43.587440, 57.682674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509060, 43.726467, 58.125900>,  <41.279366, 43.066162, 57.786148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509060, 43.726467, 58.125900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.113747, 43.756058, 58.072498>,  <40.876560, 43.773811, 58.040455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.113747, 43.756058, 58.072498>,  <41.509060, 43.726467, 58.125900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113747, 43.756058, 58.072498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127192, 0.084375, 0.988283,
		0.084375, 0.993684, -0.073977,
		-0.988283, 0.073977, -0.133508,
		40.817261, 43.778252, 58.032448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286644, 44.328125, 58.442471>,  <41.509060, 43.726467, 58.125900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286644, 44.328125, 58.442471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.981720, 44.070358, 58.418419>,  <40.798767, 43.915699, 58.403988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.981720, 44.070358, 58.418419>,  <41.286644, 44.328125, 58.442471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981720, 44.070358, 58.418419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160846, 0.098638, 0.982038,
		-0.626911, 0.758286, -0.178844,
		-0.762307, -0.644417, -0.060130,
		40.753029, 43.877033, 58.400379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787403, 44.572472, 58.980278>,  <41.286644, 44.328125, 58.442471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787403, 44.572472, 58.980278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675781, 44.194664, 58.910988>,  <40.608810, 43.967979, 58.869411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675781, 44.194664, 58.910988>,  <40.787403, 44.572472, 58.980278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675781, 44.194664, 58.910988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278909, -0.092899, 0.955814,
		-0.918880, 0.315035, -0.237512,
		-0.279050, -0.944523, -0.173229,
		40.592068, 43.911308, 58.859020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198849, 44.587376, 59.246742>,  <40.787403, 44.572472, 58.980278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198849, 44.587376, 59.246742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330658, 44.210495, 59.222511>,  <40.409744, 43.984367, 59.207973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330658, 44.210495, 59.222511>,  <40.198849, 44.587376, 59.246742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330658, 44.210495, 59.222511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100803, -0.098906, 0.989978,
		-0.938752, -0.320109, -0.127568,
		0.329519, -0.942203, -0.060581,
		40.429512, 43.927834, 59.204338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715466, 44.219425, 59.574238>,  <40.198849, 44.587376, 59.246742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715466, 44.219425, 59.574238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.053429, 44.006317, 59.593391>,  <40.256207, 43.878452, 59.604885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.053429, 44.006317, 59.593391>,  <39.715466, 44.219425, 59.574238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053429, 44.006317, 59.593391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168318, -0.179824, 0.969192,
		-0.507747, -0.826933, -0.241609,
		0.844904, -0.532772, 0.047882,
		40.306900, 43.846485, 59.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554317, 43.506592, 59.954479>,  <39.715466, 44.219425, 59.574238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554317, 43.506592, 59.954479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948662, 43.573425, 59.949295>,  <40.185268, 43.613525, 59.946186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948662, 43.573425, 59.949295>,  <39.554317, 43.506592, 59.954479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948662, 43.573425, 59.949295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048709, -0.211707, 0.976119,
		0.160347, -0.962946, -0.216852,
		0.985858, 0.167081, -0.012957,
		40.244419, 43.623550, 59.945408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584129, 43.076462, 60.388996>,  <39.554317, 43.506592, 59.954479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584129, 43.076462, 60.388996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955826, 43.223152, 60.371048>,  <40.178844, 43.311165, 60.360279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955826, 43.223152, 60.371048>,  <39.584129, 43.076462, 60.388996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955826, 43.223152, 60.371048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155213, -0.277280, 0.948169,
		0.335278, -0.888047, -0.314582,
		0.929246, 0.366727, -0.044871,
		40.234600, 43.333172, 60.357586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015701, 42.637276, 60.767612>,  <39.584129, 43.076462, 60.388996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015701, 42.637276, 60.767612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216255, 42.983360, 60.765945>,  <40.336590, 43.191010, 60.764946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216255, 42.983360, 60.765945>,  <40.015701, 42.637276, 60.767612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216255, 42.983360, 60.765945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327059, -0.185069, 0.926705,
		0.801027, -0.466000, -0.375767,
		0.501387, 0.865213, -0.004164,
		40.366673, 43.242924, 60.764698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691994, 42.536945, 60.988735>,  <40.015701, 42.637276, 60.767612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691994, 42.536945, 60.988735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613014, 42.923561, 61.054241>,  <40.565628, 43.155529, 61.093544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613014, 42.923561, 61.054241>,  <40.691994, 42.536945, 60.988735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613014, 42.923561, 61.054241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302108, -0.098932, 0.948126,
		0.932602, 0.236678, -0.272465,
		-0.197445, 0.966538, 0.163766,
		40.553780, 43.213524, 61.103371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620808, 42.308670, 60.427750>,  <40.691994, 42.536945, 60.988735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620808, 42.308670, 60.427750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637207, 41.910767, 60.465202>,  <40.647045, 41.672024, 60.487675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637207, 41.910767, 60.465202>,  <40.620808, 42.308670, 60.427750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637207, 41.910767, 60.465202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559683, -0.054768, -0.826895,
		0.827692, 0.086309, 0.554506,
		0.040999, -0.994762, 0.093636,
		40.649506, 41.612339, 60.493294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349426, 42.169163, 60.165730>,  <40.620808, 42.308670, 60.427750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349426, 42.169163, 60.165730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148033, 41.823654, 60.173687>,  <41.027195, 41.616348, 60.178459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148033, 41.823654, 60.173687>,  <41.349426, 42.169163, 60.165730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148033, 41.823654, 60.173687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466600, -0.291206, -0.835155,
		0.727178, -0.411207, 0.549655,
		-0.503485, -0.863775, 0.019889,
		40.996986, 41.564522, 60.179653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794365, 41.622894, 60.138985>,  <41.349426, 42.169163, 60.165730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794365, 41.622894, 60.138985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439739, 41.482567, 60.018364>,  <41.226963, 41.398373, 59.945992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439739, 41.482567, 60.018364>,  <41.794365, 41.622894, 60.138985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439739, 41.482567, 60.018364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410299, -0.295205, -0.862849,
		0.213682, -0.888697, 0.405657,
		-0.886563, -0.350816, -0.301552,
		41.173771, 41.377323, 59.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891891, 40.858124, 60.046059>,  <41.794365, 41.622894, 60.138985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891891, 40.858124, 60.046059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600624, 40.997719, 59.810097>,  <41.425865, 41.081474, 59.668522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600624, 40.997719, 59.810097>,  <41.891891, 40.858124, 60.046059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600624, 40.997719, 59.810097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480872, -0.353168, -0.802518,
		-0.488403, -0.868032, 0.089347,
		-0.728165, 0.348987, -0.589901,
		41.382175, 41.102413, 59.633125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976124, 40.522011, 59.385021>,  <41.891891, 40.858124, 60.046059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976124, 40.522011, 59.385021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711021, 40.789871, 59.250957>,  <41.551960, 40.950588, 59.170521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711021, 40.789871, 59.250957>,  <41.976124, 40.522011, 59.385021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711021, 40.789871, 59.250957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394580, -0.068108, -0.916334,
		-0.636447, -0.739550, -0.219091,
		-0.662753, 0.669647, -0.335159,
		41.512196, 40.990765, 59.150410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650734, 40.235344, 58.726387>,  <41.976124, 40.522011, 59.385021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650734, 40.235344, 58.726387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.612087, 40.632950, 58.705986>,  <41.588902, 40.871513, 58.693745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.612087, 40.632950, 58.705986>,  <41.650734, 40.235344, 58.726387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612087, 40.632950, 58.705986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400287, -0.008109, -0.916354,
		-0.911282, -0.108946, -0.397108,
		-0.096613, 0.994015, -0.050999,
		41.583103, 40.931152, 58.690685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452541, 40.292892, 58.054962>,  <41.650734, 40.235344, 58.726387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452541, 40.292892, 58.054962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581917, 40.657791, 58.155518>,  <41.659542, 40.876732, 58.215851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.581917, 40.657791, 58.155518>,  <41.452541, 40.292892, 58.054962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581917, 40.657791, 58.155518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293229, 0.155961, -0.943235,
		-0.899669, 0.378793, -0.217053,
		0.323439, 0.912246, 0.251386,
		41.678947, 40.931465, 58.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971737, 40.014496, 57.662498>,  <41.452541, 40.292892, 58.054962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971737, 40.014496, 57.662498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097816, 39.639832, 57.723572>,  <41.173466, 39.415031, 57.760216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097816, 39.639832, 57.723572>,  <40.971737, 40.014496, 57.662498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097816, 39.639832, 57.723572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540530, -0.044946, 0.840123,
		-0.780049, -0.347338, -0.520461,
		0.315199, -0.936662, 0.152687,
		41.192375, 39.358833, 57.769379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434467, 39.648888, 57.871124>,  <40.971737, 40.014496, 57.662498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434467, 39.648888, 57.871124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721390, 39.393974, 57.983795>,  <40.893543, 39.241028, 58.051399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721390, 39.393974, 57.983795>,  <40.434467, 39.648888, 57.871124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721390, 39.393974, 57.983795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521991, -0.223740, 0.823083,
		-0.461512, -0.737438, -0.493145,
		0.717309, -0.637280, 0.281678,
		40.936581, 39.202789, 58.068298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122173, 39.092186, 58.059338>,  <40.434467, 39.648888, 57.871124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122173, 39.092186, 58.059338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.468559, 39.062088, 58.257103>,  <40.676392, 39.044029, 58.375763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.468559, 39.062088, 58.257103>,  <40.122173, 39.092186, 58.059338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468559, 39.062088, 58.257103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498915, -0.198245, 0.843672,
		0.034536, -0.977260, -0.209213,
		0.865962, -0.075243, 0.494416,
		40.728348, 39.039516, 58.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083839, 38.425152, 58.310665>,  <40.122173, 39.092186, 58.059338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083839, 38.425152, 58.310665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312454, 38.664780, 58.534973>,  <40.449623, 38.808556, 58.669559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312454, 38.664780, 58.534973>,  <40.083839, 38.425152, 58.310665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312454, 38.664780, 58.534973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590129, -0.174771, 0.788164,
		0.570170, -0.781392, 0.253639,
		0.571537, 0.599067, 0.560771,
		40.483913, 38.844501, 58.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196281, 37.975651, 58.858639>,  <40.083839, 38.425152, 58.310665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196281, 37.975651, 58.858639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293236, 38.350861, 58.957726>,  <40.351410, 38.575985, 59.017178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293236, 38.350861, 58.957726>,  <40.196281, 37.975651, 58.858639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293236, 38.350861, 58.957726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445412, -0.119238, 0.887350,
		0.861892, -0.325415, 0.388905,
		0.242385, 0.938023, 0.247714,
		40.365952, 38.632267, 59.032040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396317, 37.869003, 59.552429>,  <40.196281, 37.975651, 58.858639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396317, 37.869003, 59.552429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.316299, 38.260521, 59.534821>,  <40.268288, 38.495434, 59.524258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.316299, 38.260521, 59.534821>,  <40.396317, 37.869003, 59.552429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316299, 38.260521, 59.534821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427956, -0.046874, 0.902583,
		0.881383, 0.199394, 0.428259,
		-0.200044, 0.978798, -0.044018,
		40.256287, 38.554161, 59.521614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386768, 38.027138, 60.199104>,  <40.396317, 37.869003, 59.552429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386768, 38.027138, 60.199104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228230, 38.356148, 60.035957>,  <40.133106, 38.553555, 59.938068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228230, 38.356148, 60.035957>,  <40.386768, 38.027138, 60.199104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228230, 38.356148, 60.035957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640934, 0.070195, 0.764379,
		0.657355, 0.564374, 0.499366,
		-0.396343, 0.822529, -0.407870,
		40.109325, 38.602905, 59.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441437, 38.636784, 60.711391>,  <40.386768, 38.027138, 60.199104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441437, 38.636784, 60.711391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143894, 38.709145, 60.454037>,  <39.965366, 38.752563, 60.299625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143894, 38.709145, 60.454037>,  <40.441437, 38.636784, 60.711391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143894, 38.709145, 60.454037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619183, 0.175808, 0.765313,
		0.251562, 0.967659, -0.018763,
		-0.743861, 0.180906, -0.643385,
		39.920734, 38.763416, 60.261021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141354, 39.219765, 60.968731>,  <40.441437, 38.636784, 60.711391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141354, 39.219765, 60.968731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.852341, 39.062057, 60.741573>,  <39.678932, 38.967434, 60.605278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.852341, 39.062057, 60.741573>,  <40.141354, 39.219765, 60.968731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852341, 39.062057, 60.741573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660833, 0.152535, 0.734869,
		-0.203109, 0.906250, -0.370753,
		-0.722528, -0.394264, -0.567898,
		39.635582, 38.943779, 60.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.060265, 43.245674, 46.015362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.743362, 43.022446, 45.916653>,  <42.553223, 42.888508, 45.857426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.743362, 43.022446, 45.916653>,  <43.060265, 43.245674, 46.015362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743362, 43.022446, 45.916653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226807, -0.644767, 0.729955,
		-0.566478, 0.522337, 0.637391,
		-0.792251, -0.558068, -0.246776,
		42.505688, 42.855026, 45.842621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632317, 43.131077, 46.616665>,  <43.060265, 43.245674, 46.015362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632317, 43.131077, 46.616665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.572571, 42.817574, 46.375530>,  <42.536724, 42.629471, 46.230850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.572571, 42.817574, 46.375530>,  <42.632317, 43.131077, 46.616665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572571, 42.817574, 46.375530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156633, -0.620732, 0.768217,
		-0.976297, 0.020320, 0.215478,
		-0.149365, -0.783760, -0.602836,
		42.527760, 42.582447, 46.194679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202347, 42.729160, 46.949226>,  <42.632317, 43.131077, 46.616665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202347, 42.729160, 46.949226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.373032, 42.470284, 46.696545>,  <42.475445, 42.314957, 46.544937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.373032, 42.470284, 46.696545>,  <42.202347, 42.729160, 46.949226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373032, 42.470284, 46.696545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209988, -0.608499, 0.765267,
		-0.879670, -0.459201, -0.123753,
		0.426715, -0.647196, -0.631705,
		42.501045, 42.276123, 46.507034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193840, 42.112087, 47.306728>,  <42.202347, 42.729160, 46.949226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193840, 42.112087, 47.306728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.390282, 41.985924, 46.981930>,  <42.508144, 41.910225, 46.787052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.390282, 41.985924, 46.981930>,  <42.193840, 42.112087, 47.306728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390282, 41.985924, 46.981930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328992, -0.795952, 0.508158,
		-0.806593, -0.516693, -0.287116,
		0.491092, -0.315418, -0.811997,
		42.537613, 41.891300, 46.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034187, 41.405205, 47.190777>,  <42.193840, 42.112087, 47.306728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034187, 41.405205, 47.190777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.387524, 41.444542, 47.007458>,  <42.599525, 41.468143, 46.897465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.387524, 41.444542, 47.007458>,  <42.034187, 41.405205, 47.190777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387524, 41.444542, 47.007458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394215, -0.684825, 0.612870,
		-0.253582, -0.722041, -0.643702,
		0.883340, 0.098344, -0.458299,
		42.652527, 41.474045, 46.869968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268803, 40.677856, 47.129520>,  <42.034187, 41.405205, 47.190777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268803, 40.677856, 47.129520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.600395, 40.899658, 47.100368>,  <42.799351, 41.032738, 47.082878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.600395, 40.899658, 47.100368>,  <42.268803, 40.677856, 47.129520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600395, 40.899658, 47.100368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477580, -0.634052, 0.608190,
		0.291031, -0.538987, -0.790439,
		0.828986, 0.554500, -0.072881,
		42.849091, 41.066010, 47.078503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738148, 40.219746, 47.163872>,  <42.268803, 40.677856, 47.129520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738148, 40.219746, 47.163872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.932259, 40.561996, 47.235878>,  <43.048725, 40.767349, 47.279079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.932259, 40.561996, 47.235878>,  <42.738148, 40.219746, 47.163872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932259, 40.561996, 47.235878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526075, -0.450166, 0.721523,
		0.698391, -0.255440, -0.668581,
		0.485278, 0.855629, 0.180011,
		43.077843, 40.818684, 47.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475410, 39.967419, 47.267838>,  <42.738148, 40.219746, 47.163872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475410, 39.967419, 47.267838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415077, 40.324745, 47.437180>,  <43.378876, 40.539143, 47.538784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415077, 40.324745, 47.437180>,  <43.475410, 39.967419, 47.267838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415077, 40.324745, 47.437180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345485, -0.353611, 0.869252,
		0.926223, 0.277375, -0.255292,
		-0.150835, 0.893321, 0.423351,
		43.369827, 40.592743, 47.564186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119980, 40.143494, 47.689564>,  <43.475410, 39.967419, 47.267838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119980, 40.143494, 47.689564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.824879, 40.365479, 47.843311>,  <43.647820, 40.498669, 47.935558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.824879, 40.365479, 47.843311>,  <44.119980, 40.143494, 47.689564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824879, 40.365479, 47.843311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215242, -0.346278, 0.913106,
		0.639841, 0.756375, 0.136015,
		-0.737749, 0.554967, 0.384367,
		43.603554, 40.531967, 47.958622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470932, 40.551628, 48.258148>,  <44.119980, 40.143494, 47.689564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470932, 40.551628, 48.258148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.076550, 40.531990, 48.321999>,  <43.839920, 40.520206, 48.360310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.076550, 40.531990, 48.321999>,  <44.470932, 40.551628, 48.258148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076550, 40.531990, 48.321999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164511, -0.120821, 0.978948,
		-0.028773, 0.991460, 0.127201,
		-0.985955, -0.049093, 0.159630,
		43.780762, 40.517262, 48.369888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395691, 41.016983, 48.858799>,  <44.470932, 40.551628, 48.258148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395691, 41.016983, 48.858799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.057625, 40.803391, 48.868206>,  <43.854786, 40.675232, 48.873852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.057625, 40.803391, 48.868206>,  <44.395691, 41.016983, 48.858799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057625, 40.803391, 48.868206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019439, 0.013267, 0.999723,
		-0.534150, 0.845389, -0.000833,
		-0.845166, -0.533986, 0.023520,
		43.804073, 40.643196, 48.875263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088425, 41.228302, 49.432201>,  <44.395691, 41.016983, 48.858799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088425, 41.228302, 49.432201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.891830, 40.885445, 49.370552>,  <43.773872, 40.679729, 49.333565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.891830, 40.885445, 49.370552>,  <44.088425, 41.228302, 49.432201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891830, 40.885445, 49.370552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002739, -0.178490, 0.983938,
		-0.870881, 0.483170, 0.090073,
		-0.491487, -0.857139, -0.154120,
		43.744385, 40.628304, 49.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691841, 41.778835, 49.683739>,  <44.088425, 41.228302, 49.432201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691841, 41.778835, 49.683739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042519, 41.892212, 49.839211>,  <44.252926, 41.960239, 49.932491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042519, 41.892212, 49.839211>,  <43.691841, 41.778835, 49.683739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042519, 41.892212, 49.839211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275366, 0.366813, -0.888606,
		-0.394440, 0.886064, 0.243533,
		0.876693, 0.283441, 0.388678,
		44.305527, 41.977245, 49.955814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826233, 42.457787, 49.519123>,  <43.691841, 41.778835, 49.683739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826233, 42.457787, 49.519123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.194664, 42.311829, 49.573471>,  <44.415722, 42.224255, 49.606079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.194664, 42.311829, 49.573471>,  <43.826233, 42.457787, 49.519123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194664, 42.311829, 49.573471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285147, 0.394510, -0.873529,
		0.265143, 0.843335, 0.467425,
		0.921081, -0.364895, 0.135872,
		44.470989, 42.202358, 49.614231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260231, 42.970974, 49.233871>,  <43.826233, 42.457787, 49.519123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260231, 42.970974, 49.233871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.508980, 42.657883, 49.243774>,  <44.658230, 42.470028, 49.249718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.508980, 42.657883, 49.243774>,  <44.260231, 42.970974, 49.233871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508980, 42.657883, 49.243774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267852, 0.182887, -0.945943,
		0.735887, 0.594887, 0.323387,
		0.621873, -0.782727, 0.024757,
		44.695541, 42.423065, 49.251202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850410, 43.231705, 49.092251>,  <44.260231, 42.970974, 49.233871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850410, 43.231705, 49.092251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.906788, 42.847084, 48.997978>,  <44.940613, 42.616310, 48.941414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.906788, 42.847084, 48.997978>,  <44.850410, 43.231705, 49.092251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906788, 42.847084, 48.997978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495321, 0.274611, -0.824164,
		0.857200, -0.000577, 0.514984,
		0.140944, -0.961555, -0.235682,
		44.949070, 42.558617, 48.927273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540726, 43.216595, 48.770069>,  <44.850410, 43.231705, 49.092251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540726, 43.216595, 48.770069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.357063, 42.876007, 48.668736>,  <45.246864, 42.671654, 48.607937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.357063, 42.876007, 48.668736>,  <45.540726, 43.216595, 48.770069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357063, 42.876007, 48.668736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429997, 0.036518, -0.902092,
		0.777353, -0.523134, 0.349362,
		-0.459157, -0.851468, -0.253333,
		45.219315, 42.620567, 48.592735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990292, 42.865490, 48.388863>,  <45.540726, 43.216595, 48.770069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990292, 42.865490, 48.388863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.650970, 42.680786, 48.285198>,  <45.447376, 42.569965, 48.223000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.650970, 42.680786, 48.285198>,  <45.990292, 42.865490, 48.388863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650970, 42.680786, 48.285198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365513, -0.156516, -0.917553,
		0.383124, -0.873088, 0.301550,
		-0.848302, -0.461757, -0.259160,
		45.396481, 42.542259, 48.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176086, 42.231335, 48.019890>,  <45.990292, 42.865490, 48.388863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176086, 42.231335, 48.019890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.806709, 42.331787, 47.903824>,  <45.585083, 42.392059, 47.834187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.806709, 42.331787, 47.903824>,  <46.176086, 42.231335, 48.019890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806709, 42.331787, 47.903824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312220, 0.052062, -0.948582,
		-0.223111, -0.966552, -0.126484,
		-0.923439, 0.251130, -0.290162,
		45.529678, 42.407127, 47.816776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172386, 41.997784, 47.277691>,  <46.176086, 42.231335, 48.019890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172386, 41.997784, 47.277691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.864655, 42.245354, 47.341026>,  <45.680016, 42.393894, 47.379028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.864655, 42.245354, 47.341026>,  <46.172386, 41.997784, 47.277691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864655, 42.245354, 47.341026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086190, 0.346138, -0.934216,
		-0.633013, -0.705071, -0.319639,
		-0.769328, 0.618921, 0.158340,
		45.633858, 42.431030, 47.388527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742069, 41.888332, 46.773338>,  <46.172386, 41.997784, 47.277691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742069, 41.888332, 46.773338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.678719, 42.265450, 46.890678>,  <45.640709, 42.491718, 46.961082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.678719, 42.265450, 46.890678>,  <45.742069, 41.888332, 46.773338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678719, 42.265450, 46.890678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058260, 0.305509, -0.950405,
		-0.985658, -0.133433, -0.103313,
		-0.158378, 0.942794, 0.293353,
		45.631207, 42.548286, 46.978683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258469, 42.104893, 46.275768>,  <45.742069, 41.888332, 46.773338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258469, 42.104893, 46.275768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.360146, 42.443115, 46.463566>,  <45.421150, 42.646049, 46.576244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.360146, 42.443115, 46.463566>,  <45.258469, 42.104893, 46.275768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360146, 42.443115, 46.463566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218418, 0.523087, -0.823817,
		-0.942168, 0.106863, 0.317649,
		0.254193, 0.845553, 0.469495,
		45.436405, 42.696781, 46.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762814, 42.603004, 46.175232>,  <45.258469, 42.104893, 46.275768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762814, 42.603004, 46.175232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.094597, 42.817017, 46.239407>,  <45.293667, 42.945423, 46.277912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.094597, 42.817017, 46.239407>,  <44.762814, 42.603004, 46.175232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094597, 42.817017, 46.239407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318547, 0.689053, -0.650949,
		-0.458827, 0.488829, 0.741973,
		0.829461, 0.535026, 0.160441,
		45.343433, 42.977524, 46.287540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526699, 43.276768, 46.340252>,  <44.762814, 42.603004, 46.175232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526699, 43.276768, 46.340252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.903206, 43.313141, 46.210175>,  <45.129108, 43.334965, 46.132130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.903206, 43.313141, 46.210175>,  <44.526699, 43.276768, 46.340252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903206, 43.313141, 46.210175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277921, 0.755596, -0.593156,
		0.191773, 0.648695, 0.736490,
		0.941266, 0.090935, -0.325190,
		45.185585, 43.340420, 46.112617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529613, 43.942616, 46.200211>,  <44.526699, 43.276768, 46.340252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529613, 43.942616, 46.200211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.881458, 43.842133, 46.038628>,  <45.092564, 43.781845, 45.941677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.881458, 43.842133, 46.038628>,  <44.529613, 43.942616, 46.200211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881458, 43.842133, 46.038628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107280, 0.722564, -0.682929,
		0.463442, 0.644048, 0.608625,
		0.879609, -0.251204, -0.403960,
		45.145340, 43.766769, 45.917439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875862, 44.571514, 46.113518>,  <44.529613, 43.942616, 46.200211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875862, 44.571514, 46.113518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.018093, 44.323990, 45.833336>,  <45.103432, 44.175476, 45.665226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.018093, 44.323990, 45.833336>,  <44.875862, 44.571514, 46.113518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018093, 44.323990, 45.833336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201417, 0.681093, -0.703948,
		0.912687, 0.391390, 0.117541,
		0.355574, -0.618810, -0.700458,
		45.124767, 44.138348, 45.623199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299290, 44.984497, 45.703236>,  <44.875862, 44.571514, 46.113518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299290, 44.984497, 45.703236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.151253, 44.661537, 45.519440>,  <45.062431, 44.467762, 45.409161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.151253, 44.661537, 45.519440>,  <45.299290, 44.984497, 45.703236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151253, 44.661537, 45.519440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233823, 0.559647, -0.795061,
		0.899086, -0.186809, -0.395911,
		-0.370096, -0.807402, -0.459491,
		45.040222, 44.419315, 45.381592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149845, 45.551083, 46.173042>,  <45.299290, 44.984497, 45.703236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149845, 45.551083, 46.173042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.028168, 45.851204, 46.407822>,  <44.955162, 46.031277, 46.548691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.028168, 45.851204, 46.407822>,  <45.149845, 45.551083, 46.173042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028168, 45.851204, 46.407822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021009, -0.621282, 0.783305,
		0.952379, 0.225945, 0.204753,
		-0.304194, 0.750305, 0.586949,
		44.936909, 46.076294, 46.583908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515434, 45.498409, 46.844463>,  <45.149845, 45.551083, 46.173042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515434, 45.498409, 46.844463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.154411, 45.665344, 46.886822>,  <44.937798, 45.765503, 46.912239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.154411, 45.665344, 46.886822>,  <45.515434, 45.498409, 46.844463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154411, 45.665344, 46.886822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164770, -0.562022, 0.810544,
		0.397785, 0.714117, 0.576024,
		-0.902562, 0.417334, 0.105899,
		44.883644, 45.790543, 46.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490604, 45.711098, 47.520676>,  <45.515434, 45.498409, 46.844463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490604, 45.711098, 47.520676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.126099, 45.649330, 47.367962>,  <44.907394, 45.612270, 47.276333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.126099, 45.649330, 47.367962>,  <45.490604, 45.711098, 47.520676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126099, 45.649330, 47.367962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254994, -0.516403, 0.817500,
		-0.323392, 0.842308, 0.431201,
		-0.911261, -0.154419, -0.381784,
		44.852722, 45.603004, 47.253426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954411, 45.953175, 47.981888>,  <45.490604, 45.711098, 47.520676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954411, 45.953175, 47.981888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.767029, 45.693810, 47.741852>,  <44.654598, 45.538189, 47.597832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.767029, 45.693810, 47.741852>,  <44.954411, 45.953175, 47.981888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767029, 45.693810, 47.741852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472233, -0.390287, 0.790362,
		-0.746688, 0.653633, -0.123370,
		-0.468457, -0.648413, -0.600090,
		44.626492, 45.499287, 47.561825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294682, 46.011436, 48.152390>,  <44.954411, 45.953175, 47.981888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294682, 46.011436, 48.152390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.278381, 45.659889, 47.962261>,  <44.268600, 45.448959, 47.848183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.278381, 45.659889, 47.962261>,  <44.294682, 46.011436, 48.152390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278381, 45.659889, 47.962261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402160, -0.421058, 0.813005,
		-0.914662, 0.224285, -0.336288,
		-0.040747, -0.878866, -0.475324,
		44.266155, 45.396229, 47.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714245, 45.781525, 48.276382>,  <44.294682, 46.011436, 48.152390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714245, 45.781525, 48.276382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.876671, 45.443405, 48.137489>,  <43.974129, 45.240532, 48.054153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.876671, 45.443405, 48.137489>,  <43.714245, 45.781525, 48.276382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876671, 45.443405, 48.137489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594013, -0.532904, 0.602629,
		-0.694447, -0.038445, -0.718516,
		0.406068, -0.845302, -0.347237,
		43.998493, 45.189816, 48.033318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132874, 45.324692, 48.103569>,  <43.714245, 45.781525, 48.276382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132874, 45.324692, 48.103569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.460758, 45.107887, 48.177650>,  <43.657490, 44.977802, 48.222099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.460758, 45.107887, 48.177650>,  <43.132874, 45.324692, 48.103569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460758, 45.107887, 48.177650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433077, -0.374866, 0.819707,
		-0.374866, -0.752128, -0.542014,
		-0.819707, 0.542014, -0.185205,
		43.706669, 44.945282, 48.233212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883125, 44.665428, 48.324768>,  <43.132874, 45.324692, 48.103569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883125, 44.665428, 48.324768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.259018, 44.696556, 48.457947>,  <43.484554, 44.715233, 48.537853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.259018, 44.696556, 48.457947>,  <42.883125, 44.665428, 48.324768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259018, 44.696556, 48.457947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239894, -0.543801, 0.804196,
		0.243636, -0.835599, -0.492358,
		0.939730, 0.077817, 0.332945,
		43.540936, 44.719902, 48.557831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001068, 43.990093, 48.638229>,  <42.883125, 44.665428, 48.324768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001068, 43.990093, 48.638229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.265190, 44.238480, 48.807178>,  <43.423664, 44.387512, 48.908546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.265190, 44.238480, 48.807178>,  <43.001068, 43.990093, 48.638229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265190, 44.238480, 48.807178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221177, -0.376674, 0.899554,
		0.717688, -0.687400, -0.111378,
		0.660307, 0.620965, 0.422371,
		43.463284, 44.424770, 48.933891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357044, 43.631592, 49.134529>,  <43.001068, 43.990093, 48.638229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357044, 43.631592, 49.134529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.449692, 44.003212, 49.249920>,  <43.505280, 44.226185, 49.319153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.449692, 44.003212, 49.249920>,  <43.357044, 43.631592, 49.134529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449692, 44.003212, 49.249920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023579, -0.291094, 0.956404,
		0.972521, -0.228324, -0.045516,
		0.231619, 0.929049, 0.288478,
		43.519176, 44.281925, 49.336464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906151, 43.595406, 49.732796>,  <43.357044, 43.631592, 49.134529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906151, 43.595406, 49.732796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.711182, 43.944115, 49.752525>,  <43.594200, 44.153339, 49.764362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.711182, 43.944115, 49.752525>,  <43.906151, 43.595406, 49.732796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711182, 43.944115, 49.752525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037875, -0.077545, 0.996269,
		0.872344, 0.483737, 0.070816,
		-0.487424, 0.871771, 0.049324,
		43.564953, 44.205647, 49.767323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092659, 43.898827, 50.347473>,  <43.906151, 43.595406, 49.732796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092659, 43.898827, 50.347473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.773460, 44.128822, 50.275261>,  <43.581944, 44.266819, 50.231934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.773460, 44.128822, 50.275261>,  <44.092659, 43.898827, 50.347473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773460, 44.128822, 50.275261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159503, 0.087366, 0.983324,
		0.581175, 0.813482, 0.021995,
		-0.797994, 0.574991, -0.180527,
		43.534061, 44.301319, 50.221104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211899, 44.416405, 50.810814>,  <44.092659, 43.898827, 50.347473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211899, 44.416405, 50.810814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.821854, 44.409706, 50.722382>,  <43.587826, 44.405685, 50.669323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.821854, 44.409706, 50.722382>,  <44.211899, 44.416405, 50.810814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821854, 44.409706, 50.722382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220718, -0.020964, 0.975112,
		-0.020964, 0.999640, 0.016746,
		-0.975112, -0.016746, -0.221078,
		43.529320, 44.404682, 50.656059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894207, 45.102657, 51.129398>,  <44.211899, 44.416405, 50.810814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894207, 45.102657, 51.129398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.619987, 44.818169, 51.067192>,  <43.455456, 44.647476, 51.029869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.619987, 44.818169, 51.067192>,  <43.894207, 45.102657, 51.129398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619987, 44.818169, 51.067192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205035, -0.016345, 0.978618,
		-0.698559, 0.702775, -0.134621,
		-0.685548, -0.711225, -0.155511,
		43.414322, 44.604801, 51.020538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351700, 45.281162, 51.639652>,  <43.894207, 45.102657, 51.129398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351700, 45.281162, 51.639652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.258282, 44.908363, 51.528770>,  <43.202232, 44.684685, 51.462242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.258282, 44.908363, 51.528770>,  <43.351700, 45.281162, 51.639652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258282, 44.908363, 51.528770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584717, -0.093169, 0.805870,
		-0.776893, 0.350295, -0.523193,
		-0.233547, -0.931994, -0.277206,
		43.188217, 44.628765, 51.445610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603821, 45.259747, 51.596287>,  <43.351700, 45.281162, 51.639652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603821, 45.259747, 51.596287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.744713, 44.891182, 51.661938>,  <42.829250, 44.670044, 51.701328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.744713, 44.891182, 51.661938>,  <42.603821, 45.259747, 51.596287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744713, 44.891182, 51.661938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506833, -0.040362, 0.861099,
		-0.786798, -0.386495, -0.481217,
		0.352233, -0.921408, 0.164131,
		42.850384, 44.614761, 51.711178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105164, 45.021435, 51.961296>,  <42.603821, 45.259747, 51.596287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105164, 45.021435, 51.961296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.387276, 44.743042, 52.015244>,  <42.556541, 44.576008, 52.047611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.387276, 44.743042, 52.015244>,  <42.105164, 45.021435, 51.961296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387276, 44.743042, 52.015244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314636, -0.136814, 0.939301,
		-0.635284, -0.704905, -0.315473,
		0.705279, -0.695982, 0.134873,
		42.598858, 44.534248, 52.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705574, 44.370747, 52.118153>,  <42.105164, 45.021435, 51.961296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705574, 44.370747, 52.118153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.080933, 44.365845, 52.256287>,  <42.306149, 44.362904, 52.339169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.080933, 44.365845, 52.256287>,  <41.705574, 44.370747, 52.118153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080933, 44.365845, 52.256287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326072, -0.362226, 0.873195,
		0.114390, -0.932010, -0.343908,
		0.938399, -0.012254, 0.345337,
		42.362453, 44.362167, 52.359886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863892, 43.688084, 52.358318>,  <41.705574, 44.370747, 52.118153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863892, 43.688084, 52.358318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.123299, 43.929443, 52.543934>,  <42.278942, 44.074261, 52.655304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.123299, 43.929443, 52.543934>,  <41.863892, 43.688084, 52.358318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123299, 43.929443, 52.543934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378256, -0.273563, 0.884356,
		0.660562, -0.749049, 0.050827,
		0.648522, 0.603398, 0.464037,
		42.317856, 44.110462, 52.683144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033016, 43.365936, 52.912018>,  <41.863892, 43.688084, 52.358318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033016, 43.365936, 52.912018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.173859, 43.719040, 53.036442>,  <42.258366, 43.930901, 53.111095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.173859, 43.719040, 53.036442>,  <42.033016, 43.365936, 52.912018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173859, 43.719040, 53.036442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368192, -0.174910, 0.913149,
		0.860498, -0.436055, 0.263438,
		0.352105, 0.882758, 0.311061,
		42.279491, 43.983868, 53.129761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339878, 43.291580, 53.547588>,  <42.033016, 43.365936, 52.912018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339878, 43.291580, 53.547588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.238323, 43.678123, 53.564011>,  <42.177391, 43.910049, 53.573864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.238323, 43.678123, 53.564011>,  <42.339878, 43.291580, 53.547588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238323, 43.678123, 53.564011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359753, -0.133749, 0.923412,
		0.897841, 0.219673, 0.381608,
		-0.253889, 0.966362, 0.041058,
		42.162155, 43.968033, 53.576328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728008, 43.566330, 54.137043>,  <42.339878, 43.291580, 53.547588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728008, 43.566330, 54.137043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.422455, 43.812668, 54.059879>,  <42.239124, 43.960472, 54.013580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.422455, 43.812668, 54.059879>,  <42.728008, 43.566330, 54.137043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422455, 43.812668, 54.059879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340929, -0.131296, 0.930875,
		0.547951, 0.776847, 0.310256,
		-0.763883, 0.615849, -0.192906,
		42.193291, 43.997421, 54.002007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688732, 44.097122, 54.627064>,  <42.728008, 43.566330, 54.137043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688732, 44.097122, 54.627064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.315506, 44.082420, 54.483936>,  <42.091568, 44.073601, 54.398060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.315506, 44.082420, 54.483936>,  <42.688732, 44.097122, 54.627064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315506, 44.082420, 54.483936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359630, 0.115233, 0.925952,
		0.007200, 0.992658, -0.120738,
		-0.933067, -0.036754, -0.357819,
		42.035587, 44.071396, 54.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317074, 44.666729, 54.988415>,  <42.688732, 44.097122, 54.627064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317074, 44.666729, 54.988415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.011669, 44.442543, 54.860081>,  <41.828426, 44.308033, 54.783081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.011669, 44.442543, 54.860081>,  <42.317074, 44.666729, 54.988415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011669, 44.442543, 54.860081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473368, 0.147751, 0.868385,
		-0.439295, 0.814892, -0.378115,
		-0.763507, -0.560464, -0.320837,
		41.782616, 44.274403, 54.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570286, 45.012699, 55.200291>,  <42.317074, 44.666729, 54.988415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570286, 45.012699, 55.200291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.486282, 44.627411, 55.133232>,  <41.435883, 44.396236, 55.092999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.486282, 44.627411, 55.133232>,  <41.570286, 45.012699, 55.200291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486282, 44.627411, 55.133232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546879, -0.026406, 0.836795,
		-0.810445, 0.267413, -0.521219,
		-0.210006, -0.963220, -0.167643,
		41.423279, 44.338444, 55.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932140, 44.891075, 55.447170>,  <41.570286, 45.012699, 55.200291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932140, 44.891075, 55.447170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064987, 44.514214, 55.465233>,  <41.144695, 44.288097, 55.476070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064987, 44.514214, 55.465233>,  <40.932140, 44.891075, 55.447170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064987, 44.514214, 55.465233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406456, -0.099752, 0.908209,
		-0.851170, -0.319988, -0.416074,
		0.332120, -0.942156, 0.045155,
		41.164623, 44.231567, 55.478779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461185, 44.518276, 55.857834>,  <40.932140, 44.891075, 55.447170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461185, 44.518276, 55.857834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.772404, 44.266998, 55.859547>,  <40.959133, 44.116234, 55.860577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.772404, 44.266998, 55.859547>,  <40.461185, 44.518276, 55.857834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772404, 44.266998, 55.859547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271340, -0.329901, 0.904179,
		-0.566585, -0.704656, -0.427132,
		0.778046, -0.628192, 0.004284,
		41.005817, 44.078541, 55.860832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939636, 44.248791, 55.289719>,  <40.461185, 44.518276, 55.857834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939636, 44.248791, 55.289719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549789, 44.336830, 55.273342>,  <39.315880, 44.389652, 55.263515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549789, 44.336830, 55.273342>,  <39.939636, 44.248791, 55.289719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549789, 44.336830, 55.273342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084641, 0.192952, -0.977551,
		-0.207256, -0.956204, -0.206684,
		-0.974618, 0.220098, -0.040944,
		39.257404, 44.402859, 55.261059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754005, 43.900120, 54.735104>,  <39.939636, 44.248791, 55.289719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754005, 43.900120, 54.735104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455551, 44.163177, 54.776642>,  <39.276478, 44.321014, 54.801567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455551, 44.163177, 54.776642>,  <39.754005, 43.900120, 54.735104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455551, 44.163177, 54.776642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083641, 0.247325, -0.965316,
		-0.660522, -0.711569, -0.239544,
		-0.746134, 0.657647, 0.103847,
		39.231712, 44.360470, 54.807796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315414, 43.763363, 54.230103>,  <39.754005, 43.900120, 54.735104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315414, 43.763363, 54.230103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241974, 44.147713, 54.313065>,  <39.197910, 44.378323, 54.362843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.241974, 44.147713, 54.313065>,  <39.315414, 43.763363, 54.230103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241974, 44.147713, 54.313065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101808, 0.228441, -0.968220,
		-0.977714, -0.156655, -0.139767,
		-0.183605, 0.960871, 0.207401,
		39.186893, 44.435974, 54.375286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691570, 44.016022, 53.701054>,  <39.315414, 43.763363, 54.230103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691570, 44.016022, 53.701054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881073, 44.336815, 53.846588>,  <38.994774, 44.529289, 53.933910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881073, 44.336815, 53.846588>,  <38.691570, 44.016022, 53.701054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881073, 44.336815, 53.846588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088777, 0.367548, -0.925757,
		-0.876170, 0.470883, 0.102930,
		0.473755, 0.801983, 0.363838,
		39.023201, 44.577412, 53.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361950, 44.428574, 53.415749>,  <38.691570, 44.016022, 53.701054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361950, 44.428574, 53.415749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684799, 44.639046, 53.522846>,  <38.878510, 44.765327, 53.587105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684799, 44.639046, 53.522846>,  <38.361950, 44.428574, 53.415749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684799, 44.639046, 53.522846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106505, 0.316294, -0.942664,
		-0.580697, 0.789361, 0.199247,
		0.807123, 0.526182, 0.267742,
		38.926937, 44.796902, 53.603168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
