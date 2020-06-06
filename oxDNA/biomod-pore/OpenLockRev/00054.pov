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
	<40.713123, 35.480919, 51.601353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571304, 35.246265, 51.310104>,  <40.486214, 35.105473, 51.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571304, 35.246265, 51.310104>,  <40.713123, 35.480919, 51.601353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571304, 35.246265, 51.310104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934521, -0.248227, -0.255058,
		-0.031115, -0.770876, 0.636225,
		-0.354546, -0.586629, -0.728123,
		40.464939, 35.070278, 51.091667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845905, 34.757648, 51.673691>,  <40.713123, 35.480919, 51.601353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845905, 34.757648, 51.673691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871483, 34.912449, 51.305748>,  <40.886829, 35.005329, 51.084980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871483, 34.912449, 51.305748>,  <40.845905, 34.757648, 51.673691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871483, 34.912449, 51.305748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958264, -0.281173, -0.051684,
		-0.278642, -0.878165, -0.388825,
		0.063940, 0.386998, -0.919861,
		40.890663, 35.028549, 51.029789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132755, 34.160023, 51.150631>,  <40.845905, 34.757648, 51.673691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132755, 34.160023, 51.150631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209118, 34.525898, 51.008137>,  <41.254936, 34.745422, 50.922638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209118, 34.525898, 51.008137>,  <41.132755, 34.160023, 51.150631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209118, 34.525898, 51.008137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940321, -0.274553, -0.201039,
		-0.281693, -0.296598, -0.912512,
		0.190905, 0.914686, -0.356237,
		41.266388, 34.800304, 50.901264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604935, 34.129784, 50.534615>,  <41.132755, 34.160023, 51.150631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604935, 34.129784, 50.534615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656685, 34.495480, 50.688202>,  <41.687737, 34.714897, 50.780354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656685, 34.495480, 50.688202>,  <41.604935, 34.129784, 50.534615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656685, 34.495480, 50.688202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991197, -0.108259, -0.076219,
		-0.028114, 0.390447, -0.920196,
		0.129379, 0.914238, 0.383966,
		41.695499, 34.769753, 50.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086861, 34.446537, 50.087132>,  <41.604935, 34.129784, 50.534615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086861, 34.446537, 50.087132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123306, 34.712814, 50.383389>,  <42.145172, 34.872581, 50.561142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123306, 34.712814, 50.383389>,  <42.086861, 34.446537, 50.087132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123306, 34.712814, 50.383389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931298, 0.206439, -0.300113,
		-0.352681, 0.717100, -0.601152,
		0.091110, 0.665696, 0.740640,
		42.150639, 34.912521, 50.605579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450520, 35.004204, 49.792179>,  <42.086861, 34.446537, 50.087132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450520, 35.004204, 49.792179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503883, 35.011570, 50.188534>,  <42.535904, 35.015987, 50.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503883, 35.011570, 50.188534>,  <42.450520, 35.004204, 49.792179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503883, 35.011570, 50.188534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978445, 0.156575, -0.134646,
		-0.157628, 0.987494, 0.002873,
		0.133412, 0.018413, 0.990890,
		42.543907, 35.017094, 50.485802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883907, 35.622265, 49.959087>,  <42.450520, 35.004204, 49.792179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883907, 35.622265, 49.959087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923149, 35.362694, 50.260887>,  <42.946693, 35.206951, 50.441967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923149, 35.362694, 50.260887>,  <42.883907, 35.622265, 49.959087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923149, 35.362694, 50.260887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995134, 0.070947, -0.068379,
		-0.009156, 0.757534, 0.652731,
		0.098108, -0.648929, 0.754497,
		42.952583, 35.168015, 50.487236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419853, 35.936958, 50.312454>,  <42.883907, 35.622265, 49.959087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419853, 35.936958, 50.312454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425362, 35.563164, 50.454750>,  <43.428665, 35.338886, 50.540127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425362, 35.563164, 50.454750>,  <43.419853, 35.936958, 50.312454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425362, 35.563164, 50.454750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995248, -0.021487, -0.094971,
		0.096393, 0.355355, 0.929748,
		0.013771, -0.934485, 0.355737,
		43.429493, 35.282818, 50.561470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924603, 35.922779, 50.878925>,  <43.419853, 35.936958, 50.312454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924603, 35.922779, 50.878925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881371, 35.543304, 50.760052>,  <43.855431, 35.315620, 50.688728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881371, 35.543304, 50.760052>,  <43.924603, 35.922779, 50.878925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881371, 35.543304, 50.760052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988491, -0.134381, 0.069479,
		-0.105850, -0.286257, 0.952288,
		-0.108080, -0.948683, -0.297186,
		43.848946, 35.258701, 50.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354843, 35.622761, 51.369370>,  <43.924603, 35.922779, 50.878925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354843, 35.622761, 51.369370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290199, 35.326038, 51.109028>,  <44.251415, 35.148006, 50.952824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290199, 35.326038, 51.109028>,  <44.354843, 35.622761, 51.369370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290199, 35.326038, 51.109028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909153, -0.368427, 0.194171,
		-0.383828, -0.560344, 0.733955,
		-0.161606, -0.741806, -0.650852,
		44.241718, 35.103497, 50.913773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592293, 35.029175, 51.664581>,  <44.354843, 35.622761, 51.369370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592293, 35.029175, 51.664581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593616, 34.957016, 51.271145>,  <44.594410, 34.913719, 51.035084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593616, 34.957016, 51.271145>,  <44.592293, 35.029175, 51.664581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593616, 34.957016, 51.271145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943548, -0.325225, 0.062819,
		-0.331219, -0.928271, 0.169138,
		0.003305, -0.180396, -0.983588,
		44.594608, 34.902897, 50.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795231, 34.253750, 51.514805>,  <44.592293, 35.029175, 51.664581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795231, 34.253750, 51.514805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883118, 34.497746, 51.210266>,  <44.935848, 34.644142, 51.027542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883118, 34.497746, 51.210266>,  <44.795231, 34.253750, 51.514805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883118, 34.497746, 51.210266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953349, -0.299846, 0.034887,
		-0.207005, -0.733490, -0.647411,
		0.219713, 0.609987, -0.761342,
		44.949032, 34.680740, 50.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268433, 33.867237, 51.191257>,  <44.795231, 34.253750, 51.514805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268433, 33.867237, 51.191257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319660, 34.227592, 51.025368>,  <45.350395, 34.443806, 50.925835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319660, 34.227592, 51.025368>,  <45.268433, 33.867237, 51.191257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319660, 34.227592, 51.025368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962382, -0.213923, -0.167505,
		-0.239623, -0.377672, -0.894396,
		0.128070, 0.900889, -0.414725,
		45.358082, 34.497860, 50.900951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706661, 33.767700, 50.615788>,  <45.268433, 33.867237, 51.191257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706661, 33.767700, 50.615788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720200, 34.161797, 50.682907>,  <45.728321, 34.398254, 50.723179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720200, 34.161797, 50.682907>,  <45.706661, 33.767700, 50.615788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720200, 34.161797, 50.682907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989594, -0.009544, -0.143571,
		-0.139850, 0.170915, -0.975310,
		0.033847, 0.985240, 0.167802,
		45.730354, 34.457367, 50.733246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339882, 33.889187, 50.243046>,  <45.706661, 33.767700, 50.615788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339882, 33.889187, 50.243046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268738, 34.209572, 50.471722>,  <46.226051, 34.401802, 50.608925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268738, 34.209572, 50.471722>,  <46.339882, 33.889187, 50.243046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268738, 34.209572, 50.471722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983833, 0.157073, 0.086025,
		-0.020894, 0.577745, -0.815950,
		-0.177864, 0.800961, 0.571687,
		46.215378, 34.449860, 50.643227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838352, 34.313980, 50.002373>,  <46.339882, 33.889187, 50.243046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838352, 34.313980, 50.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735905, 34.458813, 50.360882>,  <46.674438, 34.545712, 50.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735905, 34.458813, 50.360882>,  <46.838352, 34.313980, 50.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735905, 34.458813, 50.360882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966250, 0.069344, 0.248097,
		0.027681, 0.929562, -0.367625,
		-0.256115, 0.362085, 0.896270,
		46.659069, 34.567440, 50.629765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026642, 35.022484, 50.103973>,  <46.838352, 34.313980, 50.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026642, 35.022484, 50.103973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991241, 34.852592, 50.464367>,  <46.970001, 34.750656, 50.680603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.991241, 34.852592, 50.464367>,  <47.026642, 35.022484, 50.103973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.991241, 34.852592, 50.464367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975757, 0.144800, 0.164105,
		-0.200163, 0.893665, 0.401619,
		-0.088500, -0.424730, 0.900984,
		46.964691, 34.725174, 50.734661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427372, 35.518723, 50.457787>,  <47.026642, 35.022484, 50.103973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427372, 35.518723, 50.457787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375137, 35.192760, 50.683662>,  <47.343796, 34.997185, 50.819187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375137, 35.192760, 50.683662>,  <47.427372, 35.518723, 50.457787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375137, 35.192760, 50.683662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851765, 0.199279, 0.484546,
		-0.507391, 0.544257, 0.668086,
		-0.130582, -0.814907, 0.564691,
		47.335964, 34.948288, 50.853069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.307339, 35.806580, 51.095196>,  <47.427372, 35.518723, 50.457787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.307339, 35.806580, 51.095196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451157, 35.433807, 51.114059>,  <47.537449, 35.210144, 51.125378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451157, 35.433807, 51.114059>,  <47.307339, 35.806580, 51.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451157, 35.433807, 51.114059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782245, 0.328582, 0.529270,
		-0.508742, -0.153405, 0.847142,
		0.359548, -0.931934, 0.047163,
		47.559021, 35.154228, 51.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438717, 35.700188, 51.822170>,  <47.307339, 35.806580, 51.095196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438717, 35.700188, 51.822170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656521, 35.398197, 51.676010>,  <47.787205, 35.217003, 51.588314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656521, 35.398197, 51.676010>,  <47.438717, 35.700188, 51.822170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656521, 35.398197, 51.676010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744656, 0.234649, 0.624842,
		-0.386001, -0.612331, 0.689967,
		0.544510, -0.754978, -0.365401,
		47.819874, 35.171703, 51.566391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742912, 35.333435, 52.351757>,  <47.438717, 35.700188, 51.822170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742912, 35.333435, 52.351757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.975143, 35.251858, 52.036461>,  <48.114483, 35.202911, 51.847282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.975143, 35.251858, 52.036461>,  <47.742912, 35.333435, 52.351757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.975143, 35.251858, 52.036461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813079, 0.196059, 0.548146,
		0.042749, -0.959149, 0.279654,
		0.580582, -0.203948, -0.788245,
		48.149319, 35.190674, 51.799988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.302296, 35.210526, 51.819263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.494326, 35.136677, 52.162296>,  <24.609543, 35.092369, 52.368114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.494326, 35.136677, 52.162296>,  <24.302296, 35.210526, 51.819263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494326, 35.136677, 52.162296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786346, 0.523890, -0.327414,
		-0.388830, 0.831538, 0.396682,
		0.480075, -0.184621, 0.857580,
		24.638348, 35.081291, 52.419571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640862, 35.829391, 51.976269>,  <24.302296, 35.210526, 51.819263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640862, 35.829391, 51.976269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.844885, 35.536224, 52.156345>,  <24.967299, 35.360325, 52.264393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.844885, 35.536224, 52.156345>,  <24.640862, 35.829391, 51.976269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844885, 35.536224, 52.156345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843710, 0.528125, -0.096118,
		-0.167311, 0.428858, 0.887743,
		0.510060, -0.732916, 0.450193,
		24.997904, 35.316349, 52.291405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078835, 36.133774, 52.552673>,  <24.640862, 35.829391, 51.976269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078835, 36.133774, 52.552673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.237329, 35.780396, 52.452656>,  <25.332426, 35.568371, 52.392643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.237329, 35.780396, 52.452656>,  <25.078835, 36.133774, 52.552673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237329, 35.780396, 52.452656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898166, 0.429471, -0.094087,
		0.190508, -0.187302, 0.963652,
		0.396238, -0.883444, -0.250046,
		25.356201, 35.515362, 52.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784590, 36.113739, 52.836681>,  <25.078835, 36.133774, 52.552673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784590, 36.113739, 52.836681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.812536, 35.841824, 52.544651>,  <25.829304, 35.678677, 52.369434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.812536, 35.841824, 52.544651>,  <25.784590, 36.113739, 52.836681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812536, 35.841824, 52.544651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955040, 0.256969, -0.147872,
		0.288128, -0.686919, 0.667176,
		0.069868, -0.679786, -0.730075,
		25.833496, 35.637886, 52.325630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406157, 35.773643, 52.941364>,  <25.784590, 36.113739, 52.836681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406157, 35.773643, 52.941364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.328417, 35.701843, 52.555618>,  <26.281773, 35.658764, 52.324169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.328417, 35.701843, 52.555618>,  <26.406157, 35.773643, 52.941364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328417, 35.701843, 52.555618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952060, 0.202251, -0.229514,
		0.236243, -0.962743, 0.131589,
		-0.194349, -0.179501, -0.964369,
		26.270113, 35.647991, 52.266308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012600, 35.432770, 52.666164>,  <26.406157, 35.773643, 52.941364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012600, 35.432770, 52.666164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.806126, 35.538662, 52.340351>,  <26.682241, 35.602196, 52.144863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.806126, 35.538662, 52.340351>,  <27.012600, 35.432770, 52.666164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806126, 35.538662, 52.340351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833047, 0.376104, -0.405682,
		0.198954, -0.887955, -0.414672,
		-0.516187, 0.264729, -0.814536,
		26.651270, 35.618080, 52.095989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356186, 35.125244, 52.080391>,  <27.012600, 35.432770, 52.666164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356186, 35.125244, 52.080391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.168474, 35.455303, 51.954590>,  <27.055847, 35.653339, 51.879108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.168474, 35.455303, 51.954590>,  <27.356186, 35.125244, 52.080391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168474, 35.455303, 51.954590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844042, 0.314453, -0.434410,
		-0.259557, -0.469310, -0.844025,
		-0.469279, 0.825147, -0.314498,
		27.027691, 35.702847, 51.860241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588181, 35.022770, 51.386765>,  <27.356186, 35.125244, 52.080391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588181, 35.022770, 51.386765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.479452, 35.393505, 51.490364>,  <27.414215, 35.615948, 51.552525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.479452, 35.393505, 51.490364>,  <27.588181, 35.022770, 51.386765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479452, 35.393505, 51.490364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775594, 0.370313, -0.511196,
		-0.569708, 0.061922, -0.819511,
		-0.271822, 0.926841, 0.258996,
		27.397905, 35.671558, 51.568062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601089, 35.421024, 50.784851>,  <27.588181, 35.022770, 51.386765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601089, 35.421024, 50.784851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647236, 35.690086, 51.077213>,  <27.674925, 35.851524, 51.252632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.647236, 35.690086, 51.077213>,  <27.601089, 35.421024, 50.784851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647236, 35.690086, 51.077213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877710, 0.275499, -0.392079,
		-0.465098, 0.686759, -0.558610,
		0.115367, 0.672653, 0.730909,
		27.681847, 35.891884, 51.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919495, 36.050789, 50.444805>,  <27.601089, 35.421024, 50.784851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919495, 36.050789, 50.444805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.007374, 36.073109, 50.834393>,  <28.060101, 36.086498, 51.068146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.007374, 36.073109, 50.834393>,  <27.919495, 36.050789, 50.444805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007374, 36.073109, 50.834393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853966, 0.471694, -0.219650,
		-0.471672, 0.879995, 0.055983,
		0.219698, 0.055796, 0.973971,
		28.073284, 36.089848, 51.126583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186190, 36.692291, 50.551620>,  <27.919495, 36.050789, 50.444805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186190, 36.692291, 50.551620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.320333, 36.488800, 50.868790>,  <28.400820, 36.366707, 51.059090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.320333, 36.488800, 50.868790>,  <28.186190, 36.692291, 50.551620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320333, 36.488800, 50.868790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930664, 0.309583, -0.194993,
		-0.146278, 0.803339, 0.577277,
		0.335361, -0.508728, 0.792924,
		28.420942, 36.336182, 51.106667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840698, 37.019054, 50.704666>,  <28.186190, 36.692291, 50.551620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840698, 37.019054, 50.704666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892529, 36.692680, 50.930042>,  <28.923628, 36.496857, 51.065269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892529, 36.692680, 50.930042>,  <28.840698, 37.019054, 50.704666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892529, 36.692680, 50.930042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989261, 0.067624, -0.129577,
		0.067624, 0.574181, 0.815931,
		0.129577, -0.815931, 0.563442,
		28.931402, 36.447903, 51.099075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375658, 37.152271, 51.080631>,  <28.840698, 37.019054, 50.704666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375658, 37.152271, 51.080631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.350952, 36.753166, 51.070389>,  <29.336128, 36.513702, 51.064243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.350952, 36.753166, 51.070389>,  <29.375658, 37.152271, 51.080631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350952, 36.753166, 51.070389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994068, -0.059196, -0.091238,
		0.089518, -0.031093, 0.995500,
		-0.061767, -0.997762, -0.025610,
		29.332422, 36.453838, 51.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031260, 37.007717, 51.352470>,  <29.375658, 37.152271, 51.080631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031260, 37.007717, 51.352470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.930006, 36.652382, 51.199223>,  <29.869255, 36.439182, 51.107273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.930006, 36.652382, 51.199223>,  <30.031260, 37.007717, 51.352470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930006, 36.652382, 51.199223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957535, -0.173560, -0.230224,
		0.138023, -0.425124, 0.894550,
		-0.253132, -0.888339, -0.383116,
		29.854067, 36.385880, 51.084290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394331, 36.473125, 51.641438>,  <30.031260, 37.007717, 51.352470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394331, 36.473125, 51.641438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292395, 36.314217, 51.288795>,  <30.231232, 36.218872, 51.077209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292395, 36.314217, 51.288795>,  <30.394331, 36.473125, 51.641438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292395, 36.314217, 51.288795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910183, -0.406414, -0.079962,
		-0.326531, -0.822801, 0.465163,
		-0.254842, -0.397274, -0.881606,
		30.215942, 36.195034, 51.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715702, 35.904083, 51.658928>,  <30.394331, 36.473125, 51.641438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715702, 35.904083, 51.658928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.648083, 35.975410, 51.271191>,  <30.607512, 36.018208, 51.038548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.648083, 35.975410, 51.271191>,  <30.715702, 35.904083, 51.658928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648083, 35.975410, 51.271191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944707, -0.251065, -0.210940,
		-0.280983, -0.951403, -0.126017,
		-0.169051, 0.178320, -0.969342,
		30.597368, 36.028908, 50.980389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066881, 35.466049, 51.406834>,  <30.715702, 35.904083, 51.658928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066881, 35.466049, 51.406834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998837, 35.679073, 51.075184>,  <30.958010, 35.806889, 50.876194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998837, 35.679073, 51.075184>,  <31.066881, 35.466049, 51.406834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998837, 35.679073, 51.075184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867285, -0.318545, -0.382552,
		-0.467844, -0.784161, -0.407693,
		-0.170114, 0.532561, -0.829120,
		30.947802, 35.838840, 50.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107765, 34.960861, 50.834049>,  <31.066881, 35.466049, 51.406834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107765, 34.960861, 50.834049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.169207, 35.326305, 50.683468>,  <31.206072, 35.545570, 50.593117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.169207, 35.326305, 50.683468>,  <31.107765, 34.960861, 50.834049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169207, 35.326305, 50.683468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895535, -0.289735, -0.337746,
		-0.417641, -0.285251, -0.862675,
		0.153605, 0.913611, -0.376457,
		31.215288, 35.600388, 50.570530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332638, 34.872551, 50.125488>,  <31.107765, 34.960861, 50.834049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332638, 34.872551, 50.125488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461061, 35.234295, 50.237961>,  <31.538116, 35.451340, 50.305443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461061, 35.234295, 50.237961>,  <31.332638, 34.872551, 50.125488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461061, 35.234295, 50.237961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924015, -0.234029, -0.302368,
		-0.207645, 0.356891, -0.910776,
		0.321060, 0.904356, 0.281178,
		31.557379, 35.505600, 50.322315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740887, 35.057186, 49.571838>,  <31.332638, 34.872551, 50.125488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740887, 35.057186, 49.571838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862114, 35.286419, 49.876396>,  <31.934851, 35.423958, 50.059132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862114, 35.286419, 49.876396>,  <31.740887, 35.057186, 49.571838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862114, 35.286419, 49.876396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952393, -0.154363, -0.262906,
		-0.033135, 0.804828, -0.592582,
		0.303067, 0.573082, 0.761398,
		31.953033, 35.458344, 50.104816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142773, 35.666622, 49.347862>,  <31.740887, 35.057186, 49.571838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142773, 35.666622, 49.347862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279072, 35.586632, 49.715317>,  <32.360851, 35.538639, 49.935791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279072, 35.586632, 49.715317>,  <32.142773, 35.666622, 49.347862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279072, 35.586632, 49.715317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924979, -0.103546, -0.365640,
		0.168240, 0.974314, 0.149690,
		0.340748, -0.199975, 0.918641,
		32.381298, 35.526638, 49.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.077541, 35.118591, 34.780136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.258101, 34.861252, 35.027473>,  <24.366436, 34.706848, 35.175877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.258101, 34.861252, 35.027473>,  <24.077541, 35.118591, 34.780136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258101, 34.861252, 35.027473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149073, 0.628850, 0.763102,
		-0.879782, -0.436641, 0.187956,
		0.451398, -0.643345, 0.618343,
		24.393520, 34.668247, 35.212975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.609955, 34.789917, 35.295158>,  <24.077541, 35.118591, 34.780136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.609955, 34.789917, 35.295158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.983248, 34.811409, 35.437256>,  <24.207224, 34.824306, 35.522514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.983248, 34.811409, 35.437256>,  <23.609955, 34.789917, 35.295158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.983248, 34.811409, 35.437256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296074, 0.675122, 0.675685,
		-0.203524, -0.735747, 0.645953,
		0.933230, 0.053732, 0.355239,
		24.263216, 34.827530, 35.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.598186, 34.733837, 36.048592>,  <23.609955, 34.789917, 35.295158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.598186, 34.733837, 36.048592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.898928, 34.942413, 35.887188>,  <24.079372, 35.067558, 35.790348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.898928, 34.942413, 35.887188>,  <23.598186, 34.733837, 36.048592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898928, 34.942413, 35.887188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133719, 0.719869, 0.681108,
		0.645625, -0.458139, 0.610964,
		0.751856, 0.521438, -0.403504,
		24.124485, 35.098846, 35.766136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090050, 34.994144, 36.668659>,  <23.598186, 34.733837, 36.048592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090050, 34.994144, 36.668659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.048666, 35.228905, 36.347450>,  <24.023836, 35.369762, 36.154724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.048666, 35.228905, 36.347450>,  <24.090050, 34.994144, 36.668659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.048666, 35.228905, 36.347450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234697, 0.770149, 0.593117,
		0.966547, 0.249830, 0.058066,
		-0.103459, 0.586904, -0.803019,
		24.017628, 35.404976, 36.106544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443600, 35.622906, 36.776211>,  <24.090050, 34.994144, 36.668659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443600, 35.622906, 36.776211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.143492, 35.692299, 36.521027>,  <23.963427, 35.733936, 36.367916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.143492, 35.692299, 36.521027>,  <24.443600, 35.622906, 36.776211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.143492, 35.692299, 36.521027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130096, 0.907349, 0.399741,
		0.648205, 0.382910, -0.658187,
		-0.750270, 0.173487, -0.637963,
		23.918411, 35.744347, 36.329639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838760, 35.186527, 37.301048>,  <24.443600, 35.622906, 36.776211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838760, 35.186527, 37.301048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.672110, 35.520851, 37.444069>,  <24.572119, 35.721447, 37.529881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.672110, 35.520851, 37.444069>,  <24.838760, 35.186527, 37.301048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672110, 35.520851, 37.444069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451962, 0.150825, -0.879194,
		-0.788767, -0.527897, 0.314916,
		-0.416627, 0.835809, 0.357555,
		24.547121, 35.771595, 37.551334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181286, 35.602921, 37.707500>,  <24.838760, 35.186527, 37.301048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181286, 35.602921, 37.707500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.992678, 35.316643, 37.913586>,  <24.879513, 35.144875, 38.037235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.992678, 35.316643, 37.913586>,  <25.181286, 35.602921, 37.707500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992678, 35.316643, 37.913586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881834, 0.378585, -0.281145,
		0.006162, -0.586899, -0.809637,
		-0.471520, -0.715698, 0.515214,
		24.851221, 35.101933, 38.068150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353634, 35.535030, 38.494175>,  <25.181286, 35.602921, 37.707500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353634, 35.535030, 38.494175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.652678, 35.448544, 38.745358>,  <25.832104, 35.396652, 38.896069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.652678, 35.448544, 38.745358>,  <25.353634, 35.535030, 38.494175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652678, 35.448544, 38.745358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248925, 0.967820, 0.036881,
		-0.615725, 0.128742, 0.777373,
		0.747609, -0.216216, 0.627958,
		25.876961, 35.383678, 38.933746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357334, 36.037891, 39.086037>,  <25.353634, 35.535030, 38.494175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357334, 36.037891, 39.086037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.728941, 35.892635, 39.057598>,  <25.951906, 35.805481, 39.040535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.728941, 35.892635, 39.057598>,  <25.357334, 36.037891, 39.086037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728941, 35.892635, 39.057598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366811, 0.878464, 0.306187,
		-0.048730, -0.310533, 0.949313,
		0.929019, -0.363138, -0.071099,
		26.007647, 35.783695, 39.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686104, 36.350285, 39.681553>,  <25.357334, 36.037891, 39.086037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686104, 36.350285, 39.681553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.962574, 36.304546, 39.396118>,  <26.128456, 36.277103, 39.224857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.962574, 36.304546, 39.396118>,  <25.686104, 36.350285, 39.681553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962574, 36.304546, 39.396118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416852, 0.869670, 0.264401,
		0.590347, -0.480206, 0.648762,
		0.691176, -0.114349, -0.713582,
		26.169928, 36.270241, 39.182045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318516, 36.414833, 39.981129>,  <25.686104, 36.350285, 39.681553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318516, 36.414833, 39.981129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.369473, 36.523418, 39.599537>,  <26.400045, 36.588570, 39.370583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.369473, 36.523418, 39.599537>,  <26.318516, 36.414833, 39.981129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369473, 36.523418, 39.599537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535146, 0.790998, 0.296547,
		0.835099, -0.548296, -0.044508,
		0.127390, 0.271464, -0.953981,
		26.407690, 36.604858, 39.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785862, 36.965134, 40.170212>,  <26.318516, 36.414833, 39.981129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785862, 36.965134, 40.170212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.520138, 37.075569, 39.892372>,  <26.360703, 37.141830, 39.725670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.520138, 37.075569, 39.892372>,  <26.785862, 36.965134, 40.170212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520138, 37.075569, 39.892372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728744, 0.445857, -0.519753,
		0.166194, -0.851462, -0.497385,
		-0.664313, 0.276087, -0.694597,
		26.320845, 37.158394, 39.683994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151327, 36.705830, 40.635502>,  <26.785862, 36.965134, 40.170212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151327, 36.705830, 40.635502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290539, 36.348022, 40.747723>,  <27.374065, 36.133339, 40.815056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290539, 36.348022, 40.747723>,  <27.151327, 36.705830, 40.635502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290539, 36.348022, 40.747723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215272, 0.367521, 0.904758,
		-0.912432, -0.254488, 0.320473,
		0.348031, -0.894519, 0.280554,
		27.394949, 36.079666, 40.831890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871330, 36.465862, 41.227676>,  <27.151327, 36.705830, 40.635502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871330, 36.465862, 41.227676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.229504, 36.287872, 41.222084>,  <27.444408, 36.181076, 41.218731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.229504, 36.287872, 41.222084>,  <26.871330, 36.465862, 41.227676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229504, 36.287872, 41.222084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163622, 0.299734, 0.939887,
		-0.414038, -0.843893, 0.341200,
		0.895433, -0.444977, -0.013978,
		27.498133, 36.154381, 41.217892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777365, 35.993004, 41.725239>,  <26.871330, 36.465862, 41.227676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777365, 35.993004, 41.725239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157360, 36.107101, 41.674385>,  <27.385357, 36.175560, 41.643871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157360, 36.107101, 41.674385>,  <26.777365, 35.993004, 41.725239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157360, 36.107101, 41.674385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122033, 0.035681, 0.991884,
		0.287463, -0.957791, -0.000912,
		0.949986, 0.285241, -0.127139,
		27.442356, 36.192673, 41.636242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201614, 35.496193, 42.218529>,  <26.777365, 35.993004, 41.725239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201614, 35.496193, 42.218529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337923, 35.857525, 42.114319>,  <27.419708, 36.074322, 42.051792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337923, 35.857525, 42.114319>,  <27.201614, 35.496193, 42.218529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337923, 35.857525, 42.114319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398011, 0.112437, 0.910464,
		0.851740, -0.413954, -0.321218,
		0.340774, 0.903327, -0.260525,
		27.440155, 36.128525, 42.036160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955980, 35.563797, 42.374153>,  <27.201614, 35.496193, 42.218529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955980, 35.563797, 42.374153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.812637, 35.937088, 42.363815>,  <27.726631, 36.161064, 42.357613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.812637, 35.937088, 42.363815>,  <27.955980, 35.563797, 42.374153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812637, 35.937088, 42.363815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542799, 0.230799, 0.807527,
		0.759571, 0.275354, -0.589264,
		-0.358357, 0.933227, -0.025847,
		27.705130, 36.217056, 42.356060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093348, 35.913784, 43.077496>,  <27.955980, 35.563797, 42.374153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093348, 35.913784, 43.077496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989521, 36.286713, 43.178211>,  <27.927225, 36.510471, 43.238640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.989521, 36.286713, 43.178211>,  <28.093348, 35.913784, 43.077496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989521, 36.286713, 43.178211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732294, 0.020047, 0.680694,
		0.629580, 0.361066, -0.687939,
		-0.259566, 0.932325, 0.251785,
		27.911652, 36.566410, 43.253746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516119, 36.508148, 42.919521>,  <28.093348, 35.913784, 43.077496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516119, 36.508148, 42.919521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.326889, 36.579685, 43.264595>,  <28.213352, 36.622608, 43.471638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.326889, 36.579685, 43.264595>,  <28.516119, 36.508148, 42.919521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326889, 36.579685, 43.264595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847606, -0.174737, 0.501030,
		0.240348, 0.968237, -0.068924,
		-0.473073, 0.178842, 0.862681,
		28.184967, 36.633339, 43.523399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817274, 37.113323, 43.231281>,  <28.516119, 36.508148, 42.919521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817274, 37.113323, 43.231281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667326, 36.873184, 43.513859>,  <28.577356, 36.729103, 43.683403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667326, 36.873184, 43.513859>,  <28.817274, 37.113323, 43.231281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667326, 36.873184, 43.513859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901130, -0.056944, 0.429793,
		-0.217796, 0.797712, 0.562335,
		-0.374873, -0.600344, 0.706440,
		28.554865, 36.693081, 43.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197292, 37.175388, 43.892181>,  <28.817274, 37.113323, 43.231281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197292, 37.175388, 43.892181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072071, 36.795601, 43.883183>,  <28.996939, 36.567730, 43.877785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072071, 36.795601, 43.883183>,  <29.197292, 37.175388, 43.892181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072071, 36.795601, 43.883183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888659, -0.301199, 0.345781,
		-0.335085, 0.088256, 0.938045,
		-0.313055, -0.949468, -0.022498,
		28.978155, 36.510761, 43.876434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309301, 36.935032, 44.610123>,  <29.197292, 37.175388, 43.892181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309301, 36.935032, 44.610123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274101, 36.633724, 44.349403>,  <29.252981, 36.452938, 44.192974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274101, 36.633724, 44.349403>,  <29.309301, 36.935032, 44.610123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274101, 36.633724, 44.349403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875259, -0.370874, 0.310444,
		-0.475582, -0.543170, 0.691945,
		-0.088001, -0.753272, -0.651795,
		29.247702, 36.407742, 44.153866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747541, 36.368412, 44.866867>,  <29.309301, 36.935032, 44.610123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747541, 36.368412, 44.866867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679743, 36.220867, 44.501308>,  <29.639063, 36.132339, 44.281971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679743, 36.220867, 44.501308>,  <29.747541, 36.368412, 44.866867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679743, 36.220867, 44.501308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749019, -0.650882, 0.123786,
		-0.640501, -0.663548, 0.386605,
		-0.169497, -0.368859, -0.913900,
		29.628895, 36.110210, 44.227139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954180, 35.697033, 44.950569>,  <29.747541, 36.368412, 44.866867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954180, 35.697033, 44.950569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960833, 35.748928, 44.554005>,  <29.964825, 35.780064, 44.316067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960833, 35.748928, 44.554005>,  <29.954180, 35.697033, 44.950569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960833, 35.748928, 44.554005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833418, -0.549598, -0.057938,
		-0.552393, -0.825294, -0.117267,
		0.016634, 0.129737, -0.991409,
		29.965822, 35.787849, 44.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969904, 35.043819, 44.619389>,  <29.954180, 35.697033, 44.950569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969904, 35.043819, 44.619389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143124, 35.345135, 44.421391>,  <30.247055, 35.525925, 44.302593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143124, 35.345135, 44.421391>,  <29.969904, 35.043819, 44.619389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143124, 35.345135, 44.421391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898578, -0.403987, 0.171327,
		-0.070912, -0.518984, -0.851837,
		0.433047, 0.753293, -0.494995,
		30.273037, 35.571121, 44.272892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499752, 34.694706, 44.364758>,  <29.969904, 35.043819, 44.619389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499752, 34.694706, 44.364758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597879, 35.076073, 44.294540>,  <30.656755, 35.304893, 44.252411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597879, 35.076073, 44.294540>,  <30.499752, 34.694706, 44.364758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597879, 35.076073, 44.294540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969084, -0.246102, 0.017632,
		-0.026390, -0.174441, -0.984314,
		0.245317, 0.953417, -0.175542,
		30.671474, 35.362099, 44.241879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782263, 34.824963, 43.713406>,  <30.499752, 34.694706, 44.364758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782263, 34.824963, 43.713406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909567, 35.077110, 43.996628>,  <30.985949, 35.228401, 44.166561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909567, 35.077110, 43.996628>,  <30.782263, 34.824963, 43.713406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909567, 35.077110, 43.996628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931024, -0.348563, -0.108160,
		0.178621, 0.693639, -0.697825,
		0.318260, 0.630372, 0.708055,
		31.005045, 35.266220, 44.209045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432014, 35.148533, 43.531776>,  <30.782263, 34.824963, 43.713406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432014, 35.148533, 43.531776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399548, 35.196384, 43.927574>,  <31.380068, 35.225098, 44.165054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399548, 35.196384, 43.927574>,  <31.432014, 35.148533, 43.531776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399548, 35.196384, 43.927574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911559, -0.392579, 0.122239,
		0.403078, 0.911905, -0.077186,
		-0.081169, 0.119632, 0.989495,
		31.375196, 35.232273, 44.224422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038589, 35.488903, 43.965801>,  <31.432014, 35.148533, 43.531776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038589, 35.488903, 43.965801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832647, 35.245106, 44.206947>,  <31.709082, 35.098827, 44.351635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832647, 35.245106, 44.206947>,  <32.038589, 35.488903, 43.965801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832647, 35.245106, 44.206947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753966, -0.656611, -0.019933,
		0.407996, 0.444276, 0.797595,
		-0.514854, -0.609492, 0.602864,
		31.678190, 35.062260, 44.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455505, 35.322018, 44.649551>,  <32.038589, 35.488903, 43.965801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455505, 35.322018, 44.649551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201859, 35.043339, 44.515381>,  <32.049671, 34.876133, 44.434879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201859, 35.043339, 44.515381>,  <32.455505, 35.322018, 44.649551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201859, 35.043339, 44.515381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754361, -0.652665, -0.070483,
		-0.169815, -0.297726, 0.939427,
		-0.634115, -0.696698, -0.335425,
		32.011623, 34.834328, 44.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132561, 35.229557, 44.861736>,  <32.455505, 35.322018, 44.649551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132561, 35.229557, 44.861736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847336, 35.200264, 45.140644>,  <32.676201, 35.182686, 45.307987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847336, 35.200264, 45.140644>,  <33.132561, 35.229557, 44.861736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847336, 35.200264, 45.140644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658856, 0.270007, 0.702143,
		-0.239688, 0.960069, -0.144280,
		-0.713063, -0.073235, 0.697265,
		32.633415, 35.178295, 45.349823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182003, 35.779552, 45.337025>,  <33.132561, 35.229557, 44.861736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182003, 35.779552, 45.337025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016594, 35.470055, 45.528988>,  <32.917347, 35.284355, 45.644165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016594, 35.470055, 45.528988>,  <33.182003, 35.779552, 45.337025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016594, 35.470055, 45.528988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597898, 0.166749, 0.784036,
		-0.686671, 0.611153, 0.393669,
		-0.413522, -0.773749, 0.479909,
		32.892536, 35.237930, 45.672962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956905, 35.958317, 45.995289>,  <33.182003, 35.779552, 45.337025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956905, 35.958317, 45.995289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022388, 35.563770, 46.002071>,  <33.061680, 35.327042, 46.006142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022388, 35.563770, 46.002071>,  <32.956905, 35.958317, 45.995289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022388, 35.563770, 46.002071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510810, 0.099457, 0.853921,
		-0.843962, -0.131137, 0.520126,
		0.163710, -0.986363, 0.016952,
		33.071503, 35.267860, 46.007156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682632, 35.676449, 46.637230>,  <32.956905, 35.958317, 45.995289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682632, 35.676449, 46.637230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991081, 35.470432, 46.487507>,  <33.176151, 35.346825, 46.397671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991081, 35.470432, 46.487507>,  <32.682632, 35.676449, 46.637230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991081, 35.470432, 46.487507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486333, 0.097048, 0.868367,
		-0.410917, -0.851655, 0.325317,
		0.771120, -0.515039, -0.374309,
		33.222416, 35.315922, 46.375214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789978, 35.254589, 47.111248>,  <32.682632, 35.676449, 46.637230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789978, 35.254589, 47.111248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121643, 35.344582, 46.906555>,  <33.320644, 35.398575, 46.783741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121643, 35.344582, 46.906555>,  <32.789978, 35.254589, 47.111248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121643, 35.344582, 46.906555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448879, 0.277610, 0.849376,
		0.333156, -0.933978, 0.129195,
		0.829165, 0.224982, -0.511731,
		33.370392, 35.412075, 46.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147202, 35.261063, 47.800755>,  <32.789978, 35.254589, 47.111248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147202, 35.261063, 47.800755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883499, 35.529854, 47.935711>,  <32.725277, 35.691128, 48.016685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883499, 35.529854, 47.935711>,  <33.147202, 35.261063, 47.800755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883499, 35.529854, 47.935711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654216, 0.291422, 0.697907,
		0.370651, 0.680827, -0.631738,
		-0.659256, 0.671973, 0.337392,
		32.685722, 35.731445, 48.036930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230434, 35.974640, 47.834301>,  <33.147202, 35.261063, 47.800755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230434, 35.974640, 47.834301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042683, 35.784077, 48.131683>,  <32.930031, 35.669739, 48.310112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042683, 35.784077, 48.131683>,  <33.230434, 35.974640, 47.834301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042683, 35.784077, 48.131683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841629, 0.013315, 0.539892,
		-0.267107, 0.879124, 0.394708,
		-0.469376, -0.476407, 0.743453,
		32.901871, 35.641155, 48.354721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505978, 36.182213, 48.395435>,  <33.230434, 35.974640, 47.834301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505978, 36.182213, 48.395435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380028, 35.842113, 48.564159>,  <33.304459, 35.638054, 48.665394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380028, 35.842113, 48.564159>,  <33.505978, 36.182213, 48.395435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380028, 35.842113, 48.564159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732936, 0.064551, 0.677228,
		-0.603043, 0.522402, 0.602856,
		-0.314871, -0.850252, 0.421814,
		33.285568, 35.587036, 48.690704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341782, 36.322105, 49.049366>,  <33.505978, 36.182213, 48.395435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341782, 36.322105, 49.049366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507404, 35.975975, 48.936390>,  <33.606777, 35.768295, 48.868607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507404, 35.975975, 48.936390>,  <33.341782, 36.322105, 49.049366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507404, 35.975975, 48.936390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776376, 0.173744, 0.605849,
		-0.475185, -0.470132, 0.743757,
		0.414052, -0.865326, -0.282438,
		33.631618, 35.716377, 48.851658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885693, 36.383476, 49.654324>,  <33.341782, 36.322105, 49.049366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885693, 36.383476, 49.654324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876900, 36.070229, 49.902916>,  <32.871624, 35.882278, 50.052071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876900, 36.070229, 49.902916>,  <32.885693, 36.383476, 49.654324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876900, 36.070229, 49.902916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966007, -0.176794, -0.188613,
		0.257581, 0.596206, 0.760388,
		-0.021979, -0.783123, 0.621478,
		32.870304, 35.835293, 50.089359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456558, 36.417648, 49.933807>,  <32.885693, 36.383476, 49.654324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456558, 36.417648, 49.933807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350903, 36.039101, 50.008224>,  <33.287510, 35.811970, 50.052876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350903, 36.039101, 50.008224>,  <33.456558, 36.417648, 49.933807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350903, 36.039101, 50.008224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955874, -0.282584, -0.080321,
		0.128585, 0.156613, 0.979254,
		-0.264142, -0.946371, 0.186039,
		33.271660, 35.755188, 50.064037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996437, 36.232445, 50.363968>,  <33.456558, 36.417648, 49.933807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996437, 36.232445, 50.363968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826057, 35.896355, 50.229748>,  <33.723827, 35.694702, 50.149216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826057, 35.896355, 50.229748>,  <33.996437, 36.232445, 50.363968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826057, 35.896355, 50.229748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897965, -0.437930, -0.043304,
		-0.110562, -0.319757, 0.941027,
		-0.425951, -0.840221, -0.335550,
		33.698273, 35.644287, 50.129082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300877, 35.636688, 50.684280>,  <33.996437, 36.232445, 50.363968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300877, 35.636688, 50.684280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163353, 35.488247, 50.339241>,  <34.080841, 35.399181, 50.132217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163353, 35.488247, 50.339241>,  <34.300877, 35.636688, 50.684280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163353, 35.488247, 50.339241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864261, -0.484275, -0.136125,
		-0.367219, -0.792312, 0.487230,
		-0.343806, -0.371106, -0.862599,
		34.060211, 35.376915, 50.080460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745445, 35.008907, 50.710503>,  <34.300877, 35.636688, 50.684280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745445, 35.008907, 50.710503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558575, 35.004906, 50.356861>,  <34.446453, 35.002502, 50.144676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558575, 35.004906, 50.356861>,  <34.745445, 35.008907, 50.710503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558575, 35.004906, 50.356861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773835, -0.488327, -0.403381,
		-0.427696, -0.872603, 0.235882,
		-0.467179, -0.010009, -0.884106,
		34.418423, 35.001904, 50.091629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815418, 34.408730, 50.499306>,  <34.745445, 35.008907, 50.710503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815418, 34.408730, 50.499306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742836, 34.596977, 50.153915>,  <34.699287, 34.709927, 49.946682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742836, 34.596977, 50.153915>,  <34.815418, 34.408730, 50.499306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742836, 34.596977, 50.153915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918648, -0.232231, -0.319617,
		-0.350944, -0.851228, -0.390191,
		-0.181453, 0.470616, -0.863479,
		34.688400, 34.738163, 49.894871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141869, 33.973209, 50.011402>,  <34.815418, 34.408730, 50.499306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141869, 33.973209, 50.011402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125240, 34.312889, 49.800827>,  <35.115261, 34.516697, 49.674484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125240, 34.312889, 49.800827>,  <35.141869, 33.973209, 50.011402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125240, 34.312889, 49.800827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984687, -0.054455, -0.165607,
		-0.169300, -0.525258, -0.833931,
		-0.041574, 0.849199, -0.526434,
		35.112766, 34.567650, 49.642899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243725, 33.763367, 49.297440>,  <35.141869, 33.973209, 50.011402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243725, 33.763367, 49.297440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345181, 34.144657, 49.363194>,  <35.406055, 34.373432, 49.402645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345181, 34.144657, 49.363194>,  <35.243725, 33.763367, 49.297440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345181, 34.144657, 49.363194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886826, -0.161293, -0.433040,
		-0.386272, 0.255618, -0.886258,
		0.253640, 0.953228, 0.164385,
		35.421272, 34.430626, 49.412510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560051, 33.815865, 48.697742>,  <35.243725, 33.763367, 49.297440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560051, 33.815865, 48.697742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680561, 34.127033, 48.918312>,  <35.752865, 34.313736, 49.050652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680561, 34.127033, 48.918312>,  <35.560051, 33.815865, 48.697742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680561, 34.127033, 48.918312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947064, -0.176850, -0.267942,
		-0.110920, 0.602956, -0.790025,
		0.301273, 0.777925, 0.551422,
		35.770943, 34.360413, 49.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141712, 33.995209, 48.319187>,  <35.560051, 33.815865, 48.697742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141712, 33.995209, 48.319187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159859, 34.194698, 48.665417>,  <36.170746, 34.314392, 48.873154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159859, 34.194698, 48.665417>,  <36.141712, 33.995209, 48.319187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159859, 34.194698, 48.665417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998439, -0.050893, -0.023003,
		0.032579, 0.865263, -0.500258,
		0.045363, 0.498728, 0.865570,
		36.173470, 34.344318, 48.925087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590870, 34.554466, 48.136387>,  <36.141712, 33.995209, 48.319187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590870, 34.554466, 48.136387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618130, 34.507931, 48.532734>,  <36.634483, 34.480011, 48.770542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618130, 34.507931, 48.532734>,  <36.590870, 34.554466, 48.136387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618130, 34.507931, 48.532734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990829, 0.124043, -0.053581,
		-0.116677, 0.985434, 0.123723,
		0.068148, -0.116337, 0.990869,
		36.638573, 34.473030, 48.829994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985302, 35.156151, 48.440708>,  <36.590870, 34.554466, 48.136387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985302, 35.156151, 48.440708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000858, 34.829357, 48.670849>,  <37.010193, 34.633282, 48.808933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000858, 34.829357, 48.670849>,  <36.985302, 35.156151, 48.440708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000858, 34.829357, 48.670849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998535, 0.053448, 0.008405,
		-0.037618, 0.574181, 0.817864,
		0.038887, -0.816982, 0.575350,
		37.012524, 34.584263, 48.843452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475410, 35.350922, 48.936378>,  <36.985302, 35.156151, 48.440708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475410, 35.350922, 48.936378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442707, 34.952381, 48.946190>,  <37.423084, 34.713257, 48.952076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442707, 34.952381, 48.946190>,  <37.475410, 35.350922, 48.936378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442707, 34.952381, 48.946190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985971, -0.077267, 0.147956,
		-0.145521, 0.036279, 0.988690,
		-0.081761, -0.996350, 0.024526,
		37.418179, 34.653477, 48.953548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962654, 35.183548, 49.396854>,  <37.475410, 35.350922, 48.936378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962654, 35.183548, 49.396854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887241, 34.834637, 49.216370>,  <37.841995, 34.625290, 49.108078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887241, 34.834637, 49.216370>,  <37.962654, 35.183548, 49.396854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887241, 34.834637, 49.216370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967815, -0.243015, 0.065408,
		-0.166704, -0.424358, 0.890017,
		-0.188531, -0.872275, -0.451211,
		37.830681, 34.572952, 49.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629910, 35.179810, 48.960529>,  <37.962654, 35.183548, 49.396854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629910, 35.179810, 48.960529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258659, 35.066582, 48.863823>,  <38.035908, 34.998646, 48.805801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258659, 35.066582, 48.863823>,  <38.629910, 35.179810, 48.960529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258659, 35.066582, 48.863823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370512, 0.765297, 0.526347,
		0.036027, 0.578093, -0.815175,
		-0.928129, -0.283070, -0.241762,
		37.980221, 34.981663, 48.791294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299896, 35.011791, 48.698051>,  <38.629910, 35.179810, 48.960529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299896, 35.011791, 48.698051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415169, 35.359032, 48.859722>,  <39.484333, 35.567375, 48.956726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415169, 35.359032, 48.859722>,  <39.299896, 35.011791, 48.698051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415169, 35.359032, 48.859722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853851, 0.041886, 0.518830,
		0.433466, -0.494622, 0.753297,
		0.288177, 0.868098, 0.404177,
		39.501621, 35.619461, 48.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854622, 35.458008, 48.356289>,  <39.299896, 35.011791, 48.698051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854622, 35.458008, 48.356289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208992, 35.639072, 48.315826>,  <40.421616, 35.747711, 48.291550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208992, 35.639072, 48.315826>,  <39.854622, 35.458008, 48.356289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208992, 35.639072, 48.315826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052313, 0.119190, 0.991492,
		0.460870, -0.883680, 0.081913,
		0.885925, 0.452664, -0.101159,
		40.474770, 35.774872, 48.285480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330784, 35.142475, 48.859077>,  <39.854622, 35.458008, 48.356289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330784, 35.142475, 48.859077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472744, 35.509857, 48.789242>,  <40.557919, 35.730286, 48.747341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472744, 35.509857, 48.789242>,  <40.330784, 35.142475, 48.859077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472744, 35.509857, 48.789242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033868, 0.199254, 0.979363,
		0.934291, -0.341662, 0.101821,
		0.354899, 0.918458, -0.174589,
		40.579212, 35.785393, 48.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522213, 34.443752, 49.068653>,  <40.330784, 35.142475, 48.859077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522213, 34.443752, 49.068653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848503, 34.243511, 48.952732>,  <41.044277, 34.123367, 48.883179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848503, 34.243511, 48.952732>,  <40.522213, 34.443752, 49.068653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848503, 34.243511, 48.952732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055478, 0.566415, -0.822250,
		0.575772, 0.654653, 0.489812,
		0.815726, -0.500602, -0.289807,
		41.093220, 34.093330, 48.865791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121964, 33.978081, 49.565331>,  <40.522213, 34.443752, 49.068653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121964, 33.978081, 49.565331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.131134, 34.318745, 49.774769>,  <40.136635, 34.523144, 49.900433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.131134, 34.318745, 49.774769>,  <40.121964, 33.978081, 49.565331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131134, 34.318745, 49.774769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656523, -0.382152, 0.650336,
		0.753957, -0.358662, 0.550373,
		0.022925, 0.851658, 0.523596,
		40.138012, 34.574242, 49.931847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315098, 33.914547, 50.362312>,  <40.121964, 33.978081, 49.565331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315098, 33.914547, 50.362312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094799, 34.245392, 50.317471>,  <39.962620, 34.443897, 50.290565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094799, 34.245392, 50.317471>,  <40.315098, 33.914547, 50.362312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094799, 34.245392, 50.317471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647909, -0.338974, 0.682136,
		0.526202, 0.448317, 0.722581,
		-0.550749, 0.827109, -0.112100,
		39.929573, 34.493523, 50.283840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335339, 34.311020, 51.054432>,  <40.315098, 33.914547, 50.362312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335339, 34.311020, 51.054432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015656, 34.375011, 50.822681>,  <39.823845, 34.413406, 50.683632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015656, 34.375011, 50.822681>,  <40.335339, 34.311020, 51.054432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015656, 34.375011, 50.822681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596280, -0.089770, 0.797742,
		0.075609, 0.983031, 0.167135,
		-0.799208, 0.159975, -0.579374,
		39.775894, 34.423004, 50.648869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951424, 34.784321, 51.435902>,  <40.335339, 34.311020, 51.054432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951424, 34.784321, 51.435902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664452, 34.653820, 51.189697>,  <39.492268, 34.575520, 51.041973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664452, 34.653820, 51.189697>,  <39.951424, 34.784321, 51.435902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664452, 34.653820, 51.189697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644029, -0.026191, 0.764552,
		-0.265558, 0.944920, -0.191326,
		-0.717430, -0.326253, -0.615511,
		39.449223, 34.555943, 51.005043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391342, 35.245144, 51.502399>,  <39.951424, 34.784321, 51.435902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391342, 35.245144, 51.502399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255169, 34.898777, 51.355820>,  <39.173466, 34.690956, 51.267872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255169, 34.898777, 51.355820>,  <39.391342, 35.245144, 51.502399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255169, 34.898777, 51.355820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558618, -0.127233, 0.819609,
		-0.756339, 0.483733, -0.440402,
		-0.340438, -0.865918, -0.366453,
		39.153038, 34.639000, 51.245884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803566, 35.545185, 51.378960>,  <39.391342, 35.245144, 51.502399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803566, 35.545185, 51.378960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778381, 35.146152, 51.390713>,  <38.763271, 34.906731, 51.397762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778381, 35.146152, 51.390713>,  <38.803566, 35.545185, 51.378960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778381, 35.146152, 51.390713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697581, 0.065041, 0.713548,
		-0.713735, 0.024432, -0.699990,
		-0.062962, -0.997583, 0.029379,
		38.759495, 34.846878, 51.399525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098591, 35.341579, 51.334030>,  <38.803566, 35.545185, 51.378960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098591, 35.341579, 51.334030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253750, 35.001373, 51.476105>,  <38.346848, 34.797249, 51.561352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253750, 35.001373, 51.476105>,  <38.098591, 35.341579, 51.334030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253750, 35.001373, 51.476105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787184, -0.105242, 0.607672,
		-0.479452, -0.515316, -0.710334,
		0.387900, -0.850514, 0.355191,
		38.370121, 34.746220, 51.582661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577770, 35.019341, 51.341198>,  <38.098591, 35.341579, 51.334030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577770, 35.019341, 51.341198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809391, 34.797180, 51.579937>,  <37.948364, 34.663883, 51.723183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809391, 34.797180, 51.579937>,  <37.577770, 35.019341, 51.341198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809391, 34.797180, 51.579937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776952, -0.154066, 0.610417,
		-0.247072, -0.817187, -0.520732,
		0.579052, -0.555401, 0.596849,
		37.983109, 34.630562, 51.758991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245327, 34.358177, 51.440018>,  <37.577770, 35.019341, 51.341198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245327, 34.358177, 51.440018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482407, 34.428730, 51.754368>,  <37.624653, 34.471062, 51.942978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482407, 34.428730, 51.754368>,  <37.245327, 34.358177, 51.440018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482407, 34.428730, 51.754368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778884, -0.122899, 0.615009,
		0.205061, -0.976619, 0.064542,
		0.592697, 0.176386, 0.785874,
		37.660217, 34.481644, 51.990131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902943, 33.875679, 51.791641>,  <37.245327, 34.358177, 51.440018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902943, 33.875679, 51.791641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100182, 34.145172, 52.011803>,  <37.218525, 34.306866, 52.143898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100182, 34.145172, 52.011803>,  <36.902943, 33.875679, 51.791641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100182, 34.145172, 52.011803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804573, 0.112503, 0.583100,
		0.330930, -0.730363, 0.597541,
		0.493100, 0.673731, 0.550399,
		37.248112, 34.347290, 52.176922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595066, 33.860806, 52.467182>,  <36.902943, 33.875679, 51.791641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595066, 33.860806, 52.467182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783421, 34.212814, 52.491936>,  <36.896435, 34.424019, 52.506786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783421, 34.212814, 52.491936>,  <36.595066, 33.860806, 52.467182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783421, 34.212814, 52.491936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837604, 0.423963, 0.344492,
		0.276923, -0.214051, 0.936747,
		0.470885, 0.880021, 0.061885,
		36.924686, 34.476822, 52.510502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109570, 34.144230, 52.835682>,  <36.595066, 33.860806, 52.467182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109570, 34.144230, 52.835682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339054, 34.456188, 52.735588>,  <36.476746, 34.643364, 52.675533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339054, 34.456188, 52.735588>,  <36.109570, 34.144230, 52.835682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339054, 34.456188, 52.735588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690394, 0.624852, 0.364576,
		0.440687, -0.036406, 0.896922,
		0.573716, 0.779894, -0.250229,
		36.511169, 34.690155, 52.660519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304604, 34.545986, 53.509911>,  <36.109570, 34.144230, 52.835682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304604, 34.545986, 53.509911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307259, 34.769501, 53.178196>,  <36.308853, 34.903610, 52.979168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307259, 34.769501, 53.178196>,  <36.304604, 34.545986, 53.509911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307259, 34.769501, 53.178196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703401, 0.592058, 0.393311,
		0.710762, 0.580710, 0.396981,
		0.006636, 0.558787, -0.829285,
		36.309250, 34.937138, 52.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042614, 35.148331, 53.777149>,  <36.304604, 34.545986, 53.509911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042614, 35.148331, 53.777149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009567, 35.214558, 53.384056>,  <35.989738, 35.254292, 53.148201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009567, 35.214558, 53.384056>,  <36.042614, 35.148331, 53.777149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009567, 35.214558, 53.384056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763642, 0.623082, 0.169174,
		0.640332, 0.764433, 0.074951,
		-0.082621, 0.165563, -0.982732,
		35.984779, 35.264225, 53.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188873, 35.822811, 53.641895>,  <36.042614, 35.148331, 53.777149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188873, 35.822811, 53.641895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942650, 35.664471, 53.369312>,  <35.794918, 35.569466, 53.205761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942650, 35.664471, 53.369312>,  <36.188873, 35.822811, 53.641895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942650, 35.664471, 53.369312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697901, 0.675486, 0.238020,
		0.366096, 0.622107, -0.692067,
		-0.615555, -0.395855, -0.681462,
		35.757984, 35.545715, 53.164875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916012, 36.393787, 53.321888>,  <36.188873, 35.822811, 53.641895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916012, 36.393787, 53.321888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665939, 36.093105, 53.237904>,  <35.515896, 35.912697, 53.187511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665939, 36.093105, 53.237904>,  <35.916012, 36.393787, 53.321888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665939, 36.093105, 53.237904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779712, 0.613470, 0.125312,
		0.034609, 0.242054, -0.969645,
		-0.625181, -0.751707, -0.209964,
		35.478386, 35.867592, 53.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658264, 36.683712, 52.762165>,  <35.916012, 36.393787, 53.321888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658264, 36.683712, 52.762165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435040, 36.413559, 52.955009>,  <35.301105, 36.251469, 53.070717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435040, 36.413559, 52.955009>,  <35.658264, 36.683712, 52.762165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435040, 36.413559, 52.955009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641562, 0.719653, 0.265514,
		-0.526277, -0.161133, -0.834907,
		-0.558060, -0.675378, 0.482113,
		35.267620, 36.210945, 53.099644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052711, 36.870960, 52.566643>,  <35.658264, 36.683712, 52.762165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052711, 36.870960, 52.566643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976410, 36.657856, 52.896439>,  <34.930630, 36.529995, 53.094315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976410, 36.657856, 52.896439>,  <35.052711, 36.870960, 52.566643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976410, 36.657856, 52.896439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442432, 0.796425, 0.412264,
		-0.876280, -0.286139, -0.387630,
		-0.190753, -0.532759, 0.824488,
		34.919186, 36.498028, 53.143784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248829, 36.903870, 52.688942>,  <35.052711, 36.870960, 52.566643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248829, 36.903870, 52.688942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427517, 36.815186, 53.035648>,  <34.534729, 36.761974, 53.243671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427517, 36.815186, 53.035648>,  <34.248829, 36.903870, 52.688942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427517, 36.815186, 53.035648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507340, 0.735206, 0.449531,
		-0.736917, -0.640561, 0.215952,
		0.446722, -0.221706, 0.866768,
		34.561535, 36.748672, 53.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717987, 37.013935, 53.082977>,  <34.248829, 36.903870, 52.688942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717987, 37.013935, 53.082977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037003, 37.016258, 53.324272>,  <34.228413, 37.017654, 53.469051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037003, 37.016258, 53.324272>,  <33.717987, 37.013935, 53.082977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037003, 37.016258, 53.324272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397824, 0.756780, 0.518671,
		-0.453505, -0.653644, 0.605874,
		0.797539, 0.005811, 0.603239,
		34.276264, 37.018002, 53.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510799, 37.074066, 53.765514>,  <33.717987, 37.013935, 53.082977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510799, 37.074066, 53.765514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890652, 37.187279, 53.819328>,  <34.118565, 37.255207, 53.851616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890652, 37.187279, 53.819328>,  <33.510799, 37.074066, 53.765514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890652, 37.187279, 53.819328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301245, 0.706183, 0.640747,
		0.086343, -0.649000, 0.755873,
		0.949630, 0.283027, 0.134534,
		34.175541, 37.272186, 53.859688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532921, 37.245579, 54.470577>,  <33.510799, 37.074066, 53.765514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532921, 37.245579, 54.470577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835976, 37.428154, 54.283962>,  <34.017807, 37.537701, 54.171993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835976, 37.428154, 54.283962>,  <33.532921, 37.245579, 54.470577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835976, 37.428154, 54.283962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171466, 0.828882, 0.532497,
		0.629755, -0.323443, 0.706253,
		0.757633, 0.456441, -0.466534,
		34.063267, 37.565086, 54.144001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808662, 37.603054, 55.014954>,  <33.532921, 37.245579, 54.470577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808662, 37.603054, 55.014954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966259, 37.782093, 54.693848>,  <34.060818, 37.889515, 54.501183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966259, 37.782093, 54.693848>,  <33.808662, 37.603054, 55.014954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966259, 37.782093, 54.693848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159825, 0.893469, 0.419726,
		0.905112, -0.037066, 0.423555,
		0.393990, 0.447594, -0.802765,
		34.084457, 37.916370, 54.453018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271507, 38.008984, 55.299461>,  <33.808662, 37.603054, 55.014954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271507, 38.008984, 55.299461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222382, 38.178715, 54.940605>,  <34.192905, 38.280552, 54.725292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222382, 38.178715, 54.940605>,  <34.271507, 38.008984, 55.299461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222382, 38.178715, 54.940605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043492, 0.900817, 0.432016,
		0.991476, 0.092078, -0.092182,
		-0.122818, 0.424324, -0.897142,
		34.185535, 38.306011, 54.671463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559769, 38.651623, 55.335648>,  <34.271507, 38.008984, 55.299461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559769, 38.651623, 55.335648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335949, 38.683937, 55.005707>,  <34.201656, 38.703323, 54.807743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335949, 38.683937, 55.005707>,  <34.559769, 38.651623, 55.335648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335949, 38.683937, 55.005707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217021, 0.946231, 0.239891,
		0.799879, 0.313241, -0.511932,
		-0.559550, 0.080784, -0.824850,
		34.168083, 38.708172, 54.758251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622604, 39.302860, 55.259697>,  <34.559769, 38.651623, 55.335648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622604, 39.302860, 55.259697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292000, 39.212902, 55.053284>,  <34.093636, 39.158928, 54.929436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292000, 39.212902, 55.053284>,  <34.622604, 39.302860, 55.259697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292000, 39.212902, 55.053284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360354, 0.915655, 0.178102,
		0.432456, 0.333159, -0.837847,
		-0.826515, -0.224900, -0.516036,
		34.044044, 39.145432, 54.898472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422794, 39.987873, 54.968788>,  <34.622604, 39.302860, 55.259697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422794, 39.987873, 54.968788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103992, 39.748165, 54.938717>,  <33.912712, 39.604340, 54.920673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103992, 39.748165, 54.938717>,  <34.422794, 39.987873, 54.968788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103992, 39.748165, 54.938717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596653, 0.761910, 0.251988,
		-0.093731, 0.245691, -0.964806,
		-0.797006, -0.599274, -0.075178,
		33.864891, 39.568382, 54.916164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858700, 40.381874, 54.527519>,  <34.422794, 39.987873, 54.968788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858700, 40.381874, 54.527519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652992, 40.128262, 54.758526>,  <33.529568, 39.976093, 54.897129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652992, 40.128262, 54.758526>,  <33.858700, 40.381874, 54.527519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652992, 40.128262, 54.758526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609097, 0.744077, 0.274499,
		-0.603759, -0.210598, -0.768845,
		-0.514271, -0.634033, 0.577518,
		33.498711, 39.938053, 54.931782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133038, 40.586006, 54.416893>,  <33.858700, 40.381874, 54.527519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133038, 40.586006, 54.416893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155300, 40.398525, 54.769535>,  <33.168659, 40.286037, 54.981121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155300, 40.398525, 54.769535>,  <33.133038, 40.586006, 54.416893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155300, 40.398525, 54.769535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642139, 0.659332, 0.391074,
		-0.764565, -0.587878, -0.264272,
		0.055661, -0.468701, 0.881602,
		33.171997, 40.257915, 55.034016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481949, 40.538643, 54.679668>,  <33.133038, 40.586006, 54.416893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481949, 40.538643, 54.679668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689018, 40.482521, 55.017269>,  <32.813259, 40.448849, 55.219830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689018, 40.482521, 55.017269>,  <32.481949, 40.538643, 54.679668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689018, 40.482521, 55.017269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602744, 0.640305, 0.476140,
		-0.607222, -0.755198, 0.246896,
		0.517669, -0.140308, 0.843999,
		32.844318, 40.440430, 55.270470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050499, 40.445148, 55.163544>,  <32.481949, 40.538643, 54.679668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050499, 40.445148, 55.163544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385658, 40.533562, 55.363174>,  <32.586754, 40.586609, 55.482952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385658, 40.533562, 55.363174>,  <32.050499, 40.445148, 55.163544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385658, 40.533562, 55.363174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496732, 0.687783, 0.529351,
		-0.226254, -0.691448, 0.686082,
		0.837894, 0.221031, 0.499078,
		32.637028, 40.599873, 55.512897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665413, 40.395771, 55.735527>,  <32.050499, 40.445148, 55.163544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665413, 40.395771, 55.735527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017120, 40.578293, 55.790176>,  <32.228146, 40.687805, 55.822968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017120, 40.578293, 55.790176>,  <31.665413, 40.395771, 55.735527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017120, 40.578293, 55.790176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452168, 0.709429, 0.540606,
		0.149754, -0.537117, 0.830108,
		0.879271, 0.456306, 0.136627,
		32.280903, 40.715183, 55.831165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843973, 40.443222, 56.407280>,  <31.665413, 40.395771, 55.735527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843973, 40.443222, 56.407280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090584, 40.726276, 56.269211>,  <32.238552, 40.896111, 56.186371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090584, 40.726276, 56.269211>,  <31.843973, 40.443222, 56.407280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090584, 40.726276, 56.269211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328309, 0.629534, 0.704202,
		0.715618, -0.320836, 0.620448,
		0.616526, 0.707638, -0.345172,
		32.275543, 40.938568, 56.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129410, 40.813240, 57.020092>,  <31.843973, 40.443222, 56.407280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129410, 40.813240, 57.020092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134460, 41.049324, 56.697231>,  <32.137493, 41.190975, 56.503517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134460, 41.049324, 56.697231>,  <32.129410, 40.813240, 57.020092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134460, 41.049324, 56.697231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399247, 0.743054, 0.537095,
		0.916756, 0.315469, 0.245025,
		0.012630, 0.590212, -0.807150,
		32.138248, 41.226387, 56.455086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494034, 41.510559, 57.206860>,  <32.129410, 40.813240, 57.020092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494034, 41.510559, 57.206860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252743, 41.562691, 56.892120>,  <32.107967, 41.593971, 56.703278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252743, 41.562691, 56.892120>,  <32.494034, 41.510559, 57.206860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252743, 41.562691, 56.892120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388410, 0.813663, 0.432540,
		0.696602, 0.566540, -0.440202,
		-0.603227, 0.130330, -0.786849,
		32.071774, 41.601791, 56.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483017, 42.221481, 57.162815>,  <32.494034, 41.510559, 57.206860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483017, 42.221481, 57.162815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159512, 42.139496, 56.942310>,  <31.965408, 42.090305, 56.810009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159512, 42.139496, 56.942310>,  <32.483017, 42.221481, 57.162815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159512, 42.139496, 56.942310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443147, 0.828620, 0.342067,
		0.386673, 0.520941, -0.760989,
		-0.808767, -0.204962, -0.551259,
		31.916882, 42.078007, 56.776932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202488, 42.819866, 57.054905>,  <32.483017, 42.221481, 57.162815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202488, 42.819866, 57.054905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896729, 42.592999, 56.932259>,  <31.713272, 42.456879, 56.858669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896729, 42.592999, 56.932259>,  <32.202488, 42.819866, 57.054905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896729, 42.592999, 56.932259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637173, 0.737185, 0.224874,
		0.098493, 0.367262, -0.924888,
		-0.764401, -0.567165, -0.306617,
		31.667408, 42.422848, 56.840275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745037, 43.288128, 56.677341>,  <32.202488, 42.819866, 57.054905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745037, 43.288128, 56.677341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516060, 42.978630, 56.785881>,  <31.378674, 42.792931, 56.851006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516060, 42.978630, 56.785881>,  <31.745037, 43.288128, 56.677341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516060, 42.978630, 56.785881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755532, 0.626326, 0.192059,
		-0.318558, -0.095071, -0.943124,
		-0.572444, -0.773742, 0.271350,
		31.344326, 42.746506, 56.867287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097301, 43.186119, 56.267979>,  <31.745037, 43.288128, 56.677341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097301, 43.186119, 56.267979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010963, 43.038719, 56.629669>,  <30.959160, 42.950279, 56.846684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010963, 43.038719, 56.629669>,  <31.097301, 43.186119, 56.267979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010963, 43.038719, 56.629669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786416, 0.614507, 0.062707,
		-0.578758, -0.697559, -0.422434,
		-0.215846, -0.368500, 0.904222,
		30.946209, 42.928169, 56.900936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392920, 43.288486, 56.276207>,  <31.097301, 43.186119, 56.267979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392920, 43.288486, 56.276207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475307, 43.208080, 56.659283>,  <30.524740, 43.159836, 56.889130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475307, 43.208080, 56.659283>,  <30.392920, 43.288486, 56.276207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475307, 43.208080, 56.659283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761061, 0.582280, 0.285897,
		-0.615113, -0.787746, -0.033052,
		0.205969, -0.201014, 0.957690,
		30.537098, 43.147778, 56.946590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741018, 43.419010, 56.613083>,  <30.392920, 43.288486, 56.276207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741018, 43.419010, 56.613083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007912, 43.429131, 56.910851>,  <30.168047, 43.435204, 57.089512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007912, 43.429131, 56.910851>,  <29.741018, 43.419010, 56.613083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007912, 43.429131, 56.910851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477437, 0.781640, 0.401363,
		-0.571714, -0.623216, 0.533615,
		0.667231, 0.025303, 0.744421,
		30.208080, 43.436722, 57.134178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331802, 43.474922, 57.240562>,  <29.741018, 43.419010, 56.613083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331802, 43.474922, 57.240562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702185, 43.614014, 57.299473>,  <29.924414, 43.697468, 57.334820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702185, 43.614014, 57.299473>,  <29.331802, 43.474922, 57.240562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702185, 43.614014, 57.299473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377301, 0.835476, 0.399531,
		0.015885, -0.425514, 0.904812,
		0.925955, 0.347733, 0.147275,
		29.979971, 43.718334, 57.343655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349131, 43.580891, 57.883656>,  <29.331802, 43.474922, 57.240562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349131, 43.580891, 57.883656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632746, 43.811356, 57.721031>,  <29.802916, 43.949635, 57.623455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632746, 43.811356, 57.721031>,  <29.349131, 43.580891, 57.883656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632746, 43.811356, 57.721031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468942, 0.815847, 0.338361,
		0.526646, -0.049257, 0.848656,
		0.709040, 0.576167, -0.406564,
		29.845457, 43.984207, 57.599064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651770, 44.130924, 58.371571>,  <29.349131, 43.580891, 57.883656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651770, 44.130924, 58.371571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684053, 44.259335, 57.994122>,  <29.703424, 44.336380, 57.767651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684053, 44.259335, 57.994122>,  <29.651770, 44.130924, 58.371571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684053, 44.259335, 57.994122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591356, 0.777515, 0.213935,
		0.802361, 0.540752, 0.252594,
		0.080710, 0.321026, -0.943625,
		29.708267, 44.355644, 57.711033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081697, 44.899693, 58.185329>,  <29.651770, 44.130924, 58.371571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081697, 44.899693, 58.185329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757118, 44.771179, 57.990051>,  <29.562370, 44.694073, 57.872887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757118, 44.771179, 57.990051>,  <30.081697, 44.899693, 58.185329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757118, 44.771179, 57.990051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501001, 0.812519, 0.298012,
		0.300919, 0.486406, -0.820279,
		-0.811446, -0.321283, -0.488192,
		29.513685, 44.674793, 57.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764496, 45.495384, 57.910351>,  <30.081697, 44.899693, 58.185329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764496, 45.495384, 57.910351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486353, 45.213367, 57.966057>,  <29.319468, 45.044159, 57.999481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486353, 45.213367, 57.966057>,  <29.764496, 45.495384, 57.910351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486353, 45.213367, 57.966057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566215, 0.656808, 0.498000,
		-0.442579, 0.267436, -0.855922,
		-0.695359, -0.705040, 0.139263,
		29.277744, 45.001854, 58.007835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096395, 45.575012, 57.577576>,  <29.764496, 45.495384, 57.910351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096395, 45.575012, 57.577576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077845, 45.395367, 57.934483>,  <29.066713, 45.287579, 58.148628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077845, 45.395367, 57.934483>,  <29.096395, 45.575012, 57.577576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077845, 45.395367, 57.934483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561402, 0.750539, 0.348595,
		-0.826243, -0.484755, -0.286943,
		-0.046379, -0.449115, 0.892269,
		29.063931, 45.260632, 58.202164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600618, 45.513245, 57.165096>,  <29.096395, 45.575012, 57.577576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600618, 45.513245, 57.165096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750481, 45.208176, 57.375988>,  <28.840399, 45.025135, 57.502522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750481, 45.208176, 57.375988>,  <28.600618, 45.513245, 57.165096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750481, 45.208176, 57.375988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889566, -0.455980, -0.027467,
		0.261353, -0.458713, -0.849280,
		0.374655, -0.762670, 0.527228,
		28.862877, 44.979374, 57.534157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445570, 44.941444, 56.838627>,  <28.600618, 45.513245, 57.165096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445570, 44.941444, 56.838627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494783, 44.849800, 57.224865>,  <28.524311, 44.794815, 57.456608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494783, 44.849800, 57.224865>,  <28.445570, 44.941444, 56.838627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494783, 44.849800, 57.224865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956172, -0.287873, 0.053526,
		0.265705, -0.929859, -0.254485,
		0.123031, -0.229109, 0.965594,
		28.531693, 44.781067, 57.514542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860340, 44.610909, 56.397484>,  <28.445570, 44.941444, 56.838627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860340, 44.610909, 56.397484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996181, 44.265911, 56.247402>,  <28.077686, 44.058914, 56.157352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996181, 44.265911, 56.247402>,  <27.860340, 44.610909, 56.397484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996181, 44.265911, 56.247402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713355, -0.496180, 0.494905,
		-0.613022, 0.099586, -0.783765,
		0.339603, -0.862490, -0.375209,
		28.098063, 44.007164, 56.134838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071615, 44.867504, 55.691593>,  <27.860340, 44.610909, 56.397484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071615, 44.867504, 55.691593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.788748, 45.054333, 55.903915>,  <27.619028, 45.166431, 56.031307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.788748, 45.054333, 55.903915>,  <28.071615, 44.867504, 55.691593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788748, 45.054333, 55.903915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679786, 0.242695, 0.692091,
		0.194433, 0.850259, -0.489137,
		-0.707168, 0.467074, 0.530807,
		27.576597, 45.194454, 56.063156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175133, 45.596478, 55.694145>,  <28.071615, 44.867504, 55.691593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175133, 45.596478, 55.694145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.021202, 45.426285, 56.021770>,  <27.928844, 45.324169, 56.218346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.021202, 45.426285, 56.021770>,  <28.175133, 45.596478, 55.694145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021202, 45.426285, 56.021770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697399, 0.447253, 0.559999,
		-0.604601, 0.786720, 0.124617,
		-0.384827, -0.425483, 0.819068,
		27.905754, 45.298641, 56.267490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804218, 46.041203, 56.152821>,  <28.175133, 45.596478, 55.694145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804218, 46.041203, 56.152821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.027130, 45.759193, 56.328262>,  <28.160877, 45.589989, 56.433529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.027130, 45.759193, 56.328262>,  <27.804218, 46.041203, 56.152821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027130, 45.759193, 56.328262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673117, 0.692882, 0.258512,
		-0.486162, 0.151171, 0.860694,
		0.557280, -0.705026, 0.438609,
		28.194315, 45.547684, 56.459846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431587, 46.398232, 55.908947>,  <27.804218, 46.041203, 56.152821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431587, 46.398232, 55.908947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766546, 46.494946, 56.105034>,  <28.967522, 46.552975, 56.222687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766546, 46.494946, 56.105034>,  <28.431587, 46.398232, 55.908947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766546, 46.494946, 56.105034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538554, -0.518250, -0.664362,
		0.093422, 0.820340, -0.564194,
		0.837396, 0.241783, 0.490213,
		29.017765, 46.567482, 56.252098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873453, 46.821335, 55.555828>,  <28.431587, 46.398232, 55.908947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873453, 46.821335, 55.555828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.089327, 46.565845, 55.775200>,  <29.218851, 46.412552, 55.906822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.089327, 46.565845, 55.775200>,  <28.873453, 46.821335, 55.555828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089327, 46.565845, 55.775200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484343, -0.297267, -0.822827,
		0.688589, 0.709693, 0.148931,
		0.539682, -0.638723, 0.548430,
		29.251232, 46.374229, 55.939728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628851, 46.921745, 55.494076>,  <28.873453, 46.821335, 55.555828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628851, 46.921745, 55.494076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587622, 46.544163, 55.619495>,  <29.562883, 46.317612, 55.694748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587622, 46.544163, 55.619495>,  <29.628851, 46.921745, 55.494076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587622, 46.544163, 55.619495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532648, -0.318606, -0.784076,
		0.840037, 0.086194, 0.535639,
		-0.103075, -0.943960, 0.313552,
		29.556700, 46.260975, 55.713562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277937, 46.565536, 55.515266>,  <29.628851, 46.921745, 55.494076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277937, 46.565536, 55.515266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987394, 46.294811, 55.467388>,  <29.813068, 46.132374, 55.438660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987394, 46.294811, 55.467388>,  <30.277937, 46.565536, 55.515266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987394, 46.294811, 55.467388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460182, -0.349529, -0.816126,
		0.510530, -0.647879, 0.565341,
		-0.726355, -0.676817, -0.119697,
		29.769487, 46.091766, 55.431480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619486, 45.926960, 55.640453>,  <30.277937, 46.565536, 55.515266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619486, 45.926960, 55.640453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286373, 45.796349, 55.461632>,  <30.086506, 45.717979, 55.354340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286373, 45.796349, 55.461632>,  <30.619486, 45.926960, 55.640453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286373, 45.796349, 55.461632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550614, -0.572364, -0.607638,
		-0.057464, -0.752182, 0.656446,
		-0.832780, -0.326530, -0.447052,
		30.036539, 45.698391, 55.327515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657663, 45.206810, 55.627544>,  <30.619486, 45.926960, 55.640453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657663, 45.206810, 55.627544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386963, 45.282776, 55.343025>,  <30.224543, 45.328354, 55.172314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386963, 45.282776, 55.343025>,  <30.657663, 45.206810, 55.627544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386963, 45.282776, 55.343025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341179, -0.775246, -0.531593,
		-0.652385, -0.602435, 0.459855,
		-0.676751, 0.189910, -0.711297,
		30.183937, 45.339748, 55.129635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359520, 44.566784, 55.523968>,  <30.657663, 45.206810, 55.627544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359520, 44.566784, 55.523968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288126, 44.786209, 55.197235>,  <30.245289, 44.917866, 55.001194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288126, 44.786209, 55.197235>,  <30.359520, 44.566784, 55.523968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288126, 44.786209, 55.197235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329714, -0.748822, -0.574938,
		-0.927055, -0.371940, -0.047217,
		-0.178486, 0.548568, -0.816833,
		30.234581, 44.950779, 54.952187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080784, 44.190678, 54.991299>,  <30.359520, 44.566784, 55.523968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080784, 44.190678, 54.991299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202414, 44.496067, 54.763390>,  <30.275391, 44.679302, 54.626644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202414, 44.496067, 54.763390>,  <30.080784, 44.190678, 54.991299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202414, 44.496067, 54.763390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376761, -0.645709, -0.664163,
		-0.874980, -0.012713, -0.483992,
		0.304074, 0.763478, -0.569772,
		30.293636, 44.725109, 54.592457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851633, 44.128868, 54.375885>,  <30.080784, 44.190678, 54.991299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851633, 44.128868, 54.375885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170105, 44.356995, 54.295052>,  <30.361189, 44.493870, 54.246552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170105, 44.356995, 54.295052>,  <29.851633, 44.128868, 54.375885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170105, 44.356995, 54.295052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280306, -0.643658, -0.712133,
		-0.536211, 0.510342, -0.672331,
		0.796182, 0.570312, -0.202084,
		30.408960, 44.528088, 54.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919344, 44.032482, 53.612583>,  <29.851633, 44.128868, 54.375885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919344, 44.032482, 53.612583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261209, 44.197094, 53.739197>,  <30.466328, 44.295860, 53.815166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261209, 44.197094, 53.739197>,  <29.919344, 44.032482, 53.612583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261209, 44.197094, 53.739197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510647, -0.556190, -0.655662,
		-0.093768, 0.722009, -0.685500,
		0.854662, 0.411529, 0.316539,
		30.517609, 44.320553, 53.834160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227987, 44.197132, 52.969807>,  <29.919344, 44.032482, 53.612583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227987, 44.197132, 52.969807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508768, 44.183784, 53.254383>,  <30.677237, 44.175777, 53.425129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508768, 44.183784, 53.254383>,  <30.227987, 44.197132, 52.969807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508768, 44.183784, 53.254383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554175, -0.601873, -0.575012,
		0.447382, 0.797895, -0.403996,
		0.701954, -0.033366, 0.711441,
		30.719355, 44.173775, 53.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837294, 44.240139, 52.596447>,  <30.227987, 44.197132, 52.969807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837294, 44.240139, 52.596447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938015, 44.094662, 52.955181>,  <30.998447, 44.007374, 53.170422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938015, 44.094662, 52.955181>,  <30.837294, 44.240139, 52.596447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938015, 44.094662, 52.955181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702241, -0.568991, -0.427910,
		0.665923, 0.737546, 0.112130,
		0.251803, -0.363698, 0.896839,
		31.013556, 43.985554, 53.224232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535431, 44.204430, 52.533852>,  <30.837294, 44.240139, 52.596447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535431, 44.204430, 52.533852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450325, 43.944633, 52.825848>,  <31.399261, 43.788757, 53.001045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450325, 43.944633, 52.825848>,  <31.535431, 44.204430, 52.533852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450325, 43.944633, 52.825848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618905, -0.667701, -0.413681,
		0.756100, 0.363780, 0.544037,
		-0.212765, -0.649492, 0.729994,
		31.386496, 43.749786, 53.044846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147987, 44.065994, 52.874588>,  <31.535431, 44.204430, 52.533852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147987, 44.065994, 52.874588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900612, 43.754192, 52.914398>,  <31.752186, 43.567112, 52.938282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.900612, 43.754192, 52.914398>,  <32.147987, 44.065994, 52.874588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900612, 43.754192, 52.914398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706145, -0.606820, -0.364869,
		0.344808, -0.155373, 0.925725,
		-0.618439, -0.779506, 0.099521,
		31.715080, 43.520340, 52.944256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579292, 43.541004, 52.945927>,  <32.147987, 44.065994, 52.874588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579292, 43.541004, 52.945927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237839, 43.348145, 52.867085>,  <32.032967, 43.232430, 52.819778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237839, 43.348145, 52.867085>,  <32.579292, 43.541004, 52.945927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237839, 43.348145, 52.867085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520600, -0.802077, -0.292658,
		-0.016988, -0.352434, 0.935683,
		-0.853632, -0.482145, -0.197102,
		31.981749, 43.203503, 52.807953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414288, 42.947113, 53.373234>,  <32.579292, 43.541004, 52.945927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414288, 42.947113, 53.373234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182430, 42.880081, 53.054253>,  <32.043316, 42.839863, 52.862865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182430, 42.880081, 53.054253>,  <32.414288, 42.947113, 53.373234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182430, 42.880081, 53.054253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486322, -0.856374, -0.173534,
		-0.653838, -0.488407, 0.577888,
		-0.579644, -0.167576, -0.797453,
		32.008537, 42.829807, 52.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152374, 42.251656, 53.487843>,  <32.414288, 42.947113, 53.373234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152374, 42.251656, 53.487843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127819, 42.345165, 53.099701>,  <32.113087, 42.401272, 52.866817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127819, 42.345165, 53.099701>,  <32.152374, 42.251656, 53.487843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127819, 42.345165, 53.099701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495993, -0.836507, -0.232909,
		-0.866153, -0.495586, -0.064596,
		-0.061391, 0.233774, -0.970351,
		32.109402, 42.415298, 52.808594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856758, 41.655140, 53.071178>,  <32.152374, 42.251656, 53.487843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856758, 41.655140, 53.071178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033592, 41.868061, 52.782398>,  <32.139694, 41.995815, 52.609131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033592, 41.868061, 52.782398>,  <31.856758, 41.655140, 53.071178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033592, 41.868061, 52.782398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387511, -0.839229, -0.381483,
		-0.808948, -0.111116, -0.577284,
		0.442085, 0.532304, -0.721951,
		32.166218, 42.027752, 52.565811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852818, 41.183552, 52.551968>,  <31.856758, 41.655140, 53.071178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852818, 41.183552, 52.551968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131260, 41.452938, 52.452465>,  <32.298325, 41.614571, 52.392765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131260, 41.452938, 52.452465>,  <31.852818, 41.183552, 52.551968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131260, 41.452938, 52.452465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572862, -0.729877, -0.372974,
		-0.432745, 0.117128, -0.893875,
		0.696104, 0.673469, -0.248752,
		32.340092, 41.654980, 52.377838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013508, 41.043350, 51.891117>,  <31.852818, 41.183552, 52.551968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013508, 41.043350, 51.891117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318432, 41.226124, 52.074459>,  <32.501389, 41.335789, 52.184464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318432, 41.226124, 52.074459>,  <32.013508, 41.043350, 51.891117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318432, 41.226124, 52.074459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596745, -0.770398, -0.224462,
		0.250549, 0.444630, -0.859959,
		0.762313, 0.456937, 0.458353,
		32.547127, 41.363205, 52.211964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510674, 40.865791, 51.439590>,  <32.013508, 41.043350, 51.891117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510674, 40.865791, 51.439590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755077, 41.034378, 51.707630>,  <32.901718, 41.135529, 51.868454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755077, 41.034378, 51.707630>,  <32.510674, 40.865791, 51.439590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755077, 41.034378, 51.707630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695880, -0.689499, -0.200852,
		0.377383, 0.589033, -0.714579,
		0.611010, 0.421463, 0.670101,
		32.938381, 41.160816, 51.908661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217926, 41.092598, 51.097706>,  <32.510674, 40.865791, 51.439590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217926, 41.092598, 51.097706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289875, 41.088516, 51.491161>,  <33.333046, 41.086067, 51.727234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289875, 41.088516, 51.491161>,  <33.217926, 41.092598, 51.097706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289875, 41.088516, 51.491161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825652, -0.542008, -0.156608,
		0.534738, 0.840311, -0.089066,
		0.179874, -0.010206, 0.983637,
		33.343838, 41.085453, 51.786251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867611, 41.239594, 51.130886>,  <33.217926, 41.092598, 51.097706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867611, 41.239594, 51.130886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791386, 41.053493, 51.476654>,  <33.745651, 40.941833, 51.684116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791386, 41.053493, 51.476654>,  <33.867611, 41.239594, 51.130886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791386, 41.053493, 51.476654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806342, -0.576420, -0.132483,
		0.559908, 0.671772, 0.485000,
		-0.190566, -0.465254, 0.864421,
		33.734215, 40.913918, 51.735981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536938, 41.166000, 51.461784>,  <33.867611, 41.239594, 51.130886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536938, 41.166000, 51.461784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297230, 40.881363, 51.608486>,  <34.153404, 40.710579, 51.696507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297230, 40.881363, 51.608486>,  <34.536938, 41.166000, 51.461784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297230, 40.881363, 51.608486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712780, -0.682844, -0.160216,
		0.364445, 0.165403, 0.916418,
		-0.599270, -0.711594, 0.366754,
		34.117447, 40.667885, 51.718513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003517, 40.773754, 51.893044>,  <34.536938, 41.166000, 51.461784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003517, 40.773754, 51.893044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688217, 40.539940, 51.816120>,  <34.499039, 40.399651, 51.769966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688217, 40.539940, 51.816120>,  <35.003517, 40.773754, 51.893044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688217, 40.539940, 51.816120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606638, -0.685736, -0.402190,
		0.103218, -0.433689, 0.895131,
		-0.788249, -0.584534, -0.192312,
		34.451744, 40.364578, 51.758427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134289, 40.233646, 52.278477>,  <35.003517, 40.773754, 51.893044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134289, 40.233646, 52.278477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878109, 40.100136, 52.001804>,  <34.724400, 40.020031, 51.835800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878109, 40.100136, 52.001804>,  <35.134289, 40.233646, 52.278477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878109, 40.100136, 52.001804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665104, -0.691366, -0.282223,
		-0.384003, -0.640787, 0.664781,
		-0.640452, -0.333774, -0.691676,
		34.685974, 40.000004, 51.794300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222752, 39.517784, 52.302883>,  <35.134289, 40.233646, 52.278477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222752, 39.517784, 52.302883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047531, 39.596920, 51.952118>,  <34.942398, 39.644402, 51.741661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047531, 39.596920, 51.952118>,  <35.222752, 39.517784, 52.302883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047531, 39.596920, 51.952118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525504, -0.735091, -0.428352,
		-0.729350, -0.648461, 0.218049,
		-0.438056, 0.197833, -0.876909,
		34.916119, 39.656273, 51.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002598, 38.848789, 51.979286>,  <35.222752, 39.517784, 52.302883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002598, 38.848789, 51.979286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015232, 39.130001, 51.695103>,  <35.022812, 39.298729, 51.524593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015232, 39.130001, 51.695103>,  <35.002598, 38.848789, 51.979286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015232, 39.130001, 51.695103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633286, -0.564004, -0.529951,
		-0.773273, -0.433187, -0.463031,
		0.031584, 0.703028, -0.710461,
		35.024708, 39.340908, 51.481964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054897, 38.511230, 51.372692>,  <35.002598, 38.848789, 51.979286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054897, 38.511230, 51.372692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187191, 38.875744, 51.274567>,  <35.266567, 39.094452, 51.215691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187191, 38.875744, 51.274567>,  <35.054897, 38.511230, 51.372692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187191, 38.875744, 51.274567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772360, -0.410746, -0.484506,
		-0.542284, -0.029228, -0.839687,
		0.330737, 0.911281, -0.245316,
		35.286411, 39.149128, 51.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162888, 38.543110, 50.543476>,  <35.054897, 38.511230, 51.372692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162888, 38.543110, 50.543476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380428, 38.845776, 50.688629>,  <35.510952, 39.027374, 50.775723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380428, 38.845776, 50.688629>,  <35.162888, 38.543110, 50.543476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380428, 38.845776, 50.688629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782981, -0.301943, -0.543849,
		-0.301943, 0.579902, -0.756667,
		0.543849, 0.756667, 0.362882,
		35.543583, 39.072777, 50.797493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619347, 38.735214, 50.021091>,  <35.162888, 38.543110, 50.543476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619347, 38.735214, 50.021091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797028, 38.865543, 50.354923>,  <35.903637, 38.943741, 50.555222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797028, 38.865543, 50.354923>,  <35.619347, 38.735214, 50.021091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797028, 38.865543, 50.354923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868554, -0.385112, -0.311933,
		0.219770, 0.863438, -0.454066,
		0.444201, 0.325827, 0.834579,
		35.930286, 38.963291, 50.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234684, 38.878834, 49.793915>,  <35.619347, 38.735214, 50.021091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234684, 38.878834, 49.793915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296955, 38.874687, 50.189018>,  <36.334316, 38.872200, 50.426079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296955, 38.874687, 50.189018>,  <36.234684, 38.878834, 49.793915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296955, 38.874687, 50.189018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884666, -0.443403, -0.144082,
		0.439467, 0.896263, -0.059853,
		0.155674, -0.010370, 0.987754,
		36.343658, 38.871574, 50.485344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901550, 39.233833, 49.898052>,  <36.234684, 38.878834, 49.793915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901550, 39.233833, 49.898052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798965, 38.993103, 50.200584>,  <36.737415, 38.848663, 50.382103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798965, 38.993103, 50.200584>,  <36.901550, 39.233833, 49.898052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798965, 38.993103, 50.200584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842830, -0.522291, -0.129807,
		0.473146, 0.604168, 0.641182,
		-0.256458, -0.601825, 0.756330,
		36.722027, 38.812557, 50.427483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513866, 39.147079, 50.253155>,  <36.901550, 39.233833, 49.898052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513866, 39.147079, 50.253155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281685, 38.862457, 50.411522>,  <37.142376, 38.691685, 50.506542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281685, 38.862457, 50.411522>,  <37.513866, 39.147079, 50.253155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281685, 38.862457, 50.411522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724396, -0.673301, -0.148042,
		0.371914, 0.200871, 0.906273,
		-0.580457, -0.711560, 0.395920,
		37.107548, 38.648991, 50.530296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997906, 38.688343, 50.517910>,  <37.513866, 39.147079, 50.253155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997906, 38.688343, 50.517910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655571, 38.487385, 50.468678>,  <37.450172, 38.366810, 50.439137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655571, 38.487385, 50.468678>,  <37.997906, 38.688343, 50.517910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655571, 38.487385, 50.468678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514000, -0.799401, -0.311066,
		0.057886, -0.329485, 0.942385,
		-0.855835, -0.502392, -0.123081,
		37.398819, 38.336666, 50.431755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002972, 37.972549, 50.927746>,  <37.997906, 38.688343, 50.517910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002972, 37.972549, 50.927746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714565, 37.928783, 50.654053>,  <37.541523, 37.902523, 50.489838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714565, 37.928783, 50.654053>,  <38.002972, 37.972549, 50.927746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714565, 37.928783, 50.654053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515695, -0.744271, -0.424404,
		-0.462816, -0.658855, 0.593053,
		-0.721013, -0.109414, -0.684229,
		37.498260, 37.895958, 50.448784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882656, 37.217232, 50.947273>,  <38.002972, 37.972549, 50.927746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882656, 37.217232, 50.947273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686794, 37.328182, 50.616627>,  <37.569275, 37.394753, 50.418240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686794, 37.328182, 50.616627>,  <37.882656, 37.217232, 50.947273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686794, 37.328182, 50.616627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436828, -0.742444, -0.507896,
		-0.754599, -0.609784, 0.242373,
		-0.489655, 0.277383, -0.826618,
		37.539898, 37.411396, 50.368641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382645, 36.753929, 50.772854>,  <37.882656, 37.217232, 50.947273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382645, 36.753929, 50.772854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473614, 36.930458, 50.425632>,  <37.528194, 37.036377, 50.217300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473614, 36.930458, 50.425632>,  <37.382645, 36.753929, 50.772854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473614, 36.930458, 50.425632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182924, -0.894902, -0.407048,
		-0.956461, -0.066216, -0.284250,
		0.227423, 0.441322, -0.868052,
		37.541840, 37.062855, 50.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121735, 36.301495, 50.272461>,  <37.382645, 36.753929, 50.772854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121735, 36.301495, 50.272461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395256, 36.523880, 50.083435>,  <37.559368, 36.657310, 49.970020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395256, 36.523880, 50.083435>,  <37.121735, 36.301495, 50.272461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395256, 36.523880, 50.083435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388484, -0.825619, -0.409186,
		-0.617651, 0.096219, -0.780544,
		0.683804, 0.555963, -0.472565,
		37.600399, 36.690670, 49.941666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107475, 36.080002, 49.539524>,  <37.121735, 36.301495, 50.272461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107475, 36.080002, 49.539524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458939, 36.261761, 49.598148>,  <37.669815, 36.370815, 49.633324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458939, 36.261761, 49.598148>,  <37.107475, 36.080002, 49.539524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458939, 36.261761, 49.598148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473483, -0.789802, -0.389907,
		-0.061423, 0.411987, -0.909117,
		0.878659, 0.454401, 0.146557,
		37.722538, 36.398083, 49.642117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605160, 36.169571, 49.086193>,  <37.107475, 36.080002, 49.539524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605160, 36.169571, 49.086193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658615, 36.250275, 48.698082>,  <36.690689, 36.298698, 48.465218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658615, 36.250275, 48.698082>,  <36.605160, 36.169571, 49.086193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658615, 36.250275, 48.698082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824797, 0.565415, 0.003970,
		0.549409, 0.799750, 0.241972,
		0.133640, 0.201759, -0.970275,
		36.698708, 36.310802, 48.406998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607590, 36.912014, 48.897583>,  <36.605160, 36.169571, 49.086193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607590, 36.912014, 48.897583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492313, 36.740177, 48.555264>,  <36.423145, 36.637074, 48.349873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492313, 36.740177, 48.555264>,  <36.607590, 36.912014, 48.897583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492313, 36.740177, 48.555264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733137, 0.673910, -0.091401,
		0.615997, 0.601078, -0.509169,
		-0.288195, -0.429593, -0.855800,
		36.405853, 36.611298, 48.298523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311138, 37.448887, 48.588078>,  <36.607590, 36.912014, 48.897583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311138, 37.448887, 48.588078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169029, 37.144695, 48.370655>,  <36.083763, 36.962181, 48.240200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169029, 37.144695, 48.370655>,  <36.311138, 37.448887, 48.588078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169029, 37.144695, 48.370655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852146, 0.502503, -0.146076,
		0.384227, 0.411294, -0.826564,
		-0.355271, -0.760479, -0.543557,
		36.062447, 36.916553, 48.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940250, 37.763077, 48.012001>,  <36.311138, 37.448887, 48.588078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940250, 37.763077, 48.012001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784405, 37.399197, 48.069485>,  <35.690899, 37.180870, 48.103977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784405, 37.399197, 48.069485>,  <35.940250, 37.763077, 48.012001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784405, 37.399197, 48.069485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915822, 0.366197, -0.164833,
		0.097321, -0.195836, -0.975795,
		-0.389614, -0.909696, 0.143713,
		35.667522, 37.126289, 48.112598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540203, 37.616844, 47.449207>,  <35.940250, 37.763077, 48.012001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540203, 37.616844, 47.449207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387550, 37.383739, 47.736191>,  <35.295959, 37.243877, 47.908382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387550, 37.383739, 47.736191>,  <35.540203, 37.616844, 47.449207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387550, 37.383739, 47.736191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890711, 0.439255, -0.117003,
		-0.246963, -0.683702, -0.686703,
		-0.381633, -0.582758, 0.717461,
		35.273060, 37.208912, 47.951427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999603, 37.289837, 47.052967>,  <35.540203, 37.616844, 47.449207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999603, 37.289837, 47.052967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949703, 37.275227, 47.449574>,  <34.919765, 37.266460, 47.687538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949703, 37.275227, 47.449574>,  <34.999603, 37.289837, 47.052967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949703, 37.275227, 47.449574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923573, 0.369443, -0.102591,
		-0.362562, -0.928535, -0.079816,
		-0.124747, -0.036520, 0.991516,
		34.912277, 37.264271, 47.747028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251217, 37.011398, 47.097065>,  <34.999603, 37.289837, 47.052967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251217, 37.011398, 47.097065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338078, 37.147415, 47.463062>,  <34.390194, 37.229027, 47.682659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338078, 37.147415, 47.463062>,  <34.251217, 37.011398, 47.097065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338078, 37.147415, 47.463062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942963, 0.315371, 0.106589,
		-0.252317, -0.885952, 0.389135,
		0.217154, 0.340046, 0.914994,
		34.403225, 37.249428, 47.737560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600887, 36.905663, 47.451645>,  <34.251217, 37.011398, 47.097065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600887, 36.905663, 47.451645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811226, 37.168327, 47.667896>,  <33.937431, 37.325928, 47.797646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811226, 37.168327, 47.667896>,  <33.600887, 36.905663, 47.451645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811226, 37.168327, 47.667896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825160, 0.548056, 0.136915,
		-0.206386, -0.518099, 0.830047,
		0.525848, 0.656664, 0.540625,
		33.968979, 37.365326, 47.830082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327785, 36.919838, 48.073647>,  <33.600887, 36.905663, 47.451645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327785, 36.919838, 48.073647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496521, 37.275284, 48.001633>,  <33.597763, 37.488552, 47.958424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496521, 37.275284, 48.001633>,  <33.327785, 36.919838, 48.073647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496521, 37.275284, 48.001633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862369, 0.454548, 0.222949,
		0.279952, 0.061212, 0.958061,
		0.421837, 0.888617, -0.180039,
		33.623074, 37.541870, 47.947620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225712, 37.291088, 48.706158>,  <33.327785, 36.919838, 48.073647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225712, 37.291088, 48.706158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337349, 37.550774, 48.423138>,  <33.404331, 37.706585, 48.253326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337349, 37.550774, 48.423138>,  <33.225712, 37.291088, 48.706158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337349, 37.550774, 48.423138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783174, 0.580253, 0.223484,
		0.555648, 0.491763, 0.670391,
		0.279096, 0.649211, -0.707553,
		33.421078, 37.745537, 48.210873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005894, 37.834938, 48.982143>,  <33.225712, 37.291088, 48.706158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005894, 37.834938, 48.982143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053837, 37.982597, 48.613499>,  <33.082603, 38.071194, 48.392311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053837, 37.982597, 48.613499>,  <33.005894, 37.834938, 48.982143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053837, 37.982597, 48.613499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731380, 0.660577, 0.169472,
		0.671354, 0.653732, 0.349168,
		0.119863, 0.369150, -0.921608,
		33.089794, 38.093342, 48.337017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963444, 38.501289, 49.104340>,  <33.005894, 37.834938, 48.982143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963444, 38.501289, 49.104340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883953, 38.423565, 48.720100>,  <32.836258, 38.376930, 48.489555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883953, 38.423565, 48.720100>,  <32.963444, 38.501289, 49.104340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883953, 38.423565, 48.720100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829457, 0.555420, 0.059242,
		0.522024, 0.808548, -0.271553,
		-0.198726, -0.194316, -0.960598,
		32.824337, 38.365269, 48.431919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167831, 39.082668, 48.627106>,  <32.963444, 38.501289, 49.104340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167831, 39.082668, 48.627106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861614, 38.863682, 48.491920>,  <32.677883, 38.732288, 48.410809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861614, 38.863682, 48.491920>,  <33.167831, 39.082668, 48.627106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861614, 38.863682, 48.491920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600204, 0.796894, 0.068673,
		0.231723, 0.255418, -0.938651,
		-0.765546, -0.547468, -0.337962,
		32.631950, 38.699440, 48.390533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769543, 39.701382, 48.521252>,  <33.167831, 39.082668, 48.627106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769543, 39.701382, 48.521252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551136, 39.398640, 48.377563>,  <32.420094, 39.216995, 48.291351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551136, 39.398640, 48.377563>,  <32.769543, 39.701382, 48.521252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551136, 39.398640, 48.377563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811119, 0.584880, 0.000600,
		0.209649, 0.291702, -0.933251,
		-0.546015, -0.756852, -0.359225,
		32.387333, 39.171585, 48.269794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542625, 39.931564, 48.012009>,  <32.769543, 39.701382, 48.521252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542625, 39.931564, 48.012009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303097, 39.643635, 48.152443>,  <32.159378, 39.470875, 48.236702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.303097, 39.643635, 48.152443>,  <32.542625, 39.931564, 48.012009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303097, 39.643635, 48.152443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741873, 0.663714, 0.095443,
		-0.301720, -0.203304, -0.931468,
		-0.598824, -0.719828, 0.351082,
		32.123451, 39.427685, 48.257767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868933, 40.182735, 47.822376>,  <32.542625, 39.931564, 48.012009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868933, 40.182735, 47.822376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821264, 39.914974, 48.115688>,  <31.792664, 39.754318, 48.291676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821264, 39.914974, 48.115688>,  <31.868933, 40.182735, 47.822376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821264, 39.914974, 48.115688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863652, 0.434225, 0.256036,
		-0.489799, -0.602787, -0.629876,
		-0.119173, -0.669400, 0.733281,
		31.785513, 39.714153, 48.335674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194796, 40.038319, 47.808968>,  <31.868933, 40.182735, 47.822376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194796, 40.038319, 47.808968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308836, 39.909164, 48.169956>,  <31.377260, 39.831673, 48.386551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308836, 39.909164, 48.169956>,  <31.194796, 40.038319, 47.808968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308836, 39.909164, 48.169956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638943, 0.637818, 0.430045,
		-0.714471, -0.699237, -0.024464,
		0.285100, -0.322886, 0.902476,
		31.394365, 39.812298, 48.440701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528252, 39.882854, 48.303841>,  <31.194796, 40.038319, 47.808968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528252, 39.882854, 48.303841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840893, 39.924721, 48.549812>,  <31.028479, 39.949841, 48.697395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840893, 39.924721, 48.549812>,  <30.528252, 39.882854, 48.303841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840893, 39.924721, 48.549812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532164, 0.626179, 0.569825,
		-0.325415, -0.772622, 0.545125,
		0.781605, 0.104666, 0.614930,
		31.075375, 39.956120, 48.734291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236620, 40.016426, 48.897469>,  <30.528252, 39.882854, 48.303841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236620, 40.016426, 48.897469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603912, 40.125546, 49.012310>,  <30.824287, 40.191017, 49.081215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603912, 40.125546, 49.012310>,  <30.236620, 40.016426, 48.897469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603912, 40.125546, 49.012310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395297, 0.675697, 0.622233,
		-0.024256, -0.684848, 0.728282,
		0.918233, 0.272795, 0.287108,
		30.879383, 40.207382, 49.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211067, 39.896439, 49.595070>,  <30.236620, 40.016426, 48.897469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211067, 39.896439, 49.595070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487576, 40.172310, 49.508831>,  <30.653481, 40.337833, 49.457088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487576, 40.172310, 49.508831>,  <30.211067, 39.896439, 49.595070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487576, 40.172310, 49.508831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266868, 0.520942, 0.810803,
		0.671511, -0.502948, 0.544166,
		0.691271, 0.689683, -0.215598,
		30.694958, 40.379215, 49.444153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608049, 39.955383, 50.141342>,  <30.211067, 39.896439, 49.595070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608049, 39.955383, 50.141342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660599, 40.314476, 49.973141>,  <30.692129, 40.529930, 49.872219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660599, 40.314476, 49.973141>,  <30.608049, 39.955383, 50.141342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660599, 40.314476, 49.973141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380600, 0.437348, 0.814782,
		0.915360, 0.053003, 0.399132,
		0.131374, 0.897729, -0.420503,
		30.700010, 40.583794, 49.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974165, 40.321301, 50.614841>,  <30.608049, 39.955383, 50.141342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974165, 40.321301, 50.614841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812349, 40.611153, 50.391678>,  <30.715260, 40.785065, 50.257778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812349, 40.611153, 50.391678>,  <30.974165, 40.321301, 50.614841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812349, 40.611153, 50.391678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214952, 0.517623, 0.828168,
		0.888900, 0.454950, -0.053638,
		-0.404539, 0.724629, -0.557908,
		30.690989, 40.828541, 50.224304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135269, 40.946548, 50.929115>,  <30.974165, 40.321301, 50.614841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135269, 40.946548, 50.929115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846682, 41.081802, 50.687405>,  <30.673529, 41.162952, 50.542377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846682, 41.081802, 50.687405>,  <31.135269, 40.946548, 50.929115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846682, 41.081802, 50.687405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242792, 0.693736, 0.678073,
		0.648485, 0.635922, -0.418414,
		-0.721470, 0.338132, -0.604274,
		30.630241, 41.183243, 50.506123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164402, 41.643784, 50.931953>,  <31.135269, 40.946548, 50.929115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164402, 41.643784, 50.931953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.792439, 41.544811, 50.823112>,  <30.569260, 41.485428, 50.757809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.792439, 41.544811, 50.823112>,  <31.164402, 41.643784, 50.931953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792439, 41.544811, 50.823112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359763, 0.765646, 0.533251,
		0.076392, 0.593770, -0.801001,
		-0.929911, -0.247435, -0.272106,
		30.513466, 41.470581, 50.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835775, 42.255051, 50.822941>,  <31.164402, 41.643784, 50.931953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835775, 42.255051, 50.822941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556925, 41.975277, 50.885937>,  <30.389614, 41.807411, 50.923733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556925, 41.975277, 50.885937>,  <30.835775, 42.255051, 50.822941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556925, 41.975277, 50.885937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391055, 0.555066, 0.734151,
		-0.600908, 0.450211, -0.660470,
		-0.697127, -0.699437, 0.157487,
		30.347786, 41.765446, 50.933182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258303, 42.744717, 50.826248>,  <30.835775, 42.255051, 50.822941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258303, 42.744717, 50.826248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138390, 42.404034, 50.998169>,  <30.066441, 42.199623, 51.101322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138390, 42.404034, 50.998169>,  <30.258303, 42.744717, 50.826248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138390, 42.404034, 50.998169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577634, 0.520599, 0.628741,
		-0.759255, -0.059779, -0.648042,
		-0.299785, -0.851706, 0.429798,
		30.048454, 42.148521, 51.127110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461647, 42.727379, 50.873997>,  <30.258303, 42.744717, 50.826248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461647, 42.727379, 50.873997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603666, 42.478916, 51.153454>,  <29.688879, 42.329838, 51.321129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603666, 42.478916, 51.153454>,  <29.461647, 42.727379, 50.873997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603666, 42.478916, 51.153454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511665, 0.496338, 0.701319,
		-0.782393, -0.606473, -0.141601,
		0.355049, -0.621159, 0.698642,
		29.710180, 42.292568, 51.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993971, 42.817055, 51.317883>,  <29.461647, 42.727379, 50.873997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993971, 42.817055, 51.317883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263279, 42.637154, 51.552631>,  <29.424864, 42.529213, 51.693481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263279, 42.637154, 51.552631>,  <28.993971, 42.817055, 51.317883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263279, 42.637154, 51.552631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414601, 0.427565, 0.803302,
		-0.612218, -0.784160, 0.101398,
		0.673272, -0.449757, 0.586877,
		29.465261, 42.502228, 51.728695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626818, 42.374771, 51.585976>,  <28.993971, 42.817055, 51.317883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626818, 42.374771, 51.585976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947754, 42.426376, 51.819080>,  <29.140316, 42.457340, 51.958942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947754, 42.426376, 51.819080>,  <28.626818, 42.374771, 51.585976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947754, 42.426376, 51.819080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560269, 0.499428, 0.660811,
		-0.205795, -0.856696, 0.472991,
		0.802339, 0.129011, 0.582760,
		29.188456, 42.465080, 51.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469645, 42.006763, 52.158516>,  <28.626818, 42.374771, 51.585976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469645, 42.006763, 52.158516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756882, 42.271324, 52.245132>,  <28.929224, 42.430061, 52.297104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756882, 42.271324, 52.245132>,  <28.469645, 42.006763, 52.158516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756882, 42.271324, 52.245132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592937, 0.418531, 0.687936,
		0.364371, -0.622399, 0.692714,
		0.718094, 0.661400, 0.216543,
		28.972309, 42.469746, 52.310097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504728, 41.980656, 52.927036>,  <28.469645, 42.006763, 52.158516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504728, 41.980656, 52.927036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678251, 42.320656, 52.807491>,  <28.782364, 42.524654, 52.735764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678251, 42.320656, 52.807491>,  <28.504728, 41.980656, 52.927036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678251, 42.320656, 52.807491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511798, 0.505454, 0.694680,
		0.741536, -0.148400, 0.654295,
		0.433806, 0.849996, -0.298861,
		28.808393, 42.575653, 52.717834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639811, 42.242462, 53.552811>,  <28.504728, 41.980656, 52.927036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639811, 42.242462, 53.552811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620413, 42.538708, 53.284737>,  <28.608774, 42.716454, 53.123894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620413, 42.538708, 53.284737>,  <28.639811, 42.242462, 53.552811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620413, 42.538708, 53.284737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563356, 0.533781, 0.630641,
		0.824790, 0.408132, 0.391343,
		-0.048493, 0.740612, -0.670181,
		28.605865, 42.760891, 53.083683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755583, 42.840553, 53.933510>,  <28.639811, 42.242462, 53.552811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755583, 42.840553, 53.933510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598331, 42.984856, 53.595207>,  <28.503981, 43.071438, 53.392227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598331, 42.984856, 53.595207>,  <28.755583, 42.840553, 53.933510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598331, 42.984856, 53.595207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461695, 0.718006, 0.520869,
		0.795165, 0.595251, -0.115711,
		-0.393129, 0.360754, -0.845758,
		28.480392, 43.093082, 53.341480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944380, 43.573883, 53.930286>,  <28.755583, 42.840553, 53.933510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944380, 43.573883, 53.930286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621584, 43.513893, 53.701805>,  <28.427906, 43.477901, 53.564716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621584, 43.513893, 53.701805>,  <28.944380, 43.573883, 53.930286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621584, 43.513893, 53.701805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458658, 0.768448, 0.446230,
		0.372018, 0.622090, -0.688916,
		-0.806992, -0.149971, -0.571203,
		28.379486, 43.468903, 53.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449425, 44.166843, 54.139523>,  <28.944380, 43.573883, 53.930286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449425, 44.166843, 54.139523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.213293, 43.934639, 53.915195>,  <28.071613, 43.795315, 53.780602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.213293, 43.934639, 53.915195>,  <28.449425, 44.166843, 54.139523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213293, 43.934639, 53.915195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806429, 0.453780, 0.379151,
		0.034383, 0.676081, -0.736025,
		-0.590330, -0.580515, -0.560814,
		28.036194, 43.760483, 53.746952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920914, 44.571487, 53.871086>,  <28.449425, 44.166843, 54.139523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920914, 44.571487, 53.871086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.787769, 44.194824, 53.890995>,  <27.707884, 43.968826, 53.902939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.787769, 44.194824, 53.890995>,  <27.920914, 44.571487, 53.871086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787769, 44.194824, 53.890995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845358, 0.321373, 0.426719,
		-0.417821, 0.099962, -0.903014,
		-0.332860, -0.941662, 0.049773,
		27.687912, 43.912327, 53.905926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271284, 44.587578, 53.723881>,  <27.920914, 44.571487, 53.871086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271284, 44.587578, 53.723881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268875, 44.241684, 53.924759>,  <27.267429, 44.034149, 54.045284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268875, 44.241684, 53.924759>,  <27.271284, 44.587578, 53.723881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268875, 44.241684, 53.924759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814809, 0.295375, 0.498838,
		-0.579698, -0.406191, -0.706371,
		-0.006021, -0.864733, 0.502196,
		27.267069, 43.982265, 54.075417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549995, 44.243912, 53.569485>,  <27.271284, 44.587578, 53.723881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549995, 44.243912, 53.569485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.718327, 44.122196, 53.911320>,  <26.819324, 44.049168, 54.116421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.718327, 44.122196, 53.911320>,  <26.549995, 44.243912, 53.569485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718327, 44.122196, 53.911320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751786, 0.410220, 0.516272,
		-0.507663, -0.859726, -0.056129,
		0.420827, -0.304289, 0.854583,
		26.844574, 44.030910, 54.167694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004250, 43.953472, 53.977711>,  <26.549995, 44.243912, 53.569485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004250, 43.953472, 53.977711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.307619, 44.092369, 54.198334>,  <26.489641, 44.175709, 54.330708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.307619, 44.092369, 54.198334>,  <26.004250, 43.953472, 53.977711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307619, 44.092369, 54.198334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645995, 0.512804, 0.565440,
		-0.086495, -0.785146, 0.613240,
		0.758426, 0.347242, 0.551556,
		26.535147, 44.196541, 54.363800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009214, 43.487400, 54.531101>,  <26.004250, 43.953472, 53.977711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009214, 43.487400, 54.531101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806900, 43.142338, 54.530380>,  <25.685513, 42.935299, 54.529949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806900, 43.142338, 54.530380>,  <26.009214, 43.487400, 54.531101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806900, 43.142338, 54.530380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378512, -0.220046, -0.899060,
		0.775184, -0.455413, 0.437822,
		-0.505784, -0.862658, -0.001803,
		25.655165, 42.883541, 54.529839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474464, 42.903530, 54.464294>,  <26.009214, 43.487400, 54.531101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474464, 42.903530, 54.464294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122894, 42.767628, 54.330395>,  <25.911953, 42.686089, 54.250053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122894, 42.767628, 54.330395>,  <26.474464, 42.903530, 54.464294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122894, 42.767628, 54.330395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432909, -0.273659, -0.858895,
		0.200203, -0.899822, 0.387607,
		-0.878925, -0.339752, -0.334753,
		25.859217, 42.665703, 54.229969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629456, 42.211140, 54.359673>,  <26.474464, 42.903530, 54.464294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629456, 42.211140, 54.359673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285326, 42.272503, 54.165226>,  <26.078848, 42.309322, 54.048557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285326, 42.272503, 54.165226>,  <26.629456, 42.211140, 54.359673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285326, 42.272503, 54.165226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274478, -0.664172, -0.695369,
		-0.429543, -0.731670, 0.529294,
		-0.860323, 0.153411, -0.486117,
		26.027229, 42.318527, 54.019390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469210, 41.546310, 54.145878>,  <26.629456, 42.211140, 54.359673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469210, 41.546310, 54.145878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.235147, 41.785114, 53.926365>,  <26.094709, 41.928398, 53.794655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.235147, 41.785114, 53.926365>,  <26.469210, 41.546310, 54.145878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235147, 41.785114, 53.926365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025567, -0.662826, -0.748337,
		-0.810517, -0.451925, 0.372593,
		-0.585157, 0.597013, -0.548786,
		26.059601, 41.964218, 53.761730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924728, 41.093910, 53.939217>,  <26.469210, 41.546310, 54.145878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924728, 41.093910, 53.939217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.974186, 41.406284, 53.694317>,  <26.003860, 41.593708, 53.547379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.974186, 41.406284, 53.694317>,  <25.924728, 41.093910, 53.939217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974186, 41.406284, 53.694317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190284, -0.586875, -0.787000,
		-0.973911, 0.213810, 0.076035,
		0.123646, 0.780937, -0.612249,
		26.011280, 41.640564, 53.510643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469736, 40.874737, 53.411415>,  <25.924728, 41.093910, 53.939217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469736, 40.874737, 53.411415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.705240, 41.150871, 53.243229>,  <25.846542, 41.316551, 53.142315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.705240, 41.150871, 53.243229>,  <25.469736, 40.874737, 53.411415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705240, 41.150871, 53.243229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035631, -0.541841, -0.839725,
		-0.807523, 0.479415, -0.343612,
		0.588759, 0.690340, -0.420467,
		25.881868, 41.357975, 53.117088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397091, 40.910290, 52.728886>,  <25.469736, 40.874737, 53.411415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397091, 40.910290, 52.728886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.740978, 41.113728, 52.747704>,  <25.947311, 41.235790, 52.758995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.740978, 41.113728, 52.747704>,  <25.397091, 40.910290, 52.728886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740978, 41.113728, 52.747704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375849, -0.567571, -0.732531,
		-0.345864, 0.647450, -0.679107,
		0.859718, 0.508598, 0.047042,
		25.998894, 41.266308, 52.761814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691973, 41.105423, 51.996033>,  <25.397091, 40.910290, 52.728886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691973, 41.105423, 51.996033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005264, 41.131618, 52.243343>,  <26.193239, 41.147335, 52.391727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005264, 41.131618, 52.243343>,  <25.691973, 41.105423, 51.996033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005264, 41.131618, 52.243343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539570, -0.565663, -0.623610,
		0.308896, 0.822032, -0.478379,
		0.783229, 0.065488, 0.618275,
		26.240232, 41.151264, 52.428825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296885, 41.264946, 51.540108>,  <25.691973, 41.105423, 51.996033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296885, 41.264946, 51.540108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480450, 41.121712, 51.865360>,  <26.590588, 41.035770, 52.060513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480450, 41.121712, 51.865360>,  <26.296885, 41.264946, 51.540108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480450, 41.121712, 51.865360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543294, -0.611052, -0.575715,
		0.703017, 0.705969, -0.085875,
		0.458911, -0.358082, 0.813129,
		26.618122, 41.014286, 52.109299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920065, 41.118008, 51.326973>,  <26.296885, 41.264946, 51.540108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920065, 41.118008, 51.326973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.897612, 40.916382, 51.671707>,  <26.884140, 40.795406, 51.878548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.897612, 40.916382, 51.671707>,  <26.920065, 41.118008, 51.326973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897612, 40.916382, 51.671707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449148, -0.783674, -0.429093,
		0.891692, 0.363007, 0.270391,
		-0.056134, -0.504064, 0.861840,
		26.880772, 40.765163, 51.930260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630238, 40.809509, 51.304165>,  <26.920065, 41.118008, 51.326973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630238, 40.809509, 51.304165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.363651, 40.632107, 51.543873>,  <27.203699, 40.525665, 51.687698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.363651, 40.632107, 51.543873>,  <27.630238, 40.809509, 51.304165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363651, 40.632107, 51.543873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408662, -0.889618, -0.203900,
		0.623551, 0.109006, 0.774146,
		-0.666468, -0.443505, 0.599269,
		27.163712, 40.499054, 51.723652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985514, 40.589607, 51.868435>,  <27.630238, 40.809509, 51.304165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985514, 40.589607, 51.868435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.680496, 40.335922, 51.817364>,  <27.497486, 40.183712, 51.786720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.680496, 40.335922, 51.817364>,  <27.985514, 40.589607, 51.868435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680496, 40.335922, 51.817364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620132, -0.660344, -0.423535,
		0.184300, -0.402141, 0.896837,
		-0.762542, -0.634214, -0.127679,
		27.451735, 40.145657, 51.779060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262117, 39.962856, 51.888355>,  <27.985514, 40.589607, 51.868435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262117, 39.962856, 51.888355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.917049, 39.870216, 51.708508>,  <27.710009, 39.814632, 51.600597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.917049, 39.870216, 51.708508>,  <28.262117, 39.962856, 51.888355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917049, 39.870216, 51.708508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493472, -0.580243, -0.647922,
		-0.110829, -0.780819, 0.614849,
		-0.862672, -0.231602, -0.449620,
		27.658247, 39.800735, 51.573620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191692, 39.185417, 51.910187>,  <28.262117, 39.962856, 51.888355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191692, 39.185417, 51.910187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949018, 39.324718, 51.624348>,  <27.803413, 39.408298, 51.452843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949018, 39.324718, 51.624348>,  <28.191692, 39.185417, 51.910187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949018, 39.324718, 51.624348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502461, -0.528599, -0.684191,
		-0.616010, -0.774145, 0.145707,
		-0.606684, 0.348256, -0.714600,
		27.767014, 39.429195, 51.409969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001928, 38.619404, 51.487411>,  <28.191692, 39.185417, 51.910187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001928, 38.619404, 51.487411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892063, 38.926617, 51.256004>,  <27.826143, 39.110947, 51.117161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892063, 38.926617, 51.256004>,  <28.001928, 38.619404, 51.487411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892063, 38.926617, 51.256004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338050, -0.486118, -0.805861,
		-0.900157, -0.416909, -0.126114,
		-0.274664, 0.768034, -0.578518,
		27.809664, 39.157028, 51.082447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592249, 38.352982, 50.947296>,  <28.001928, 38.619404, 51.487411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592249, 38.352982, 50.947296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767445, 38.681480, 50.801022>,  <27.872562, 38.878578, 50.713257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.767445, 38.681480, 50.801022>,  <27.592249, 38.352982, 50.947296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767445, 38.681480, 50.801022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165433, -0.473458, -0.865141,
		-0.883628, 0.318425, -0.343231,
		0.437988, 0.821244, -0.365683,
		27.898842, 38.927853, 50.691319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312498, 38.390453, 50.221115>,  <27.592249, 38.352982, 50.947296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312498, 38.390453, 50.221115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630686, 38.632664, 50.230629>,  <27.821598, 38.777992, 50.236340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630686, 38.632664, 50.230629>,  <27.312498, 38.390453, 50.221115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630686, 38.632664, 50.230629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406510, -0.504087, -0.762001,
		-0.449422, 0.615818, -0.647138,
		0.795468, 0.605528, 0.023788,
		27.869326, 38.814323, 50.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463428, 38.548954, 49.518967>,  <27.312498, 38.390453, 50.221115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463428, 38.548954, 49.518967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805313, 38.657024, 49.696266>,  <28.010445, 38.721867, 49.802647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805313, 38.657024, 49.696266>,  <27.463428, 38.548954, 49.518967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805313, 38.657024, 49.696266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515796, -0.345812, -0.783816,
		-0.058484, 0.898566, -0.434924,
		0.854713, 0.270173, 0.443253,
		28.061728, 38.738075, 49.829243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888149, 38.940418, 48.998238>,  <27.463428, 38.548954, 49.518967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888149, 38.940418, 48.998238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129948, 38.777748, 49.272228>,  <28.275026, 38.680145, 49.436623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.129948, 38.777748, 49.272228>,  <27.888149, 38.940418, 48.998238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129948, 38.777748, 49.272228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624316, -0.292219, -0.724457,
		0.494785, 0.865575, 0.077250,
		0.604498, -0.406678, 0.684978,
		28.311296, 38.655746, 49.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684458, 39.192379, 48.931637>,  <27.888149, 38.940418, 48.998238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684458, 39.192379, 48.931637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688078, 38.859936, 49.154053>,  <28.690250, 38.660469, 49.287502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688078, 38.859936, 49.154053>,  <28.684458, 39.192379, 48.931637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688078, 38.859936, 49.154053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805227, -0.323645, -0.496854,
		0.592898, 0.452233, 0.666301,
		0.009049, -0.831107, 0.556039,
		28.690792, 38.610603, 49.320866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433117, 39.127823, 49.140270>,  <28.684458, 39.192379, 48.931637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433117, 39.127823, 49.140270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241840, 38.780800, 49.194950>,  <29.127075, 38.572586, 49.227757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241840, 38.780800, 49.194950>,  <29.433117, 39.127823, 49.140270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241840, 38.780800, 49.194950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701268, -0.470874, -0.535258,
		0.528732, -0.160093, 0.833554,
		-0.478189, -0.867553, 0.136698,
		29.098383, 38.520535, 49.235958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965919, 38.700787, 49.202686>,  <29.433117, 39.127823, 49.140270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965919, 38.700787, 49.202686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682755, 38.425945, 49.137264>,  <29.512856, 38.261040, 49.098011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682755, 38.425945, 49.137264>,  <29.965919, 38.700787, 49.202686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682755, 38.425945, 49.137264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681601, -0.603891, -0.413202,
		0.185144, -0.403989, 0.895832,
		-0.707914, -0.687102, -0.163552,
		29.470381, 38.219814, 49.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190771, 38.013367, 49.328674>,  <29.965919, 38.700787, 49.202686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190771, 38.013367, 49.328674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881754, 37.947765, 49.083309>,  <29.696342, 37.908405, 48.936089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881754, 37.947765, 49.083309>,  <30.190771, 38.013367, 49.328674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881754, 37.947765, 49.083309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475245, -0.790019, -0.387314,
		-0.421090, -0.590740, 0.688265,
		-0.772545, -0.164001, -0.613416,
		29.649990, 37.898563, 48.899284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124548, 37.371819, 49.271790>,  <30.190771, 38.013367, 49.328674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124548, 37.371819, 49.271790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922859, 37.476799, 48.942699>,  <29.801846, 37.539787, 48.745243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922859, 37.476799, 48.942699>,  <30.124548, 37.371819, 49.271790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922859, 37.476799, 48.942699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447111, -0.735732, -0.508715,
		-0.738822, -0.624354, 0.253622,
		-0.504216, 0.262453, -0.822730,
		29.771593, 37.555534, 48.695881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894491, 36.719490, 49.032639>,  <30.124548, 37.371819, 49.271790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894491, 36.719490, 49.032639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895084, 36.986477, 48.734783>,  <29.895439, 37.146667, 48.556068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895084, 36.986477, 48.734783>,  <29.894491, 36.719490, 49.032639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895084, 36.986477, 48.734783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350889, -0.697638, -0.624642,
		-0.936416, -0.260360, -0.235241,
		0.001482, 0.667468, -0.744637,
		29.895529, 37.186718, 48.511391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637526, 36.363991, 48.418747>,  <29.894491, 36.719490, 49.032639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637526, 36.363991, 48.418747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823935, 36.685120, 48.269993>,  <29.935780, 36.877796, 48.180740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823935, 36.685120, 48.269993>,  <29.637526, 36.363991, 48.418747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823935, 36.685120, 48.269993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346266, -0.552284, -0.758342,
		-0.814200, 0.224633, -0.535367,
		0.466024, 0.802821, -0.371887,
		29.963741, 36.925964, 48.158428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373901, 36.519703, 47.708115>,  <29.637526, 36.363991, 48.418747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373901, 36.519703, 47.708115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740566, 36.676350, 47.740025>,  <29.960566, 36.770336, 47.759171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740566, 36.676350, 47.740025>,  <29.373901, 36.519703, 47.708115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740566, 36.676350, 47.740025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244110, -0.390586, -0.887611,
		-0.316447, 0.833113, -0.453633,
		0.916663, 0.391618, 0.079771,
		30.015566, 36.793835, 47.763954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606642, 36.711975, 46.967369>,  <29.373901, 36.519703, 47.708115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606642, 36.711975, 46.967369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.918581, 36.654919, 47.211170>,  <30.105743, 36.620686, 47.357452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.918581, 36.654919, 47.211170>,  <29.606642, 36.711975, 46.967369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918581, 36.654919, 47.211170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394472, -0.644045, -0.655437,
		0.486037, 0.751572, -0.445990,
		0.779846, -0.142637, 0.609504,
		30.152534, 36.612129, 47.394020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256809, 36.492638, 46.567886>,  <29.606642, 36.711975, 46.967369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256809, 36.492638, 46.567886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364927, 36.384460, 46.937492>,  <30.429798, 36.319553, 47.159256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364927, 36.384460, 46.937492>,  <30.256809, 36.492638, 46.567886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364927, 36.384460, 46.937492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581773, -0.718824, -0.380568,
		0.767124, 0.640433, -0.036962,
		0.270297, -0.270440, 0.924014,
		30.446016, 36.303329, 47.214695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864199, 36.279327, 46.412090>,  <30.256809, 36.492638, 46.567886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864199, 36.279327, 46.412090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799685, 36.136921, 46.780273>,  <30.760977, 36.051476, 47.001183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799685, 36.136921, 46.780273>,  <30.864199, 36.279327, 46.412090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799685, 36.136921, 46.780273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498810, -0.834175, -0.235246,
		0.851573, 0.421190, 0.312126,
		-0.161285, -0.356021, 0.920454,
		30.751299, 36.030113, 47.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481731, 36.174141, 46.727474>,  <30.864199, 36.279327, 46.412090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481731, 36.174141, 46.727474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230307, 35.928886, 46.918877>,  <31.079451, 35.781734, 47.033718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230307, 35.928886, 46.918877>,  <31.481731, 36.174141, 46.727474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230307, 35.928886, 46.918877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715475, -0.697080, 0.046638,
		0.304963, 0.371676, 0.876844,
		-0.628564, -0.613137, 0.478508,
		31.041737, 35.744946, 47.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883957, 35.802967, 47.140396>,  <31.481731, 36.174141, 46.727474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883957, 35.802967, 47.140396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560022, 35.569061, 47.159210>,  <31.365662, 35.428719, 47.170498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560022, 35.569061, 47.159210>,  <31.883957, 35.802967, 47.140396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560022, 35.569061, 47.159210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586418, -0.804642, 0.093086,
		-0.016586, 0.102968, 0.994546,
		-0.809839, -0.584764, 0.047036,
		31.317070, 35.393631, 47.173321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029606, 35.159344, 47.692959>,  <31.883957, 35.802967, 47.140396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029606, 35.159344, 47.692959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708092, 35.026344, 47.495625>,  <31.515184, 34.946545, 47.377224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708092, 35.026344, 47.495625>,  <32.029606, 35.159344, 47.692959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708092, 35.026344, 47.495625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414610, -0.907766, -0.063704,
		-0.426651, -0.255746, 0.867503,
		-0.803783, -0.332497, -0.493335,
		31.466957, 34.926594, 47.347626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816164, 34.519974, 48.024422>,  <32.029606, 35.159344, 47.692959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816164, 34.519974, 48.024422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.693514, 34.510571, 47.643806>,  <31.619923, 34.504929, 47.415436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.693514, 34.510571, 47.643806>,  <31.816164, 34.519974, 48.024422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693514, 34.510571, 47.643806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282456, -0.956911, -0.067383,
		-0.908954, -0.289430, 0.300054,
		-0.306628, -0.023504, -0.951539,
		31.601526, 34.503521, 47.358345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410473, 33.921585, 48.052063>,  <31.816164, 34.519974, 48.024422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410473, 33.921585, 48.052063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482517, 33.991219, 47.664814>,  <31.525743, 34.033001, 47.432465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482517, 33.991219, 47.664814>,  <31.410473, 33.921585, 48.052063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482517, 33.991219, 47.664814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084777, -0.983299, -0.161046,
		-0.979986, -0.053068, -0.191862,
		0.180112, 0.174088, -0.968118,
		31.536551, 34.043446, 47.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058325, 33.419323, 47.685123>,  <31.410473, 33.921585, 48.052063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058325, 33.419323, 47.685123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360050, 33.556602, 47.461258>,  <31.541084, 33.638969, 47.326939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360050, 33.556602, 47.461258>,  <31.058325, 33.419323, 47.685123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360050, 33.556602, 47.461258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186810, -0.929444, -0.318177,
		-0.629378, 0.135453, -0.765203,
		0.754312, 0.343201, -0.559667,
		31.586344, 33.659561, 47.293358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138384, 33.035114, 47.000801>,  <31.058325, 33.419323, 47.685123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138384, 33.035114, 47.000801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497417, 33.207413, 47.038315>,  <31.712837, 33.310791, 47.060822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497417, 33.207413, 47.038315>,  <31.138384, 33.035114, 47.000801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497417, 33.207413, 47.038315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425629, -0.791379, -0.438816,
		-0.114800, 0.433792, -0.893670,
		0.897586, 0.430748, 0.093784,
		31.766693, 33.336636, 47.066448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514816, 32.749359, 46.397041>,  <31.138384, 33.035114, 47.000801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514816, 32.749359, 46.397041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801924, 32.891769, 46.636391>,  <31.974188, 32.977215, 46.780003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801924, 32.891769, 46.636391>,  <31.514816, 32.749359, 46.397041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801924, 32.891769, 46.636391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514331, -0.850380, -0.110983,
		0.469333, 0.387423, -0.793492,
		0.717767, 0.356029, 0.598375,
		32.017254, 32.998577, 46.815903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095417, 32.626709, 46.088913>,  <31.514816, 32.749359, 46.397041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095417, 32.626709, 46.088913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217941, 32.691719, 46.464096>,  <32.291454, 32.730724, 46.689205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217941, 32.691719, 46.464096>,  <32.095417, 32.626709, 46.088913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217941, 32.691719, 46.464096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553708, -0.831903, -0.036677,
		0.774326, 0.530588, -0.344814,
		0.306312, 0.162526, 0.937954,
		32.309834, 32.740479, 46.745483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867580, 32.450401, 46.079769>,  <32.095417, 32.626709, 46.088913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867580, 32.450401, 46.079769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691383, 32.411507, 46.436760>,  <32.585663, 32.388168, 46.650955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691383, 32.411507, 46.436760>,  <32.867580, 32.450401, 46.079769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691383, 32.411507, 46.436760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547399, -0.817028, 0.181163,
		0.711560, 0.568341, 0.413124,
		-0.440496, -0.097236, 0.892473,
		32.559235, 32.382336, 46.704502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374218, 32.491360, 46.537159>,  <32.867580, 32.450401, 46.079769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374218, 32.491360, 46.537159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089672, 32.298264, 46.741482>,  <32.918945, 32.182407, 46.864075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089672, 32.298264, 46.741482>,  <33.374218, 32.491360, 46.537159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089672, 32.298264, 46.741482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599698, -0.795913, 0.082976,
		0.366506, 0.365359, 0.855679,
		-0.711362, -0.482738, 0.510811,
		32.876263, 32.153442, 46.894726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673542, 32.193977, 47.154137>,  <33.374218, 32.491360, 46.537159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673542, 32.193977, 47.154137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357605, 31.994852, 47.010845>,  <33.168041, 31.875376, 46.924870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357605, 31.994852, 47.010845>,  <33.673542, 32.193977, 47.154137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357605, 31.994852, 47.010845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549517, -0.833806, -0.052901,
		-0.272358, -0.238637, 0.932134,
		-0.789843, -0.497816, -0.358229,
		33.120651, 31.845507, 46.903378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676216, 31.528954, 47.464363>,  <33.673542, 32.193977, 47.154137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676216, 31.528954, 47.464363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485630, 31.499071, 47.113960>,  <33.371277, 31.481142, 46.903717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485630, 31.499071, 47.113960>,  <33.676216, 31.528954, 47.464363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485630, 31.499071, 47.113960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527997, -0.821010, -0.217165,
		-0.702990, -0.566004, 0.430631,
		-0.476469, -0.074707, -0.876011,
		33.342690, 31.476660, 46.851158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251369, 32.026859, 47.576958>,  <33.676216, 31.528954, 47.464363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251369, 32.026859, 47.576958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426701, 31.667377, 47.571362>,  <34.531898, 31.451687, 47.568005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426701, 31.667377, 47.571362>,  <34.251369, 32.026859, 47.576958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426701, 31.667377, 47.571362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889347, 0.431403, 0.151506,
		-0.130124, -0.078850, 0.988357,
		0.438327, -0.898707, -0.013989,
		34.558197, 31.397766, 47.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644444, 31.831009, 48.209652>,  <34.251369, 32.026859, 47.576958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644444, 31.831009, 48.209652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791698, 31.648022, 47.885876>,  <34.880051, 31.538229, 47.691608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791698, 31.648022, 47.885876>,  <34.644444, 31.831009, 48.209652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791698, 31.648022, 47.885876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893556, 0.414684, 0.172033,
		0.256964, -0.786614, 0.561434,
		0.368141, -0.457466, -0.809442,
		34.902142, 31.510782, 47.643044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276360, 31.647743, 48.387791>,  <34.644444, 31.831009, 48.209652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276360, 31.647743, 48.387791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249241, 31.662405, 47.988979>,  <35.232971, 31.671202, 47.749695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249241, 31.662405, 47.988979>,  <35.276360, 31.647743, 48.387791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249241, 31.662405, 47.988979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856969, 0.513860, -0.039383,
		0.510888, -0.857090, -0.066249,
		-0.067797, 0.036653, -0.997026,
		35.228901, 31.673401, 47.689873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773533, 31.299089, 47.950256>,  <35.276360, 31.647743, 48.387791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773533, 31.299089, 47.950256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642426, 31.601778, 47.724003>,  <35.563763, 31.783392, 47.588249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642426, 31.601778, 47.724003>,  <35.773533, 31.299089, 47.950256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642426, 31.601778, 47.724003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939027, 0.326786, -0.106948,
		0.103912, -0.566201, -0.817691,
		-0.327764, 0.756721, -0.565635,
		35.544098, 31.828794, 47.554314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160435, 31.427935, 47.359180>,  <35.773533, 31.299089, 47.950256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160435, 31.427935, 47.359180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000702, 31.788937, 47.423695>,  <35.904861, 32.005539, 47.462402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000702, 31.788937, 47.423695>,  <36.160435, 31.427935, 47.359180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000702, 31.788937, 47.423695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916370, 0.387510, 0.100503,
		0.028205, 0.187930, -0.981777,
		-0.399336, 0.902506, 0.161284,
		35.880901, 32.059689, 47.472080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548542, 31.893320, 46.939472>,  <36.160435, 31.427935, 47.359180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548542, 31.893320, 46.939472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.372036, 32.168983, 47.169373>,  <36.266132, 32.334381, 47.307312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.372036, 32.168983, 47.169373>,  <36.548542, 31.893320, 46.939472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372036, 32.168983, 47.169373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891203, 0.411544, 0.190757,
		-0.105074, 0.596397, -0.795782,
		-0.441266, 0.689160, 0.574754,
		36.239655, 32.375732, 47.341797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737694, 32.458344, 46.695374>,  <36.548542, 31.893320, 46.939472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737694, 32.458344, 46.695374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634903, 32.549004, 47.071159>,  <36.573227, 32.603397, 47.296631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634903, 32.549004, 47.071159>,  <36.737694, 32.458344, 46.695374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634903, 32.549004, 47.071159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931722, 0.316238, 0.178569,
		-0.256622, 0.921209, -0.292438,
		-0.256979, 0.226646, 0.939464,
		36.557808, 32.616997, 47.352997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974895, 33.135830, 46.817780>,  <36.737694, 32.458344, 46.695374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974895, 33.135830, 46.817780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921726, 33.008224, 47.193134>,  <36.889824, 32.931664, 47.418346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921726, 33.008224, 47.193134>,  <36.974895, 33.135830, 46.817780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921726, 33.008224, 47.193134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890206, 0.377817, 0.254536,
		-0.435737, 0.869188, 0.233765,
		-0.132919, -0.319010, 0.938384,
		36.881851, 32.912521, 47.474651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204865, 33.674664, 47.215744>,  <36.974895, 33.135830, 46.817780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204865, 33.674664, 47.215744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211639, 33.382370, 47.488724>,  <37.215706, 33.206993, 47.652512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211639, 33.382370, 47.488724>,  <37.204865, 33.674664, 47.215744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211639, 33.382370, 47.488724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926595, 0.267929, 0.263885,
		-0.375678, 0.627886, 0.681634,
		0.016939, -0.730735, 0.682451,
		37.216721, 33.163151, 47.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504295, 33.996498, 47.737896>,  <37.204865, 33.674664, 47.215744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504295, 33.996498, 47.737896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577293, 33.610779, 47.814648>,  <37.621094, 33.379345, 47.860699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577293, 33.610779, 47.814648>,  <37.504295, 33.996498, 47.737896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577293, 33.610779, 47.814648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961430, 0.215870, 0.170445,
		-0.205781, 0.153371, 0.966505,
		0.182499, -0.964302, 0.191877,
		37.632042, 33.321487, 47.872211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961479, 34.097446, 48.198521>,  <37.504295, 33.996498, 47.737896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961479, 34.097446, 48.198521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017532, 33.707748, 48.127850>,  <38.051163, 33.473930, 48.085445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017532, 33.707748, 48.127850>,  <37.961479, 34.097446, 48.198521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017532, 33.707748, 48.127850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923505, 0.064253, 0.378166,
		-0.357073, -0.216156, 0.908722,
		0.140131, -0.974242, -0.176679,
		38.059570, 33.415474, 48.074844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252399, 33.765312, 48.866634>,  <37.961479, 34.097446, 48.198521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252399, 33.765312, 48.866634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333691, 33.541466, 48.545254>,  <38.382465, 33.407158, 48.352425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333691, 33.541466, 48.545254>,  <38.252399, 33.765312, 48.866634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333691, 33.541466, 48.545254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952164, -0.078298, 0.295386,
		-0.228211, -0.825045, 0.516933,
		0.203232, -0.559616, -0.803447,
		38.394661, 33.373581, 48.304218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621853, 33.092552, 49.089100>,  <38.252399, 33.765312, 48.866634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621853, 33.092552, 49.089100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714401, 33.166035, 48.706955>,  <38.769932, 33.210125, 48.477669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714401, 33.166035, 48.706955>,  <38.621853, 33.092552, 49.089100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714401, 33.166035, 48.706955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966898, 0.065181, 0.246698,
		0.107591, -0.980818, -0.162542,
		0.231372, 0.183704, -0.955364,
		38.783813, 33.221146, 48.420345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194942, 32.819096, 49.124081>,  <38.621853, 33.092552, 49.089100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194942, 32.819096, 49.124081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206932, 33.025635, 48.781738>,  <39.214127, 33.149559, 48.576332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206932, 33.025635, 48.781738>,  <39.194942, 32.819096, 49.124081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206932, 33.025635, 48.781738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949735, 0.252229, 0.185431,
		0.311618, -0.818394, -0.482830,
		0.029972, 0.516344, -0.855856,
		39.215923, 33.180538, 48.524982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716953, 32.508652, 48.830105>,  <39.194942, 32.819096, 49.124081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716953, 32.508652, 48.830105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662094, 32.860222, 48.647381>,  <39.629177, 33.071163, 48.537746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662094, 32.860222, 48.647381>,  <39.716953, 32.508652, 48.830105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662094, 32.860222, 48.647381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969124, 0.214462, 0.121675,
		0.204912, -0.426020, -0.881203,
		-0.137149, 0.878927, -0.456812,
		39.620949, 33.123901, 48.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287205, 32.585033, 48.411407>,  <39.716953, 32.508652, 48.830105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287205, 32.585033, 48.411407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123798, 32.942787, 48.484280>,  <40.025757, 33.157440, 48.528004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123798, 32.942787, 48.484280>,  <40.287205, 32.585033, 48.411407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123798, 32.942787, 48.484280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892577, 0.349711, 0.284618,
		0.190847, 0.278885, -0.941170,
		-0.408513, 0.894386, 0.182185,
		40.001244, 33.211102, 48.538937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820038, 32.986603, 48.170441>,  <40.287205, 32.585033, 48.411407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820038, 32.986603, 48.170441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893604, 33.224384, 47.857315>,  <40.937744, 33.367054, 47.669437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893604, 33.224384, 47.857315>,  <40.820038, 32.986603, 48.170441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893604, 33.224384, 47.857315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443453, -0.760926, -0.473647,
		-0.877226, -0.260033, -0.403555,
		0.183912, 0.594453, -0.782817,
		40.948776, 33.402721, 47.622471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509624, 32.826912, 47.454449>,  <40.820038, 32.986603, 48.170441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509624, 32.826912, 47.454449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.874672, 32.980804, 47.399158>,  <41.093700, 33.073139, 47.365986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.874672, 32.980804, 47.399158>,  <40.509624, 32.826912, 47.454449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874672, 32.980804, 47.399158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243658, -0.783398, -0.571768,
		-0.328266, 0.488126, -0.808687,
		0.912618, 0.384735, -0.138227,
		41.148457, 33.096226, 47.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974388, 32.535717, 47.023975>,  <40.509624, 32.826912, 47.454449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974388, 32.535717, 47.023975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081848, 32.512577, 46.639378>,  <41.146324, 32.498692, 46.408619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081848, 32.512577, 46.639378>,  <40.974388, 32.535717, 47.023975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081848, 32.512577, 46.639378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882790, 0.414139, 0.221743,
		0.385366, -0.908373, 0.162328,
		0.268652, -0.057849, -0.961498,
		41.162445, 32.495224, 46.350929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601055, 32.229855, 47.024384>,  <40.974388, 32.535717, 47.023975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601055, 32.229855, 47.024384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.562111, 32.455647, 46.696510>,  <41.538746, 32.591122, 46.499786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.562111, 32.455647, 46.696510>,  <41.601055, 32.229855, 47.024384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562111, 32.455647, 46.696510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960770, 0.268212, 0.070588,
		0.259695, -0.780658, -0.568447,
		-0.097360, 0.564478, -0.819686,
		41.532902, 32.624989, 46.450603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182854, 32.085823, 46.561241>,  <41.601055, 32.229855, 47.024384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182854, 32.085823, 46.561241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.026485, 32.449570, 46.504337>,  <41.932667, 32.667816, 46.470196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.026485, 32.449570, 46.504337>,  <42.182854, 32.085823, 46.561241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026485, 32.449570, 46.504337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918133, 0.396161, 0.009423,
		0.064925, -0.126928, -0.989785,
		-0.390918, 0.909366, -0.142257,
		41.909210, 32.722378, 46.461658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644398, 32.594276, 46.126381>,  <42.182854, 32.085823, 46.561241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644398, 32.594276, 46.126381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.482746, 32.805969, 46.424805>,  <42.385757, 32.932983, 46.603859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.482746, 32.805969, 46.424805>,  <42.644398, 32.594276, 46.126381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482746, 32.805969, 46.424805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867012, 0.481553, 0.128048,
		-0.291499, 0.698587, -0.653456,
		-0.404127, 0.529228, 0.746056,
		42.361507, 32.964737, 46.648621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273056, 33.077232, 46.305210>,  <42.644398, 32.594276, 46.126381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273056, 33.077232, 46.305210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649685, 33.150883, 46.418022>,  <43.875664, 33.195072, 46.485710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649685, 33.150883, 46.418022>,  <43.273056, 33.077232, 46.305210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649685, 33.150883, 46.418022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199627, 0.369338, -0.907600,
		-0.271279, 0.910871, 0.311001,
		0.941571, 0.184128, 0.282028,
		43.932156, 33.206120, 46.502632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499603, 33.711372, 46.098408>,  <43.273056, 33.077232, 46.305210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499603, 33.711372, 46.098408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827019, 33.483635, 46.128979>,  <44.023468, 33.346992, 46.147324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827019, 33.483635, 46.128979>,  <43.499603, 33.711372, 46.098408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827019, 33.483635, 46.128979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241261, 0.219971, -0.945201,
		0.521335, 0.792122, 0.317415,
		0.818537, -0.569346, 0.076430,
		44.072578, 33.312832, 46.151909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087532, 34.106415, 45.985950>,  <43.499603, 33.711372, 46.098408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087532, 34.106415, 45.985950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.061275, 33.729866, 45.853584>,  <44.045521, 33.503937, 45.774166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.061275, 33.729866, 45.853584>,  <44.087532, 34.106415, 45.985950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061275, 33.729866, 45.853584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014805, 0.330676, -0.943628,
		0.997734, -0.066838, -0.007768,
		-0.065639, -0.941374, -0.330916,
		44.041584, 33.447453, 45.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921024, 34.719341, 45.557556>,  <44.087532, 34.106415, 45.985950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921024, 34.719341, 45.557556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.598507, 34.889217, 45.392857>,  <43.404999, 34.991142, 45.294037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.598507, 34.889217, 45.392857>,  <43.921024, 34.719341, 45.557556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598507, 34.889217, 45.392857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471920, 0.042158, -0.880633,
		-0.356634, -0.904359, -0.234410,
		-0.806290, 0.424686, -0.411750,
		43.356621, 35.016624, 45.269333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688183, 34.403618, 44.948387>,  <43.921024, 34.719341, 45.557556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688183, 34.403618, 44.948387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538925, 34.772648, 44.909153>,  <43.449371, 34.994064, 44.885612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538925, 34.772648, 44.909153>,  <43.688183, 34.403618, 44.948387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538925, 34.772648, 44.909153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296544, 0.018422, -0.954842,
		-0.879106, -0.385377, -0.280458,
		-0.373141, 0.922575, -0.098086,
		43.426983, 35.049419, 44.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167843, 34.402775, 44.456505>,  <43.688183, 34.403618, 44.948387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167843, 34.402775, 44.456505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409740, 34.721008, 44.471127>,  <43.554878, 34.911949, 44.479900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409740, 34.721008, 44.471127>,  <43.167843, 34.402775, 44.456505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409740, 34.721008, 44.471127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360019, -0.232141, -0.903602,
		-0.710404, 0.559606, -0.426811,
		0.604741, 0.795583, 0.036555,
		43.591164, 34.959682, 44.482094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318256, 34.002708, 43.819824>,  <43.167843, 34.402775, 44.456505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318256, 34.002708, 43.819824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584114, 34.297539, 43.868763>,  <43.743629, 34.474438, 43.898125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584114, 34.297539, 43.868763>,  <43.318256, 34.002708, 43.819824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584114, 34.297539, 43.868763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730373, 0.606425, 0.314332,
		0.157492, -0.298278, 0.941396,
		0.664644, 0.737074, 0.122348,
		43.783508, 34.518661, 43.905468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886559, 34.328800, 43.410034>,  <43.318256, 34.002708, 43.819824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886559, 34.328800, 43.410034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.978718, 34.717381, 43.432682>,  <44.034016, 34.950527, 43.446270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.978718, 34.717381, 43.432682>,  <43.886559, 34.328800, 43.410034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978718, 34.717381, 43.432682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215608, 0.005774, -0.976463,
		-0.948909, 0.237185, -0.208121,
		0.230401, 0.971447, 0.056618,
		44.047836, 35.008816, 43.449669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514919, 34.799458, 43.030785>,  <43.886559, 34.328800, 43.410034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514919, 34.799458, 43.030785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.882706, 34.954582, 43.056671>,  <44.103378, 35.047657, 43.072205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.882706, 34.954582, 43.056671>,  <43.514919, 34.799458, 43.030785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882706, 34.954582, 43.056671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098369, -0.067534, -0.992856,
		-0.380668, 0.919262, -0.100243,
		0.919464, 0.387810, 0.064719,
		44.158546, 35.070927, 43.076088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704880, 35.375351, 42.486012>,  <43.514919, 34.799458, 43.030785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704880, 35.375351, 42.486012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023701, 35.161297, 42.597973>,  <44.214993, 35.032864, 42.665150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023701, 35.161297, 42.597973>,  <43.704880, 35.375351, 42.486012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023701, 35.161297, 42.597973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215037, -0.181622, -0.959569,
		0.564334, 0.825012, -0.029688,
		0.797048, -0.535134, 0.279903,
		44.262814, 35.000755, 42.681942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326714, 35.605022, 42.284668>,  <43.704880, 35.375351, 42.486012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326714, 35.605022, 42.284668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289013, 35.206810, 42.287056>,  <44.266392, 34.967884, 42.288490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289013, 35.206810, 42.287056>,  <44.326714, 35.605022, 42.284668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289013, 35.206810, 42.287056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129429, -0.018203, -0.991422,
		0.987100, -0.092666, 0.130566,
		-0.094248, -0.995531, 0.005974,
		44.260738, 34.908150, 42.288849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945023, 35.230274, 42.058819>,  <44.326714, 35.605022, 42.284668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945023, 35.230274, 42.058819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.597271, 35.045376, 41.988949>,  <44.388622, 34.934437, 41.947025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.597271, 35.045376, 41.988949>,  <44.945023, 35.230274, 42.058819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597271, 35.045376, 41.988949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281042, -0.171778, -0.944197,
		0.406451, -0.869952, 0.279251,
		-0.869376, -0.462251, -0.174674,
		44.336460, 34.906700, 41.936546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000816, 34.399639, 41.798260>,  <44.945023, 35.230274, 42.058819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000816, 34.399639, 41.798260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.669453, 34.590496, 41.680912>,  <44.470634, 34.705009, 41.610504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.669453, 34.590496, 41.680912>,  <45.000816, 34.399639, 41.798260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669453, 34.590496, 41.680912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240027, -0.170830, -0.955617,
		-0.506083, -0.862062, 0.026990,
		-0.828412, 0.477143, -0.293372,
		44.420929, 34.733639, 41.592899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540295, 33.989677, 41.475906>,  <45.000816, 34.399639, 41.798260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540295, 33.989677, 41.475906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.476086, 34.346786, 41.307529>,  <44.437561, 34.561050, 41.206501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.476086, 34.346786, 41.307529>,  <44.540295, 33.989677, 41.475906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476086, 34.346786, 41.307529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043067, -0.419734, -0.906625,
		-0.986093, -0.163659, 0.028926,
		-0.160518, 0.892770, -0.420945,
		44.427929, 34.614616, 41.181248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932537, 33.995800, 40.944572>,  <44.540295, 33.989677, 41.475906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932537, 33.995800, 40.944572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.186001, 34.291653, 40.853859>,  <44.338078, 34.469162, 40.799431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.186001, 34.291653, 40.853859>,  <43.932537, 33.995800, 40.944572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186001, 34.291653, 40.853859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002197, -0.291425, -0.956591,
		-0.773612, 0.606647, -0.183038,
		0.633655, 0.739629, -0.226783,
		44.376099, 34.513542, 40.785824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612686, 34.185886, 40.353584>,  <43.932537, 33.995800, 40.944572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612686, 34.185886, 40.353584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.987373, 34.323669, 40.328568>,  <44.212185, 34.406342, 40.313557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.987373, 34.323669, 40.328568>,  <43.612686, 34.185886, 40.353584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987373, 34.323669, 40.328568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055224, -0.321794, -0.945198,
		-0.345709, 0.881927, -0.320452,
		0.936715, 0.344460, -0.062544,
		44.268387, 34.427006, 40.309803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831696, 34.699142, 39.785645>,  <43.612686, 34.185886, 40.353584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831696, 34.699142, 39.785645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.155254, 34.485462, 39.883877>,  <44.349392, 34.357254, 39.942818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.155254, 34.485462, 39.883877>,  <43.831696, 34.699142, 39.785645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155254, 34.485462, 39.883877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063500, -0.335872, -0.939765,
		0.584506, 0.775771, -0.237765,
		0.808901, -0.534200, 0.245580,
		44.397926, 34.325203, 39.957550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347488, 34.905502, 39.435040>,  <43.831696, 34.699142, 39.785645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347488, 34.905502, 39.435040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.412437, 34.521637, 39.526848>,  <44.451405, 34.291317, 39.581932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.412437, 34.521637, 39.526848>,  <44.347488, 34.905502, 39.435040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412437, 34.521637, 39.526848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079852, -0.219066, -0.972437,
		0.983494, 0.176221, 0.041062,
		0.162369, -0.959665, 0.229522,
		44.461147, 34.233738, 39.595703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050320, 34.619011, 39.240265>,  <44.347488, 34.905502, 39.435040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050320, 34.619011, 39.240265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.744587, 34.361649, 39.223194>,  <44.561146, 34.207230, 39.212952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.744587, 34.361649, 39.223194>,  <45.050320, 34.619011, 39.240265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744587, 34.361649, 39.223194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185083, -0.155514, -0.970340,
		0.617686, -0.749564, 0.237948,
		-0.764336, -0.643405, -0.042673,
		44.515285, 34.168629, 39.210392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384350, 34.017982, 38.985363>,  <45.050320, 34.619011, 39.240265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384350, 34.017982, 38.985363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992626, 34.048313, 38.910309>,  <44.757591, 34.066513, 38.865276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.992626, 34.048313, 38.910309>,  <45.384350, 34.017982, 38.985363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992626, 34.048313, 38.910309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158003, -0.292889, -0.943001,
		-0.126463, -0.953135, 0.274848,
		-0.979307, 0.075828, -0.187638,
		44.698833, 34.071060, 38.854019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138271, 33.406559, 38.600735>,  <45.384350, 34.017982, 38.985363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138271, 33.406559, 38.600735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.870010, 33.688419, 38.508049>,  <44.709053, 33.857536, 38.452438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.870010, 33.688419, 38.508049>,  <45.138271, 33.406559, 38.600735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870010, 33.688419, 38.508049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127986, -0.197767, -0.971858,
		-0.730648, -0.681433, 0.042447,
		-0.670651, 0.704654, -0.231712,
		44.668816, 33.899815, 38.438534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659599, 33.178680, 38.155205>,  <45.138271, 33.406559, 38.600735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659599, 33.178680, 38.155205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.697556, 33.570049, 38.081779>,  <44.720329, 33.804871, 38.037724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.697556, 33.570049, 38.081779>,  <44.659599, 33.178680, 38.155205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697556, 33.570049, 38.081779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193963, -0.199031, -0.960606,
		-0.976408, 0.055551, -0.208663,
		0.094893, 0.978417, -0.183561,
		44.726025, 33.863575, 38.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280060, 33.436085, 37.549133>,  <44.659599, 33.178680, 38.155205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280060, 33.436085, 37.549133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.601688, 33.659706, 37.630058>,  <44.794666, 33.793877, 37.678612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.601688, 33.659706, 37.630058>,  <44.280060, 33.436085, 37.549133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601688, 33.659706, 37.630058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416539, -0.286917, -0.862655,
		-0.424221, 0.777909, -0.463568,
		0.804072, 0.559050, 0.202313,
		44.842911, 33.827419, 37.690754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477173, 33.797668, 36.991276>,  <44.280060, 33.436085, 37.549133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477173, 33.797668, 36.991276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810043, 33.755116, 37.208961>,  <45.009766, 33.729584, 37.339573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810043, 33.755116, 37.208961>,  <44.477173, 33.797668, 36.991276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810043, 33.755116, 37.208961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458726, -0.419323, -0.783414,
		0.311545, 0.901582, -0.300148,
		0.832172, -0.106383, 0.544218,
		45.059696, 33.723202, 37.372227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409000, 33.673996, 36.194721>,  <44.477173, 33.797668, 36.991276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409000, 33.673996, 36.194721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448650, 33.276215, 36.180618>,  <44.472439, 33.037548, 36.172157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448650, 33.276215, 36.180618>,  <44.409000, 33.673996, 36.194721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448650, 33.276215, 36.180618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948674, 0.105136, -0.298267,
		0.300319, -0.003883, 0.953831,
		0.099124, -0.994450, -0.035258,
		44.478386, 32.977879, 36.170040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008003, 33.515926, 36.564323>,  <44.409000, 33.673996, 36.194721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008003, 33.515926, 36.564323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.935566, 33.217514, 36.307995>,  <44.892105, 33.038467, 36.154198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.935566, 33.217514, 36.307995>,  <45.008003, 33.515926, 36.564323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935566, 33.217514, 36.307995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853672, 0.204287, -0.479073,
		0.488313, -0.633806, 0.599868,
		-0.181094, -0.746028, -0.640818,
		44.881237, 32.993706, 36.115749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623131, 33.135563, 36.475361>,  <45.008003, 33.515926, 36.564323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623131, 33.135563, 36.475361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.390591, 33.113773, 36.150631>,  <45.251068, 33.100700, 35.955791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.390591, 33.113773, 36.150631>,  <45.623131, 33.135563, 36.475361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390591, 33.113773, 36.150631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784919, 0.225275, -0.577195,
		0.214325, -0.972771, -0.088208,
		-0.581349, -0.054472, -0.811829,
		45.216187, 33.097431, 35.907082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808628, 32.658115, 35.869381>,  <45.623131, 33.135563, 36.475361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808628, 32.658115, 35.869381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.629745, 32.977066, 35.707298>,  <45.522415, 33.168438, 35.610046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.629745, 32.977066, 35.707298>,  <45.808628, 32.658115, 35.869381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629745, 32.977066, 35.707298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792174, 0.142753, -0.593365,
		-0.415292, -0.586351, -0.695503,
		-0.447205, 0.797379, -0.405208,
		45.495583, 33.216278, 35.585735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429039, 32.661942, 35.201180>,  <45.808628, 32.658115, 35.869381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429039, 32.661942, 35.201180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.635815, 32.987568, 35.307053>,  <45.759880, 33.182945, 35.370579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.635815, 32.987568, 35.307053>,  <45.429039, 32.661942, 35.201180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635815, 32.987568, 35.307053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816860, -0.376671, -0.436874,
		-0.255946, 0.442051, -0.859699,
		0.516944, 0.814070, 0.264686,
		45.790897, 33.231789, 35.386459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719624, 33.005558, 34.652046>,  <45.429039, 32.661942, 35.201180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719624, 33.005558, 34.652046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969692, 33.010483, 34.964203>,  <46.119732, 33.013439, 35.151497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969692, 33.010483, 34.964203>,  <45.719624, 33.005558, 34.652046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969692, 33.010483, 34.964203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706629, -0.433507, -0.559238,
		0.331418, 0.901066, -0.279719,
		0.625171, 0.012316, 0.780391,
		46.157242, 33.014179, 35.198318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395576, 33.304092, 34.416553>,  <45.719624, 33.005558, 34.652046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395576, 33.304092, 34.416553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.435822, 33.077984, 34.744053>,  <46.459969, 32.942318, 34.940552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.435822, 33.077984, 34.744053>,  <46.395576, 33.304092, 34.416553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435822, 33.077984, 34.744053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807339, -0.434538, -0.399225,
		0.581447, 0.701174, 0.412643,
		0.100617, -0.565271, 0.818746,
		46.466007, 32.908401, 34.989677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037888, 33.600826, 34.761734>,  <46.395576, 33.304092, 34.416553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037888, 33.600826, 34.761734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.032307, 33.823883, 34.429749>,  <47.028957, 33.957718, 34.230556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.032307, 33.823883, 34.429749>,  <47.037888, 33.600826, 34.761734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032307, 33.823883, 34.429749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931338, 0.294826, 0.213745,
		0.363888, 0.775963, 0.515235,
		-0.013953, 0.557637, -0.829967,
		47.028122, 33.991173, 34.180759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058441, 34.309772, 34.988758>,  <47.037888, 33.600826, 34.761734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058441, 34.309772, 34.988758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.868294, 34.255280, 34.641090>,  <46.754204, 34.222584, 34.432487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.868294, 34.255280, 34.641090>,  <47.058441, 34.309772, 34.988758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868294, 34.255280, 34.641090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834226, 0.383594, 0.396134,
		0.279442, 0.913398, -0.296001,
		-0.475372, -0.136235, -0.869173,
		46.725681, 34.214409, 34.380337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639786, 34.809761, 34.896992>,  <47.058441, 34.309772, 34.988758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639786, 34.809761, 34.896992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.477737, 34.586975, 34.606983>,  <46.380508, 34.453304, 34.432976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.477737, 34.586975, 34.606983>,  <46.639786, 34.809761, 34.896992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477737, 34.586975, 34.606983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895106, 0.403115, 0.190483,
		0.186175, 0.726142, -0.661858,
		-0.405123, -0.556970, -0.725024,
		46.356201, 34.419884, 34.389477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.303684, 35.110340, 34.898842>,  <46.639786, 34.809761, 34.896992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.303684, 35.110340, 34.898842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.632160, 34.942371, 34.744282>,  <47.829247, 34.841591, 34.651546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.632160, 34.942371, 34.744282>,  <47.303684, 35.110340, 34.898842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632160, 34.942371, 34.744282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537386, -0.796873, -0.276062,
		-0.191988, 0.434347, -0.880047,
		0.821193, -0.419924, -0.386402,
		47.878517, 34.816395, 34.628361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.019581, 36.299644, 55.815372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387785, 36.445961, 55.870300>,  <31.608707, 36.533752, 55.903255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387785, 36.445961, 55.870300>,  <31.019581, 36.299644, 55.815372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387785, 36.445961, 55.870300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382154, -0.769726, -0.511352,
		-0.081352, 0.523181, -0.848330,
		0.920511, 0.365793, 0.137317,
		31.663939, 36.555698, 55.911495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302336, 36.170662, 55.208637>,  <31.019581, 36.299644, 55.815372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302336, 36.170662, 55.208637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.604986, 36.266842, 55.451851>,  <31.786575, 36.324551, 55.597778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.604986, 36.266842, 55.451851>,  <31.302336, 36.170662, 55.208637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604986, 36.266842, 55.451851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601193, -0.621453, -0.502358,
		0.257073, 0.745641, -0.614762,
		0.756624, 0.240448, 0.608033,
		31.831974, 36.338978, 55.634262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834593, 36.448868, 54.787392>,  <31.302336, 36.170662, 55.208637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834593, 36.448868, 54.787392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016937, 36.303871, 55.112549>,  <32.126343, 36.216873, 55.307644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016937, 36.303871, 55.112549>,  <31.834593, 36.448868, 54.787392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016937, 36.303871, 55.112549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600386, -0.548992, -0.581502,
		0.657059, 0.753133, -0.032631,
		0.455862, -0.362490, 0.812890,
		32.153694, 36.195126, 55.356415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592384, 36.495308, 54.728191>,  <31.834593, 36.448868, 54.787392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592384, 36.495308, 54.728191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.527607, 36.213764, 55.004845>,  <32.488743, 36.044838, 55.170837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.527607, 36.213764, 55.004845>,  <32.592384, 36.495308, 54.728191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527607, 36.213764, 55.004845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447975, -0.676939, -0.584014,
		0.879257, 0.215260, 0.424935,
		-0.161941, -0.703859, 0.691634,
		32.479023, 36.002605, 55.212334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281116, 36.268963, 54.855465>,  <32.592384, 36.495308, 54.728191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281116, 36.268963, 54.855465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.052551, 35.967457, 54.985279>,  <32.915413, 35.786552, 55.063168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.052551, 35.967457, 54.985279>,  <33.281116, 36.268963, 54.855465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052551, 35.967457, 54.985279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485621, -0.629357, -0.606697,
		0.661556, -0.189074, 0.725669,
		-0.571416, -0.753764, 0.324537,
		32.881126, 35.741329, 55.082642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737236, 35.679871, 54.955311>,  <33.281116, 36.268963, 54.855465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737236, 35.679871, 54.955311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.376396, 35.521378, 54.886948>,  <33.159893, 35.426281, 54.845932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.376396, 35.521378, 54.886948>,  <33.737236, 35.679871, 54.955311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376396, 35.521378, 54.886948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425220, -0.748809, -0.508402,
		0.073473, -0.531302, 0.843990,
		-0.902103, -0.396236, -0.170904,
		33.105766, 35.402508, 54.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886654, 34.983936, 54.772015>,  <33.737236, 35.679871, 54.955311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886654, 34.983936, 54.772015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.505474, 35.003597, 54.652363>,  <33.276768, 35.015392, 54.580570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.505474, 35.003597, 54.652363>,  <33.886654, 34.983936, 54.772015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505474, 35.003597, 54.652363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190307, -0.671087, -0.716538,
		-0.235958, -0.739748, 0.630156,
		-0.952946, 0.049150, -0.299128,
		33.219589, 35.018341, 54.562626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707371, 34.323765, 54.590931>,  <33.886654, 34.983936, 54.772015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707371, 34.323765, 54.590931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419567, 34.531857, 54.406902>,  <33.246883, 34.656712, 54.296486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419567, 34.531857, 54.406902>,  <33.707371, 34.323765, 54.590931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419567, 34.531857, 54.406902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046348, -0.625026, -0.779227,
		-0.692935, -0.581984, 0.425601,
		-0.719509, 0.520228, -0.460076,
		33.203712, 34.687923, 54.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189453, 33.869644, 54.366795>,  <33.707371, 34.323765, 54.590931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189453, 33.869644, 54.366795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.137138, 34.182552, 54.123173>,  <33.105747, 34.370296, 53.977001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.137138, 34.182552, 54.123173>,  <33.189453, 33.869644, 54.366795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137138, 34.182552, 54.123173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020138, -0.616302, -0.787253,
		-0.991206, -0.090700, 0.096360,
		-0.130790, 0.782270, -0.609055,
		33.097900, 34.417233, 53.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760517, 33.647701, 53.926971>,  <33.189453, 33.869644, 54.366795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760517, 33.647701, 53.926971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.942856, 33.958176, 53.752735>,  <33.052258, 34.144459, 53.648193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.942856, 33.958176, 53.752735>,  <32.760517, 33.647701, 53.926971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942856, 33.958176, 53.752735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174458, -0.557823, -0.811417,
		-0.872793, 0.293889, -0.389694,
		0.455847, 0.776184, -0.435593,
		33.079609, 34.191032, 53.622059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378811, 33.716034, 53.242771>,  <32.760517, 33.647701, 53.926971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378811, 33.716034, 53.242771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.744652, 33.877518, 53.251926>,  <32.964157, 33.974407, 53.257420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.744652, 33.877518, 53.251926>,  <32.378811, 33.716034, 53.242771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744652, 33.877518, 53.251926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232017, -0.477584, -0.847397,
		-0.331171, 0.780340, -0.530467,
		0.914600, 0.403711, 0.022891,
		33.019032, 33.998631, 53.258793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490849, 33.863117, 52.463787>,  <32.378811, 33.716034, 53.242771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490849, 33.863117, 52.463787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.858425, 33.857117, 52.621429>,  <33.078972, 33.853516, 52.716015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.858425, 33.857117, 52.621429>,  <32.490849, 33.863117, 52.463787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858425, 33.857117, 52.621429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347827, -0.440206, -0.827790,
		0.185902, 0.897772, -0.399307,
		0.918943, -0.014998, 0.394104,
		33.134109, 33.852619, 52.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966137, 34.050369, 51.922703>,  <32.490849, 33.863117, 52.463787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966137, 34.050369, 51.922703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.200653, 33.870621, 52.192318>,  <33.341362, 33.762772, 52.354088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.200653, 33.870621, 52.192318>,  <32.966137, 34.050369, 51.922703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200653, 33.870621, 52.192318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452309, -0.508697, -0.732560,
		0.672075, 0.734366, -0.094988,
		0.586287, -0.449371, 0.674042,
		33.376537, 33.735809, 52.394531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662834, 34.170353, 51.744919>,  <32.966137, 34.050369, 51.922703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662834, 34.170353, 51.744919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680088, 33.850971, 51.985119>,  <33.690441, 33.659340, 52.129238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680088, 33.850971, 51.985119>,  <33.662834, 34.170353, 51.744919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680088, 33.850971, 51.985119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600950, -0.459431, -0.654051,
		0.798122, 0.389085, 0.460015,
		0.043136, -0.798458, 0.600503,
		33.693027, 33.611435, 52.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348675, 33.990730, 51.655712>,  <33.662834, 34.170353, 51.744919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348675, 33.990730, 51.655712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.198074, 33.658745, 51.820351>,  <34.107716, 33.459553, 51.919136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.198074, 33.658745, 51.820351>,  <34.348675, 33.990730, 51.655712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198074, 33.658745, 51.820351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498210, -0.555969, -0.665346,
		0.781048, -0.045438, 0.622816,
		-0.376499, -0.829960, 0.411601,
		34.085125, 33.409756, 51.943832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910919, 33.605408, 51.877831>,  <34.348675, 33.990730, 51.655712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910919, 33.605408, 51.877831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614544, 33.340145, 51.835426>,  <34.436718, 33.180988, 51.809982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614544, 33.340145, 51.835426>,  <34.910919, 33.605408, 51.877831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614544, 33.340145, 51.835426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620574, -0.615747, -0.485534,
		0.256709, -0.425537, 0.867767,
		-0.740937, -0.663154, -0.106009,
		34.392262, 33.141197, 51.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157982, 32.906326, 51.993862>,  <34.910919, 33.605408, 51.877831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157982, 32.906326, 51.993862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.819515, 32.854565, 51.787075>,  <34.616436, 32.823509, 51.663002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.819515, 32.854565, 51.787075>,  <35.157982, 32.906326, 51.993862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819515, 32.854565, 51.787075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457787, -0.673112, -0.580818,
		-0.272816, -0.728131, 0.628806,
		-0.846169, -0.129403, -0.516965,
		34.565666, 32.815742, 51.631985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225258, 32.308067, 51.724262>,  <35.157982, 32.906326, 51.993862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225258, 32.308067, 51.724262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.923058, 32.418434, 51.486576>,  <34.741737, 32.484653, 51.343964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.923058, 32.418434, 51.486576>,  <35.225258, 32.308067, 51.724262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923058, 32.418434, 51.486576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413840, -0.502157, -0.759325,
		-0.507941, -0.819564, 0.265161,
		-0.755468, 0.275958, -0.594235,
		34.696407, 32.501209, 51.308311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869549, 31.717735, 51.462528>,  <35.225258, 32.308067, 51.724262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869549, 31.717735, 51.462528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782509, 32.020115, 51.215565>,  <34.730286, 32.201542, 51.067387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782509, 32.020115, 51.215565>,  <34.869549, 31.717735, 51.462528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782509, 32.020115, 51.215565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392688, -0.511304, -0.764438,
		-0.893558, -0.408792, -0.185591,
		-0.217602, 0.755949, -0.617407,
		34.717228, 32.246899, 51.030342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503803, 31.431410, 50.919937>,  <34.869549, 31.717735, 51.462528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503803, 31.431410, 50.919937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.622231, 31.786566, 50.779087>,  <34.693287, 31.999659, 50.694576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.622231, 31.786566, 50.779087>,  <34.503803, 31.431410, 50.919937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622231, 31.786566, 50.779087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229783, -0.424037, -0.876009,
		-0.927115, 0.178449, -0.329567,
		0.296072, 0.887890, -0.352126,
		34.711052, 32.052933, 50.673450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238552, 31.543436, 50.209946>,  <34.503803, 31.431410, 50.919937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238552, 31.543436, 50.209946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.564911, 31.770725, 50.252728>,  <34.760727, 31.907099, 50.278397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.564911, 31.770725, 50.252728>,  <34.238552, 31.543436, 50.209946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564911, 31.770725, 50.252728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411675, -0.440992, -0.797528,
		-0.406007, 0.694729, -0.593725,
		0.815894, 0.568223, 0.106957,
		34.809677, 31.941193, 50.284813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405334, 31.889980, 49.535309>,  <34.238552, 31.543436, 50.209946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405334, 31.889980, 49.535309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.736084, 31.881990, 49.760124>,  <34.934532, 31.877197, 49.895012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.736084, 31.881990, 49.760124>,  <34.405334, 31.889980, 49.535309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736084, 31.881990, 49.760124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491951, -0.458582, -0.740058,
		0.272523, 0.888428, -0.369361,
		0.826871, -0.019975, 0.562037,
		34.984146, 31.875998, 49.928734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945297, 31.292131, 49.463940>,  <34.405334, 31.889980, 49.535309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945297, 31.292131, 49.463940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.618362, 31.210211, 49.248528>,  <33.422203, 31.161058, 49.119278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.618362, 31.210211, 49.248528>,  <33.945297, 31.292131, 49.463940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618362, 31.210211, 49.248528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554881, 0.531479, 0.640029,
		0.155141, 0.821941, -0.548037,
		-0.817336, -0.204801, -0.538533,
		33.373161, 31.148771, 49.086967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538967, 31.874046, 49.445381>,  <33.945297, 31.292131, 49.463940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538967, 31.874046, 49.445381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.275990, 31.596109, 49.328785>,  <33.118202, 31.429348, 49.258827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.275990, 31.596109, 49.328785>,  <33.538967, 31.874046, 49.445381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275990, 31.596109, 49.328785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707047, 0.435143, 0.557437,
		-0.260492, 0.572577, -0.777367,
		-0.657441, -0.694842, -0.291488,
		33.078758, 31.387657, 49.241337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846767, 32.156700, 49.059505>,  <33.538967, 31.874046, 49.445381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846767, 32.156700, 49.059505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796993, 31.800640, 49.234844>,  <32.767128, 31.587004, 49.340050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796993, 31.800640, 49.234844>,  <32.846767, 32.156700, 49.059505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796993, 31.800640, 49.234844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564220, 0.426885, 0.706700,
		-0.816193, -0.159389, -0.555359,
		-0.124434, -0.890148, 0.438351,
		32.759663, 31.533596, 49.366348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230499, 32.113403, 49.325012>,  <32.846767, 32.156700, 49.059505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230499, 32.113403, 49.325012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.326000, 31.770248, 49.507015>,  <32.383301, 31.564356, 49.616219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.326000, 31.770248, 49.507015>,  <32.230499, 32.113403, 49.325012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326000, 31.770248, 49.507015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637216, 0.215168, 0.740040,
		-0.732772, -0.466623, -0.495286,
		0.238750, -0.857884, 0.455009,
		32.397625, 31.512882, 49.643517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604212, 31.868696, 49.630520>,  <32.230499, 32.113403, 49.325012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604212, 31.868696, 49.630520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.898462, 31.687389, 49.831875>,  <32.075012, 31.578606, 49.952690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.898462, 31.687389, 49.831875>,  <31.604212, 31.868696, 49.630520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898462, 31.687389, 49.831875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497172, 0.143455, 0.855710,
		-0.460078, -0.879756, -0.119821,
		0.735628, -0.453265, 0.503391,
		32.119152, 31.551411, 49.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248083, 31.432423, 50.060596>,  <31.604212, 31.868696, 49.630520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248083, 31.432423, 50.060596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.605097, 31.499859, 50.227909>,  <31.819305, 31.540321, 50.328297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.605097, 31.499859, 50.227909>,  <31.248083, 31.432423, 50.060596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605097, 31.499859, 50.227909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450126, 0.275981, 0.849248,
		0.027738, -0.946262, 0.322209,
		0.892534, 0.168591, 0.418282,
		31.872856, 31.550436, 50.353394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178522, 31.111963, 50.715088>,  <31.248083, 31.432423, 50.060596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178522, 31.111963, 50.715088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.489574, 31.360037, 50.756386>,  <31.676207, 31.508881, 50.781166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.489574, 31.360037, 50.756386>,  <31.178522, 31.111963, 50.715088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489574, 31.360037, 50.756386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375791, 0.326827, 0.867159,
		0.504055, -0.713130, 0.487211,
		0.777631, 0.620185, 0.103249,
		31.722864, 31.546093, 50.787361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261015, 30.989424, 51.459457>,  <31.178522, 31.111963, 50.715088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261015, 30.989424, 51.459457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446728, 31.316778, 51.323997>,  <31.558155, 31.513191, 51.242722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446728, 31.316778, 51.323997>,  <31.261015, 30.989424, 51.459457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446728, 31.316778, 51.323997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225315, 0.478919, 0.848451,
		0.856549, -0.317617, 0.406749,
		0.464282, 0.818386, -0.338654,
		31.586012, 31.562294, 51.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762688, 31.236834, 52.026447>,  <31.261015, 30.989424, 51.459457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762688, 31.236834, 52.026447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.622742, 31.530916, 51.794216>,  <31.538774, 31.707365, 51.654877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.622742, 31.530916, 51.794216>,  <31.762688, 31.236834, 52.026447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622742, 31.530916, 51.794216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415082, 0.433928, 0.799633,
		0.839823, 0.520749, 0.153355,
		-0.349863, 0.735205, -0.580577,
		31.517782, 31.751478, 51.620045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972229, 31.834835, 52.395161>,  <31.762688, 31.236834, 52.026447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972229, 31.834835, 52.395161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690836, 31.978014, 52.149563>,  <31.522001, 32.063923, 52.002205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690836, 31.978014, 52.149563>,  <31.972229, 31.834835, 52.395161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690836, 31.978014, 52.149563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239155, 0.694305, 0.678783,
		0.669267, 0.624350, -0.402826,
		-0.703482, 0.357949, -0.613992,
		31.479792, 32.085400, 51.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025806, 32.546841, 52.538536>,  <31.972229, 31.834835, 52.395161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025806, 32.546841, 52.538536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.686069, 32.524143, 52.328621>,  <31.482227, 32.510525, 52.202671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.686069, 32.524143, 52.328621>,  <32.025806, 32.546841, 52.538536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686069, 32.524143, 52.328621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374718, 0.765042, 0.523734,
		0.371764, 0.641475, -0.671045,
		-0.849340, -0.056748, -0.524787,
		31.431267, 32.507118, 52.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786312, 33.166008, 52.421707>,  <32.025806, 32.546841, 52.538536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786312, 33.166008, 52.421707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.443356, 32.962021, 52.393948>,  <31.237581, 32.839630, 52.377293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.443356, 32.962021, 52.393948>,  <31.786312, 33.166008, 52.421707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443356, 32.962021, 52.393948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473514, 0.728795, 0.494613,
		-0.201661, 0.456936, -0.866338,
		-0.857390, -0.509967, -0.069397,
		31.186138, 32.809032, 52.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340086, 33.679852, 52.347813>,  <31.786312, 33.166008, 52.421707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340086, 33.679852, 52.347813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.123734, 33.367058, 52.471718>,  <30.993921, 33.179382, 52.546062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.123734, 33.367058, 52.471718>,  <31.340086, 33.679852, 52.347813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123734, 33.367058, 52.471718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560957, 0.609793, 0.559892,
		-0.626718, 0.129069, -0.768483,
		-0.540880, -0.781980, 0.309766,
		30.961470, 33.132465, 52.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560152, 33.981781, 52.335438>,  <31.340086, 33.679852, 52.347813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560152, 33.981781, 52.335438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.614195, 33.678776, 52.590912>,  <30.646620, 33.496971, 52.744198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.614195, 33.678776, 52.590912>,  <30.560152, 33.981781, 52.335438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614195, 33.678776, 52.590912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529799, 0.489481, 0.692619,
		-0.837292, -0.431954, -0.335197,
		0.135107, -0.757512, 0.638687,
		30.654726, 33.451523, 52.782516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928686, 33.800861, 52.586788>,  <30.560152, 33.981781, 52.335438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928686, 33.800861, 52.586788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.192722, 33.673794, 52.859070>,  <30.351145, 33.597553, 53.022438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.192722, 33.673794, 52.859070>,  <29.928686, 33.800861, 52.586788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192722, 33.673794, 52.859070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530146, 0.444989, 0.721755,
		-0.532188, -0.837300, 0.125322,
		0.660092, -0.317670, 0.680709,
		30.390751, 33.578491, 53.063282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570765, 33.698391, 53.226715>,  <29.928686, 33.800861, 52.586788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570765, 33.698391, 53.226715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.938072, 33.675655, 53.383457>,  <30.158457, 33.662014, 53.477501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.938072, 33.675655, 53.383457>,  <29.570765, 33.698391, 53.226715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938072, 33.675655, 53.383457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354506, 0.322790, 0.877572,
		-0.176366, -0.944762, 0.276259,
		0.918270, -0.056838, 0.391853,
		30.213552, 33.658604, 53.501015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429085, 33.411518, 53.937794>,  <29.570765, 33.698391, 53.226715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429085, 33.411518, 53.937794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769371, 33.617413, 53.895218>,  <29.973543, 33.740948, 53.869671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769371, 33.617413, 53.895218>,  <29.429085, 33.411518, 53.937794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769371, 33.617413, 53.895218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288963, 0.627148, 0.723316,
		0.439071, -0.584579, 0.682264,
		0.850716, 0.514736, -0.106441,
		30.024586, 33.771835, 53.863285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545259, 33.651535, 54.680080>,  <29.429085, 33.411518, 53.937794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545259, 33.651535, 54.680080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.785139, 33.880829, 54.456738>,  <29.929066, 34.018406, 54.322731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.785139, 33.880829, 54.456738>,  <29.545259, 33.651535, 54.680080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785139, 33.880829, 54.456738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244424, 0.795621, 0.554296,
		0.761984, -0.195934, 0.617244,
		0.599697, 0.573234, -0.558360,
		29.965048, 34.052799, 54.289230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.040661, 34.046070, 55.180538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003025, 34.241623, 54.833633>,  <29.980444, 34.358955, 54.625492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003025, 34.241623, 54.833633>,  <30.040661, 34.046070, 55.180538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003025, 34.241623, 54.833633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156386, 0.853053, 0.497840,
		0.983204, 0.182469, -0.003809,
		-0.094090, 0.488882, -0.867261,
		29.974798, 34.388287, 54.573456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359720, 34.583450, 55.243927>,  <30.040661, 34.046070, 55.180538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359720, 34.583450, 55.243927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155212, 34.695801, 54.919037>,  <30.032507, 34.763210, 54.724102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155212, 34.695801, 54.919037>,  <30.359720, 34.583450, 55.243927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155212, 34.695801, 54.919037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269762, 0.844872, 0.461974,
		0.815985, 0.455301, -0.356188,
		-0.511271, 0.280878, -0.812225,
		30.001831, 34.780064, 54.675369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632860, 35.289776, 55.005070>,  <30.359720, 34.583450, 55.243927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632860, 35.289776, 55.005070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282211, 35.244896, 54.817905>,  <30.071821, 35.217968, 54.705608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282211, 35.244896, 54.817905>,  <30.632860, 35.289776, 55.005070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282211, 35.244896, 54.817905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293382, 0.895404, 0.334929,
		0.381390, 0.430884, -0.817851,
		-0.876623, -0.112204, -0.467912,
		30.019224, 35.211235, 54.677532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503622, 35.957779, 54.590378>,  <30.632860, 35.289776, 55.005070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503622, 35.957779, 54.590378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142458, 35.796261, 54.649303>,  <29.925760, 35.699348, 54.684658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142458, 35.796261, 54.649303>,  <30.503622, 35.957779, 54.590378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142458, 35.796261, 54.649303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350495, 0.890056, 0.291467,
		-0.248812, 0.211536, -0.945170,
		-0.902910, -0.403798, 0.147314,
		29.871586, 35.675121, 54.693497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048958, 36.450302, 54.344608>,  <30.503622, 35.957779, 54.590378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048958, 36.450302, 54.344608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812845, 36.239037, 54.588776>,  <29.671177, 36.112278, 54.735275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812845, 36.239037, 54.588776>,  <30.048958, 36.450302, 54.344608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812845, 36.239037, 54.588776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504600, 0.831691, 0.231666,
		-0.630035, -0.171267, -0.757445,
		-0.590283, -0.528165, 0.610416,
		29.635759, 36.080585, 54.771900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418983, 36.711185, 54.210423>,  <30.048958, 36.450302, 54.344608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418983, 36.711185, 54.210423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399275, 36.533287, 54.568142>,  <29.387449, 36.426548, 54.782772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399275, 36.533287, 54.568142>,  <29.418983, 36.711185, 54.210423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399275, 36.533287, 54.568142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515454, 0.778257, 0.358641,
		-0.855500, -0.443299, -0.267594,
		-0.049272, -0.444750, 0.894299,
		29.384493, 36.399860, 54.836433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699749, 36.811302, 54.474716>,  <29.418983, 36.711185, 54.210423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699749, 36.811302, 54.474716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977364, 36.770748, 54.759823>,  <29.143932, 36.746414, 54.930885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977364, 36.770748, 54.759823>,  <28.699749, 36.811302, 54.474716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977364, 36.770748, 54.759823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379694, 0.789607, 0.482030,
		-0.611676, -0.605179, 0.509520,
		0.694035, -0.101384, 0.712766,
		29.185574, 36.740334, 54.973652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325052, 36.986061, 55.029217>,  <28.699749, 36.811302, 54.474716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325052, 36.986061, 55.029217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686440, 37.010174, 55.198975>,  <28.903273, 37.024639, 55.300827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686440, 37.010174, 55.198975>,  <28.325052, 36.986061, 55.029217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686440, 37.010174, 55.198975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344388, 0.691565, 0.634929,
		-0.255222, -0.719795, 0.645567,
		0.903470, 0.060278, 0.424391,
		28.957481, 37.028255, 55.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176996, 36.994053, 55.725739>,  <28.325052, 36.986061, 55.029217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176996, 36.994053, 55.725739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533154, 37.163040, 55.657948>,  <28.746847, 37.264431, 55.617275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533154, 37.163040, 55.657948>,  <28.176996, 36.994053, 55.725739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533154, 37.163040, 55.657948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243897, 0.757141, 0.606013,
		0.384339, -0.498255, 0.777191,
		0.890392, 0.422469, -0.169475,
		28.800272, 37.289780, 55.607105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282755, 37.386246, 56.376705>,  <28.176996, 36.994053, 55.725739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282755, 37.386246, 56.376705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511578, 37.554386, 56.094982>,  <28.648870, 37.655270, 55.925949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511578, 37.554386, 56.094982>,  <28.282755, 37.386246, 56.376705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511578, 37.554386, 56.094982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225162, 0.906185, 0.357954,
		0.788703, -0.046186, 0.613037,
		0.572057, 0.420352, -0.704311,
		28.683195, 37.680492, 55.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731035, 37.948128, 56.697620>,  <28.282755, 37.386246, 56.376705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731035, 37.948128, 56.697620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705601, 38.041580, 56.309525>,  <28.690340, 38.097652, 56.076668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705601, 38.041580, 56.309525>,  <28.731035, 37.948128, 56.697620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705601, 38.041580, 56.309525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275567, 0.930302, 0.242075,
		0.959176, 0.282761, 0.005226,
		-0.063588, 0.233633, -0.970243,
		28.686523, 38.111671, 56.018452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577545, 38.714424, 56.790173>,  <28.731035, 37.948128, 56.697620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577545, 38.714424, 56.790173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513054, 38.603531, 56.411301>,  <28.474360, 38.536995, 56.183979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513054, 38.603531, 56.411301>,  <28.577545, 38.714424, 56.790173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513054, 38.603531, 56.411301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499572, 0.850620, -0.163936,
		0.851135, 0.446748, -0.275655,
		-0.161240, -0.277241, -0.947174,
		28.464685, 38.520359, 56.127148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708595, 39.355286, 56.475204>,  <28.577545, 38.714424, 56.790173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708595, 39.355286, 56.475204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492886, 39.136227, 56.219311>,  <28.363461, 39.004791, 56.065773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492886, 39.136227, 56.219311>,  <28.708595, 39.355286, 56.475204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492886, 39.136227, 56.219311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467015, 0.826633, -0.313966,
		0.700772, 0.129454, -0.701541,
		-0.539273, -0.547649, -0.639739,
		28.331104, 38.971931, 56.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567680, 39.776508, 55.996300>,  <28.708595, 39.355286, 56.475204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567680, 39.776508, 55.996300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291731, 39.493847, 55.933407>,  <28.126162, 39.324249, 55.895672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291731, 39.493847, 55.933407>,  <28.567680, 39.776508, 55.996300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291731, 39.493847, 55.933407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637975, 0.696098, -0.329296,
		0.342145, -0.126862, -0.931044,
		-0.689873, -0.706650, -0.157231,
		28.084768, 39.281853, 55.886238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164202, 39.940289, 55.441410>,  <28.567680, 39.776508, 55.996300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164202, 39.940289, 55.441410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899992, 39.696186, 55.616360>,  <27.741467, 39.549725, 55.721329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899992, 39.696186, 55.616360>,  <28.164202, 39.940289, 55.441410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899992, 39.696186, 55.616360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733603, 0.648557, -0.202976,
		-0.159798, -0.454933, -0.876071,
		-0.660523, -0.610253, 0.437379,
		27.701836, 39.513111, 55.747574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596901, 39.881786, 54.986153>,  <28.164202, 39.940289, 55.441410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596901, 39.881786, 54.986153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449183, 39.764488, 55.338886>,  <27.360552, 39.694111, 55.550526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449183, 39.764488, 55.338886>,  <27.596901, 39.881786, 54.986153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449183, 39.764488, 55.338886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776907, 0.618111, -0.119809,
		-0.509937, -0.729347, -0.456089,
		-0.369297, -0.293244, 0.881832,
		27.338394, 39.676514, 55.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960003, 39.655243, 54.845078>,  <27.596901, 39.881786, 54.986153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960003, 39.655243, 54.845078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963249, 39.735893, 55.236851>,  <26.965197, 39.784283, 55.471912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963249, 39.735893, 55.236851>,  <26.960003, 39.655243, 54.845078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963249, 39.735893, 55.236851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884450, 0.458445, -0.087047,
		-0.466565, -0.865548, 0.182052,
		0.008118, 0.201629, 0.979428,
		26.965685, 39.796383, 55.530678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329462, 39.528202, 55.096008>,  <26.960003, 39.655243, 54.845078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329462, 39.528202, 55.096008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437881, 39.759819, 55.403580>,  <26.502934, 39.898788, 55.588123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437881, 39.759819, 55.403580>,  <26.329462, 39.528202, 55.096008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437881, 39.759819, 55.403580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816509, 0.561350, -0.134903,
		-0.509750, -0.591268, 0.624945,
		0.271049, 0.579040, 0.768924,
		26.519196, 39.933533, 55.634258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721479, 39.619656, 55.510254>,  <26.329462, 39.528202, 55.096008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721479, 39.619656, 55.510254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963989, 39.923729, 55.603676>,  <26.109495, 40.106174, 55.659729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963989, 39.923729, 55.603676>,  <25.721479, 39.619656, 55.510254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963989, 39.923729, 55.603676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790491, 0.608165, 0.072519,
		-0.086911, -0.228589, 0.969636,
		0.606276, 0.760186, 0.233554,
		26.145872, 40.151783, 55.673740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204340, 39.981052, 55.961155>,  <25.721479, 39.619656, 55.510254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204340, 39.981052, 55.961155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500149, 40.221619, 55.840218>,  <25.677635, 40.365959, 55.767654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500149, 40.221619, 55.840218>,  <25.204340, 39.981052, 55.961155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500149, 40.221619, 55.840218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600670, 0.792325, 0.106847,
		0.303811, 0.102592, 0.947192,
		0.739523, 0.601411, -0.302341,
		25.722006, 40.402042, 55.749516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117136, 40.555466, 56.411335>,  <25.204340, 39.981052, 55.961155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117136, 40.555466, 56.411335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348833, 40.726040, 56.133450>,  <25.487852, 40.828384, 55.966717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348833, 40.726040, 56.133450>,  <25.117136, 40.555466, 56.411335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348833, 40.726040, 56.133450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628391, 0.776457, -0.047329,
		0.519233, 0.463967, 0.717726,
		0.579243, 0.426438, -0.694715,
		25.522606, 40.853970, 55.925034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449083, 41.338715, 56.628059>,  <25.117136, 40.555466, 56.411335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449083, 41.338715, 56.628059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352373, 41.234760, 56.254108>,  <25.294348, 41.172386, 56.029736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352373, 41.234760, 56.254108>,  <25.449083, 41.338715, 56.628059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352373, 41.234760, 56.254108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651447, 0.757525, -0.042111,
		0.719140, 0.598843, -0.352456,
		-0.241776, -0.259890, -0.934880,
		25.279840, 41.156792, 55.973644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729258, 42.003170, 56.453106>,  <25.449083, 41.338715, 56.628059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729258, 42.003170, 56.453106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614756, 42.114185, 56.819935>,  <25.546055, 42.180794, 57.040031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614756, 42.114185, 56.819935>,  <25.729258, 42.003170, 56.453106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614756, 42.114185, 56.819935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014827, -0.958297, 0.285388,
		0.958038, 0.068097, 0.278433,
		-0.286256, 0.277541, 0.917076,
		25.528879, 42.197449, 57.095058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158041, 41.723026, 56.962334>,  <25.729258, 42.003170, 56.453106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158041, 41.723026, 56.962334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790237, 41.764996, 57.113857>,  <25.569555, 41.790176, 57.204773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790237, 41.764996, 57.113857>,  <26.158041, 41.723026, 56.962334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790237, 41.764996, 57.113857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143141, -0.986924, -0.074100,
		0.366080, -0.122358, 0.922504,
		-0.919509, 0.104921, 0.378808,
		25.514385, 41.796471, 57.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531242, 42.007225, 57.647354>,  <26.158041, 41.723026, 56.962334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531242, 42.007225, 57.647354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703110, 42.165531, 57.972008>,  <26.806231, 42.260513, 58.166801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703110, 42.165531, 57.972008>,  <26.531242, 42.007225, 57.647354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703110, 42.165531, 57.972008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880016, -0.384973, -0.278149,
		0.202378, 0.833766, -0.513689,
		0.429668, 0.395764, 0.811638,
		26.832010, 42.284260, 58.215500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105978, 42.412113, 57.444420>,  <26.531242, 42.007225, 57.647354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105978, 42.412113, 57.444420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195656, 42.300884, 57.818031>,  <27.249462, 42.234146, 58.042198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195656, 42.300884, 57.818031>,  <27.105978, 42.412113, 57.444420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195656, 42.300884, 57.818031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906721, -0.291776, -0.304505,
		0.357202, 0.915174, 0.186719,
		0.224195, -0.278072, 0.934030,
		27.262915, 42.217464, 58.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759731, 42.689632, 57.694698>,  <27.105978, 42.412113, 57.444420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759731, 42.689632, 57.694698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691027, 42.347469, 57.890156>,  <27.649803, 42.142170, 58.007431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691027, 42.347469, 57.890156>,  <27.759731, 42.689632, 57.694698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691027, 42.347469, 57.890156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958782, -0.259121, -0.116594,
		0.226353, 0.448475, 0.864659,
		-0.171761, -0.855410, 0.488642,
		27.639498, 42.090847, 58.036747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413658, 42.596302, 58.006374>,  <27.759731, 42.689632, 57.694698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413658, 42.596302, 58.006374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250326, 42.231682, 58.025768>,  <28.152327, 42.012909, 58.037403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250326, 42.231682, 58.025768>,  <28.413658, 42.596302, 58.006374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250326, 42.231682, 58.025768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905994, -0.411186, -0.100505,
		0.111550, 0.002884, 0.993755,
		-0.408328, -0.911547, 0.048480,
		28.127829, 41.958218, 58.040314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877808, 42.205708, 58.484859>,  <28.413658, 42.596302, 58.006374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877808, 42.205708, 58.484859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686020, 41.897869, 58.316177>,  <28.570948, 41.713165, 58.214970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686020, 41.897869, 58.316177>,  <28.877808, 42.205708, 58.484859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686020, 41.897869, 58.316177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870222, -0.478974, -0.115317,
		-0.113237, -0.422264, 0.899372,
		-0.479470, -0.769595, -0.421701,
		28.542179, 41.666992, 58.189667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348080, 41.647884, 58.713600>,  <28.877808, 42.205708, 58.484859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348080, 41.647884, 58.713600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120644, 41.499485, 58.419914>,  <28.984182, 41.410446, 58.243702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120644, 41.499485, 58.419914>,  <29.348080, 41.647884, 58.713600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120644, 41.499485, 58.419914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785210, -0.510863, -0.349948,
		-0.245253, -0.775488, 0.581781,
		-0.568591, -0.370995, -0.734212,
		28.950066, 41.388187, 58.199650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320736, 40.788940, 58.672142>,  <29.348080, 41.647884, 58.713600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320736, 40.788940, 58.672142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220552, 40.890156, 58.298351>,  <29.160442, 40.950886, 58.074078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220552, 40.890156, 58.298351>,  <29.320736, 40.788940, 58.672142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220552, 40.890156, 58.298351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671797, -0.649604, -0.355954,
		-0.697108, -0.716929, -0.007288,
		-0.250459, 0.253035, -0.934475,
		29.145414, 40.966064, 58.018009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306400, 40.170425, 58.268047>,  <29.320736, 40.788940, 58.672142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306400, 40.170425, 58.268047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301434, 40.453438, 57.985420>,  <29.298454, 40.623245, 57.815842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301434, 40.453438, 57.985420>,  <29.306400, 40.170425, 58.268047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301434, 40.453438, 57.985420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550499, -0.585059, -0.595530,
		-0.834744, -0.396361, -0.382231,
		-0.012417, 0.707533, -0.706571,
		29.297709, 40.665699, 57.773449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105249, 39.800369, 57.711277>,  <29.306400, 40.170425, 58.268047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105249, 39.800369, 57.711277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296749, 40.120090, 57.565998>,  <29.411650, 40.311924, 57.478832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296749, 40.120090, 57.565998>,  <29.105249, 39.800369, 57.711277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296749, 40.120090, 57.565998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675360, -0.599611, -0.429367,
		-0.560971, -0.039729, -0.826882,
		0.478749, 0.799305, -0.363196,
		29.440374, 40.359882, 57.457039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120207, 39.720284, 57.041721>,  <29.105249, 39.800369, 57.711277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120207, 39.720284, 57.041721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420038, 39.974564, 57.115501>,  <29.599937, 40.127129, 57.159771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420038, 39.974564, 57.115501>,  <29.120207, 39.720284, 57.041721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420038, 39.974564, 57.115501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631461, -0.603218, -0.487221,
		-0.198461, 0.481684, -0.853577,
		0.749580, 0.635695, 0.184449,
		29.644913, 40.165272, 57.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421972, 39.964085, 56.361492>,  <29.120207, 39.720284, 57.041721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421972, 39.964085, 56.361492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684973, 39.970787, 56.662800>,  <29.842773, 39.974808, 56.843582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684973, 39.970787, 56.662800>,  <29.421972, 39.964085, 56.361492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684973, 39.970787, 56.662800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536915, -0.711812, -0.452820,
		0.528595, 0.702170, -0.477016,
		0.657503, 0.016759, 0.753266,
		29.882223, 39.975815, 56.888779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740643, 39.393551, 56.226467>,  <29.421972, 39.964085, 56.361492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740643, 39.393551, 56.226467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997543, 39.547161, 56.491806>,  <30.151684, 39.639328, 56.651009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997543, 39.547161, 56.491806>,  <29.740643, 39.393551, 56.226467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997543, 39.547161, 56.491806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661459, -0.714956, -0.226516,
		0.387279, 0.584260, -0.713201,
		0.642251, 0.384028, 0.663352,
		30.190218, 39.662369, 56.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470287, 39.617260, 55.910713>,  <29.740643, 39.393551, 56.226467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470287, 39.617260, 55.910713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501202, 39.513996, 56.295914>,  <30.519751, 39.452038, 56.527035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501202, 39.513996, 56.295914>,  <30.470287, 39.617260, 55.910713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501202, 39.513996, 56.295914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685429, -0.687674, -0.239359,
		0.724027, 0.678571, 0.123802,
		0.077286, -0.258160, 0.963006,
		30.524387, 39.436546, 56.584816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188574, 39.524025, 56.111942>,  <30.470287, 39.617260, 55.910713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188574, 39.524025, 56.111942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969358, 39.318340, 56.375832>,  <30.837830, 39.194927, 56.534164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969358, 39.318340, 56.375832>,  <31.188574, 39.524025, 56.111942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969358, 39.318340, 56.375832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627436, -0.774306, -0.082309,
		0.553153, 0.368826, 0.746987,
		-0.548039, -0.514216, 0.659724,
		30.804947, 39.164074, 56.573750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694468, 39.033787, 56.350151>,  <31.188574, 39.524025, 56.111942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694468, 39.033787, 56.350151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367897, 38.900951, 56.539112>,  <31.171955, 38.821251, 56.652489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367897, 38.900951, 56.539112>,  <31.694468, 39.033787, 56.350151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367897, 38.900951, 56.539112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393329, -0.918773, 0.033897,
		0.422776, 0.213485, 0.880729,
		-0.816427, -0.332085, 0.472405,
		31.122969, 38.801327, 56.680832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885649, 38.759846, 57.083889>,  <31.694468, 39.033787, 56.350151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885649, 38.759846, 57.083889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554136, 38.600838, 56.926357>,  <31.355228, 38.505432, 56.831837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554136, 38.600838, 56.926357>,  <31.885649, 38.759846, 57.083889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554136, 38.600838, 56.926357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430367, -0.902638, 0.005430,
		-0.357645, -0.164991, 0.919167,
		-0.828779, -0.397521, -0.393831,
		31.305502, 38.481583, 56.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771544, 38.135559, 57.396725>,  <31.885649, 38.759846, 57.083889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771544, 38.135559, 57.396725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539728, 38.066807, 57.078079>,  <31.400639, 38.025555, 56.886890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539728, 38.066807, 57.078079>,  <31.771544, 38.135559, 57.396725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539728, 38.066807, 57.078079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331198, -0.942815, -0.037523,
		-0.744610, -0.285582, 0.603324,
		-0.579538, -0.171879, -0.796613,
		31.365868, 38.015244, 56.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605467, 37.530487, 57.400200>,  <31.771544, 38.135559, 57.396725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605467, 37.530487, 57.400200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514742, 37.568592, 57.012493>,  <31.460308, 37.591454, 56.779869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514742, 37.568592, 57.012493>,  <31.605467, 37.530487, 57.400200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514742, 37.568592, 57.012493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332416, -0.927872, -0.168978,
		-0.915454, -0.360527, 0.178784,
		-0.226810, 0.095261, -0.969269,
		31.446699, 37.597172, 56.721714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564409, 36.829742, 57.176968>,  <31.605467, 37.530487, 57.400200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564409, 36.829742, 57.176968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603193, 37.035698, 56.836266>,  <31.626463, 37.159271, 56.631844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603193, 37.035698, 56.836266>,  <31.564409, 36.829742, 57.176968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603193, 37.035698, 56.836266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388274, -0.807550, -0.443967,
		-0.916429, -0.287667, -0.278218,
		0.096961, 0.514889, -0.851756,
		31.632282, 37.190166, 56.580738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142031, 36.502769, 56.573128>,  <31.564409, 36.829742, 57.176968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142031, 36.502769, 56.573128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423960, 36.714531, 56.384254>,  <31.593117, 36.841587, 56.270931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423960, 36.714531, 56.384254>,  <31.142031, 36.502769, 56.573128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423960, 36.714531, 56.384254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235002, -0.802286, -0.548736,
		-0.669328, 0.275797, -0.689880,
		0.704822, 0.529408, -0.472180,
		31.635406, 36.873352, 56.242599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.801254, 34.847244, 50.697357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.605289, 34.976791, 51.021111>,  <48.487709, 35.054520, 51.215363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.605289, 34.976791, 51.021111>,  <48.801254, 34.847244, 50.697357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.605289, 34.976791, 51.021111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836521, -0.435981, -0.331893,
		0.245385, -0.839662, 0.484514,
		-0.489916, 0.323864, 0.809379,
		48.458313, 35.073952, 51.263924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.302803, 34.341473, 50.695690>,  <48.801254, 34.847244, 50.697357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.302803, 34.341473, 50.695690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.187744, 34.577087, 50.997761>,  <48.118710, 34.718456, 51.179005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.187744, 34.577087, 50.997761>,  <48.302803, 34.341473, 50.695690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.187744, 34.577087, 50.997761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950690, -0.271084, -0.150671,
		0.115967, -0.761282, 0.637966,
		-0.287646, 0.589035, 0.755181,
		48.101452, 34.753799, 51.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.920673, 33.936657, 51.293251>,  <48.302803, 34.341473, 50.695690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.920673, 33.936657, 51.293251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.830853, 34.323967, 51.249409>,  <47.776962, 34.556355, 51.223103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.830853, 34.323967, 51.249409>,  <47.920673, 33.936657, 51.293251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830853, 34.323967, 51.249409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910214, -0.248577, -0.331238,
		-0.347977, 0.025388, 0.937159,
		-0.224547, 0.968279, -0.109607,
		47.763489, 34.614452, 51.216526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.307652, 33.899643, 51.583256>,  <47.920673, 33.936657, 51.293251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.307652, 33.899643, 51.583256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.307014, 34.239189, 51.371815>,  <47.306633, 34.442917, 51.244949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.307014, 34.239189, 51.371815>,  <47.307652, 33.899643, 51.583256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.307014, 34.239189, 51.371815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961542, -0.146480, -0.232336,
		-0.274652, 0.507904, 0.816456,
		-0.001590, 0.848868, -0.528602,
		47.306538, 34.493851, 51.213234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772408, 34.280972, 51.947422>,  <47.307652, 33.899643, 51.583256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772408, 34.280972, 51.947422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.833748, 34.414032, 51.575222>,  <46.870552, 34.493870, 51.351902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.833748, 34.414032, 51.575222>,  <46.772408, 34.280972, 51.947422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833748, 34.414032, 51.575222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980187, -0.068258, -0.185942,
		-0.125368, 0.940577, 0.315592,
		0.153351, 0.332650, -0.930498,
		46.879753, 34.513828, 51.296074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376812, 34.798401, 51.846622>,  <46.772408, 34.280972, 51.947422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376812, 34.798401, 51.846622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.460461, 34.774502, 51.456196>,  <46.510651, 34.760162, 51.221939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.460461, 34.774502, 51.456196>,  <46.376812, 34.798401, 51.846622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460461, 34.774502, 51.456196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974531, 0.069915, -0.213077,
		0.080973, 0.995762, -0.043606,
		0.209125, -0.059749, -0.976062,
		46.523197, 34.756577, 51.163376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025238, 35.454891, 51.484802>,  <46.376812, 34.798401, 51.846622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025238, 35.454891, 51.484802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.092487, 35.170464, 51.211708>,  <46.132835, 34.999809, 51.047852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.092487, 35.170464, 51.211708>,  <46.025238, 35.454891, 51.484802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092487, 35.170464, 51.211708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933155, 0.108443, -0.342729,
		0.317740, 0.694713, -0.645302,
		0.168119, -0.711065, -0.682731,
		46.142921, 34.957146, 51.006889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900799, 35.786190, 50.853710>,  <46.025238, 35.454891, 51.484802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900799, 35.786190, 50.853710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.837601, 35.391411, 50.841286>,  <45.799683, 35.154541, 50.833832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.837601, 35.391411, 50.841286>,  <45.900799, 35.786190, 50.853710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837601, 35.391411, 50.841286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948400, 0.160429, -0.273494,
		0.274909, -0.013752, -0.961372,
		-0.157993, -0.986952, -0.031061,
		45.790203, 35.095325, 50.831966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550564, 35.602581, 50.274212>,  <45.900799, 35.786190, 50.853710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550564, 35.602581, 50.274212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.483719, 35.278721, 50.499260>,  <45.443611, 35.084404, 50.634289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.483719, 35.278721, 50.499260>,  <45.550564, 35.602581, 50.274212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483719, 35.278721, 50.499260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980589, 0.077123, -0.180271,
		0.102566, -0.581824, -0.806821,
		-0.167111, -0.809650, 0.562620,
		45.433586, 35.035828, 50.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186337, 35.207886, 49.819134>,  <45.550564, 35.602581, 50.274212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186337, 35.207886, 49.819134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.111534, 35.079361, 50.190464>,  <45.066654, 35.002247, 50.413261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.111534, 35.079361, 50.190464>,  <45.186337, 35.207886, 49.819134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111534, 35.079361, 50.190464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975526, -0.050525, -0.214001,
		0.115666, -0.945623, -0.304005,
		-0.187004, -0.321318, 0.928323,
		45.055431, 34.982967, 50.468960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681656, 34.677544, 49.726204>,  <45.186337, 35.207886, 49.819134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681656, 34.677544, 49.726204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.644196, 34.753784, 50.117081>,  <44.621719, 34.799530, 50.351604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.644196, 34.753784, 50.117081>,  <44.681656, 34.677544, 49.726204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644196, 34.753784, 50.117081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988116, 0.102361, -0.114667,
		-0.121882, -0.976315, 0.178753,
		-0.093654, 0.190605, 0.977189,
		44.616100, 34.810966, 50.410236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110638, 34.222565, 49.969070>,  <44.681656, 34.677544, 49.726204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110638, 34.222565, 49.969070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.133850, 34.509556, 50.246735>,  <44.147778, 34.681751, 50.413330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.133850, 34.509556, 50.246735>,  <44.110638, 34.222565, 49.969070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133850, 34.509556, 50.246735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998012, 0.024576, 0.058030,
		0.024576, -0.696144, 0.717482,
		-0.058030, -0.717482, -0.694156,
		44.151260, 34.724800, 50.454983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567753, 34.017147, 50.369587>,  <44.110638, 34.222565, 49.969070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567753, 34.017147, 50.369587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.661282, 34.389584, 50.481583>,  <43.717400, 34.613045, 50.548779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.661282, 34.389584, 50.481583>,  <43.567753, 34.017147, 50.369587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661282, 34.389584, 50.481583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947969, 0.154319, 0.278459,
		0.216064, -0.330530, 0.918731,
		0.233817, 0.931093, 0.279990,
		43.731426, 34.668911, 50.565578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319958, 34.044041, 51.027878>,  <43.567753, 34.017147, 50.369587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319958, 34.044041, 51.027878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.365643, 34.422455, 50.906563>,  <43.393051, 34.649502, 50.833775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.365643, 34.422455, 50.906563>,  <43.319958, 34.044041, 51.027878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365643, 34.422455, 50.906563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954730, 0.188924, 0.229779,
		0.274675, 0.263311, 0.924781,
		0.114210, 0.946031, -0.303284,
		43.399906, 34.706264, 50.815578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195950, 34.475796, 51.578297>,  <43.319958, 34.044041, 51.027878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195950, 34.475796, 51.578297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.123299, 34.681160, 51.242817>,  <43.079708, 34.804379, 51.041527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.123299, 34.681160, 51.242817>,  <43.195950, 34.475796, 51.578297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123299, 34.681160, 51.242817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915495, 0.223087, 0.334817,
		0.359002, 0.828640, 0.429505,
		-0.181625, 0.513409, -0.838704,
		43.068810, 34.835182, 50.991207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783131, 35.023712, 51.748821>,  <43.195950, 34.475796, 51.578297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783131, 35.023712, 51.748821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.693432, 34.992500, 51.360260>,  <42.639614, 34.973774, 51.127125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.693432, 34.992500, 51.360260>,  <42.783131, 35.023712, 51.748821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693432, 34.992500, 51.360260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958398, 0.198290, 0.205316,
		0.176599, 0.977033, -0.119247,
		-0.224246, -0.078028, -0.971404,
		42.626160, 34.969093, 51.068840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329647, 35.565739, 51.732372>,  <42.783131, 35.023712, 51.748821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329647, 35.565739, 51.732372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.291000, 35.354916, 51.394642>,  <42.267815, 35.228424, 51.192005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.291000, 35.354916, 51.394642>,  <42.329647, 35.565739, 51.732372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291000, 35.354916, 51.394642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959631, 0.274452, -0.061514,
		0.264147, 0.804295, -0.532294,
		-0.096613, -0.527054, -0.844322,
		42.262016, 35.196800, 51.141346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895027, 35.958824, 51.195370>,  <42.329647, 35.565739, 51.732372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895027, 35.958824, 51.195370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818726, 35.580296, 51.091000>,  <41.772945, 35.353176, 51.028378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818726, 35.580296, 51.091000>,  <41.895027, 35.958824, 51.195370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818726, 35.580296, 51.091000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934129, 0.256684, -0.248023,
		0.301686, 0.196427, -0.932953,
		-0.190756, -0.946324, -0.260926,
		41.761497, 35.296398, 51.012722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558826, 36.021744, 50.587791>,  <41.895027, 35.958824, 51.195370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558826, 36.021744, 50.587791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468857, 35.648006, 50.698360>,  <41.414875, 35.423763, 50.764702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468857, 35.648006, 50.698360>,  <41.558826, 36.021744, 50.587791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468857, 35.648006, 50.698360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939054, 0.132168, -0.317348,
		0.259980, -0.330949, -0.907129,
		-0.224920, -0.934347, 0.276418,
		41.401382, 35.367702, 50.781284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164059, 35.665295, 49.979572>,  <41.558826, 36.021744, 50.587791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164059, 35.665295, 49.979572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.065933, 35.473789, 50.316765>,  <41.007057, 35.358887, 50.519081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.065933, 35.473789, 50.316765>,  <41.164059, 35.665295, 49.979572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065933, 35.473789, 50.316765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969394, 0.112348, -0.218296,
		0.009804, -0.870729, -0.491666,
		-0.245314, -0.478758, 0.842978,
		40.992340, 35.330162, 50.569656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626007, 35.295197, 49.766750>,  <41.164059, 35.665295, 49.979572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626007, 35.295197, 49.766750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628136, 35.353294, 50.162502>,  <40.629414, 35.388153, 50.399952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628136, 35.353294, 50.162502>,  <40.626007, 35.295197, 49.766750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628136, 35.353294, 50.162502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952000, 0.303548, -0.039438,
		-0.306053, -0.941680, 0.139894,
		0.005326, 0.145249, 0.989380,
		40.629734, 35.396870, 50.459316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975060, 35.375725, 49.479549>,  <40.626007, 35.295197, 49.766750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975060, 35.375725, 49.479549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814060, 35.593670, 49.773792>,  <39.717461, 35.724438, 49.950336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814060, 35.593670, 49.773792>,  <39.975060, 35.375725, 49.479549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814060, 35.593670, 49.773792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692879, -0.343830, 0.633798,
		0.598256, 0.764791, -0.239132,
		-0.402502, 0.544864, 0.735606,
		39.693310, 35.757130, 49.994473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541698, 34.804359, 49.381458>,  <39.975060, 35.375725, 49.479549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541698, 34.804359, 49.381458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483845, 34.480293, 49.608688>,  <39.449135, 34.285854, 49.745026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483845, 34.480293, 49.608688>,  <39.541698, 34.804359, 49.381458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483845, 34.480293, 49.608688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957100, 0.031136, 0.288081,
		-0.251081, 0.585374, 0.770906,
		-0.144632, -0.810165, 0.568079,
		39.440456, 34.237244, 49.779114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496853, 34.334240, 48.740456>,  <39.541698, 34.804359, 49.381458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496853, 34.334240, 48.740456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704247, 34.014034, 48.620220>,  <39.828682, 33.821911, 48.548077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704247, 34.014034, 48.620220>,  <39.496853, 34.334240, 48.740456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704247, 34.014034, 48.620220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843603, -0.421445, -0.332743,
		0.139682, 0.426100, -0.893828,
		0.518481, -0.800514, -0.300591,
		39.859791, 33.773880, 48.530045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516388, 34.295101, 47.961277>,  <39.496853, 34.334240, 48.740456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516388, 34.295101, 47.961277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526077, 33.939419, 48.144028>,  <39.531891, 33.726009, 48.253677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526077, 33.939419, 48.144028>,  <39.516388, 34.295101, 47.961277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526077, 33.939419, 48.144028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930907, -0.186668, -0.313954,
		0.364453, -0.417702, -0.832286,
		0.024222, -0.889202, 0.456873,
		39.533344, 33.672657, 48.281090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352280, 33.853195, 47.409744>,  <39.516388, 34.295101, 47.961277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352280, 33.853195, 47.409744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285358, 33.649158, 47.747219>,  <39.245205, 33.526737, 47.949703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285358, 33.649158, 47.747219>,  <39.352280, 33.853195, 47.409744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285358, 33.649158, 47.747219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899734, -0.270887, -0.342198,
		0.403098, -0.816349, -0.413627,
		-0.167307, -0.510093, 0.843690,
		39.235165, 33.496132, 48.000328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919083, 33.378918, 47.168022>,  <39.352280, 33.853195, 47.409744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919083, 33.378918, 47.168022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896690, 33.344452, 47.565907>,  <38.883255, 33.323772, 47.804638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896690, 33.344452, 47.565907>,  <38.919083, 33.378918, 47.168022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896690, 33.344452, 47.565907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817670, -0.567762, -0.095198,
		0.572960, -0.818671, -0.038676,
		-0.055977, -0.086169, 0.994706,
		38.879898, 33.318600, 47.864319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688763, 32.716129, 47.203644>,  <38.919083, 33.378918, 47.168022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688763, 32.716129, 47.203644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625053, 32.900558, 47.552826>,  <38.586826, 33.011215, 47.762333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625053, 32.900558, 47.552826>,  <38.688763, 32.716129, 47.203644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625053, 32.900558, 47.552826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929593, -0.367762, 0.024634,
		0.332397, -0.807567, 0.487184,
		-0.159274, 0.461071, 0.872952,
		38.577271, 33.038879, 47.814713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517563, 32.217030, 47.741638>,  <38.688763, 32.716129, 47.203644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517563, 32.217030, 47.741638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357990, 32.573021, 47.829998>,  <38.262245, 32.786613, 47.883015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357990, 32.573021, 47.829998>,  <38.517563, 32.217030, 47.741638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357990, 32.573021, 47.829998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889537, -0.434092, 0.142436,
		0.222656, -0.139678, 0.964839,
		-0.398934, 0.889974, 0.220902,
		38.238312, 32.840012, 47.896267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925919, 32.090710, 48.155346>,  <38.517563, 32.217030, 47.741638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925919, 32.090710, 48.155346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839191, 32.475163, 48.086983>,  <37.787155, 32.705833, 48.045967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839191, 32.475163, 48.086983>,  <37.925919, 32.090710, 48.155346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839191, 32.475163, 48.086983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966941, -0.235510, -0.097777,
		-0.134227, 0.144056, 0.980424,
		-0.216814, 0.961136, -0.170905,
		37.774147, 32.763504, 48.035709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286739, 32.179085, 48.466373>,  <37.925919, 32.090710, 48.155346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286739, 32.179085, 48.466373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269966, 32.505577, 48.235897>,  <37.259903, 32.701473, 48.097610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269966, 32.505577, 48.235897>,  <37.286739, 32.179085, 48.466373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269966, 32.505577, 48.235897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964374, -0.183834, -0.190234,
		-0.261200, 0.547691, 0.794864,
		-0.041934, 0.816235, -0.576196,
		37.257385, 32.750446, 48.063038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735020, 32.457188, 48.675484>,  <37.286739, 32.179085, 48.466373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735020, 32.457188, 48.675484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.781704, 32.624096, 48.314980>,  <36.809715, 32.724239, 48.098679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.781704, 32.624096, 48.314980>,  <36.735020, 32.457188, 48.675484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781704, 32.624096, 48.314980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993030, 0.064037, -0.098944,
		0.016427, 0.906524, 0.421834,
		0.116709, 0.417269, -0.901258,
		36.816715, 32.749275, 48.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193810, 32.904209, 48.554314>,  <36.735020, 32.457188, 48.675484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193810, 32.904209, 48.554314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298023, 32.826706, 48.175983>,  <36.360550, 32.780205, 47.948986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298023, 32.826706, 48.175983>,  <36.193810, 32.904209, 48.554314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298023, 32.826706, 48.175983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960573, 0.046470, -0.274116,
		0.097063, 0.979949, -0.174010,
		0.260533, -0.193756, -0.945823,
		36.376183, 32.768578, 47.892235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646839, 33.236000, 48.080318>,  <36.193810, 32.904209, 48.554314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646839, 33.236000, 48.080318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851234, 32.961544, 47.873203>,  <35.973873, 32.796871, 47.748936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851234, 32.961544, 47.873203>,  <35.646839, 33.236000, 48.080318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851234, 32.961544, 47.873203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852382, -0.326644, -0.408348,
		0.111051, 0.650014, -0.751764,
		0.510992, -0.686138, -0.517786,
		36.004532, 32.755703, 47.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537228, 33.315277, 47.409492>,  <35.646839, 33.236000, 48.080318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537228, 33.315277, 47.409492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638268, 32.932949, 47.469616>,  <35.698891, 32.703552, 47.505692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638268, 32.932949, 47.469616>,  <35.537228, 33.315277, 47.409492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638268, 32.932949, 47.469616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874166, -0.292040, -0.388004,
		0.414760, -0.033387, -0.909318,
		0.252603, -0.955823, 0.150312,
		35.714050, 32.646202, 47.514709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.056782, 32.203468, 52.179886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.408297, 32.378277, 52.256557>,  <30.619205, 32.483162, 52.302563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.408297, 32.378277, 52.256557>,  <30.056782, 32.203468, 52.179886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408297, 32.378277, 52.256557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381040, -0.400772, -0.833181,
		-0.287299, 0.805228, -0.518717,
		0.878787, 0.437025, 0.191683,
		30.671932, 32.509384, 52.314064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307222, 32.247055, 51.579021>,  <30.056782, 32.203468, 52.179886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307222, 32.247055, 51.579021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.642368, 32.337685, 51.777676>,  <30.843456, 32.392063, 51.896866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.642368, 32.337685, 51.777676>,  <30.307222, 32.247055, 51.579021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642368, 32.337685, 51.777676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545572, -0.378052, -0.747949,
		0.018284, 0.897630, -0.440371,
		0.837865, 0.226578, 0.496634,
		30.893728, 32.405659, 51.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719957, 32.725693, 51.201714>,  <30.307222, 32.247055, 51.579021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719957, 32.725693, 51.201714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948929, 32.493881, 51.433739>,  <31.086311, 32.354794, 51.572952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948929, 32.493881, 51.433739>,  <30.719957, 32.725693, 51.201714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948929, 32.493881, 51.433739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504303, -0.308975, -0.806358,
		0.646533, 0.754108, 0.115393,
		0.572428, -0.579530, 0.580061,
		31.120657, 32.320023, 51.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341543, 32.656643, 50.778057>,  <30.719957, 32.725693, 51.201714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341543, 32.656643, 50.778057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422686, 32.404465, 51.077763>,  <31.471371, 32.253159, 51.257584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422686, 32.404465, 51.077763>,  <31.341543, 32.656643, 50.778057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422686, 32.404465, 51.077763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639555, -0.494116, -0.588914,
		0.741498, 0.598657, 0.302969,
		0.202855, -0.630444, 0.749260,
		31.483541, 32.215332, 51.302540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091503, 32.737274, 51.071865>,  <31.341543, 32.656643, 50.778057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091503, 32.737274, 51.071865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935858, 32.370049, 51.102173>,  <31.842470, 32.149712, 51.120358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935858, 32.370049, 51.102173>,  <32.091503, 32.737274, 51.071865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935858, 32.370049, 51.102173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701239, -0.348545, -0.621916,
		0.597370, -0.188865, 0.779409,
		-0.389118, -0.918067, 0.075771,
		31.819122, 32.094627, 51.124905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680733, 32.393337, 50.972038>,  <32.091503, 32.737274, 51.071865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680733, 32.393337, 50.972038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381416, 32.135662, 50.908688>,  <32.201828, 31.981056, 50.870678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381416, 32.135662, 50.908688>,  <32.680733, 32.393337, 50.972038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381416, 32.135662, 50.908688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524983, -0.429113, -0.735020,
		0.405533, -0.633151, 0.659290,
		-0.748289, -0.644191, -0.158374,
		32.156929, 31.942406, 50.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954693, 31.787865, 50.978630>,  <32.680733, 32.393337, 50.972038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954693, 31.787865, 50.978630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618748, 31.760098, 50.763290>,  <32.417183, 31.743437, 50.634087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618748, 31.760098, 50.763290>,  <32.954693, 31.787865, 50.978630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618748, 31.760098, 50.763290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520231, -0.385973, -0.761830,
		-0.154900, -0.919894, 0.360278,
		-0.839861, -0.069420, -0.538345,
		32.366791, 31.739271, 50.601788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088428, 31.115902, 50.673733>,  <32.954693, 31.787865, 50.978630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088428, 31.115902, 50.673733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785362, 31.273016, 50.465248>,  <32.603523, 31.367285, 50.340157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785362, 31.273016, 50.465248>,  <33.088428, 31.115902, 50.673733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785362, 31.273016, 50.465248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385426, -0.375185, -0.843020,
		-0.526676, -0.839617, 0.132875,
		-0.757667, 0.392785, -0.521211,
		32.558064, 31.390852, 50.308884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792629, 30.491091, 50.305855>,  <33.088428, 31.115902, 50.673733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792629, 30.491091, 50.305855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673298, 30.814104, 50.102329>,  <32.601700, 31.007912, 49.980213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.673298, 30.814104, 50.102329>,  <32.792629, 30.491091, 50.305855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673298, 30.814104, 50.102329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521959, -0.308281, -0.795313,
		-0.799098, -0.502844, -0.329530,
		-0.298330, 0.807534, -0.508811,
		32.583797, 31.056364, 49.949684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586391, 30.313894, 49.679253>,  <32.792629, 30.491091, 50.305855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586391, 30.313894, 49.679253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607903, 30.702795, 49.588181>,  <32.620811, 30.936134, 49.533539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607903, 30.702795, 49.588181>,  <32.586391, 30.313894, 49.679253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607903, 30.702795, 49.588181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363625, -0.231420, -0.902342,
		-0.929992, -0.034259, -0.365981,
		0.053782, 0.972251, -0.227676,
		32.624039, 30.994471, 49.519878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241291, 30.406977, 49.081482>,  <32.586391, 30.313894, 49.679253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241291, 30.406977, 49.081482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497498, 30.712612, 49.112221>,  <32.651222, 30.895994, 49.130665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497498, 30.712612, 49.112221>,  <32.241291, 30.406977, 49.081482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497498, 30.712612, 49.112221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369212, -0.218657, -0.903256,
		-0.673367, 0.606922, -0.422165,
		0.640515, 0.764091, 0.076847,
		32.689651, 30.941839, 49.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268112, 30.567528, 48.507469>,  <32.241291, 30.406977, 49.081482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268112, 30.567528, 48.507469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580688, 30.765671, 48.659241>,  <32.768234, 30.884558, 48.750305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580688, 30.765671, 48.659241>,  <32.268112, 30.567528, 48.507469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580688, 30.765671, 48.659241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412718, 0.045740, -0.909709,
		-0.467988, 0.867483, -0.168701,
		0.781441, 0.495359, 0.379432,
		32.815121, 30.914278, 48.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428524, 31.249176, 48.152798>,  <32.268112, 30.567528, 48.507469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428524, 31.249176, 48.152798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760742, 31.117010, 48.332138>,  <32.960075, 31.037710, 48.439743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760742, 31.117010, 48.332138>,  <32.428524, 31.249176, 48.152798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760742, 31.117010, 48.332138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478747, 0.012198, -0.877868,
		0.284590, 0.943758, 0.168315,
		0.830548, -0.330413, 0.448350,
		33.009907, 31.017885, 48.466644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077278, 31.671774, 47.783005>,  <32.428524, 31.249176, 48.152798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077278, 31.671774, 47.783005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318680, 31.814198, 47.497627>,  <32.463520, 31.899652, 47.326401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318680, 31.814198, 47.497627>,  <32.077278, 31.671774, 47.783005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318680, 31.814198, 47.497627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415150, 0.904229, 0.100098,
		0.680756, 0.235776, 0.693528,
		0.603508, 0.356060, -0.713442,
		32.499733, 31.921015, 47.283596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275204, 32.312050, 47.971786>,  <32.077278, 31.671774, 47.783005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275204, 32.312050, 47.971786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330288, 32.327160, 47.575886>,  <32.363338, 32.336227, 47.338345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330288, 32.327160, 47.575886>,  <32.275204, 32.312050, 47.971786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330288, 32.327160, 47.575886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419985, 0.907218, -0.023813,
		0.897021, 0.418960, 0.140802,
		0.137715, 0.037775, -0.989751,
		32.371601, 32.338493, 47.278961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700626, 32.864132, 47.959496>,  <32.275204, 32.312050, 47.971786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700626, 32.864132, 47.959496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583832, 32.835400, 47.578007>,  <32.513756, 32.818161, 47.349113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583832, 32.835400, 47.578007>,  <32.700626, 32.864132, 47.959496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583832, 32.835400, 47.578007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362392, 0.931132, 0.040815,
		0.885108, 0.357539, -0.297909,
		-0.291986, -0.071834, -0.953721,
		32.496235, 32.813850, 47.291889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878799, 33.542957, 47.613708>,  <32.700626, 32.864132, 47.959496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878799, 33.542957, 47.613708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618206, 33.364143, 47.368523>,  <32.461849, 33.256855, 47.221409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618206, 33.364143, 47.368523>,  <32.878799, 33.542957, 47.613708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618206, 33.364143, 47.368523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475195, 0.870278, -0.129635,
		0.591405, 0.206825, -0.779400,
		-0.651483, -0.447034, -0.612969,
		32.422760, 33.230034, 47.184631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915733, 33.933685, 47.122952>,  <32.878799, 33.542957, 47.613708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915733, 33.933685, 47.122952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563576, 33.744900, 47.104408>,  <32.352280, 33.631626, 47.093285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563576, 33.744900, 47.104408>,  <32.915733, 33.933685, 47.122952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563576, 33.744900, 47.104408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469324, 0.881138, -0.057715,
		0.068086, -0.029057, -0.997256,
		-0.880397, -0.471965, -0.046356,
		32.299458, 33.603310, 47.090500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533733, 34.013840, 46.476929>,  <32.915733, 33.933685, 47.122952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533733, 34.013840, 46.476929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262650, 33.934074, 46.760040>,  <32.099998, 33.886215, 46.929909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262650, 33.934074, 46.760040>,  <32.533733, 34.013840, 46.476929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262650, 33.934074, 46.760040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342670, 0.937271, -0.064037,
		-0.650609, -0.285932, -0.703527,
		-0.677706, -0.199414, 0.707777,
		32.059338, 33.874249, 46.972374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980471, 34.466976, 46.210873>,  <32.533733, 34.013840, 46.476929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980471, 34.466976, 46.210873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815523, 34.315479, 46.542294>,  <31.716555, 34.224579, 46.741146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815523, 34.315479, 46.542294>,  <31.980471, 34.466976, 46.210873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815523, 34.315479, 46.542294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580120, 0.810420, 0.081733,
		-0.702433, -0.446957, -0.553910,
		-0.412369, -0.378746, 0.828555,
		31.691813, 34.201855, 46.790859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171598, 34.509941, 46.151928>,  <31.980471, 34.466976, 46.210873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171598, 34.509941, 46.151928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289169, 34.499413, 46.534115>,  <31.359713, 34.493095, 46.763428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289169, 34.499413, 46.534115>,  <31.171598, 34.509941, 46.151928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289169, 34.499413, 46.534115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566572, 0.800280, 0.196337,
		-0.769806, -0.599049, 0.220315,
		0.293929, -0.026318, 0.955465,
		31.377348, 34.491516, 46.820755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506466, 34.613094, 46.552834>,  <31.171598, 34.509941, 46.151928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506466, 34.613094, 46.552834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.811880, 34.709164, 46.792610>,  <30.995129, 34.766804, 46.936478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.811880, 34.709164, 46.792610>,  <30.506466, 34.613094, 46.552834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811880, 34.709164, 46.792610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526850, 0.768456, 0.363185,
		-0.373419, -0.593121, 0.713278,
		0.763536, 0.240171, 0.599442,
		31.040941, 34.781216, 46.972443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247679, 34.685036, 47.206703>,  <30.506466, 34.613094, 46.552834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247679, 34.685036, 47.206703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585163, 34.898788, 47.186371>,  <30.787653, 35.027042, 47.174171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585163, 34.898788, 47.186371>,  <30.247679, 34.685036, 47.206703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585163, 34.898788, 47.186371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479896, 0.793319, 0.374626,
		0.240522, -0.291681, 0.925781,
		0.843711, 0.534385, -0.050834,
		30.838276, 35.059105, 47.171120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158236, 35.083054, 47.790775>,  <30.247679, 34.685036, 47.206703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158236, 35.083054, 47.790775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434439, 35.264545, 47.565449>,  <30.600161, 35.373440, 47.430252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434439, 35.264545, 47.565449>,  <30.158236, 35.083054, 47.790775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434439, 35.264545, 47.565449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359109, 0.891075, 0.277536,
		0.627887, 0.010653, 0.778232,
		0.690507, 0.453731, -0.563320,
		30.641590, 35.400665, 47.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534710, 35.527676, 48.266876>,  <30.158236, 35.083054, 47.790775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534710, 35.527676, 48.266876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 35.662655, 47.893589>,  <30.613674, 35.743645, 47.669617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 35.662655, 47.893589>,  <30.534710, 35.527676, 48.266876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584063, 35.662655, 47.893589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223145, 0.925759, 0.305249,
		0.966946, 0.170582, 0.189521,
		0.123381, 0.337450, -0.933223,
		30.621077, 35.763889, 47.613621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926977, 36.021210, 48.383297>,  <30.534710, 35.527676, 48.266876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926977, 36.021210, 48.383297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767134, 36.106846, 48.026764>,  <30.671227, 36.158230, 47.812843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767134, 36.106846, 48.026764>,  <30.926977, 36.021210, 48.383297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767134, 36.106846, 48.026764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123204, 0.950978, 0.283656,
		0.908368, 0.223168, -0.353643,
		-0.399610, 0.214094, -0.891334,
		30.647251, 36.171074, 47.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259178, 36.586830, 48.084335>,  <30.926977, 36.021210, 48.383297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259178, 36.586830, 48.084335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902449, 36.583187, 47.903419>,  <30.688410, 36.581001, 47.794868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902449, 36.583187, 47.903419>,  <31.259178, 36.586830, 48.084335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902449, 36.583187, 47.903419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229523, 0.870667, 0.435039,
		0.389831, 0.491789, -0.778573,
		-0.891825, -0.009108, -0.452290,
		30.634901, 36.580456, 47.767731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203369, 37.348759, 47.856144>,  <31.259178, 36.586830, 48.084335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203369, 37.348759, 47.856144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.837297, 37.189587, 47.830540>,  <30.617655, 37.094086, 47.815178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.837297, 37.189587, 47.830540>,  <31.203369, 37.348759, 47.856144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837297, 37.189587, 47.830540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369284, 0.764253, 0.528722,
		-0.161471, 0.507515, -0.846378,
		-0.915181, -0.397927, -0.064012,
		30.562742, 37.070210, 47.811337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860664, 37.854671, 47.771564>,  <31.203369, 37.348759, 47.856144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860664, 37.854671, 47.771564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.077312, 38.141285, 47.947395>,  <32.207302, 38.313251, 48.052895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.077312, 38.141285, 47.947395>,  <31.860664, 37.854671, 47.771564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077312, 38.141285, 47.947395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840474, -0.451730, -0.299238,
		-0.015842, 0.531529, -0.846892,
		0.541620, 0.716531, 0.439580,
		32.239799, 38.356243, 48.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396477, 37.953434, 47.335995>,  <31.860664, 37.854671, 47.771564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396477, 37.953434, 47.335995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531406, 38.121807, 47.672810>,  <32.612366, 38.222832, 47.874901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531406, 38.121807, 47.672810>,  <32.396477, 37.953434, 47.335995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531406, 38.121807, 47.672810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919103, -0.340731, -0.197868,
		0.203620, 0.840667, -0.501814,
		0.337324, 0.420929, 0.842040,
		32.632603, 38.248085, 47.925423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066364, 38.351994, 47.083908>,  <32.396477, 37.953434, 47.335995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066364, 38.351994, 47.083908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095272, 38.259998, 47.472111>,  <33.112617, 38.204800, 47.705032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095272, 38.259998, 47.472111>,  <33.066364, 38.351994, 47.083908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095272, 38.259998, 47.472111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992562, -0.078998, -0.092631,
		0.097973, 0.969981, 0.222572,
		0.072267, -0.229991, 0.970506,
		33.116951, 38.191002, 47.763264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760040, 38.696892, 47.365452>,  <33.066364, 38.351994, 47.083908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760040, 38.696892, 47.365452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647141, 38.393925, 47.600960>,  <33.579403, 38.212143, 47.742264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647141, 38.393925, 47.600960>,  <33.760040, 38.696892, 47.365452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647141, 38.393925, 47.600960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947213, -0.317307, 0.045879,
		0.152071, 0.570638, 0.806998,
		-0.282246, -0.757422, 0.588769,
		33.562466, 38.166698, 47.777592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289742, 38.665867, 47.935478>,  <33.760040, 38.696892, 47.365452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289742, 38.665867, 47.935478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071980, 38.330536, 47.947021>,  <33.941322, 38.129337, 47.953949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071980, 38.330536, 47.947021>,  <34.289742, 38.665867, 47.935478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071980, 38.330536, 47.947021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799762, -0.508364, 0.319290,
		-0.252999, 0.196902, 0.947217,
		-0.544400, -0.838329, 0.028859,
		33.908661, 38.079037, 47.955681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720901, 38.324432, 48.442486>,  <34.289742, 38.665867, 47.935478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720901, 38.324432, 48.442486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481205, 38.050507, 48.276623>,  <34.337387, 37.886150, 48.177105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481205, 38.050507, 48.276623>,  <34.720901, 38.324432, 48.442486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481205, 38.050507, 48.276623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619690, -0.724702, 0.301316,
		-0.506849, -0.076398, 0.858643,
		-0.599240, -0.684814, -0.414657,
		34.301434, 37.845062, 48.152225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635010, 37.727882, 48.940804>,  <34.720901, 38.324432, 48.442486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635010, 37.727882, 48.940804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574898, 37.602894, 48.565617>,  <34.538830, 37.527901, 48.340504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574898, 37.602894, 48.565617>,  <34.635010, 37.727882, 48.940804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574898, 37.602894, 48.565617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697854, -0.705558, 0.123241,
		-0.700297, -0.636040, 0.324094,
		-0.150281, -0.312475, -0.937963,
		34.529812, 37.509151, 48.284229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512249, 36.985764, 48.954746>,  <34.635010, 37.727882, 48.940804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512249, 36.985764, 48.954746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653202, 37.093285, 48.596180>,  <34.737774, 37.157799, 48.381039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653202, 37.093285, 48.596180>,  <34.512249, 36.985764, 48.954746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653202, 37.093285, 48.596180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772666, -0.624009, 0.116617,
		-0.528026, -0.733727, -0.427589,
		0.352385, 0.268807, -0.896419,
		34.758919, 37.173927, 48.327255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677616, 36.349579, 48.695454>,  <34.512249, 36.985764, 48.954746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677616, 36.349579, 48.695454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869682, 36.624840, 48.477867>,  <34.984921, 36.789997, 48.347317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869682, 36.624840, 48.477867>,  <34.677616, 36.349579, 48.695454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869682, 36.624840, 48.477867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849572, -0.519189, 0.093117,
		-0.218342, -0.506848, -0.833926,
		0.480161, 0.688148, -0.543964,
		35.013729, 36.831284, 48.314678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237625, 35.966583, 48.231750>,  <34.677616, 36.349579, 48.695454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237625, 35.966583, 48.231750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361656, 36.342278, 48.172852>,  <35.436073, 36.567696, 48.137512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361656, 36.342278, 48.172852>,  <35.237625, 35.966583, 48.231750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361656, 36.342278, 48.172852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934823, -0.329412, -0.132637,
		-0.173082, -0.096521, -0.980166,
		0.310077, 0.939240, -0.147246,
		35.454678, 36.624050, 48.128677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449268, 36.004070, 47.513157>,  <35.237625, 35.966583, 48.231750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449268, 36.004070, 47.513157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650105, 36.273899, 47.729622>,  <35.770607, 36.435795, 47.859501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650105, 36.273899, 47.729622>,  <35.449268, 36.004070, 47.513157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650105, 36.273899, 47.729622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864586, -0.377200, -0.331980,
		-0.019820, 0.634564, -0.772616,
		0.502093, 0.674573, 0.541159,
		35.800732, 36.476273, 47.891968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015652, 36.293694, 47.070698>,  <35.449268, 36.004070, 47.513157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015652, 36.293694, 47.070698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112175, 36.337261, 47.456425>,  <36.170090, 36.363403, 47.687859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112175, 36.337261, 47.456425>,  <36.015652, 36.293694, 47.070698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112175, 36.337261, 47.456425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888399, -0.424677, -0.174347,
		0.390533, 0.898769, -0.199245,
		0.241313, 0.108921, 0.964316,
		36.184570, 36.369938, 47.745720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.874884, 41.449738, 52.267860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894169, 41.720818, 51.974358>,  <29.905739, 41.883465, 51.798256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894169, 41.720818, 51.974358>,  <29.874884, 41.449738, 52.267860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894169, 41.720818, 51.974358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196973, -0.726634, -0.658183,
		-0.979223, -0.112797, -0.168522,
		0.048212, 0.677702, -0.733754,
		29.908632, 41.924129, 51.754230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723566, 41.035801, 51.759796>,  <29.874884, 41.449738, 52.267860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723566, 41.035801, 51.759796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830116, 41.364220, 51.557838>,  <29.894047, 41.561272, 51.436665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830116, 41.364220, 51.557838>,  <29.723566, 41.035801, 51.759796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830116, 41.364220, 51.557838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227295, -0.562559, -0.794899,
		-0.936687, 0.096979, -0.336471,
		0.266373, 0.821049, -0.504899,
		29.910028, 41.610535, 51.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369528, 40.997379, 51.108273>,  <29.723566, 41.035801, 51.759796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369528, 40.997379, 51.108273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678505, 41.246693, 51.059532>,  <29.863892, 41.396282, 51.030289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678505, 41.246693, 51.059532>,  <29.369528, 40.997379, 51.108273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678505, 41.246693, 51.059532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244792, -0.469246, -0.848460,
		-0.586008, 0.625561, -0.515042,
		0.772445, 0.623283, -0.121849,
		29.910238, 41.433678, 51.022976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332077, 41.117237, 50.356297>,  <29.369528, 40.997379, 51.108273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332077, 41.117237, 50.356297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696320, 41.226341, 50.480488>,  <29.914865, 41.291805, 50.555004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696320, 41.226341, 50.480488>,  <29.332077, 41.117237, 50.356297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696320, 41.226341, 50.480488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391997, -0.332088, -0.857937,
		-0.130906, 0.902950, -0.409323,
		0.910605, 0.272762, 0.310482,
		29.969501, 41.308170, 50.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632910, 41.470085, 49.733738>,  <29.332077, 41.117237, 50.356297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632910, 41.470085, 49.733738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936920, 41.373543, 49.975105>,  <30.119326, 41.315617, 50.119926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936920, 41.373543, 49.975105>,  <29.632910, 41.470085, 49.733738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936920, 41.373543, 49.975105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530796, -0.305204, -0.790636,
		0.374989, 0.921194, -0.103852,
		0.760025, -0.241356, 0.603414,
		30.164928, 41.301136, 50.156128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260349, 41.816418, 49.497173>,  <29.632910, 41.470085, 49.733738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260349, 41.816418, 49.497173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389616, 41.502697, 49.709000>,  <30.467176, 41.314465, 49.836094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389616, 41.502697, 49.709000>,  <30.260349, 41.816418, 49.497173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389616, 41.502697, 49.709000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396556, -0.395861, -0.828273,
		0.859248, 0.477673, 0.183089,
		0.323166, -0.784298, 0.529567,
		30.486567, 41.267406, 49.867870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045717, 41.605236, 49.201355>,  <30.260349, 41.816418, 49.497173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045717, 41.605236, 49.201355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906036, 41.281521, 49.390293>,  <30.822227, 41.087292, 49.503654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906036, 41.281521, 49.390293>,  <31.045717, 41.605236, 49.201355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906036, 41.281521, 49.390293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556552, -0.584662, -0.590271,
		0.753861, 0.056759, 0.654578,
		-0.349203, -0.809289, 0.472343,
		30.801275, 41.038734, 49.531998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653019, 41.265179, 49.249466>,  <31.045717, 41.605236, 49.201355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653019, 41.265179, 49.249466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359755, 41.006184, 49.332638>,  <31.183796, 40.850784, 49.382542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359755, 41.006184, 49.332638>,  <31.653019, 41.265179, 49.249466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359755, 41.006184, 49.332638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459769, -0.697219, -0.549999,
		0.501090, -0.307638, 0.808868,
		-0.733159, -0.647491, 0.207927,
		31.139807, 40.811935, 49.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995531, 40.730370, 49.243191>,  <31.653019, 41.265179, 49.249466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995531, 40.730370, 49.243191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640348, 40.551075, 49.201984>,  <31.427238, 40.443497, 49.177261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640348, 40.551075, 49.201984>,  <31.995531, 40.730370, 49.243191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640348, 40.551075, 49.201984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450736, -0.803567, -0.388738,
		0.091469, -0.391616, 0.915571,
		-0.887959, -0.448238, -0.103014,
		31.373960, 40.416603, 49.171082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020084, 40.003136, 49.612892>,  <31.995531, 40.730370, 49.243191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020084, 40.003136, 49.612892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.733328, 39.996410, 49.334099>,  <31.561274, 39.992374, 49.166824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.733328, 39.996410, 49.334099>,  <32.020084, 40.003136, 49.612892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733328, 39.996410, 49.334099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382962, -0.844877, -0.373526,
		-0.582584, -0.534696, 0.612125,
		-0.716893, -0.016810, -0.696980,
		31.518261, 39.991367, 49.125004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695326, 39.314270, 49.608944>,  <32.020084, 40.003136, 49.612892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695326, 39.314270, 49.608944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612526, 39.477539, 49.253292>,  <31.562845, 39.575500, 49.039902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612526, 39.477539, 49.253292>,  <31.695326, 39.314270, 49.608944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612526, 39.477539, 49.253292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424539, -0.781309, -0.457518,
		-0.881429, -0.472174, -0.011557,
		-0.206999, 0.408176, -0.889125,
		31.550426, 39.599991, 48.986553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667816, 38.704483, 49.249813>,  <31.695326, 39.314270, 49.608944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667816, 38.704483, 49.249813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.695265, 39.005142, 48.987419>,  <31.711733, 39.185535, 48.829983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.695265, 39.005142, 48.987419>,  <31.667816, 38.704483, 49.249813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695265, 39.005142, 48.987419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489995, -0.598156, -0.634125,
		-0.869020, -0.277916, -0.409349,
		0.068621, 0.751646, -0.655987,
		31.715851, 39.230637, 48.790623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380016, 38.452156, 48.735634>,  <31.667816, 38.704483, 49.249813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380016, 38.452156, 48.735634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617685, 38.749847, 48.613598>,  <31.760288, 38.928463, 48.540375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617685, 38.749847, 48.613598>,  <31.380016, 38.452156, 48.735634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617685, 38.749847, 48.613598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528039, -0.647047, -0.550004,
		-0.606738, 0.165697, -0.777440,
		0.594175, 0.744227, -0.305093,
		31.795938, 38.973114, 48.522068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359980, 38.285751, 48.023399>,  <31.380016, 38.452156, 48.735634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359980, 38.285751, 48.023399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673321, 38.514263, 48.121384>,  <31.861324, 38.651371, 48.180172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673321, 38.514263, 48.121384>,  <31.359980, 38.285751, 48.023399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673321, 38.514263, 48.121384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612126, -0.640537, -0.463696,
		-0.107993, 0.513182, -0.851458,
		0.783352, 0.571275, 0.244959,
		31.908327, 38.685646, 48.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638168, 37.974335, 47.745941>,  <31.359980, 38.285751, 48.023399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638168, 37.974335, 47.745941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417027, 37.664013, 47.867588>,  <30.284342, 37.477821, 47.940575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417027, 37.664013, 47.867588>,  <30.638168, 37.974335, 47.745941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417027, 37.664013, 47.867588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618805, 0.626661, 0.473684,
		-0.558060, 0.073692, -0.826522,
		-0.552855, -0.775800, 0.304114,
		30.251169, 37.431274, 47.958820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858999, 38.082153, 47.565510>,  <30.638168, 37.974335, 47.745941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858999, 38.082153, 47.565510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875841, 37.817844, 47.865269>,  <29.885946, 37.659260, 48.045124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875841, 37.817844, 47.865269>,  <29.858999, 38.082153, 47.565510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875841, 37.817844, 47.865269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748751, 0.475749, 0.461556,
		-0.661512, -0.580549, -0.474725,
		0.042106, -0.660776, 0.749401,
		29.888474, 37.619610, 48.090088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114651, 37.839775, 47.630348>,  <29.858999, 38.082153, 47.565510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114651, 37.839775, 47.630348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337931, 37.791676, 47.958725>,  <29.471899, 37.762817, 48.155750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337931, 37.791676, 47.958725>,  <29.114651, 37.839775, 47.630348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337931, 37.791676, 47.958725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745535, 0.361536, 0.559883,
		-0.364127, -0.924571, 0.112161,
		0.558202, -0.120248, 0.820946,
		29.505392, 37.755600, 48.205009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643896, 37.749069, 48.177315>,  <29.114651, 37.839775, 47.630348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643896, 37.749069, 48.177315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975449, 37.794601, 48.396404>,  <29.174379, 37.821922, 48.527859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975449, 37.794601, 48.396404>,  <28.643896, 37.749069, 48.177315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975449, 37.794601, 48.396404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525830, 0.492723, 0.693345,
		-0.190951, -0.862709, 0.468264,
		0.828879, 0.113832, 0.547724,
		29.224112, 37.828751, 48.560722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454136, 37.453098, 48.731667>,  <28.643896, 37.749069, 48.177315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454136, 37.453098, 48.731667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762465, 37.678497, 48.850529>,  <28.947462, 37.813736, 48.921848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762465, 37.678497, 48.850529>,  <28.454136, 37.453098, 48.731667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762465, 37.678497, 48.850529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553747, 0.362043, 0.749859,
		0.314960, -0.742559, 0.591106,
		0.770821, 0.563499, 0.297160,
		28.993710, 37.847549, 48.939674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587345, 37.338219, 49.481640>,  <28.454136, 37.453098, 48.731667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587345, 37.338219, 49.481640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740921, 37.696350, 49.391323>,  <28.833067, 37.911228, 49.337132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740921, 37.696350, 49.391323>,  <28.587345, 37.338219, 49.481640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740921, 37.696350, 49.391323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297216, 0.351356, 0.887813,
		0.874216, -0.273756, 0.401004,
		0.383939, 0.895325, -0.225796,
		28.856102, 37.964947, 49.323586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884975, 37.632683, 50.139614>,  <28.587345, 37.338219, 49.481640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884975, 37.632683, 50.139614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816366, 37.934517, 49.886257>,  <28.775200, 38.115616, 49.734241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816366, 37.934517, 49.886257>,  <28.884975, 37.632683, 50.139614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816366, 37.934517, 49.886257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549385, 0.460413, 0.697277,
		0.817775, 0.467575, 0.335584,
		-0.171522, 0.754581, -0.633393,
		28.764910, 38.160892, 49.696239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090977, 38.190041, 50.497807>,  <28.884975, 37.632683, 50.139614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090977, 38.190041, 50.497807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858107, 38.313786, 50.197044>,  <28.718386, 38.388035, 50.016586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858107, 38.313786, 50.197044>,  <29.090977, 38.190041, 50.497807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858107, 38.313786, 50.197044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518892, 0.570602, 0.636526,
		0.625960, 0.760728, -0.171662,
		-0.582173, 0.309366, -0.751909,
		28.683455, 38.406593, 49.971470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190928, 38.935711, 50.419704>,  <29.090977, 38.190041, 50.497807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190928, 38.935711, 50.419704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832981, 38.834423, 50.272686>,  <28.618214, 38.773651, 50.184475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832981, 38.834423, 50.272686>,  <29.190928, 38.935711, 50.419704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832981, 38.834423, 50.272686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431483, 0.701441, 0.567277,
		0.114166, 0.666228, -0.736957,
		-0.894868, -0.253221, -0.367547,
		28.564520, 38.758457, 50.162422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926857, 39.570480, 50.124748>,  <29.190928, 38.935711, 50.419704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926857, 39.570480, 50.124748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618784, 39.327168, 50.201500>,  <28.433941, 39.181179, 50.247551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618784, 39.327168, 50.201500>,  <28.926857, 39.570480, 50.124748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618784, 39.327168, 50.201500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461479, 0.739096, 0.490688,
		-0.440293, 0.289371, -0.849945,
		-0.770182, -0.608278, 0.191880,
		28.387730, 39.144684, 50.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430466, 40.045944, 50.384800>,  <28.926857, 39.570480, 50.124748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430466, 40.045944, 50.384800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230730, 39.706619, 50.455250>,  <28.110889, 39.503025, 50.497520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230730, 39.706619, 50.455250>,  <28.430466, 40.045944, 50.384800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230730, 39.706619, 50.455250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513786, 0.453613, 0.728189,
		-0.697629, 0.273119, -0.662359,
		-0.499337, -0.848317, 0.176129,
		28.080929, 39.452126, 50.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717505, 40.211773, 50.358864>,  <28.430466, 40.045944, 50.384800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717505, 40.211773, 50.358864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749573, 39.881096, 50.581631>,  <27.768814, 39.682690, 50.715290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749573, 39.881096, 50.581631>,  <27.717505, 40.211773, 50.358864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749573, 39.881096, 50.581631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591110, 0.410440, 0.694355,
		-0.802597, -0.384862, -0.455761,
		0.080169, -0.826693, 0.556913,
		27.773623, 39.633087, 50.748703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999567, 39.896694, 50.472473>,  <27.717505, 40.211773, 50.358864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999567, 39.896694, 50.472473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247492, 39.779488, 50.763672>,  <27.396246, 39.709164, 50.938389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247492, 39.779488, 50.763672>,  <26.999567, 39.896694, 50.472473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247492, 39.779488, 50.763672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662563, 0.301719, 0.685548,
		-0.420529, -0.907251, -0.007137,
		0.619811, -0.293022, 0.727993,
		27.433435, 39.691582, 50.982071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567692, 39.633465, 50.952515>,  <26.999567, 39.896694, 50.472473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567692, 39.633465, 50.952515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909168, 39.658951, 51.159264>,  <27.114054, 39.674244, 51.283314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909168, 39.658951, 51.159264>,  <26.567692, 39.633465, 50.952515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909168, 39.658951, 51.159264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503283, 0.356066, 0.787352,
		-0.133873, -0.932286, 0.336036,
		0.853689, 0.063716, 0.516872,
		27.165276, 39.678066, 51.314323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.686733, 40.118904, 56.204994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391182, 40.175095, 55.941383>,  <33.213852, 40.208809, 55.783215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391182, 40.175095, 55.941383>,  <33.686733, 40.118904, 56.204994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391182, 40.175095, 55.941383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356002, -0.749007, -0.558794,
		-0.572114, -0.647499, 0.503419,
		-0.738883, 0.140476, -0.659029,
		33.169518, 40.217236, 55.743675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170341, 39.564491, 56.086151>,  <33.686733, 40.118904, 56.204994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170341, 39.564491, 56.086151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161160, 39.784641, 55.752308>,  <33.155651, 39.916729, 55.552002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161160, 39.784641, 55.752308>,  <33.170341, 39.564491, 56.086151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161160, 39.784641, 55.752308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241265, -0.807099, -0.538871,
		-0.970188, -0.213730, -0.114260,
		-0.022954, 0.550373, -0.834603,
		33.154274, 39.949753, 55.501926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781399, 39.114635, 55.690495>,  <33.170341, 39.564491, 56.086151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781399, 39.114635, 55.690495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999966, 39.363075, 55.465759>,  <33.131104, 39.512138, 55.330917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999966, 39.363075, 55.465759>,  <32.781399, 39.114635, 55.690495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999966, 39.363075, 55.465759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352112, -0.779038, -0.518765,
		-0.759899, 0.085631, -0.644376,
		0.546416, 0.621101, -0.561839,
		33.163891, 39.549404, 55.297207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703358, 38.946636, 54.980476>,  <32.781399, 39.114635, 55.690495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703358, 38.946636, 54.980476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058636, 39.129711, 54.964367>,  <33.271805, 39.239555, 54.954700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058636, 39.129711, 54.964367>,  <32.703358, 38.946636, 54.980476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058636, 39.129711, 54.964367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348531, -0.728274, -0.590037,
		-0.299381, 0.510035, -0.806372,
		0.888199, 0.457691, -0.040269,
		33.325096, 39.267017, 54.952286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967010, 38.794788, 54.331734>,  <32.703358, 38.946636, 54.980476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967010, 38.794788, 54.331734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306538, 38.907387, 54.510738>,  <33.510254, 38.974945, 54.618141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306538, 38.907387, 54.510738>,  <32.967010, 38.794788, 54.331734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306538, 38.907387, 54.510738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520884, -0.590180, -0.616740,
		0.090500, 0.756601, -0.647583,
		0.848816, 0.281501, 0.447513,
		33.561184, 38.991837, 54.644993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268826, 38.920914, 53.797115>,  <32.967010, 38.794788, 54.331734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268826, 38.920914, 53.797115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540009, 38.852253, 54.083027>,  <33.702721, 38.811058, 54.254574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540009, 38.852253, 54.083027>,  <33.268826, 38.920914, 53.797115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540009, 38.852253, 54.083027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278324, -0.840025, -0.465719,
		0.680370, 0.514679, -0.521730,
		0.677962, -0.171651, 0.714775,
		33.743397, 38.800758, 54.297459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879757, 38.641438, 53.423965>,  <33.268826, 38.920914, 53.797115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879757, 38.641438, 53.423965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983761, 38.563690, 53.802303>,  <34.046165, 38.517040, 54.029305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983761, 38.563690, 53.802303>,  <33.879757, 38.641438, 53.423965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983761, 38.563690, 53.802303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401240, -0.869212, -0.288922,
		0.878294, 0.454633, -0.148017,
		0.260012, -0.194368, 0.945841,
		34.061764, 38.505379, 54.086056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571800, 38.538441, 53.396469>,  <33.879757, 38.641438, 53.423965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571800, 38.538441, 53.396469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429111, 38.358063, 53.723736>,  <34.343498, 38.249836, 53.920097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429111, 38.358063, 53.723736>,  <34.571800, 38.538441, 53.396469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429111, 38.358063, 53.723736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308442, -0.883524, -0.352490,
		0.881824, 0.126616, 0.454264,
		-0.356722, -0.450948, 0.818166,
		34.322094, 38.222778, 53.969185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141815, 38.182137, 53.710773>,  <34.571800, 38.538441, 53.396469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141815, 38.182137, 53.710773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822182, 37.985886, 53.849773>,  <34.630402, 37.868137, 53.933174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822182, 37.985886, 53.849773>,  <35.141815, 38.182137, 53.710773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822182, 37.985886, 53.849773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380570, -0.860220, -0.339393,
		0.465441, -0.138955, 0.874103,
		-0.799082, -0.490625, 0.347499,
		34.582458, 37.838699, 53.954021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462605, 37.585712, 53.913002>,  <35.141815, 38.182137, 53.710773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462605, 37.585712, 53.913002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072632, 37.496735, 53.915421>,  <34.838650, 37.443348, 53.916870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072632, 37.496735, 53.915421>,  <35.462605, 37.585712, 53.913002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072632, 37.496735, 53.915421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205378, -0.909939, -0.360320,
		0.085652, -0.350044, 0.932809,
		-0.974927, -0.222441, 0.006046,
		34.780155, 37.430004, 53.917236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407928, 36.961956, 54.216991>,  <35.462605, 37.585712, 53.913002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407928, 36.961956, 54.216991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072243, 36.998402, 54.002544>,  <34.870831, 37.020267, 53.873878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072243, 36.998402, 54.002544>,  <35.407928, 36.961956, 54.216991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072243, 36.998402, 54.002544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096853, -0.945060, -0.312218,
		-0.535107, -0.313942, 0.784284,
		-0.839214, 0.091110, -0.536114,
		34.820480, 37.025734, 53.841709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021111, 36.372852, 54.424469>,  <35.407928, 36.961956, 54.216991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021111, 36.372852, 54.424469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884216, 36.484676, 54.065643>,  <34.802082, 36.551769, 53.850349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884216, 36.484676, 54.065643>,  <35.021111, 36.372852, 54.424469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884216, 36.484676, 54.065643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180560, -0.917354, -0.354768,
		-0.922104, -0.283386, 0.263469,
		-0.342231, 0.279561, -0.897064,
		34.781548, 36.568546, 53.796524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535225, 35.865837, 54.179749>,  <35.021111, 36.372852, 54.424469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535225, 35.865837, 54.179749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673477, 36.057430, 53.856983>,  <34.756428, 36.172386, 53.663322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673477, 36.057430, 53.856983>,  <34.535225, 35.865837, 54.179749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673477, 36.057430, 53.856983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062400, -0.869743, -0.489545,
		-0.936293, 0.118850, -0.330498,
		0.345631, 0.478981, -0.806918,
		34.777168, 36.201126, 53.614906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372604, 35.381691, 53.622337>,  <34.535225, 35.865837, 54.179749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372604, 35.381691, 53.622337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643024, 35.627949, 53.460381>,  <34.805275, 35.775703, 53.363205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643024, 35.627949, 53.460381>,  <34.372604, 35.381691, 53.622337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643024, 35.627949, 53.460381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499746, -0.786882, -0.362038,
		-0.541489, 0.042412, -0.839638,
		0.676050, 0.615645, -0.404892,
		34.845840, 35.812641, 53.338913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744328, 35.178596, 53.161270>,  <34.372604, 35.381691, 53.622337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744328, 35.178596, 53.161270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506069, 34.879387, 53.278351>,  <33.363113, 34.699863, 53.348598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506069, 34.879387, 53.278351>,  <33.744328, 35.178596, 53.161270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506069, 34.879387, 53.278351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313360, 0.551916, 0.772783,
		-0.739603, 0.368584, -0.563146,
		-0.595645, -0.748020, 0.292699,
		33.327377, 34.654980, 53.366161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140423, 35.517849, 53.320427>,  <33.744328, 35.178596, 53.161270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140423, 35.517849, 53.320427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093903, 35.154427, 53.480927>,  <33.065990, 34.936371, 53.577225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093903, 35.154427, 53.480927>,  <33.140423, 35.517849, 53.320427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093903, 35.154427, 53.480927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387394, 0.413485, 0.823988,
		-0.914550, -0.059613, -0.400056,
		-0.116296, -0.908558, 0.401246,
		33.059013, 34.881859, 53.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488579, 35.460369, 53.556362>,  <33.140423, 35.517849, 53.320427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488579, 35.460369, 53.556362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685349, 35.196980, 53.784195>,  <32.803410, 35.038948, 53.920895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685349, 35.196980, 53.784195>,  <32.488579, 35.460369, 53.556362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685349, 35.196980, 53.784195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372161, 0.432399, 0.821296,
		-0.787088, -0.615992, -0.032350,
		0.491924, -0.658472, 0.569584,
		32.832924, 34.999439, 53.955070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072117, 35.074924, 54.003857>,  <32.488579, 35.460369, 53.556362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072117, 35.074924, 54.003857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423584, 35.039719, 54.191555>,  <32.634464, 35.018593, 54.304173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423584, 35.039719, 54.191555>,  <32.072117, 35.074924, 54.003857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423584, 35.039719, 54.191555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389627, 0.435806, 0.811335,
		-0.275910, -0.895727, 0.348637,
		0.878672, -0.088017, 0.469242,
		32.687187, 35.013313, 54.332329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930408, 34.804024, 54.654686>,  <32.072117, 35.074924, 54.003857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930408, 34.804024, 54.654686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275940, 34.996101, 54.715622>,  <32.483261, 35.111347, 54.752182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275940, 34.996101, 54.715622>,  <31.930408, 34.804024, 54.654686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275940, 34.996101, 54.715622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380677, 0.424121, 0.821709,
		0.329971, -0.767810, 0.549169,
		0.863831, 0.480196, 0.152340,
		32.535088, 35.140160, 54.761322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933569, 34.907928, 55.430664>,  <31.930408, 34.804024, 54.654686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933569, 34.907928, 55.430664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225307, 35.155815, 55.314732>,  <32.400349, 35.304546, 55.245171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225307, 35.155815, 55.314732>,  <31.933569, 34.907928, 55.430664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225307, 35.155815, 55.314732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222303, 0.615329, 0.756275,
		0.647027, -0.487150, 0.586550,
		0.729340, 0.619722, -0.289839,
		32.444111, 35.341732, 55.227779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295280, 35.045944, 56.052670>,  <31.933569, 34.907928, 55.430664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295280, 35.045944, 56.052670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344566, 35.341244, 55.787399>,  <32.374138, 35.518425, 55.628235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344566, 35.341244, 55.787399>,  <32.295280, 35.045944, 56.052670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344566, 35.341244, 55.787399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404331, 0.647636, 0.645820,
		0.906275, 0.188569, 0.378296,
		0.123216, 0.738248, -0.663180,
		32.381531, 35.562717, 55.588444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558228, 35.594452, 56.432308>,  <32.295280, 35.045944, 56.052670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558228, 35.594452, 56.432308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452267, 35.793640, 56.102013>,  <32.388691, 35.913155, 55.903835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452267, 35.793640, 56.102013>,  <32.558228, 35.594452, 56.432308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452267, 35.793640, 56.102013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309589, 0.767077, 0.561914,
		0.913226, 0.404492, -0.049032,
		-0.264901, 0.497975, -0.825741,
		32.372795, 35.943031, 55.854290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741928, 36.306000, 56.579338>,  <32.558228, 35.594452, 56.432308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741928, 36.306000, 56.579338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485794, 36.338383, 56.273811>,  <32.332115, 36.357811, 56.090496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485794, 36.338383, 56.273811>,  <32.741928, 36.306000, 56.579338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485794, 36.338383, 56.273811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324646, 0.872714, 0.364658,
		0.696114, 0.481474, -0.532550,
		-0.640337, 0.080953, -0.763816,
		32.293694, 36.362667, 56.044666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837814, 37.020870, 56.250412>,  <32.741928, 36.306000, 56.579338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837814, 37.020870, 56.250412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484367, 36.903019, 56.104851>,  <32.272301, 36.832310, 56.017513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484367, 36.903019, 56.104851>,  <32.837814, 37.020870, 56.250412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484367, 36.903019, 56.104851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363997, 0.921107, 0.138088,
		0.294506, 0.254475, -0.921145,
		-0.883613, -0.294626, -0.363900,
		32.219284, 36.814632, 55.995682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598339, 37.474407, 55.690941>,  <32.837814, 37.020870, 56.250412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598339, 37.474407, 55.690941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280064, 37.290791, 55.849014>,  <32.089100, 37.180622, 55.943859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280064, 37.290791, 55.849014>,  <32.598339, 37.474407, 55.690941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280064, 37.290791, 55.849014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406362, 0.888367, 0.213717,
		-0.449171, 0.009465, -0.893396,
		-0.795686, -0.459037, 0.395182,
		32.041359, 37.153080, 55.967567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938173, 37.871059, 55.533340>,  <32.598339, 37.474407, 55.690941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938173, 37.871059, 55.533340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800316, 37.651894, 55.838238>,  <31.717602, 37.520393, 56.021175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800316, 37.651894, 55.838238>,  <31.938173, 37.871059, 55.533340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800316, 37.651894, 55.838238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563388, 0.770224, 0.298913,
		-0.750875, -0.326420, -0.574139,
		-0.344645, -0.547910, 0.762243,
		31.696922, 37.487522, 56.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224501, 38.004623, 55.575150>,  <31.938173, 37.871059, 55.533340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224501, 38.004623, 55.575150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303713, 37.858372, 55.938931>,  <31.351240, 37.770618, 56.157200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303713, 37.858372, 55.938931>,  <31.224501, 38.004623, 55.575150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303713, 37.858372, 55.938931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715303, 0.580454, 0.389120,
		-0.670167, -0.727590, -0.146589,
		0.198031, -0.365631, 0.909449,
		31.363123, 37.748684, 56.211765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666073, 37.732033, 55.816345>,  <31.224501, 38.004623, 55.575150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666073, 37.732033, 55.816345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860128, 37.823860, 56.153851>,  <30.976561, 37.878956, 56.356354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860128, 37.823860, 56.153851>,  <30.666073, 37.732033, 55.816345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860128, 37.823860, 56.153851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685669, 0.698704, 0.204136,
		-0.542678, -0.677577, 0.496376,
		0.485137, 0.229569, 0.843765,
		31.005671, 37.892731, 56.406979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136608, 37.095680, 55.825478>,  <30.666073, 37.732033, 55.816345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136608, 37.095680, 55.825478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774841, 37.076412, 55.655910>,  <29.557781, 37.064854, 55.554169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.774841, 37.076412, 55.655910>,  <30.136608, 37.095680, 55.825478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774841, 37.076412, 55.655910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155701, -0.962340, -0.222841,
		-0.397220, -0.267546, 0.877859,
		-0.904419, -0.048167, -0.423918,
		29.503515, 37.061962, 55.528736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850937, 36.460079, 56.069046>,  <30.136608, 37.095680, 55.825478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850937, 36.460079, 56.069046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658609, 36.551098, 55.730331>,  <29.543213, 36.605709, 55.527103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658609, 36.551098, 55.730331>,  <29.850937, 36.460079, 56.069046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658609, 36.551098, 55.730331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148732, -0.930580, -0.334513,
		-0.864114, -0.286783, 0.413596,
		-0.480817, 0.227542, -0.846782,
		29.514364, 36.619362, 55.476295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454123, 35.893452, 55.972816>,  <29.850937, 36.460079, 56.069046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454123, 35.893452, 55.972816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386534, 36.061981, 55.616405>,  <29.345982, 36.163097, 55.402557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386534, 36.061981, 55.616405>,  <29.454123, 35.893452, 55.972816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386534, 36.061981, 55.616405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188026, -0.873647, -0.448762,
		-0.967520, -0.243364, 0.068400,
		-0.168970, 0.421325, -0.891030,
		29.335842, 36.188377, 55.349098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011240, 35.395794, 55.662354>,  <29.454123, 35.893452, 55.972816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011240, 35.395794, 55.662354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.190731, 35.609436, 55.375751>,  <29.298426, 35.737621, 55.203789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.190731, 35.609436, 55.375751>,  <29.011240, 35.395794, 55.662354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190731, 35.609436, 55.375751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216958, -0.842878, -0.492428,
		-0.866934, 0.065513, -0.494099,
		0.448726, 0.534101, -0.716506,
		29.325348, 35.769665, 55.160801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701616, 35.168175, 54.970005>,  <29.011240, 35.395794, 55.662354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701616, 35.168175, 54.970005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059824, 35.317013, 54.872360>,  <29.274748, 35.406315, 54.813774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059824, 35.317013, 54.872360>,  <28.701616, 35.168175, 54.970005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059824, 35.317013, 54.872360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145347, -0.763008, -0.629836,
		-0.420619, 0.528549, -0.737371,
		0.895519, 0.372095, -0.244112,
		29.328480, 35.428642, 54.799126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795088, 34.949986, 54.227909>,  <28.701616, 35.168175, 54.970005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795088, 34.949986, 54.227909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.157770, 35.038471, 54.371544>,  <29.375380, 35.091560, 54.457726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.157770, 35.038471, 54.371544>,  <28.795088, 34.949986, 54.227909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157770, 35.038471, 54.371544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405112, -0.693640, -0.595606,
		0.117324, 0.685513, -0.718545,
		0.906708, 0.221212, 0.359091,
		29.429783, 35.104836, 54.479271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213882, 35.051704, 53.699940>,  <28.795088, 34.949986, 54.227909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213882, 35.051704, 53.699940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453957, 34.936939, 53.998592>,  <29.598001, 34.868080, 54.177784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453957, 34.936939, 53.998592>,  <29.213882, 35.051704, 53.699940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453957, 34.936939, 53.998592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417692, -0.683643, -0.598469,
		0.682138, 0.671054, -0.290471,
		0.600184, -0.286912, 0.746633,
		29.634012, 34.850864, 54.222584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879854, 35.094048, 53.428978>,  <29.213882, 35.051704, 53.699940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879854, 35.094048, 53.428978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.918821, 34.868641, 53.757114>,  <29.942202, 34.733398, 53.953999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.918821, 34.868641, 53.757114>,  <29.879854, 35.094048, 53.428978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918821, 34.868641, 53.757114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701624, -0.545707, -0.458179,
		0.705857, 0.620207, 0.342212,
		0.097418, -0.563513, 0.820343,
		29.948046, 34.699589, 54.003216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570221, 34.856884, 53.447704>,  <29.879854, 35.094048, 53.428978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570221, 34.856884, 53.447704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397564, 34.602280, 53.703373>,  <30.293970, 34.449516, 53.856773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397564, 34.602280, 53.703373>,  <30.570221, 34.856884, 53.447704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397564, 34.602280, 53.703373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512000, -0.756258, -0.407345,
		0.742660, 0.151431, 0.652323,
		-0.431640, -0.636508, 0.639175,
		30.268072, 34.411327, 53.895126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157127, 34.430676, 53.832741>,  <30.570221, 34.856884, 53.447704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157127, 34.430676, 53.832741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809601, 34.232971, 53.820976>,  <30.601086, 34.114349, 53.813919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809601, 34.232971, 53.820976>,  <31.157127, 34.430676, 53.832741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809601, 34.232971, 53.820976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475144, -0.815551, -0.330325,
		0.139285, -0.300963, 0.943409,
		-0.868814, -0.494264, -0.029406,
		30.548956, 34.084690, 53.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345318, 33.740273, 54.089577>,  <31.157127, 34.430676, 53.832741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345318, 33.740273, 54.089577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009924, 33.706646, 53.874214>,  <30.808687, 33.686470, 53.744995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.009924, 33.706646, 53.874214>,  <31.345318, 33.740273, 54.089577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009924, 33.706646, 53.874214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392086, -0.779229, -0.488949,
		-0.378438, -0.621076, 0.686331,
		-0.838483, -0.084064, -0.538405,
		30.758379, 33.681427, 53.712692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274576, 33.079426, 53.891521>,  <31.345318, 33.740273, 54.089577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274576, 33.079426, 53.891521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977955, 33.201176, 53.652370>,  <30.799982, 33.274227, 53.508881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977955, 33.201176, 53.652370>,  <31.274576, 33.079426, 53.891521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977955, 33.201176, 53.652370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302363, -0.643903, -0.702826,
		-0.598896, -0.701959, 0.385457,
		-0.741553, 0.304372, -0.597878,
		30.755489, 33.292488, 53.473007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946774, 32.440399, 53.647041>,  <31.274576, 33.079426, 53.891521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946774, 32.440399, 53.647041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826880, 32.719231, 53.386505>,  <30.754942, 32.886528, 53.230183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826880, 32.719231, 53.386505>,  <30.946774, 32.440399, 53.647041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826880, 32.719231, 53.386505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163762, -0.635004, -0.754952,
		-0.939862, -0.332951, 0.076180,
		-0.299737, 0.697075, -0.651341,
		30.736959, 32.928352, 53.191101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313705, 32.185261, 53.234673>,  <30.946774, 32.440399, 53.647041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313705, 32.185261, 53.234673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.509876, 32.461189, 53.021648>,  <30.627579, 32.626747, 52.893833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.509876, 32.461189, 53.021648>,  <30.313705, 32.185261, 53.234673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509876, 32.461189, 53.021648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082706, -0.645184, -0.759537,
		-0.867548, 0.328452, -0.373470,
		0.490429, 0.689823, -0.532563,
		30.657005, 32.668137, 52.861881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.342508, 39.476192, 51.642754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.693001, 39.664474, 51.684055>,  <26.903296, 39.777443, 51.708836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.693001, 39.664474, 51.684055>,  <26.342508, 39.476192, 51.642754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693001, 39.664474, 51.684055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341691, 0.455778, 0.821896,
		0.339806, -0.755452, 0.560201,
		0.876230, 0.470701, 0.103255,
		26.955870, 39.805683, 51.715031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514174, 39.545834, 52.389553>,  <26.342508, 39.476192, 51.642754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514174, 39.545834, 52.389553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699543, 39.852097, 52.211113>,  <26.810764, 40.035854, 52.104050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699543, 39.852097, 52.211113>,  <26.514174, 39.545834, 52.389553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699543, 39.852097, 52.211113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509080, 0.642093, 0.573196,
		0.725311, -0.038531, 0.687342,
		0.463424, 0.765658, -0.446102,
		26.838570, 40.081795, 52.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722111, 39.915714, 52.930664>,  <26.514174, 39.545834, 52.389553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722111, 39.915714, 52.930664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.776583, 40.176975, 52.632710>,  <26.809267, 40.333733, 52.453938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.776583, 40.176975, 52.632710>,  <26.722111, 39.915714, 52.930664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776583, 40.176975, 52.632710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377707, 0.729327, 0.570455,
		0.915856, 0.203663, 0.346020,
		0.136181, 0.653149, -0.744884,
		26.817436, 40.372921, 52.409245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014240, 40.562321, 53.251091>,  <26.722111, 39.915714, 52.930664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014240, 40.562321, 53.251091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.888929, 40.711502, 52.901745>,  <26.813744, 40.801010, 52.692139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.888929, 40.711502, 52.901745>,  <27.014240, 40.562321, 53.251091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888929, 40.711502, 52.901745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318396, 0.825178, 0.466589,
		0.894697, 0.424245, -0.139760,
		-0.313275, 0.372957, -0.873362,
		26.794947, 40.823391, 52.639736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358408, 41.213146, 53.120842>,  <27.014240, 40.562321, 53.251091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358408, 41.213146, 53.120842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.036608, 41.199757, 52.883636>,  <26.843529, 41.191723, 52.741314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.036608, 41.199757, 52.883636>,  <27.358408, 41.213146, 53.120842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036608, 41.199757, 52.883636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404298, 0.762270, 0.505458,
		0.435116, 0.646393, -0.626778,
		-0.804499, -0.033472, -0.593010,
		26.795258, 41.189716, 52.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097485, 41.891850, 52.926975>,  <27.358408, 41.213146, 53.120842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097485, 41.891850, 52.926975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.748596, 41.704620, 52.870209>,  <26.539263, 41.592281, 52.836147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.748596, 41.704620, 52.870209>,  <27.097485, 41.891850, 52.926975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748596, 41.704620, 52.870209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484507, 0.787092, 0.381759,
		-0.066990, 0.401736, -0.913302,
		-0.872218, -0.468075, -0.141916,
		26.486931, 41.564198, 52.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687471, 42.396332, 52.644672>,  <27.097485, 41.891850, 52.926975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687471, 42.396332, 52.644672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.416830, 42.119629, 52.745605>,  <26.254444, 41.953606, 52.806164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.416830, 42.119629, 52.745605>,  <26.687471, 42.396332, 52.644672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416830, 42.119629, 52.745605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464795, 0.667012, 0.582289,
		-0.571115, 0.276696, -0.772830,
		-0.676604, -0.691762, 0.252334,
		26.213848, 41.912102, 52.821304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963814, 42.599163, 52.516171>,  <26.687471, 42.396332, 52.644672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963814, 42.599163, 52.516171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.972397, 42.322491, 52.804924>,  <25.977547, 42.156487, 52.978176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.972397, 42.322491, 52.804924>,  <25.963814, 42.599163, 52.516171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972397, 42.322491, 52.804924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376575, 0.663282, 0.646721,
		-0.926137, -0.285723, -0.246235,
		0.021460, -0.691678, 0.721887,
		25.978834, 42.114986, 53.021488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404997, 42.729485, 52.886520>,  <25.963814, 42.599163, 52.516171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404997, 42.729485, 52.886520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.603931, 42.508171, 53.153812>,  <25.723293, 42.375381, 53.314186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.603931, 42.508171, 53.153812>,  <25.404997, 42.729485, 52.886520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603931, 42.508171, 53.153812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426580, 0.514743, 0.743686,
		-0.755437, -0.654916, 0.019981,
		0.497337, -0.553285, 0.668230,
		25.753132, 42.342186, 53.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913548, 42.846874, 53.427887>,  <25.404997, 42.729485, 52.886520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913548, 42.846874, 53.427887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.250324, 42.683350, 53.568748>,  <25.452391, 42.585236, 53.653263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.250324, 42.683350, 53.568748>,  <24.913548, 42.846874, 53.427887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250324, 42.683350, 53.568748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284954, 0.217332, 0.933578,
		-0.458188, -0.886365, 0.066489,
		0.841942, -0.408808, 0.352152,
		25.502907, 42.560707, 53.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611111, 42.283485, 53.871784>,  <24.913548, 42.846874, 53.427887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611111, 42.283485, 53.871784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.982780, 42.388802, 53.975563>,  <25.205782, 42.451992, 54.037830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.982780, 42.388802, 53.975563>,  <24.611111, 42.283485, 53.871784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982780, 42.388802, 53.975563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308837, 0.167297, 0.936286,
		0.203122, -0.950097, 0.236766,
		0.929172, 0.263302, 0.259443,
		25.261532, 42.467789, 54.053398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836636, 41.931854, 54.483494>,  <24.611111, 42.283485, 53.871784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836636, 41.931854, 54.483494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.080070, 42.249100, 54.473770>,  <25.226131, 42.439449, 54.467937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.080070, 42.249100, 54.473770>,  <24.836636, 41.931854, 54.483494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080070, 42.249100, 54.473770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411880, 0.341938, 0.844650,
		0.678217, -0.504030, 0.534767,
		0.608586, 0.793115, -0.024309,
		25.262646, 42.487034, 54.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218990, 41.993328, 55.158428>,  <24.836636, 41.931854, 54.483494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218990, 41.993328, 55.158428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.172367, 42.347713, 54.978878>,  <25.144392, 42.560345, 54.871147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.172367, 42.347713, 54.978878>,  <25.218990, 41.993328, 55.158428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172367, 42.347713, 54.978878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250816, 0.411050, 0.876430,
		0.960992, 0.214742, 0.174301,
		-0.116560, 0.885960, -0.448876,
		25.137400, 42.613503, 54.844215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815926, 41.402977, 55.029709>,  <25.218990, 41.993328, 55.158428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815926, 41.402977, 55.029709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.079844, 41.515991, 55.308231>,  <25.238195, 41.583801, 55.475346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.079844, 41.515991, 55.308231>,  <24.815926, 41.402977, 55.029709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079844, 41.515991, 55.308231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503567, -0.854024, -0.130627,
		0.557754, 0.436824, -0.705759,
		0.659796, 0.282539, 0.696305,
		25.277782, 41.600754, 55.517124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512472, 41.297607, 54.724400>,  <24.815926, 41.402977, 55.029709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512472, 41.297607, 54.724400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.531351, 41.323952, 55.123085>,  <25.542679, 41.339756, 55.362297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.531351, 41.323952, 55.123085>,  <25.512472, 41.297607, 54.724400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531351, 41.323952, 55.123085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586227, -0.809738, 0.025744,
		0.808771, 0.583084, -0.076825,
		0.047197, 0.065857, 0.996712,
		25.545511, 41.343708, 55.422100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219563, 41.306885, 54.949173>,  <25.512472, 41.297607, 54.724400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219563, 41.306885, 54.949173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.033749, 41.176876, 55.278671>,  <25.922260, 41.098869, 55.476372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.033749, 41.176876, 55.278671>,  <26.219563, 41.306885, 54.949173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033749, 41.176876, 55.278671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620539, -0.783106, 0.040951,
		0.631773, 0.530192, 0.565473,
		-0.464537, -0.325026, 0.823750,
		25.894388, 41.079369, 55.525795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709038, 41.309666, 55.453335>,  <26.219563, 41.306885, 54.949173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709038, 41.309666, 55.453335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.425499, 41.049866, 55.563377>,  <26.255377, 40.893986, 55.629402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.425499, 41.049866, 55.563377>,  <26.709038, 41.309666, 55.453335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425499, 41.049866, 55.563377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694266, -0.711351, 0.109426,
		0.124626, 0.268564, 0.955166,
		-0.708846, -0.649502, 0.275108,
		26.212845, 40.855015, 55.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902657, 41.130680, 56.070557>,  <26.709038, 41.309666, 55.453335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902657, 41.130680, 56.070557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686869, 40.821255, 55.937546>,  <26.557396, 40.635601, 55.857738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.686869, 40.821255, 55.937546>,  <26.902657, 41.130680, 56.070557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686869, 40.821255, 55.937546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777256, -0.609377, 0.156630,
		-0.323799, -0.173964, 0.929995,
		-0.539470, -0.773560, -0.332530,
		26.525028, 40.589188, 55.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075539, 40.673172, 56.521587>,  <26.902657, 41.130680, 56.070557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075539, 40.673172, 56.521587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.901175, 40.454159, 56.235878>,  <26.796556, 40.322750, 56.064453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.901175, 40.454159, 56.235878>,  <27.075539, 40.673172, 56.521587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901175, 40.454159, 56.235878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467082, -0.816030, 0.340483,
		-0.769296, -0.185205, 0.611460,
		-0.435911, -0.547534, -0.714274,
		26.770401, 40.289898, 56.021595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805107, 40.009411, 56.872623>,  <27.075539, 40.673172, 56.521587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805107, 40.009411, 56.872623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.850487, 39.953354, 56.479179>,  <26.877714, 39.919720, 56.243114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.850487, 39.953354, 56.479179>,  <26.805107, 40.009411, 56.872623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850487, 39.953354, 56.479179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538420, -0.823357, 0.179408,
		-0.835004, -0.549950, -0.017958,
		0.113451, -0.140138, -0.983611,
		26.884521, 39.911312, 56.184097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856350, 39.303226, 56.788521>,  <26.805107, 40.009411, 56.872623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856350, 39.303226, 56.788521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.994886, 39.400440, 56.426090>,  <27.078009, 39.458767, 56.208630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.994886, 39.400440, 56.426090>,  <26.856350, 39.303226, 56.788521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994886, 39.400440, 56.426090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508007, -0.860573, -0.036648,
		-0.788656, -0.447603, -0.421514,
		0.346339, 0.243035, -0.906081,
		27.098787, 39.473351, 56.154266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844873, 38.721561, 56.325294>,  <26.856350, 39.303226, 56.788521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844873, 38.721561, 56.325294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.100683, 38.968559, 56.142117>,  <27.254169, 39.116756, 56.032211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.100683, 38.968559, 56.142117>,  <26.844873, 38.721561, 56.325294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100683, 38.968559, 56.142117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579287, -0.778683, -0.240995,
		-0.505403, -0.111156, -0.855694,
		0.639527, 0.617492, -0.457940,
		27.292542, 39.153809, 56.004734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120474, 38.338062, 55.836288>,  <26.844873, 38.721561, 56.325294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120474, 38.338062, 55.836288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.401318, 38.622704, 55.846622>,  <27.569824, 38.793488, 55.852821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.401318, 38.622704, 55.846622>,  <27.120474, 38.338062, 55.836288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401318, 38.622704, 55.846622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693716, -0.675374, -0.250254,
		-0.160633, 0.193628, -0.967835,
		0.702107, 0.711602, 0.025836,
		27.611950, 38.836185, 55.854374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580715, 38.214588, 55.220901>,  <27.120474, 38.338062, 55.836288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580715, 38.214588, 55.220901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.790012, 38.423878, 55.489960>,  <27.915590, 38.549450, 55.651394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.790012, 38.423878, 55.489960>,  <27.580715, 38.214588, 55.220901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790012, 38.423878, 55.489960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753689, -0.652499, -0.078733,
		0.397708, 0.548164, -0.735761,
		0.523242, 0.523222, 0.672649,
		27.946985, 38.580845, 55.691753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176640, 38.182922, 54.917053>,  <27.580715, 38.214588, 55.220901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176640, 38.182922, 54.917053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255390, 38.282879, 55.296272>,  <28.302641, 38.342854, 55.523804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255390, 38.282879, 55.296272>,  <28.176640, 38.182922, 54.917053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255390, 38.282879, 55.296272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795980, -0.605296, -0.005751,
		0.572412, 0.755758, -0.318079,
		0.196878, 0.249893, 0.948047,
		28.314453, 38.357845, 55.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872337, 38.375648, 54.781223>,  <28.176640, 38.182922, 54.917053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872337, 38.375648, 54.781223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.780441, 38.278397, 55.158180>,  <28.725304, 38.220047, 55.384354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.780441, 38.278397, 55.158180>,  <28.872337, 38.375648, 54.781223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780441, 38.278397, 55.158180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731613, -0.681716, 0.002480,
		0.641843, 0.690038, 0.334493,
		-0.229741, -0.243128, 0.942395,
		28.711519, 38.205460, 55.440899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476450, 38.190357, 55.005470>,  <28.872337, 38.375648, 54.781223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476450, 38.190357, 55.005470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212872, 38.021595, 55.254562>,  <29.054724, 37.920338, 55.404018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212872, 38.021595, 55.254562>,  <29.476450, 38.190357, 55.005470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212872, 38.021595, 55.254562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555961, -0.830820, 0.025412,
		0.506652, 0.362957, 0.782027,
		-0.658947, -0.421901, 0.622727,
		29.015188, 37.895023, 55.441380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844643, 38.003181, 55.510902>,  <29.476450, 38.190357, 55.005470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844643, 38.003181, 55.510902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.520027, 37.769573, 55.518162>,  <29.325258, 37.629410, 55.522518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.520027, 37.769573, 55.518162>,  <29.844643, 38.003181, 55.510902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520027, 37.769573, 55.518162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577018, -0.805927, -0.132410,
		0.091954, -0.096984, 0.991029,
		-0.811539, -0.584017, 0.018147,
		29.276566, 37.594368, 55.523605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124794, 38.061356, 56.311737>,  <29.844643, 38.003181, 55.510902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124794, 38.061356, 56.311737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483828, 38.173279, 56.447998>,  <30.699247, 38.240433, 56.529755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483828, 38.173279, 56.447998>,  <30.124794, 38.061356, 56.311737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483828, 38.173279, 56.447998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400651, 0.840129, 0.365598,
		-0.183895, -0.464640, 0.866194,
		0.897586, 0.279810, 0.340654,
		30.753103, 38.257221, 56.550194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995321, 38.254623, 57.014118>,  <30.124794, 38.061356, 56.311737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995321, 38.254623, 57.014118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336704, 38.442715, 56.924232>,  <30.541534, 38.555569, 56.870300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336704, 38.442715, 56.924232>,  <29.995321, 38.254623, 57.014118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336704, 38.442715, 56.924232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403027, 0.868863, 0.287482,
		0.330428, -0.154788, 0.931052,
		0.853455, 0.470231, -0.224713,
		30.592741, 38.583786, 56.856819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215631, 38.625572, 57.588932>,  <29.995321, 38.254623, 57.014118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215631, 38.625572, 57.588932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.410629, 38.791985, 57.281876>,  <30.527628, 38.891830, 57.097641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.410629, 38.791985, 57.281876>,  <30.215631, 38.625572, 57.588932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410629, 38.791985, 57.281876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346180, 0.899225, 0.267496,
		0.801566, 0.135339, 0.582388,
		0.487495, 0.416026, -0.767640,
		30.556877, 38.916794, 57.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639326, 39.139717, 57.882408>,  <30.215631, 38.625572, 57.588932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639326, 39.139717, 57.882408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.595692, 39.247768, 57.499760>,  <30.569511, 39.312599, 57.270168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.595692, 39.247768, 57.499760>,  <30.639326, 39.139717, 57.882408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595692, 39.247768, 57.499760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414862, 0.862176, 0.290762,
		0.903322, 0.428586, 0.018012,
		-0.109087, 0.270124, -0.956626,
		30.562965, 39.328804, 57.212772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946285, 39.833748, 57.756897>,  <30.639326, 39.139717, 57.882408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946285, 39.833748, 57.756897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.709219, 39.793957, 57.437183>,  <30.566978, 39.770084, 57.245354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.709219, 39.793957, 57.437183>,  <30.946285, 39.833748, 57.756897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709219, 39.793957, 57.437183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320061, 0.939719, 0.120374,
		0.739126, 0.327160, -0.588776,
		-0.592666, -0.099473, -0.799282,
		30.531420, 39.764114, 57.197399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959364, 40.518551, 57.491074>,  <30.946285, 39.833748, 57.756897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959364, 40.518551, 57.491074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634678, 40.344982, 57.334702>,  <30.439865, 40.240841, 57.240879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634678, 40.344982, 57.334702>,  <30.959364, 40.518551, 57.491074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634678, 40.344982, 57.334702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499740, 0.862440, 0.080356,
		0.302283, 0.260589, -0.916907,
		-0.811717, -0.433925, -0.390928,
		30.391163, 40.214806, 57.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594370, 40.985806, 57.137405>,  <30.959364, 40.518551, 57.491074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594370, 40.985806, 57.137405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.292061, 40.728252, 57.185097>,  <30.110676, 40.573719, 57.213711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.292061, 40.728252, 57.185097>,  <30.594370, 40.985806, 57.137405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292061, 40.728252, 57.185097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650301, 0.759381, -0.021182,
		-0.076903, -0.093544, -0.992641,
		-0.755774, -0.643886, 0.119231,
		30.065329, 40.535088, 57.220867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659519, 41.724934, 56.688076>,  <30.594370, 40.985806, 57.137405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659519, 41.724934, 56.688076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997786, 41.925518, 56.761158>,  <31.200747, 42.045868, 56.805008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997786, 41.925518, 56.761158>,  <30.659519, 41.724934, 56.688076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997786, 41.925518, 56.761158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475263, -0.551798, -0.685305,
		-0.242838, 0.666374, -0.704965,
		0.845668, 0.501462, 0.182706,
		31.251486, 42.075958, 56.815971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959669, 41.579689, 56.059010>,  <30.659519, 41.724934, 56.688076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959669, 41.579689, 56.059010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234571, 41.742931, 56.299385>,  <31.399513, 41.840878, 56.443611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234571, 41.742931, 56.299385>,  <30.959669, 41.579689, 56.059010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234571, 41.742931, 56.299385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719307, -0.497787, -0.484568,
		0.101382, 0.765281, -0.635662,
		0.687255, 0.408110, 0.600939,
		31.440748, 41.865364, 56.479668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404613, 41.987701, 55.656944>,  <30.959669, 41.579689, 56.059010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404613, 41.987701, 55.656944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607533, 41.851414, 55.973568>,  <31.729284, 41.769642, 56.163540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607533, 41.851414, 55.973568>,  <31.404613, 41.987701, 55.656944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607533, 41.851414, 55.973568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633812, -0.474831, -0.610589,
		0.583892, 0.811448, -0.024933,
		0.507300, -0.340715, 0.791556,
		31.759722, 41.749199, 56.211033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119732, 41.979160, 55.405560>,  <31.404613, 41.987701, 55.656944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119732, 41.979160, 55.405560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115734, 41.731205, 55.719410>,  <32.113335, 41.582432, 55.907719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.115734, 41.731205, 55.719410>,  <32.119732, 41.979160, 55.405560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115734, 41.731205, 55.719410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720824, -0.548303, -0.424001,
		0.693046, 0.561340, 0.452310,
		-0.009994, -0.619888, 0.784627,
		32.112736, 41.545238, 55.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853378, 41.807884, 55.415112>,  <32.119732, 41.979160, 55.405560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853378, 41.807884, 55.415112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.666714, 41.550827, 55.658169>,  <32.554714, 41.396591, 55.804005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.666714, 41.550827, 55.658169>,  <32.853378, 41.807884, 55.415112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666714, 41.550827, 55.658169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596244, -0.736039, -0.320531,
		0.653237, 0.212724, 0.726656,
		-0.466663, -0.642647, 0.607643,
		32.526714, 41.358032, 55.840462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369892, 41.436440, 55.791489>,  <32.853378, 41.807884, 55.415112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369892, 41.436440, 55.791489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042557, 41.208023, 55.817535>,  <32.846157, 41.070972, 55.833164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042557, 41.208023, 55.817535>,  <33.369892, 41.436440, 55.791489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042557, 41.208023, 55.817535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547390, -0.808908, -0.214551,
		0.175189, -0.139932, 0.974540,
		-0.818336, -0.571040, 0.065114,
		32.797054, 41.036713, 55.837070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713272, 40.895348, 56.066109>,  <33.369892, 41.436440, 55.791489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713272, 40.895348, 56.066109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358398, 40.763470, 55.936989>,  <33.145473, 40.684345, 55.859516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358398, 40.763470, 55.936989>,  <33.713272, 40.895348, 56.066109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358398, 40.763470, 55.936989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445498, -0.794200, -0.413252,
		-0.120124, -0.510441, 0.851482,
		-0.887188, -0.329692, -0.322803,
		33.092243, 40.664562, 55.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.396719, 44.106590, 55.282089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081795, 44.060333, 55.039845>,  <26.892841, 44.032581, 54.894497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081795, 44.060333, 55.039845>,  <27.396719, 44.106590, 55.282089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081795, 44.060333, 55.039845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602838, -0.350439, -0.716783,
		-0.129343, -0.929419, 0.345615,
		-0.787310, -0.115639, -0.605617,
		26.845602, 44.025642, 54.858158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325415, 43.398193, 55.145275>,  <27.396719, 44.106590, 55.282089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325415, 43.398193, 55.145275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166523, 43.593403, 54.834396>,  <27.071188, 43.710529, 54.647869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166523, 43.593403, 54.834396>,  <27.325415, 43.398193, 55.145275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166523, 43.593403, 54.834396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671731, -0.422407, -0.608563,
		-0.625289, -0.763809, -0.160029,
		-0.397229, 0.488025, -0.777201,
		27.047354, 43.739811, 54.601234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342758, 42.849590, 54.649319>,  <27.325415, 43.398193, 55.145275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342758, 42.849590, 54.649319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302240, 43.197548, 54.456226>,  <27.277929, 43.406322, 54.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302240, 43.197548, 54.456226>,  <27.342758, 42.849590, 54.649319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302240, 43.197548, 54.456226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676688, -0.295444, -0.674393,
		-0.729268, -0.394969, -0.558719,
		-0.101294, 0.869892, -0.482728,
		27.271852, 43.458515, 54.311409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324617, 42.693104, 53.966686>,  <27.342758, 42.849590, 54.649319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324617, 42.693104, 53.966686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429901, 43.077461, 53.932270>,  <27.493071, 43.308075, 53.911621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429901, 43.077461, 53.932270>,  <27.324617, 42.693104, 53.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429901, 43.077461, 53.932270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573705, -0.227598, -0.786805,
		-0.775618, 0.157736, -0.611176,
		0.263210, 0.960895, -0.086036,
		27.508863, 43.365730, 53.906460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291531, 42.829735, 53.292336>,  <27.324617, 42.693104, 53.966686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291531, 42.829735, 53.292336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517794, 43.135292, 53.416592>,  <27.653551, 43.318626, 53.491146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517794, 43.135292, 53.416592>,  <27.291531, 42.829735, 53.292336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517794, 43.135292, 53.416592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580355, -0.101153, -0.808057,
		-0.585849, 0.637363, -0.500549,
		0.565657, 0.763896, 0.310637,
		27.687490, 43.364460, 53.509781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292856, 43.279125, 52.774250>,  <27.291531, 42.829735, 53.292336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292856, 43.279125, 52.774250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619268, 43.329220, 52.999962>,  <27.815115, 43.359276, 53.135387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619268, 43.329220, 52.999962>,  <27.292856, 43.279125, 52.774250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619268, 43.329220, 52.999962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576739, -0.241071, -0.780549,
		0.038275, 0.962393, -0.268953,
		0.816031, 0.125240, 0.564276,
		27.864079, 43.366791, 53.169247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871637, 43.611618, 52.353085>,  <27.292856, 43.279125, 52.774250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871637, 43.611618, 52.353085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073460, 43.455418, 52.661095>,  <28.194553, 43.361698, 52.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073460, 43.455418, 52.661095>,  <27.871637, 43.611618, 52.353085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073460, 43.455418, 52.661095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706105, -0.326590, -0.628296,
		0.496830, 0.860726, 0.110951,
		0.504555, -0.390499, 0.770022,
		28.224827, 43.338268, 52.892101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605619, 43.729279, 52.157879>,  <27.871637, 43.611618, 52.353085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605619, 43.729279, 52.157879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589417, 43.442200, 52.435947>,  <28.579695, 43.269951, 52.602791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589417, 43.442200, 52.435947>,  <28.605619, 43.729279, 52.157879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589417, 43.442200, 52.435947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866717, -0.371415, -0.332946,
		0.497153, 0.589033, 0.637086,
		-0.040507, -0.717698, 0.695175,
		28.577265, 43.226891, 52.644501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331888, 43.751270, 52.348396>,  <28.605619, 43.729279, 52.157879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331888, 43.751270, 52.348396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173000, 43.402946, 52.464264>,  <29.077667, 43.193951, 52.533787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173000, 43.402946, 52.464264>,  <29.331888, 43.751270, 52.348396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173000, 43.402946, 52.464264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762578, -0.488802, -0.423730,
		0.510580, 0.052584, 0.858221,
		-0.397219, -0.870808, 0.289672,
		29.053835, 43.141705, 52.551167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886644, 43.312321, 52.651169>,  <29.331888, 43.751270, 52.348396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886644, 43.312321, 52.651169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603456, 43.051800, 52.541924>,  <29.433544, 42.895489, 52.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603456, 43.051800, 52.541924>,  <29.886644, 43.312321, 52.651169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603456, 43.051800, 52.541924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675915, -0.512745, -0.529368,
		0.204740, -0.559377, 0.803231,
		-0.707969, -0.651299, -0.273111,
		29.391066, 42.856411, 52.459991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082443, 42.653835, 52.875381>,  <29.886644, 43.312321, 52.651169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082443, 42.653835, 52.875381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833273, 42.622734, 52.564018>,  <29.683771, 42.604073, 52.377201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833273, 42.622734, 52.564018>,  <30.082443, 42.653835, 52.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833273, 42.622734, 52.564018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638583, -0.625294, -0.448574,
		-0.451856, -0.776506, 0.439163,
		-0.622927, -0.077751, -0.778407,
		29.646395, 42.599407, 52.330498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258095, 41.966702, 52.605740>,  <30.082443, 42.653835, 52.875381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258095, 41.966702, 52.605740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014288, 42.112343, 52.324055>,  <29.868004, 42.199730, 52.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014288, 42.112343, 52.324055>,  <30.258095, 41.966702, 52.605740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014288, 42.112343, 52.324055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256004, -0.750302, -0.609515,
		-0.750302, -0.551790, 0.364108,
		0.609515, -0.364108, 0.704214,
		29.831434, 42.221577, 52.112789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915394, 42.513584, 52.568310>,  <30.258095, 41.966702, 52.605740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915394, 42.513584, 52.568310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238146, 42.730450, 52.662121>,  <31.431797, 42.860569, 52.718407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238146, 42.730450, 52.662121>,  <30.915394, 42.513584, 52.568310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238146, 42.730450, 52.662121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566385, 0.597297, 0.567841,
		0.167777, -0.591014, 0.789020,
		0.806882, 0.542160, 0.234529,
		31.480211, 42.893097, 52.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915237, 42.512669, 53.360497>,  <30.915394, 42.513584, 52.568310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915237, 42.512669, 53.360497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140255, 42.818443, 53.234528>,  <31.275267, 43.001907, 53.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140255, 42.818443, 53.234528>,  <30.915237, 42.512669, 53.360497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140255, 42.818443, 53.234528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580791, 0.636479, 0.507520,
		0.588408, -0.102600, 0.802028,
		0.562546, 0.764440, -0.314920,
		31.309019, 43.047775, 53.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016109, 42.897442, 53.985832>,  <30.915237, 42.512669, 53.360497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016109, 42.897442, 53.985832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123817, 43.148701, 53.693825>,  <31.188442, 43.299458, 53.518620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123817, 43.148701, 53.693825>,  <31.016109, 42.897442, 53.985832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123817, 43.148701, 53.693825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348528, 0.770195, 0.534160,
		0.897787, 0.110599, 0.426316,
		0.269269, 0.628146, -0.730019,
		31.204597, 43.337143, 53.474819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407730, 43.449646, 54.332760>,  <31.016109, 42.897442, 53.985832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407730, 43.449646, 54.332760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300362, 43.612625, 53.983604>,  <31.235941, 43.710411, 53.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300362, 43.612625, 53.983604>,  <31.407730, 43.449646, 54.332760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300362, 43.612625, 53.983604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368452, 0.793817, 0.483838,
		0.890053, 0.451490, -0.062952,
		-0.268421, 0.407446, -0.872891,
		31.219835, 43.734859, 53.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809299, 44.138618, 54.179630>,  <31.407730, 43.449646, 54.332760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809299, 44.138618, 54.179630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445580, 44.133411, 54.013256>,  <31.227346, 44.130287, 53.913433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445580, 44.133411, 54.013256>,  <31.809299, 44.138618, 54.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445580, 44.133411, 54.013256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193635, 0.897946, 0.395219,
		0.368341, 0.439912, -0.819025,
		-0.909302, -0.013017, -0.415933,
		31.172789, 44.129505, 53.888477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631857, 44.791721, 54.208256>,  <31.809299, 44.138618, 54.179630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631857, 44.791721, 54.208256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288336, 44.625324, 54.088650>,  <31.082224, 44.525486, 54.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288336, 44.625324, 54.088650>,  <31.631857, 44.791721, 54.208256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288336, 44.625324, 54.088650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510218, 0.747170, 0.425928,
		0.046228, 0.518348, -0.853919,
		-0.858802, -0.415995, -0.299011,
		31.030695, 44.500526, 53.998947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297455, 45.347431, 53.883518>,  <31.631857, 44.791721, 54.208256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297455, 45.347431, 53.883518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030493, 45.079216, 54.013100>,  <30.870316, 44.918285, 54.090851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030493, 45.079216, 54.013100>,  <31.297455, 45.347431, 53.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030493, 45.079216, 54.013100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516919, 0.730286, 0.446629,
		-0.536062, 0.130625, -0.834011,
		-0.667407, -0.670537, 0.323956,
		30.830271, 44.878056, 54.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687128, 45.821423, 54.007126>,  <31.297455, 45.347431, 53.883518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687128, 45.821423, 54.007126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561911, 45.473194, 54.158978>,  <30.486780, 45.264259, 54.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561911, 45.473194, 54.158978>,  <30.687128, 45.821423, 54.007126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561911, 45.473194, 54.158978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567818, 0.491968, 0.659962,
		-0.761306, -0.008963, -0.648330,
		-0.313042, -0.870567, 0.379628,
		30.467999, 45.212025, 54.272865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953878, 45.642403, 53.835339>,  <30.687128, 45.821423, 54.007126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953878, 45.642403, 53.835339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071421, 45.462139, 54.172516>,  <30.141945, 45.353981, 54.374825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071421, 45.462139, 54.172516>,  <29.953878, 45.642403, 53.835339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071421, 45.462139, 54.172516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670366, 0.531472, 0.517829,
		-0.681366, -0.717248, -0.145931,
		0.293853, -0.450658, 0.842946,
		30.159576, 45.326942, 54.425400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376192, 45.638771, 54.165138>,  <29.953878, 45.642403, 53.835339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376192, 45.638771, 54.165138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652412, 45.557755, 54.442875>,  <29.818146, 45.509144, 54.609516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652412, 45.557755, 54.442875>,  <29.376192, 45.638771, 54.165138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652412, 45.557755, 54.442875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543463, 0.488161, 0.682896,
		-0.477269, -0.848925, 0.227025,
		0.690552, -0.202545, 0.694343,
		29.859579, 45.496990, 54.651176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885849, 45.539593, 54.704460>,  <29.376192, 45.638771, 54.165138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885849, 45.539593, 54.704460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240652, 45.561119, 54.887905>,  <29.453533, 45.574036, 54.997971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240652, 45.561119, 54.887905>,  <28.885849, 45.539593, 54.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240652, 45.561119, 54.887905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443707, 0.374321, 0.814252,
		-0.127846, -0.925736, 0.355905,
		0.887006, 0.053819, 0.458611,
		29.506754, 45.577267, 55.025490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835295, 45.182064, 55.362465>,  <28.885849, 45.539593, 54.704460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835295, 45.182064, 55.362465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133987, 45.446964, 55.387188>,  <29.313202, 45.605904, 55.402020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133987, 45.446964, 55.387188>,  <28.835295, 45.182064, 55.362465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133987, 45.446964, 55.387188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379377, 0.347755, 0.857403,
		0.546322, -0.663696, 0.510921,
		0.746731, 0.662250, 0.061805,
		29.358007, 45.645638, 55.405731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184696, 45.039810, 56.025528>,  <28.835295, 45.182064, 55.362465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184696, 45.039810, 56.025528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309816, 45.406712, 55.926891>,  <29.384890, 45.626850, 55.867710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309816, 45.406712, 55.926891>,  <29.184696, 45.039810, 56.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309816, 45.406712, 55.926891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209575, 0.319876, 0.923991,
		0.926409, -0.237347, 0.292290,
		0.312803, 0.917249, -0.246594,
		29.403658, 45.681885, 55.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670385, 45.304832, 56.554989>,  <29.184696, 45.039810, 56.025528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670385, 45.304832, 56.554989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520052, 45.629631, 56.376366>,  <29.429852, 45.824509, 56.269192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520052, 45.629631, 56.376366>,  <29.670385, 45.304832, 56.554989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520052, 45.629631, 56.376366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194873, 0.401859, 0.894726,
		0.905966, 0.423290, 0.007204,
		-0.375833, 0.811995, -0.446558,
		29.407303, 45.873230, 56.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164591, 44.773510, 56.891945>,  <29.670385, 45.304832, 56.554989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164591, 44.773510, 56.891945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132597, 44.638226, 57.267010>,  <30.113401, 44.557056, 57.492050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132597, 44.638226, 57.267010>,  <30.164591, 44.773510, 56.891945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132597, 44.638226, 57.267010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505399, -0.824562, -0.254301,
		0.859171, 0.453556, 0.236881,
		-0.079983, -0.338207, 0.937667,
		30.108603, 44.536762, 57.548309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829426, 44.673649, 57.181778>,  <30.164591, 44.773510, 56.891945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829426, 44.673649, 57.181778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562822, 44.435280, 57.360950>,  <30.402861, 44.292259, 57.468452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562822, 44.435280, 57.360950>,  <30.829426, 44.673649, 57.181778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562822, 44.435280, 57.360950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558422, -0.797148, -0.229608,
		0.493894, 0.097097, 0.864084,
		-0.666509, -0.595925, 0.447928,
		30.362869, 44.256504, 57.495331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162773, 44.148140, 57.546875>,  <30.829426, 44.673649, 57.181778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162773, 44.148140, 57.546875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802164, 43.980137, 57.505215>,  <30.585798, 43.879333, 57.480221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802164, 43.980137, 57.505215>,  <31.162773, 44.148140, 57.546875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802164, 43.980137, 57.505215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431757, -0.856914, -0.281575,
		0.029021, -0.298812, 0.953871,
		-0.901523, -0.420012, -0.104146,
		30.531708, 43.854134, 57.473972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160286, 43.613949, 57.990246>,  <31.162773, 44.148140, 57.546875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160286, 43.613949, 57.990246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875540, 43.539761, 57.719292>,  <30.704693, 43.495247, 57.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875540, 43.539761, 57.719292>,  <31.160286, 43.613949, 57.990246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875540, 43.539761, 57.719292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458224, -0.853587, -0.247832,
		-0.532238, -0.486816, 0.692628,
		-0.711866, -0.185473, -0.677382,
		30.661980, 43.484119, 57.516075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805447, 43.062256, 58.182011>,  <31.160286, 43.613949, 57.990246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805447, 43.062256, 58.182011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744146, 43.077084, 57.787014>,  <30.707367, 43.085979, 57.550014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744146, 43.077084, 57.787014>,  <30.805447, 43.062256, 58.182011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744146, 43.077084, 57.787014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465729, -0.878645, -0.105256,
		-0.871557, -0.476034, 0.117389,
		-0.153249, 0.037065, -0.987492,
		30.698172, 43.088203, 57.490765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651283, 42.355812, 57.992634>,  <30.805447, 43.062256, 58.182011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651283, 42.355812, 57.992634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787285, 42.550411, 57.670712>,  <30.868885, 42.667171, 57.477558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787285, 42.550411, 57.670712>,  <30.651283, 42.355812, 57.992634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787285, 42.550411, 57.670712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344575, -0.860726, -0.374725,
		-0.875023, -0.149909, -0.460285,
		0.340004, 0.486496, -0.804810,
		30.889286, 42.696362, 57.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730087, 41.816875, 57.513294>,  <30.651283, 42.355812, 57.992634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730087, 41.816875, 57.513294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926506, 42.109146, 57.323566>,  <31.044357, 42.284508, 57.209728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926506, 42.109146, 57.323566>,  <30.730087, 41.816875, 57.513294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926506, 42.109146, 57.323566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559927, -0.681851, -0.470702,
		-0.667349, -0.034447, -0.743949,
		0.491048, 0.730679, -0.474320,
		31.073820, 42.328350, 57.181271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080675, 41.477695, 57.145111>,  <30.730087, 41.816875, 57.513294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080675, 41.477695, 57.145111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879383, 41.142540, 57.229675>,  <29.758608, 40.941444, 57.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879383, 41.142540, 57.229675>,  <30.080675, 41.477695, 57.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879383, 41.142540, 57.229675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772107, 0.545835, 0.325447,
		-0.388085, 0.000543, -0.921623,
		-0.503231, -0.837893, 0.211411,
		29.728415, 40.891171, 57.293098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447681, 41.521900, 56.824188>,  <30.080675, 41.477695, 57.145111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447681, 41.521900, 56.824188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422657, 41.264191, 57.129078>,  <29.407642, 41.109566, 57.312012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422657, 41.264191, 57.129078>,  <29.447681, 41.521900, 56.824188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422657, 41.264191, 57.129078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816783, 0.471940, 0.331871,
		-0.573543, -0.601813, -0.555760,
		-0.062561, -0.644278, 0.762229,
		29.403889, 41.070908, 57.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759939, 41.441692, 56.844315>,  <29.447681, 41.521900, 56.824188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759939, 41.441692, 56.844315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879522, 41.293369, 57.196026>,  <28.951273, 41.204376, 57.407051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879522, 41.293369, 57.196026>,  <28.759939, 41.441692, 56.844315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879522, 41.293369, 57.196026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849626, 0.316077, 0.422174,
		-0.434465, -0.873267, -0.220557,
		0.298958, -0.370811, 0.879274,
		28.969210, 41.182125, 57.459808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152237, 40.980556, 57.132496>,  <28.759939, 41.441692, 56.844315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152237, 40.980556, 57.132496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387657, 41.085480, 57.438385>,  <28.528910, 41.148434, 57.621918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387657, 41.085480, 57.438385>,  <28.152237, 40.980556, 57.132496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387657, 41.085480, 57.438385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793234, 0.370083, 0.483549,
		-0.156170, -0.891197, 0.425887,
		0.588550, 0.262312, 0.764723,
		28.564222, 41.164173, 57.667801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000170, 40.632050, 57.650627>,  <28.152237, 40.980556, 57.132496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000170, 40.632050, 57.650627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164183, 40.956665, 57.817131>,  <28.262590, 41.151436, 57.917034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164183, 40.956665, 57.817131>,  <28.000170, 40.632050, 57.650627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164183, 40.956665, 57.817131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911535, 0.348977, 0.217529,
		0.031267, -0.468634, 0.882839,
		0.410032, 0.811540, 0.416264,
		28.287193, 41.200127, 57.942009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577490, 40.769844, 58.242409>,  <28.000170, 40.632050, 57.650627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577490, 40.769844, 58.242409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749214, 41.124760, 58.174984>,  <27.852249, 41.337708, 58.134529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749214, 41.124760, 58.174984>,  <27.577490, 40.769844, 58.242409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749214, 41.124760, 58.174984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752487, 0.454616, 0.476537,
		0.499454, -0.077745, 0.862845,
		0.429312, 0.887288, -0.168558,
		27.878008, 41.390945, 58.124416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639578, 41.151127, 58.910652>,  <27.577490, 40.769844, 58.242409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639578, 41.151127, 58.910652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641277, 41.422291, 58.616600>,  <27.642296, 41.584991, 58.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641277, 41.422291, 58.616600>,  <27.639578, 41.151127, 58.910652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641277, 41.422291, 58.616600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612902, 0.582637, 0.533746,
		0.790147, 0.448297, 0.417968,
		0.004247, 0.677912, -0.735131,
		27.642551, 41.625664, 58.396061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382786, 41.713749, 59.318295>,  <27.639578, 41.151127, 58.910652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382786, 41.713749, 59.318295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359310, 41.867237, 58.949661>,  <27.345224, 41.959332, 58.728481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359310, 41.867237, 58.949661>,  <27.382786, 41.713749, 59.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359310, 41.867237, 58.949661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779965, 0.558565, 0.282242,
		0.623066, 0.735365, 0.266510,
		-0.058688, 0.383724, -0.921581,
		27.341703, 41.982353, 58.673187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262663, 42.456699, 59.409378>,  <27.382786, 41.713749, 59.318295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262663, 42.456699, 59.409378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130013, 42.409672, 59.034954>,  <27.050423, 42.381454, 58.810299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130013, 42.409672, 59.034954>,  <27.262663, 42.456699, 59.409378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130013, 42.409672, 59.034954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787206, 0.581310, 0.205878,
		0.519933, 0.805143, -0.285331,
		-0.331627, -0.117572, -0.936056,
		27.030525, 42.374401, 58.754139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.673443, 33.467739, 48.426491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721592, 33.782139, 48.669052>,  <37.750481, 33.970779, 48.814587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721592, 33.782139, 48.669052>,  <37.673443, 33.467739, 48.426491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721592, 33.782139, 48.669052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992714, 0.098656, 0.069185,
		-0.005446, -0.610310, 0.792144,
		0.120374, 0.785995, 0.606401,
		37.757706, 34.017937, 48.850971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293694, 33.358929, 49.132320>,  <37.673443, 33.467739, 48.426491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293694, 33.358929, 49.132320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336555, 33.752411, 49.074570>,  <37.362270, 33.988499, 49.039917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336555, 33.752411, 49.074570>,  <37.293694, 33.358929, 49.132320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336555, 33.752411, 49.074570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992214, 0.115071, 0.047645,
		0.063483, 0.138151, 0.988375,
		0.107151, 0.983704, -0.144380,
		37.368702, 34.047523, 49.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960175, 33.607254, 49.694778>,  <37.293694, 33.358929, 49.132320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960175, 33.607254, 49.694778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983582, 33.897034, 49.420044>,  <36.997623, 34.070904, 49.255203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983582, 33.897034, 49.420044>,  <36.960175, 33.607254, 49.694778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983582, 33.897034, 49.420044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957270, 0.235908, 0.167275,
		0.283213, 0.647700, 0.707301,
		0.058515, 0.724453, -0.686836,
		37.001137, 34.114368, 49.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800537, 34.197914, 50.062252>,  <36.960175, 33.607254, 49.694778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800537, 34.197914, 50.062252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741402, 34.273678, 49.673969>,  <36.705921, 34.319138, 49.441002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741402, 34.273678, 49.673969>,  <36.800537, 34.197914, 50.062252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741402, 34.273678, 49.673969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907031, 0.365293, 0.209418,
		0.394258, 0.911419, 0.117800,
		-0.147836, 0.189413, -0.970705,
		36.697052, 34.330502, 49.382759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473591, 34.771248, 50.165642>,  <36.800537, 34.197914, 50.062252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473591, 34.771248, 50.165642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396835, 34.668591, 49.786736>,  <36.350780, 34.606995, 49.559391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396835, 34.668591, 49.786736>,  <36.473591, 34.771248, 50.165642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396835, 34.668591, 49.786736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870693, 0.489886, 0.043654,
		0.452849, 0.833154, -0.317462,
		-0.191891, -0.256643, -0.947266,
		36.339268, 34.591599, 49.502556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255775, 35.285793, 49.807777>,  <36.473591, 34.771248, 50.165642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255775, 35.285793, 49.807777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087257, 35.011467, 49.570404>,  <35.986145, 34.846870, 49.427979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087257, 35.011467, 49.570404>,  <36.255775, 35.285793, 49.807777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087257, 35.011467, 49.570404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875913, 0.477337, 0.070190,
		0.235131, 0.549367, -0.801816,
		-0.421296, -0.685817, -0.593435,
		35.960869, 34.805721, 49.392372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824005, 35.626526, 49.279221>,  <36.255775, 35.285793, 49.807777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824005, 35.626526, 49.279221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678276, 35.255508, 49.312534>,  <35.590839, 35.032898, 49.332523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678276, 35.255508, 49.312534>,  <35.824005, 35.626526, 49.279221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678276, 35.255508, 49.312534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919775, 0.372395, 0.123840,
		-0.145882, -0.031489, -0.988801,
		-0.364325, -0.927540, 0.083288,
		35.568977, 34.977245, 49.337521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144382, 35.784832, 49.304832>,  <35.824005, 35.626526, 49.279221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144382, 35.784832, 49.304832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121410, 35.392925, 49.381519>,  <35.107628, 35.157780, 49.427532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121410, 35.392925, 49.381519>,  <35.144382, 35.784832, 49.304832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121410, 35.392925, 49.381519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977673, 0.094071, 0.187899,
		-0.202132, -0.176642, -0.963296,
		-0.057427, -0.979769, 0.191713,
		35.104183, 35.098995, 49.439034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618702, 35.482582, 48.880459>,  <35.144382, 35.784832, 49.304832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618702, 35.482582, 48.880459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671417, 35.279724, 49.221149>,  <34.703045, 35.158009, 49.425564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671417, 35.279724, 49.221149>,  <34.618702, 35.482582, 48.880459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671417, 35.279724, 49.221149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972343, 0.101003, 0.210586,
		-0.192824, -0.855924, -0.479806,
		0.131784, -0.507142, 0.851728,
		34.710953, 35.127583, 49.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958611, 35.165226, 48.884552>,  <34.618702, 35.482582, 48.880459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958611, 35.165226, 48.884552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098083, 35.103779, 49.254379>,  <34.181767, 35.066910, 49.476276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098083, 35.103779, 49.254379>,  <33.958611, 35.165226, 48.884552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098083, 35.103779, 49.254379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924030, 0.108690, 0.366544,
		-0.156799, -0.982134, -0.104050,
		0.348686, -0.153619, 0.924564,
		34.202690, 35.057693, 49.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586979, 34.661713, 49.169785>,  <33.958611, 35.165226, 48.884552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586979, 34.661713, 49.169785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727077, 34.905464, 49.454315>,  <33.811134, 35.051716, 49.625034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727077, 34.905464, 49.454315>,  <33.586979, 34.661713, 49.169785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727077, 34.905464, 49.454315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930888, 0.142295, 0.336451,
		0.103805, -0.780011, 0.617096,
		0.350245, 0.609373, 0.711332,
		33.832150, 35.088280, 49.667713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119759, 34.526211, 49.660431>,  <33.586979, 34.661713, 49.169785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119759, 34.526211, 49.660431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.290207, 34.856369, 49.808563>,  <33.392475, 35.054462, 49.897442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.290207, 34.856369, 49.808563>,  <33.119759, 34.526211, 49.660431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290207, 34.856369, 49.808563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882405, 0.288964, 0.371297,
		0.199455, -0.484996, 0.851467,
		0.426121, 0.825396, 0.370328,
		33.418041, 35.103989, 49.919662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873116, 34.554726, 50.327656>,  <33.119759, 34.526211, 49.660431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873116, 34.554726, 50.327656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.013916, 34.920887, 50.249538>,  <33.098396, 35.140583, 50.202667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.013916, 34.920887, 50.249538>,  <32.873116, 34.554726, 50.327656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013916, 34.920887, 50.249538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784284, 0.402336, 0.472255,
		0.510877, -0.013067, 0.859555,
		0.352000, 0.915399, -0.195296,
		33.119514, 35.195507, 50.190948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883854, 34.866264, 51.000637>,  <32.873116, 34.554726, 50.327656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883854, 34.866264, 51.000637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.854195, 35.131977, 50.703117>,  <32.836399, 35.291405, 50.524605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.854195, 35.131977, 50.703117>,  <32.883854, 34.866264, 51.000637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854195, 35.131977, 50.703117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820242, 0.383580, 0.424347,
		0.567190, 0.641559, 0.516427,
		-0.074153, 0.664280, -0.743797,
		32.831947, 35.331261, 50.479977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750343, 35.576740, 51.230335>,  <32.883854, 34.866264, 51.000637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750343, 35.576740, 51.230335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630474, 35.566502, 50.848854>,  <32.558552, 35.560360, 50.619965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630474, 35.566502, 50.848854>,  <32.750343, 35.576740, 51.230335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630474, 35.566502, 50.848854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868450, 0.421153, 0.261582,
		0.394957, 0.906628, -0.148438,
		-0.299673, -0.025597, -0.953699,
		32.540573, 35.558823, 50.562744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293152, 36.202927, 51.135704>,  <32.750343, 35.576740, 51.230335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293152, 36.202927, 51.135704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.199638, 35.978031, 50.818409>,  <32.143528, 35.843094, 50.628033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.199638, 35.978031, 50.818409>,  <32.293152, 36.202927, 51.135704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199638, 35.978031, 50.818409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938554, 0.343539, 0.033120,
		0.253888, 0.752244, -0.608005,
		-0.233788, -0.562237, -0.793242,
		32.129501, 35.809361, 50.580437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893597, 36.696312, 50.649082>,  <32.293152, 36.202927, 51.135704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893597, 36.696312, 50.649082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.821917, 36.326313, 50.515053>,  <31.778910, 36.104313, 50.434635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.821917, 36.326313, 50.515053>,  <31.893597, 36.696312, 50.649082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821917, 36.326313, 50.515053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923451, 0.275610, -0.266979,
		0.339303, 0.261581, -0.903576,
		-0.179198, -0.924995, -0.335072,
		31.768158, 36.048813, 50.414532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514286, 36.766422, 50.007317>,  <31.893597, 36.696312, 50.649082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514286, 36.766422, 50.007317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.417566, 36.415390, 50.172913>,  <31.359533, 36.204769, 50.272270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.417566, 36.415390, 50.172913>,  <31.514286, 36.766422, 50.007317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417566, 36.415390, 50.172913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961647, 0.273668, 0.018451,
		-0.129488, -0.393649, -0.910095,
		-0.241801, -0.877580, 0.413988,
		31.345026, 36.152115, 50.297108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784159, 36.718040, 49.900669>,  <31.514286, 36.766422, 50.007317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784159, 36.718040, 49.900669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.831013, 36.439850, 50.184246>,  <30.859125, 36.272934, 50.354393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.831013, 36.439850, 50.184246>,  <30.784159, 36.718040, 49.900669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831013, 36.439850, 50.184246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992859, -0.065756, 0.099538,
		-0.022609, -0.715536, -0.698210,
		0.117135, -0.695475, 0.708939,
		30.866154, 36.231209, 50.396927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228014, 36.264290, 49.737827>,  <30.784159, 36.718040, 49.900669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228014, 36.264290, 49.737827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360281, 36.183144, 50.106503>,  <30.439642, 36.134457, 50.327705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360281, 36.183144, 50.106503>,  <30.228014, 36.264290, 49.737827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360281, 36.183144, 50.106503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933953, -0.210673, 0.288701,
		0.135609, -0.956277, -0.259124,
		0.330668, -0.202859, 0.921687,
		30.459482, 36.122284, 50.383007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892113, 35.543251, 49.989399>,  <30.228014, 36.264290, 49.737827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892113, 35.543251, 49.989399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.999786, 35.763405, 50.305531>,  <30.064390, 35.895496, 50.495209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.999786, 35.763405, 50.305531>,  <29.892113, 35.543251, 49.989399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999786, 35.763405, 50.305531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945691, -0.004219, 0.325039,
		0.182230, -0.834903, 0.519355,
		0.269185, 0.550381, 0.790329,
		30.080542, 35.928520, 50.542629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384277, 35.420925, 50.376801>,  <29.892113, 35.543251, 49.989399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384277, 35.420925, 50.376801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.549669, 35.700073, 50.610725>,  <29.648905, 35.867561, 50.751080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.549669, 35.700073, 50.610725>,  <29.384277, 35.420925, 50.376801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549669, 35.700073, 50.610725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897293, 0.203261, 0.391854,
		0.154594, -0.686774, 0.710241,
		0.413480, 0.697872, 0.584815,
		29.673714, 35.909435, 50.786171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400133, 35.165108, 51.067436>,  <29.384277, 35.420925, 50.376801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400133, 35.165108, 51.067436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364958, 35.563522, 51.062225>,  <29.343853, 35.802570, 51.059097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364958, 35.563522, 51.062225>,  <29.400133, 35.165108, 51.067436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364958, 35.563522, 51.062225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760013, -0.058636, 0.647257,
		0.643930, 0.066820, 0.762161,
		-0.087939, 0.996041, -0.013027,
		29.338575, 35.862335, 51.058319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126308, 35.282036, 51.696766>,  <29.400133, 35.165108, 51.067436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126308, 35.282036, 51.696766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055729, 35.623711, 51.501122>,  <29.013382, 35.828716, 51.383736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055729, 35.623711, 51.501122>,  <29.126308, 35.282036, 51.696766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055729, 35.623711, 51.501122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882229, 0.083118, 0.463427,
		0.436508, 0.513277, 0.738923,
		-0.176449, 0.854189, -0.489109,
		29.002794, 35.879967, 51.354389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767874, 35.697876, 52.216164>,  <29.126308, 35.282036, 51.696766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767874, 35.697876, 52.216164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672846, 35.884842, 51.875557>,  <28.615829, 35.997021, 51.671192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672846, 35.884842, 51.875557>,  <28.767874, 35.697876, 52.216164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672846, 35.884842, 51.875557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956331, 0.041112, 0.289381,
		0.170270, 0.883080, 0.437239,
		-0.237571, 0.467418, -0.851517,
		28.601574, 36.025066, 51.620102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357996, 36.387688, 52.352619>,  <28.767874, 35.697876, 52.216164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357996, 36.387688, 52.352619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268795, 36.219902, 52.000637>,  <28.215275, 36.119232, 51.789448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268795, 36.219902, 52.000637>,  <28.357996, 36.387688, 52.352619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268795, 36.219902, 52.000637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974458, 0.120424, 0.189549,
		0.026458, 0.899749, -0.435606,
		-0.223004, -0.419464, -0.879954,
		28.201893, 36.094063, 51.736652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739506, 36.660591, 52.313869>,  <28.357996, 36.387688, 52.352619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739506, 36.660591, 52.313869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.753433, 36.427357, 51.989204>,  <27.761789, 36.287415, 51.794407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.753433, 36.427357, 51.989204>,  <27.739506, 36.660591, 52.313869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753433, 36.427357, 51.989204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999375, -0.015391, -0.031817,
		0.006059, 0.812263, -0.583261,
		0.034821, -0.583089, -0.811662,
		27.763880, 36.252430, 51.745705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032999, 36.835617, 51.882389>,  <27.739506, 36.660591, 52.313869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032999, 36.835617, 51.882389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151159, 36.470638, 51.769127>,  <27.222055, 36.251652, 51.701172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151159, 36.470638, 51.769127>,  <27.032999, 36.835617, 51.882389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151159, 36.470638, 51.769127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943496, -0.325210, 0.063671,
		-0.150180, 0.248343, -0.956959,
		0.295401, -0.912449, -0.283151,
		27.239780, 36.196903, 51.684181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337833, 36.707462, 51.452068>,  <27.032999, 36.835617, 51.882389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337833, 36.707462, 51.452068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.562130, 36.397591, 51.568993>,  <26.696707, 36.211670, 51.639149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.562130, 36.397591, 51.568993>,  <26.337833, 36.707462, 51.452068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562130, 36.397591, 51.568993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826759, -0.543114, 0.146620,
		0.045175, -0.323886, -0.945017,
		0.560740, -0.774677, 0.292310,
		26.730352, 36.165188, 51.656685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120871, 36.120701, 51.043358>,  <26.337833, 36.707462, 51.452068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120871, 36.120701, 51.043358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266508, 36.002182, 51.396549>,  <26.353889, 35.931068, 51.608463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266508, 36.002182, 51.396549>,  <26.120871, 36.120701, 51.043358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266508, 36.002182, 51.396549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777853, -0.618147, 0.113313,
		0.512233, -0.728080, -0.455541,
		0.364092, -0.296301, 0.882974,
		26.375736, 35.913292, 51.661442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032932, 35.385983, 51.049152>,  <26.120871, 36.120701, 51.043358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032932, 35.385983, 51.049152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.103418, 35.470665, 51.433678>,  <26.145710, 35.521473, 51.664394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.103418, 35.470665, 51.433678>,  <26.032932, 35.385983, 51.049152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103418, 35.470665, 51.433678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742572, -0.612490, 0.271004,
		0.646169, -0.761602, 0.049275,
		0.176217, 0.211705, 0.961316,
		26.156284, 35.534176, 51.722073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954475, 34.777611, 51.390175>,  <26.032932, 35.385983, 51.049152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954475, 34.777611, 51.390175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919636, 35.047104, 51.683704>,  <25.898731, 35.208801, 51.859821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919636, 35.047104, 51.683704>,  <25.954475, 34.777611, 51.390175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919636, 35.047104, 51.683704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722128, -0.550138, 0.419379,
		0.686254, -0.493386, 0.534440,
		-0.087100, 0.673734, 0.733823,
		25.893505, 35.249226, 51.903851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947769, 34.434128, 52.007339>,  <25.954475, 34.777611, 51.390175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947769, 34.434128, 52.007339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.743176, 34.772335, 52.068645>,  <25.620420, 34.975258, 52.105431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.743176, 34.772335, 52.068645>,  <25.947769, 34.434128, 52.007339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743176, 34.772335, 52.068645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714880, -0.517666, 0.470073,
		0.476793, 0.130869, 0.869219,
		-0.511483, 0.845515, 0.153263,
		25.589731, 35.025990, 52.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780043, 34.351280, 52.689949>,  <25.947769, 34.434128, 52.007339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780043, 34.351280, 52.689949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.523521, 34.640549, 52.587376>,  <25.369608, 34.814110, 52.525833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.523521, 34.640549, 52.587376>,  <25.780043, 34.351280, 52.689949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523521, 34.640549, 52.587376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705960, -0.425191, 0.566422,
		0.300584, 0.544281, 0.783203,
		-0.641304, 0.723167, -0.256435,
		25.331131, 34.857498, 52.510445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516384, 34.661537, 53.339272>,  <25.780043, 34.351280, 52.689949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516384, 34.661537, 53.339272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.250839, 34.739098, 53.050362>,  <25.091511, 34.785633, 52.877014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.250839, 34.739098, 53.050362>,  <25.516384, 34.661537, 53.339272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250839, 34.739098, 53.050362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731989, -0.366342, 0.574443,
		-0.153217, 0.910053, 0.385134,
		-0.663865, 0.193900, -0.722279,
		25.051680, 34.797268, 52.833679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.140953, 32.211525, 50.394421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776779, 32.122791, 50.254765>,  <35.558273, 32.069550, 50.170971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776779, 32.122791, 50.254765>,  <36.140953, 32.211525, 50.394421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776779, 32.122791, 50.254765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413468, 0.513267, 0.752065,
		0.012365, 0.829063, -0.559019,
		-0.910435, -0.221837, -0.349137,
		35.503647, 32.056240, 50.150024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762905, 32.828751, 50.378090>,  <36.140953, 32.211525, 50.394421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762905, 32.828751, 50.378090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.474995, 32.551067, 50.378078>,  <35.302250, 32.384457, 50.378071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.474995, 32.551067, 50.378078>,  <35.762905, 32.828751, 50.378090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474995, 32.551067, 50.378078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526885, 0.546261, 0.651147,
		-0.452019, 0.468690, -0.758952,
		-0.719771, -0.694211, -0.000025,
		35.259064, 32.342804, 50.378071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152683, 33.192631, 50.223953>,  <35.762905, 32.828751, 50.378090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152683, 33.192631, 50.223953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997364, 32.839817, 50.330719>,  <34.904171, 32.628128, 50.394775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997364, 32.839817, 50.330719>,  <35.152683, 33.192631, 50.223953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997364, 32.839817, 50.330719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655083, 0.467904, 0.593239,
		-0.648145, 0.055505, -0.759491,
		-0.388297, -0.882034, 0.266910,
		34.880875, 32.575207, 50.410793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475822, 33.358387, 50.347988>,  <35.152683, 33.192631, 50.223953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475822, 33.358387, 50.347988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531677, 33.003963, 50.524807>,  <34.565189, 32.791309, 50.630898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531677, 33.003963, 50.524807>,  <34.475822, 33.358387, 50.347988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531677, 33.003963, 50.524807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537720, 0.307014, 0.785239,
		-0.831480, -0.347348, -0.433579,
		0.139636, -0.886054, 0.442052,
		34.573566, 32.738148, 50.657421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840855, 32.995579, 50.461811>,  <34.475822, 33.358387, 50.347988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840855, 32.995579, 50.461811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107723, 32.859459, 50.726864>,  <34.267845, 32.777786, 50.885895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107723, 32.859459, 50.726864>,  <33.840855, 32.995579, 50.461811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107723, 32.859459, 50.726864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635165, 0.204853, 0.744715,
		-0.389165, -0.917733, -0.079472,
		0.667170, -0.340295, 0.662634,
		34.307873, 32.757370, 50.925655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467434, 32.583508, 50.990601>,  <33.840855, 32.995579, 50.461811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467434, 32.583508, 50.990601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808144, 32.645100, 51.190907>,  <34.012569, 32.682053, 51.311089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808144, 32.645100, 51.190907>,  <33.467434, 32.583508, 50.990601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808144, 32.645100, 51.190907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522685, 0.314916, 0.792230,
		-0.035713, -0.936546, 0.348720,
		0.851777, 0.153978, 0.500766,
		34.063675, 32.691292, 51.341137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356152, 32.367996, 51.643684>,  <33.467434, 32.583508, 50.990601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356152, 32.367996, 51.643684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670422, 32.611973, 51.685040>,  <33.858982, 32.758358, 51.709854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670422, 32.611973, 51.685040>,  <33.356152, 32.367996, 51.643684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670422, 32.611973, 51.685040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407890, 0.385088, 0.827848,
		0.465125, -0.692590, 0.551342,
		0.785675, 0.609940, 0.103386,
		33.906124, 32.794952, 51.716057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535439, 32.343590, 52.430832>,  <33.356152, 32.367996, 51.643684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535439, 32.343590, 52.430832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719105, 32.675781, 52.304672>,  <33.829304, 32.875095, 52.228977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719105, 32.675781, 52.304672>,  <33.535439, 32.343590, 52.430832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719105, 32.675781, 52.304672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257890, 0.464362, 0.847267,
		0.850094, -0.307697, 0.427390,
		0.459165, 0.830476, -0.315399,
		33.856853, 32.924923, 52.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834854, 32.650429, 53.072224>,  <33.535439, 32.343590, 52.430832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834854, 32.650429, 53.072224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781338, 32.928944, 52.790150>,  <33.749229, 33.096050, 52.620907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781338, 32.928944, 52.790150>,  <33.834854, 32.650429, 53.072224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781338, 32.928944, 52.790150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297334, 0.650597, 0.698796,
		0.945353, 0.303167, 0.119987,
		-0.133789, 0.696285, -0.705186,
		33.741199, 33.137829, 52.578594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075325, 33.179245, 53.389576>,  <33.834854, 32.650429, 53.072224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075325, 33.179245, 53.389576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883980, 33.348206, 53.081615>,  <33.769173, 33.449581, 52.896839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883980, 33.348206, 53.081615>,  <34.075325, 33.179245, 53.389576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883980, 33.348206, 53.081615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344918, 0.715887, 0.607073,
		0.807592, 0.555951, -0.196757,
		-0.478358, 0.422402, -0.769902,
		33.740471, 33.474926, 52.850643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335075, 33.864655, 53.246838>,  <34.075325, 33.179245, 53.389576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335075, 33.864655, 53.246838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952499, 33.862507, 53.130085>,  <33.722954, 33.861217, 53.060036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952499, 33.862507, 53.130085>,  <34.335075, 33.864655, 53.246838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952499, 33.862507, 53.130085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176122, 0.807994, 0.562251,
		0.232817, 0.589166, -0.773744,
		-0.956440, -0.005372, -0.291880,
		33.665565, 33.860897, 53.042522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182384, 34.587448, 53.239819>,  <34.335075, 33.864655, 53.246838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182384, 34.587448, 53.239819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820259, 34.419231, 53.215977>,  <33.602985, 34.318302, 53.201672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820259, 34.419231, 53.215977>,  <34.182384, 34.587448, 53.239819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820259, 34.419231, 53.215977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366324, 0.702032, 0.610703,
		-0.214985, 0.574711, -0.789613,
		-0.905311, -0.420546, -0.059604,
		33.548664, 34.293068, 53.198097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569637, 35.115654, 52.733631>,  <34.182384, 34.587448, 53.239819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569637, 35.115654, 52.733631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860497, 35.368256, 52.841297>,  <35.035011, 35.519817, 52.905899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860497, 35.368256, 52.841297>,  <34.569637, 35.115654, 52.733631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860497, 35.368256, 52.841297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652401, -0.513711, -0.557202,
		-0.213603, 0.580774, -0.785541,
		0.727150, 0.631508, 0.269167,
		35.078640, 35.557709, 52.922047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986572, 35.171871, 52.139385>,  <34.569637, 35.115654, 52.733631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986572, 35.171871, 52.139385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219685, 35.272503, 52.448467>,  <35.359550, 35.332882, 52.633919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219685, 35.272503, 52.448467>,  <34.986572, 35.171871, 52.139385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219685, 35.272503, 52.448467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772329, -0.467210, -0.430375,
		0.252740, 0.847597, -0.466585,
		0.582778, 0.251584, 0.772707,
		35.394520, 35.347977, 52.680279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750542, 35.404659, 51.817909>,  <34.986572, 35.171871, 52.139385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750542, 35.404659, 51.817909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825397, 35.345684, 52.206390>,  <35.870312, 35.310299, 52.439480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825397, 35.345684, 52.206390>,  <35.750542, 35.404659, 51.817909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825397, 35.345684, 52.206390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909800, -0.346840, -0.227962,
		0.370464, 0.926263, 0.069234,
		0.187139, -0.147441, 0.971205,
		35.881538, 35.301453, 52.497753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346897, 35.807804, 51.937645>,  <35.750542, 35.404659, 51.817909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346897, 35.807804, 51.937645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315315, 35.531204, 52.224865>,  <36.296368, 35.365246, 52.397198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315315, 35.531204, 52.224865>,  <36.346897, 35.807804, 51.937645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315315, 35.531204, 52.224865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943000, -0.285402, -0.171163,
		0.323292, 0.663607, 0.674617,
		-0.078952, -0.691500, 0.718049,
		36.291630, 35.323753, 52.440281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093185, 35.558701, 51.914925>,  <36.346897, 35.807804, 51.937645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093185, 35.558701, 51.914925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955006, 35.328930, 52.211761>,  <36.872097, 35.191067, 52.389862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955006, 35.328930, 52.211761>,  <37.093185, 35.558701, 51.914925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955006, 35.328930, 52.211761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809380, -0.582582, -0.074180,
		0.474940, 0.575009, 0.666181,
		-0.345450, -0.574425, 0.742092,
		36.851372, 35.156601, 52.434387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533848, 35.635166, 52.536343>,  <37.093185, 35.558701, 51.914925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533848, 35.635166, 52.536343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344288, 35.283054, 52.545475>,  <37.230553, 35.071785, 52.550957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344288, 35.283054, 52.545475>,  <37.533848, 35.635166, 52.536343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344288, 35.283054, 52.545475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861322, -0.468770, -0.195907,
		0.183157, -0.073173, 0.980357,
		-0.473897, -0.880284, 0.022833,
		37.202118, 35.018970, 52.552326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946415, 35.271000, 52.945820>,  <37.533848, 35.635166, 52.536343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946415, 35.271000, 52.945820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.752953, 34.992104, 52.734184>,  <37.636875, 34.824764, 52.607204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.752953, 34.992104, 52.734184>,  <37.946415, 35.271000, 52.945820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752953, 34.992104, 52.734184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875076, -0.397477, -0.276142,
		-0.017762, -0.596548, 0.802381,
		-0.483659, -0.697240, -0.529085,
		37.607853, 34.782932, 52.575459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502869, 34.757618, 52.938950>,  <37.946415, 35.271000, 52.945820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502869, 34.757618, 52.938950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248219, 34.693157, 52.637287>,  <38.095428, 34.654480, 52.456291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248219, 34.693157, 52.637287>,  <38.502869, 34.757618, 52.938950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248219, 34.693157, 52.637287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766250, -0.242543, -0.595007,
		-0.087029, -0.956663, 0.277890,
		-0.636621, -0.161151, -0.754151,
		38.057232, 34.644814, 52.411041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826843, 34.065018, 52.641502>,  <38.502869, 34.757618, 52.938950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826843, 34.065018, 52.641502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564274, 34.216557, 52.380554>,  <38.406731, 34.307480, 52.223988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564274, 34.216557, 52.380554>,  <38.826843, 34.065018, 52.641502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564274, 34.216557, 52.380554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576422, -0.305987, -0.757700,
		-0.486669, -0.873411, -0.017520,
		-0.656422, 0.378848, -0.652368,
		38.367348, 34.330212, 52.184845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770885, 33.584919, 51.990463>,  <38.826843, 34.065018, 52.641502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770885, 33.584919, 51.990463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653049, 33.948605, 51.872795>,  <38.582348, 34.166817, 51.802193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653049, 33.948605, 51.872795>,  <38.770885, 33.584919, 51.990463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653049, 33.948605, 51.872795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477919, -0.126397, -0.869263,
		-0.827532, -0.396668, -0.397298,
		-0.294592, 0.909219, -0.294173,
		38.564671, 34.221371, 51.784542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557472, 33.537903, 51.356091>,  <38.770885, 33.584919, 51.990463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557472, 33.537903, 51.356091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644722, 33.927803, 51.375217>,  <38.697071, 34.161743, 51.386692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.644722, 33.927803, 51.375217>,  <38.557472, 33.537903, 51.356091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644722, 33.927803, 51.375217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339983, -0.029971, -0.939953,
		-0.914785, 0.221285, -0.337936,
		0.218126, 0.974748, 0.047816,
		38.710159, 34.220226, 51.389561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674129, 33.617462, 50.719128>,  <38.557472, 33.537903, 51.356091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674129, 33.617462, 50.719128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855865, 33.921204, 50.905445>,  <38.964905, 34.103447, 51.017235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855865, 33.921204, 50.905445>,  <38.674129, 33.617462, 50.719128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855865, 33.921204, 50.905445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458359, 0.249081, -0.853150,
		-0.763862, 0.601117, -0.234890,
		0.454336, 0.759353, 0.465791,
		38.992165, 34.149010, 51.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678612, 33.998623, 50.177666>,  <38.674129, 33.617462, 50.719128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678612, 33.998623, 50.177666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907032, 34.190964, 50.443802>,  <39.044086, 34.306370, 50.603485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907032, 34.190964, 50.443802>,  <38.678612, 33.998623, 50.177666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907032, 34.190964, 50.443802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531972, 0.400522, -0.746048,
		-0.625223, 0.779977, -0.027081,
		0.571054, 0.480852, 0.665341,
		39.078350, 34.335220, 50.643406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681332, 34.687134, 49.873802>,  <38.678612, 33.998623, 50.177666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681332, 34.687134, 49.873802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994846, 34.653275, 50.119892>,  <39.182957, 34.632961, 50.267548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994846, 34.653275, 50.119892>,  <38.681332, 34.687134, 49.873802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994846, 34.653275, 50.119892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597148, 0.374776, -0.709195,
		-0.170544, 0.923243, 0.344292,
		0.783791, -0.084645, 0.615229,
		39.229984, 34.627880, 50.304462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020374, 35.382656, 50.098022>,  <38.681332, 34.687134, 49.873802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020374, 35.382656, 50.098022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320396, 35.123558, 50.151447>,  <39.500412, 34.968098, 50.183502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320396, 35.123558, 50.151447>,  <39.020374, 35.382656, 50.098022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320396, 35.123558, 50.151447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608636, 0.597004, -0.522636,
		0.258795, 0.473301, 0.842028,
		0.750058, -0.647744, 0.133566,
		39.545414, 34.929234, 50.191517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321449, 35.767559, 50.211380>,  <39.020374, 35.382656, 50.098022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321449, 35.767559, 50.211380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383183, 35.788876, 49.816746>,  <38.420223, 35.801666, 49.579967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383183, 35.788876, 49.816746>,  <38.321449, 35.767559, 50.211380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383183, 35.788876, 49.816746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351328, 0.936242, -0.004385,
		0.923445, 0.347291, 0.163213,
		0.154329, 0.053292, -0.986581,
		38.429482, 35.804863, 49.520771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864563, 36.264927, 50.098045>,  <38.321449, 35.767559, 50.211380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864563, 36.264927, 50.098045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569477, 36.232521, 49.829952>,  <38.392426, 36.213078, 49.669098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569477, 36.232521, 49.829952>,  <38.864563, 36.264927, 50.098045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569477, 36.232521, 49.829952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209238, 0.971326, 0.112891,
		0.641866, 0.223519, -0.733517,
		-0.737718, -0.081019, -0.670230,
		38.348160, 36.208214, 49.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838642, 37.011234, 49.790989>,  <38.864563, 36.264927, 50.098045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838642, 37.011234, 49.790989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499619, 36.811447, 49.719231>,  <38.296204, 36.691574, 49.676174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499619, 36.811447, 49.719231>,  <38.838642, 37.011234, 49.790989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499619, 36.811447, 49.719231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524509, 0.839855, 0.139761,
		0.080862, 0.212551, -0.973798,
		-0.847556, -0.499465, -0.179398,
		38.245350, 36.661606, 49.665413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378979, 37.523754, 49.370758>,  <38.838642, 37.011234, 49.790989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378979, 37.523754, 49.370758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133194, 37.261532, 49.546341>,  <37.985725, 37.104198, 49.651691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133194, 37.261532, 49.546341>,  <38.378979, 37.523754, 49.370758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133194, 37.261532, 49.546341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518924, 0.754915, 0.401026,
		-0.594270, 0.018629, -0.804050,
		-0.614460, -0.655558, 0.438956,
		37.948856, 37.064865, 49.678028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794060, 37.651665, 49.070225>,  <38.378979, 37.523754, 49.370758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794060, 37.651665, 49.070225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708256, 37.465706, 49.413818>,  <37.656773, 37.354130, 49.619976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708256, 37.465706, 49.413818>,  <37.794060, 37.651665, 49.070225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708256, 37.465706, 49.413818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590424, 0.762305, 0.265122,
		-0.778064, -0.450294, -0.438008,
		-0.214513, -0.464893, 0.858987,
		37.643902, 37.326237, 49.671516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159847, 37.751343, 49.178905>,  <37.794060, 37.651665, 49.070225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159847, 37.751343, 49.178905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302391, 37.680256, 49.545822>,  <37.387917, 37.637604, 49.765972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302391, 37.680256, 49.545822>,  <37.159847, 37.751343, 49.178905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302391, 37.680256, 49.545822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504160, 0.789990, 0.348911,
		-0.786660, -0.586799, 0.191920,
		0.356355, -0.177716, 0.917294,
		37.409298, 37.626942, 49.821011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534874, 37.654644, 49.647106>,  <37.159847, 37.751343, 49.178905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534874, 37.654644, 49.647106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843929, 37.745144, 49.884369>,  <37.029362, 37.799442, 50.026726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843929, 37.745144, 49.884369>,  <36.534874, 37.654644, 49.647106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843929, 37.745144, 49.884369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566909, 0.666409, 0.484265,
		-0.285722, -0.710430, 0.643158,
		0.772643, 0.226247, 0.593157,
		37.075722, 37.813019, 50.062317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317738, 37.619587, 50.357994>,  <36.534874, 37.654644, 49.647106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317738, 37.619587, 50.357994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657948, 37.827785, 50.388180>,  <36.862072, 37.952705, 50.406292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657948, 37.827785, 50.388180>,  <36.317738, 37.619587, 50.357994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657948, 37.827785, 50.388180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467122, 0.681656, 0.563154,
		0.241681, -0.514224, 0.822899,
		0.850522, 0.520498, 0.075462,
		36.913105, 37.983936, 50.410820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423748, 37.664207, 50.981510>,  <36.317738, 37.619587, 50.357994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423748, 37.664207, 50.981510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632862, 37.964020, 50.819080>,  <36.758331, 38.143909, 50.721622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632862, 37.964020, 50.819080>,  <36.423748, 37.664207, 50.981510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632862, 37.964020, 50.819080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493483, 0.654514, 0.572788,
		0.695104, -0.099055, 0.712052,
		0.522786, 0.749533, -0.406073,
		36.789700, 38.188881, 50.697258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479477, 38.069672, 51.469482>,  <36.423748, 37.664207, 50.981510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479477, 38.069672, 51.469482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539097, 38.309937, 51.155289>,  <36.574867, 38.454098, 50.966774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539097, 38.309937, 51.155289>,  <36.479477, 38.069672, 51.469482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539097, 38.309937, 51.155289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626096, 0.672170, 0.395210,
		0.765368, 0.432884, 0.476260,
		0.149048, 0.600665, -0.785485,
		36.583813, 38.490135, 50.919643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518551, 38.760437, 51.794922>,  <36.479477, 38.069672, 51.469482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518551, 38.760437, 51.794922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470478, 38.821323, 51.402515>,  <36.441635, 38.857853, 51.167072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470478, 38.821323, 51.402515>,  <36.518551, 38.760437, 51.794922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470478, 38.821323, 51.402515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678081, 0.709166, 0.193106,
		0.725094, 0.688415, 0.017981,
		-0.120186, 0.152213, -0.981013,
		36.434422, 38.866985, 51.108212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534775, 39.492245, 51.659286>,  <36.518551, 38.760437, 51.794922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534775, 39.492245, 51.659286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341503, 39.337658, 51.345043>,  <36.225540, 39.244907, 51.156498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341503, 39.337658, 51.345043>,  <36.534775, 39.492245, 51.659286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341503, 39.337658, 51.345043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752449, 0.642053, 0.146933,
		0.447619, 0.662127, -0.601020,
		-0.483175, -0.386467, -0.785612,
		36.196552, 39.221718, 51.109360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346039, 40.024414, 51.225967>,  <36.534775, 39.492245, 51.659286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346039, 40.024414, 51.225967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097065, 39.722366, 51.143639>,  <35.947681, 39.541138, 51.094242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097065, 39.722366, 51.143639>,  <36.346039, 40.024414, 51.225967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097065, 39.722366, 51.143639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782195, 0.609316, 0.130018,
		0.027233, 0.241923, -0.969913,
		-0.622438, -0.755121, -0.205824,
		35.910332, 39.495831, 51.081890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805668, 40.297371, 50.789948>,  <36.346039, 40.024414, 51.225967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805668, 40.297371, 50.789948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652107, 39.952858, 50.923103>,  <35.559971, 39.746151, 51.002995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652107, 39.952858, 50.923103>,  <35.805668, 40.297371, 50.789948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652107, 39.952858, 50.923103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861658, 0.463738, 0.206135,
		-0.331913, -0.207699, -0.920160,
		-0.383899, -0.861283, 0.332887,
		35.536938, 39.694473, 51.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068359, 40.260281, 50.555664>,  <35.805668, 40.297371, 50.789948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068359, 40.260281, 50.555664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069965, 39.998711, 50.858284>,  <35.070930, 39.841770, 51.039856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069965, 39.998711, 50.858284>,  <35.068359, 40.260281, 50.555664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069965, 39.998711, 50.858284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938407, 0.258935, 0.228790,
		-0.345509, -0.710870, -0.612608,
		0.004014, -0.653924, 0.756550,
		35.071171, 39.802532, 51.085247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367203, 39.881870, 50.554863>,  <35.068359, 40.260281, 50.555664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367203, 39.881870, 50.554863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543190, 39.793194, 50.902950>,  <34.648785, 39.739986, 51.111801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543190, 39.793194, 50.902950>,  <34.367203, 39.881870, 50.554863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543190, 39.793194, 50.902950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859666, 0.176175, 0.479518,
		-0.259616, -0.959070, -0.113069,
		0.439971, -0.221692, 0.870217,
		34.675182, 39.726688, 51.164017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825550, 39.639767, 50.879250>,  <34.367203, 39.881870, 50.554863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825550, 39.639767, 50.879250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079300, 39.744232, 51.170280>,  <34.231548, 39.806911, 51.344898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079300, 39.744232, 51.170280>,  <33.825550, 39.639767, 50.879250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079300, 39.744232, 51.170280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745399, 0.456046, 0.486213,
		-0.204828, -0.850774, 0.483972,
		0.634371, 0.261162, 0.727577,
		34.269611, 39.822582, 51.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399822, 39.627949, 51.489861>,  <33.825550, 39.639767, 50.879250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399822, 39.627949, 51.489861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723747, 39.839043, 51.592388>,  <33.918102, 39.965698, 51.653904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723747, 39.839043, 51.592388>,  <33.399822, 39.627949, 51.489861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723747, 39.839043, 51.592388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560123, 0.565478, 0.605390,
		0.174537, -0.633827, 0.753526,
		0.809814, 0.527730, 0.256324,
		33.966690, 39.997360, 51.669285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291950, 39.770813, 52.193977>,  <33.399822, 39.627949, 51.489861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291950, 39.770813, 52.193977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540405, 40.050648, 52.052692>,  <33.689480, 40.218548, 51.967922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540405, 40.050648, 52.052692>,  <33.291950, 39.770813, 52.193977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540405, 40.050648, 52.052692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482059, 0.696412, 0.531629,
		0.617905, -0.159945, 0.769813,
		0.621139, 0.699591, -0.353213,
		33.726746, 40.260525, 51.946728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439983, 40.214722, 52.828480>,  <33.291950, 39.770813, 52.193977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439983, 40.214722, 52.828480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518150, 40.426876, 52.498508>,  <33.565048, 40.554169, 52.300526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518150, 40.426876, 52.498508>,  <33.439983, 40.214722, 52.828480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518150, 40.426876, 52.498508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602016, 0.728892, 0.326026,
		0.774203, 0.432912, 0.461733,
		0.195413, 0.530381, -0.824930,
		33.576775, 40.585991, 52.251030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539867, 40.850494, 53.037563>,  <33.439983, 40.214722, 52.828480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539867, 40.850494, 53.037563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468410, 40.919174, 52.650036>,  <33.425537, 40.960384, 52.417519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468410, 40.919174, 52.650036>,  <33.539867, 40.850494, 53.037563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468410, 40.919174, 52.650036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395800, 0.888932, 0.230527,
		0.900794, 0.424639, -0.090838,
		-0.178640, 0.171703, -0.968817,
		33.414818, 40.970684, 52.359390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625381, 41.525631, 53.001698>,  <33.539867, 40.850494, 53.037563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625381, 41.525631, 53.001698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418808, 41.411213, 52.678841>,  <33.294865, 41.342564, 52.485126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418808, 41.411213, 52.678841>,  <33.625381, 41.525631, 53.001698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418808, 41.411213, 52.678841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538928, 0.841053, 0.046760,
		0.665471, 0.459139, -0.588506,
		-0.516434, -0.286046, -0.807139,
		33.263878, 41.325397, 52.436699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602856, 42.115280, 52.491398>,  <33.625381, 41.525631, 53.001698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602856, 42.115280, 52.491398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283031, 41.886326, 52.418652>,  <33.091137, 41.748955, 52.375004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283031, 41.886326, 52.418652>,  <33.602856, 42.115280, 52.491398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283031, 41.886326, 52.418652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592166, 0.801859, 0.079757,
		0.100182, 0.171468, -0.980083,
		-0.799564, -0.572382, -0.181870,
		33.043163, 41.714611, 52.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293453, 42.446507, 52.037521>,  <33.602856, 42.115280, 52.491398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293453, 42.446507, 52.037521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986904, 42.213444, 52.145729>,  <32.802975, 42.073605, 52.210655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986904, 42.213444, 52.145729>,  <33.293453, 42.446507, 52.037521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986904, 42.213444, 52.145729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620271, 0.780734, -0.075617,
		-0.167146, -0.225747, -0.959740,
		-0.766372, -0.582660, 0.270521,
		32.756992, 42.038647, 52.226887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664677, 42.634281, 51.515602>,  <33.293453, 42.446507, 52.037521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664677, 42.634281, 51.515602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546883, 42.459862, 51.855751>,  <32.476204, 42.355209, 52.059841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546883, 42.459862, 51.855751>,  <32.664677, 42.634281, 51.515602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546883, 42.459862, 51.855751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687136, 0.715039, 0.128695,
		-0.664169, -0.546423, -0.510197,
		-0.294489, -0.436050, 0.850374,
		32.458534, 42.329048, 52.110863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887821, 42.668667, 51.482494>,  <32.664677, 42.634281, 51.515602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887821, 42.668667, 51.482494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984682, 42.608917, 51.865963>,  <32.042801, 42.573067, 52.096043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984682, 42.608917, 51.865963>,  <31.887821, 42.668667, 51.482494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984682, 42.608917, 51.865963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787772, 0.546517, 0.284139,
		-0.566372, -0.824019, 0.014670,
		0.242153, -0.149371, 0.958671,
		32.057327, 42.564106, 52.153564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242765, 42.786556, 51.761177>,  <31.887821, 42.668667, 51.482494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242765, 42.786556, 51.761177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496193, 42.783463, 52.070637>,  <31.648251, 42.781605, 52.256313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496193, 42.783463, 52.070637>,  <31.242765, 42.786556, 51.761177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496193, 42.783463, 52.070637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578401, 0.659388, 0.480271,
		-0.513850, -0.751763, 0.413292,
		0.633570, -0.007739, 0.773647,
		31.686264, 42.781139, 52.302731>
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
