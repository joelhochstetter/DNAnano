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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.745802, 15.070788, 14.563326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.477372, 14.914637, 14.815441>,  <4.316314, 14.820946, 14.966710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.477372, 14.914637, 14.815441>,  <4.745802, 15.070788, 14.563326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.477372, 14.914637, 14.815441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571631, 0.268927, 0.775188,
		-0.472118, 0.880501, 0.042683,
		-0.671075, -0.390379, 0.630288,
		4.276049, 14.797523, 15.004527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427269, 15.524322, 15.037142>,  <4.745802, 15.070788, 14.563326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427269, 15.524322, 15.037142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427290, 15.165282, 15.213468>,  <4.427303, 14.949859, 15.319263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427290, 15.165282, 15.213468>,  <4.427269, 15.524322, 15.037142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427290, 15.165282, 15.213468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568890, 0.362558, 0.738184,
		-0.822413, 0.250735, 0.510654,
		0.000053, -0.897599, 0.440814,
		4.427306, 14.896003, 15.345712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.232222, 15.535180, 15.096963>,  <4.427269, 15.524322, 15.037142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.232222, 15.535180, 15.096963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.314572, 15.468177, 14.711309>,  <5.363983, 15.427975, 14.479918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.314572, 15.468177, 14.711309>,  <5.232222, 15.535180, 15.096963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.314572, 15.468177, 14.711309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817441, -0.512188, 0.263540,
		-0.537964, -0.842380, 0.031481,
		0.205877, -0.167509, -0.964135,
		5.376336, 15.417924, 14.422069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.363509, 14.736382, 14.923617>,  <5.232222, 15.535180, 15.096963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.363509, 14.736382, 14.923617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.595482, 14.990800, 14.720000>,  <5.734665, 15.143451, 14.597830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.595482, 14.990800, 14.720000>,  <5.363509, 14.736382, 14.923617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.595482, 14.990800, 14.720000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812752, -0.494516, 0.308039,
		-0.055803, -0.592368, -0.803733,
		0.579931, 0.636046, -0.509043,
		5.769461, 15.181614, 14.567287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.878856, 14.280705, 14.525798>,  <5.363509, 14.736382, 14.923617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.878856, 14.280705, 14.525798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.994816, 14.647946, 14.633905>,  <6.064392, 14.868291, 14.698770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.994816, 14.647946, 14.633905>,  <5.878856, 14.280705, 14.525798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.994816, 14.647946, 14.633905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746944, -0.393601, 0.535867,
		0.598359, 0.046527, -0.799876,
		0.289900, 0.918103, 0.270268,
		6.081786, 14.923377, 14.714986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.581620, 14.428624, 14.289595>,  <5.878856, 14.280705, 14.525798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.581620, 14.428624, 14.289595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.510981, 14.656283, 14.610813>,  <6.468598, 14.792879, 14.803544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.510981, 14.656283, 14.610813>,  <6.581620, 14.428624, 14.289595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.510981, 14.656283, 14.610813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877811, -0.278010, 0.390074,
		0.445265, 0.773810, -0.450509,
		-0.176597, 0.569148, 0.803047,
		6.458002, 14.827027, 14.851727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.226652, 14.572268, 14.436788>,  <6.581620, 14.428624, 14.289595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.226652, 14.572268, 14.436788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.043639, 14.701948, 14.767982>,  <6.933832, 14.779757, 14.966698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.043639, 14.701948, 14.767982>,  <7.226652, 14.572268, 14.436788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.043639, 14.701948, 14.767982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781502, -0.297576, 0.548364,
		0.424169, 0.897965, -0.117213,
		-0.457532, 0.324201, 0.827984,
		6.906380, 14.799209, 15.016376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.675014, 14.968806, 14.898212>,  <7.226652, 14.572268, 14.436788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.675014, 14.968806, 14.898212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410734, 14.801968, 15.147855>,  <7.252166, 14.701864, 15.297640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410734, 14.801968, 15.147855>,  <7.675014, 14.968806, 14.898212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410734, 14.801968, 15.147855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745244, -0.464078, 0.478794,
		0.089930, 0.781449, 0.617454,
		-0.660700, -0.417096, 0.624105,
		7.212524, 14.676839, 15.335086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106101, 14.938720, 15.506913>,  <7.675014, 14.968806, 14.898212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106101, 14.938720, 15.506913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796124, 14.699464, 15.588588>,  <7.610137, 14.555910, 15.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796124, 14.699464, 15.588588>,  <8.106101, 14.938720, 15.506913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.796124, 14.699464, 15.588588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584380, -0.555034, 0.591978,
		-0.240755, 0.578072, 0.779660,
		-0.774944, -0.598139, 0.204187,
		7.563641, 14.520022, 15.649844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.850016, 14.953975, 16.257938>,  <8.106101, 14.938720, 15.506913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.850016, 14.953975, 16.257938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.764568, 14.599688, 16.093077>,  <7.713299, 14.387115, 15.994161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.764568, 14.599688, 16.093077>,  <7.850016, 14.953975, 16.257938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.764568, 14.599688, 16.093077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460702, -0.463367, 0.756997,
		-0.861464, -0.028170, 0.507037,
		-0.213619, -0.885719, -0.412152,
		7.700482, 14.333972, 15.969431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.810431, 14.503693, 16.941242>,  <7.850016, 14.953975, 16.257938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.810431, 14.503693, 16.941242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.786226, 14.235192, 16.645741>,  <7.771703, 14.074092, 16.468439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.786226, 14.235192, 16.645741>,  <7.810431, 14.503693, 16.941242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.786226, 14.235192, 16.645741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557030, -0.636858, 0.533038,
		-0.828285, -0.379253, 0.412446,
		-0.060513, -0.671252, -0.738755,
		7.768073, 14.033817, 16.424114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.696826, 13.814340, 17.254618>,  <7.810431, 14.503693, 16.941242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.696826, 13.814340, 17.254618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.856061, 13.737960, 16.895716>,  <7.951602, 13.692132, 16.680374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.856061, 13.737960, 16.895716>,  <7.696826, 13.814340, 17.254618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.856061, 13.737960, 16.895716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685866, -0.587580, 0.429344,
		-0.609193, -0.786313, -0.102941,
		0.398085, -0.190950, -0.897255,
		7.975487, 13.680676, 16.626539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.771857, 13.103520, 17.243097>,  <7.696826, 13.814340, 17.254618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.771857, 13.103520, 17.243097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.999659, 13.213663, 16.933300>,  <8.136340, 13.279749, 16.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.999659, 13.213663, 16.933300>,  <7.771857, 13.103520, 17.243097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.999659, 13.213663, 16.933300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777871, -0.485070, 0.399530,
		-0.265672, -0.829991, -0.490441,
		0.569505, 0.275356, -0.774496,
		8.170510, 13.296270, 16.700951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.069850, 12.531568, 16.936216>,  <7.771857, 13.103520, 17.243097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.069850, 12.531568, 16.936216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.329010, 12.825419, 16.855673>,  <8.484506, 13.001731, 16.807346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.329010, 12.825419, 16.855673>,  <8.069850, 12.531568, 16.936216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.329010, 12.825419, 16.855673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728928, -0.521217, 0.443844,
		0.221110, -0.434342, -0.873188,
		0.647900, 0.734629, -0.201358,
		8.523380, 13.045808, 16.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.705532, 12.179167, 16.898460>,  <8.069850, 12.531568, 16.936216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.705532, 12.179167, 16.898460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.841459, 12.555223, 16.908770>,  <8.923016, 12.780856, 16.914955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.841459, 12.555223, 16.908770>,  <8.705532, 12.179167, 16.898460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.841459, 12.555223, 16.908770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876920, -0.326633, 0.352594,
		0.339906, -0.097217, -0.935421,
		0.339817, 0.940138, 0.025773,
		8.943404, 12.837264, 16.916502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.320284, 12.186653, 16.501717>,  <8.705532, 12.179167, 16.898460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.320284, 12.186653, 16.501717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339436, 12.478967, 16.774088>,  <9.350926, 12.654355, 16.937511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339436, 12.478967, 16.774088>,  <9.320284, 12.186653, 16.501717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.339436, 12.478967, 16.774088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796679, -0.439143, 0.415277,
		0.602503, 0.522597, -0.603227,
		0.047880, 0.730784, 0.680928,
		9.353800, 12.698202, 16.978367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.000518, 12.413143, 16.541325>,  <9.320284, 12.186653, 16.501717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.000518, 12.413143, 16.541325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.838606, 12.502002, 16.896133>,  <9.741459, 12.555317, 17.109018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.838606, 12.502002, 16.896133>,  <10.000518, 12.413143, 16.541325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.838606, 12.502002, 16.896133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777071, -0.427745, 0.461731,
		0.481990, 0.876177, 0.000519,
		-0.404780, 0.222146, 0.887020,
		9.717172, 12.568645, 17.162239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.623431, 12.783864, 16.975609>,  <10.000518, 12.413143, 16.541325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.623431, 12.783864, 16.975609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.362676, 12.664333, 17.254391>,  <10.206223, 12.592615, 17.421659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.362676, 12.664333, 17.254391>,  <10.623431, 12.783864, 16.975609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362676, 12.664333, 17.254391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757432, -0.300916, 0.579436,
		0.036574, 0.905623, 0.422504,
		-0.651889, -0.298826, 0.696953,
		10.167109, 12.574685, 17.463476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024183, 12.949325, 17.453997>,  <10.623431, 12.783864, 16.975609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024183, 12.949325, 17.453997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730330, 12.718919, 17.597395>,  <10.554017, 12.580675, 17.683434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730330, 12.718919, 17.597395>,  <11.024183, 12.949325, 17.453997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.730330, 12.718919, 17.597395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671267, -0.540324, 0.507396,
		-0.098564, 0.613397, 0.783600,
		-0.734634, -0.576016, 0.358496,
		10.509939, 12.546114, 17.704945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.091792, 12.941064, 18.150507>,  <11.024183, 12.949325, 17.453997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.091792, 12.941064, 18.150507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895571, 12.606223, 18.053661>,  <10.777838, 12.405318, 17.995554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895571, 12.606223, 18.053661>,  <11.091792, 12.941064, 18.150507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.895571, 12.606223, 18.053661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623916, -0.531363, 0.573047,
		-0.608348, 0.130052, 0.782943,
		-0.490553, -0.837102, -0.242113,
		10.748405, 12.355093, 17.981028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050006, 12.554700, 18.808950>,  <11.091792, 12.941064, 18.150507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050006, 12.554700, 18.808950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969274, 12.308150, 18.504490>,  <10.920835, 12.160221, 18.321814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969274, 12.308150, 18.504490>,  <11.050006, 12.554700, 18.808950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969274, 12.308150, 18.504490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540206, -0.718301, 0.438430,
		-0.816970, -0.322689, 0.477944,
		-0.201831, -0.616373, -0.761149,
		10.908724, 12.123239, 18.276146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.784617, 11.846822, 19.140955>,  <11.050006, 12.554700, 18.808950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.784617, 11.846822, 19.140955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.916943, 11.789215, 18.767899>,  <10.996338, 11.754651, 18.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.916943, 11.789215, 18.767899>,  <10.784617, 11.846822, 19.140955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.916943, 11.789215, 18.767899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615324, -0.716390, 0.328881,
		-0.715510, -0.682671, -0.148346,
		0.330791, -0.144037, -0.932647,
		11.016187, 11.746011, 18.488106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902485, 11.145711, 19.092546>,  <10.784617, 11.846822, 19.140955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902485, 11.145711, 19.092546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.093591, 11.264928, 18.761993>,  <11.208254, 11.336458, 18.563662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.093591, 11.264928, 18.761993>,  <10.902485, 11.145711, 19.092546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.093591, 11.264928, 18.761993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689940, -0.709611, 0.142954,
		-0.543805, -0.638453, -0.544659,
		0.477765, 0.298043, -0.826385,
		11.236920, 11.354341, 18.514078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.904939, 10.589337, 18.580795>,  <10.902485, 11.145711, 19.092546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.904939, 10.589337, 18.580795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220693, 10.832403, 18.545891>,  <11.410145, 10.978243, 18.524948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220693, 10.832403, 18.545891>,  <10.904939, 10.589337, 18.580795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220693, 10.832403, 18.545891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613857, -0.779651, 0.123788,
		0.007187, -0.151284, -0.988464,
		0.789385, 0.607665, -0.087263,
		11.457508, 11.014703, 18.519712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397328, 10.183935, 18.381874>,  <10.904939, 10.589337, 18.580795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397328, 10.183935, 18.381874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627875, 10.499944, 18.465460>,  <11.766204, 10.689549, 18.515612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627875, 10.499944, 18.465460>,  <11.397328, 10.183935, 18.381874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627875, 10.499944, 18.465460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755069, -0.612640, 0.233545,
		0.312525, 0.023174, -0.949627,
		0.576367, 0.790022, 0.208964,
		11.800785, 10.736950, 18.528149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050702, 9.957747, 18.018204>,  <11.397328, 10.183935, 18.381874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050702, 9.957747, 18.018204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076547, 10.180836, 18.349207>,  <12.092053, 10.314689, 18.547810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076547, 10.180836, 18.349207>,  <12.050702, 9.957747, 18.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076547, 10.180836, 18.349207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721042, -0.599362, 0.347655,
		0.689872, 0.574207, -0.440866,
		0.064613, 0.557720, 0.827510,
		12.095930, 10.348152, 18.597460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794523, 10.121926, 17.984737>,  <12.050702, 9.957747, 18.018204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794523, 10.121926, 17.984737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566153, 10.092931, 18.311855>,  <12.429130, 10.075533, 18.508125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566153, 10.092931, 18.311855>,  <12.794523, 10.121926, 17.984737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.566153, 10.092931, 18.311855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657727, -0.636540, 0.402756,
		0.491363, 0.767830, 0.411096,
		-0.570927, -0.072489, 0.817794,
		12.394875, 10.071184, 18.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420377, 10.379033, 17.695467>,  <12.794523, 10.121926, 17.984737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420377, 10.379033, 17.695467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.743479, 10.417772, 17.462864>,  <13.937340, 10.441016, 17.323301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.743479, 10.417772, 17.462864>,  <13.420377, 10.379033, 17.695467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.743479, 10.417772, 17.462864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445412, 0.545923, 0.709630,
		0.386186, -0.832219, 0.397835,
		0.807755, 0.096849, -0.581509,
		13.985806, 10.446827, 17.288412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038323, 10.567719, 18.180716>,  <13.420377, 10.379033, 17.695467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038323, 10.567719, 18.180716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.169384, 10.708946, 17.830175>,  <14.248020, 10.793683, 17.619852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.169384, 10.708946, 17.830175>,  <14.038323, 10.567719, 18.180716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169384, 10.708946, 17.830175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547449, 0.685023, 0.480669,
		0.770029, -0.637247, 0.031160,
		0.327651, 0.353071, -0.876348,
		14.267679, 10.814867, 17.567270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769136, 11.360253, 18.011446>,  <14.038323, 10.567719, 18.180716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769136, 11.360253, 18.011446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.687154, 11.715963, 18.174999>,  <13.637964, 11.929389, 18.273130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.687154, 11.715963, 18.174999>,  <13.769136, 11.360253, 18.011446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.687154, 11.715963, 18.174999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977429, -0.207830, -0.037940,
		0.051239, -0.407429, 0.911798,
		-0.204957, 0.889274, 0.408882,
		13.625667, 11.982745, 18.297665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471536, 11.407572, 18.780098>,  <13.769136, 11.360253, 18.011446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471536, 11.407572, 18.780098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340708, 11.696471, 18.536333>,  <13.262211, 11.869811, 18.390074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340708, 11.696471, 18.536333>,  <13.471536, 11.407572, 18.780098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340708, 11.696471, 18.536333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926119, -0.373245, 0.054693,
		-0.187958, 0.582276, 0.790966,
		-0.327070, 0.722249, -0.609411,
		13.242587, 11.913146, 18.353510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388607, 11.821725, 19.427738>,  <13.471536, 11.407572, 18.780098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388607, 11.821725, 19.427738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.647068, 12.094536, 19.564749>,  <13.802145, 12.258223, 19.646955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.647068, 12.094536, 19.564749>,  <13.388607, 11.821725, 19.427738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.647068, 12.094536, 19.564749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554353, 0.727881, -0.403587,
		-0.524575, 0.070899, 0.848407,
		0.646153, 0.682028, 0.342525,
		13.840914, 12.299145, 19.667507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071112, 12.285799, 19.821930>,  <13.388607, 11.821725, 19.427738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071112, 12.285799, 19.821930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394746, 12.461103, 19.665312>,  <13.588926, 12.566286, 19.571341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394746, 12.461103, 19.665312>,  <13.071112, 12.285799, 19.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394746, 12.461103, 19.665312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583551, 0.678060, -0.446880,
		0.069643, 0.590052, 0.804356,
		0.809085, 0.438261, -0.391547,
		13.637471, 12.592582, 19.547848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091343, 12.987989, 19.996725>,  <13.071112, 12.285799, 19.821930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091343, 12.987989, 19.996725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272544, 12.915441, 19.647579>,  <13.381265, 12.871911, 19.438091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272544, 12.915441, 19.647579>,  <13.091343, 12.987989, 19.996725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272544, 12.915441, 19.647579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514553, 0.746353, -0.422128,
		0.728027, 0.640360, 0.244775,
		0.453003, -0.181371, -0.872865,
		13.408444, 12.861030, 19.385719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255079, 13.644826, 19.719170>,  <13.091343, 12.987989, 19.996725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255079, 13.644826, 19.719170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211503, 13.387761, 19.415823>,  <13.185357, 13.233522, 19.233816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211503, 13.387761, 19.415823>,  <13.255079, 13.644826, 19.719170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211503, 13.387761, 19.415823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545195, 0.676552, -0.495014,
		0.831201, 0.359531, -0.424079,
		-0.108939, -0.642662, -0.758365,
		13.178822, 13.194963, 19.188313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341394, 14.067386, 19.085535>,  <13.255079, 13.644826, 19.719170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341394, 14.067386, 19.085535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124866, 13.740076, 19.008179>,  <12.994948, 13.543691, 18.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124866, 13.740076, 19.008179>,  <13.341394, 14.067386, 19.085535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124866, 13.740076, 19.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575891, 0.528405, -0.623809,
		0.612635, -0.226310, -0.757273,
		-0.541321, -0.818274, -0.193390,
		12.962469, 13.494594, 18.950163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.302717, 14.012088, 18.385361>,  <13.341394, 14.067386, 19.085535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.302717, 14.012088, 18.385361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992910, 13.797476, 18.519381>,  <12.807026, 13.668709, 18.599792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992910, 13.797476, 18.519381>,  <13.302717, 14.012088, 18.385361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992910, 13.797476, 18.519381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611069, 0.497766, -0.615487,
		0.163451, -0.681443, -0.713385,
		-0.774518, -0.536530, 0.335049,
		12.760555, 13.636517, 18.619896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054589, 13.702931, 17.776688>,  <13.302717, 14.012088, 18.385361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054589, 13.702931, 17.776688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748607, 13.711145, 18.034189>,  <12.565017, 13.716074, 18.188690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748607, 13.711145, 18.034189>,  <13.054589, 13.702931, 17.776688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748607, 13.711145, 18.034189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564629, 0.459521, -0.685591,
		-0.309897, -0.887929, -0.339919,
		-0.764956, 0.020535, 0.643755,
		12.519120, 13.717305, 18.227316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.536120, 13.441344, 17.347860>,  <13.054589, 13.702931, 17.776688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.536120, 13.441344, 17.347860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370118, 13.637063, 17.654678>,  <12.270517, 13.754494, 17.838770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.370118, 13.637063, 17.654678>,  <12.536120, 13.441344, 17.347860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370118, 13.637063, 17.654678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710061, 0.352930, -0.609306,
		-0.568845, -0.797514, 0.200962,
		-0.415005, 0.489297, 0.767046,
		12.245617, 13.783852, 17.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.854812, 13.604765, 17.085947>,  <12.536120, 13.441344, 17.347860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.854812, 13.604765, 17.085947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859865, 13.834135, 17.413610>,  <11.862897, 13.971757, 17.610209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859865, 13.834135, 17.413610>,  <11.854812, 13.604765, 17.085947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.859865, 13.834135, 17.413610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721792, 0.572175, -0.389400,
		-0.691995, -0.586343, 0.421123,
		0.012634, 0.573426, 0.819160,
		11.863655, 14.006163, 17.659359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.148911, 13.764661, 17.201454>,  <11.854812, 13.604765, 17.085947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.148911, 13.764661, 17.201454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380796, 14.057038, 17.345484>,  <11.519927, 14.232465, 17.431902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380796, 14.057038, 17.345484>,  <11.148911, 13.764661, 17.201454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.380796, 14.057038, 17.345484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568468, 0.679404, -0.463954,
		-0.583762, 0.064268, 0.809377,
		0.579712, 0.730944, 0.360076,
		11.554710, 14.276321, 17.453506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723997, 14.235237, 17.606674>,  <11.148911, 13.764661, 17.201454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723997, 14.235237, 17.606674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047256, 14.445479, 17.500366>,  <11.241212, 14.571625, 17.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047256, 14.445479, 17.500366>,  <10.723997, 14.235237, 17.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047256, 14.445479, 17.500366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588648, 0.705685, -0.394337,
		-0.019714, 0.475129, 0.879695,
		0.808149, 0.525605, -0.265772,
		11.289701, 14.603161, 17.420635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.609831, 14.954451, 17.820217>,  <10.723997, 14.235237, 17.606674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.609831, 14.954451, 17.820217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915511, 14.984049, 17.563929>,  <11.098919, 15.001808, 17.410156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915511, 14.984049, 17.563929>,  <10.609831, 14.954451, 17.820217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.915511, 14.984049, 17.563929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347524, 0.884101, -0.312396,
		0.543346, 0.461399, 0.701346,
		0.764201, 0.073995, -0.640720,
		11.144772, 15.006248, 17.371712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911674, 15.730088, 17.800377>,  <10.609831, 14.954451, 17.820217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911674, 15.730088, 17.800377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.991470, 15.563720, 17.445477>,  <11.039349, 15.463899, 17.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.991470, 15.563720, 17.445477>,  <10.911674, 15.730088, 17.800377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.991470, 15.563720, 17.445477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451180, 0.764775, -0.459952,
		0.869850, 0.492067, -0.035089,
		0.199492, -0.415921, -0.887250,
		11.051318, 15.438944, 17.179302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.957068, 16.319296, 17.381142>,  <10.911674, 15.730088, 17.800377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.957068, 16.319296, 17.381142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.928807, 16.035370, 17.100807>,  <10.911850, 15.865015, 16.932606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.928807, 16.035370, 17.100807>,  <10.957068, 16.319296, 17.381142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.928807, 16.035370, 17.100807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615901, 0.583714, -0.529098,
		0.784649, 0.394264, -0.478416,
		-0.070654, -0.709813, -0.700838,
		10.907611, 15.822426, 16.890556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.117514, 16.666698, 16.712578>,  <10.957068, 16.319296, 17.381142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.117514, 16.666698, 16.712578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905275, 16.330332, 16.670004>,  <10.777932, 16.128511, 16.644459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905275, 16.330332, 16.670004>,  <11.117514, 16.666698, 16.712578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905275, 16.330332, 16.670004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689360, 0.501173, -0.523075,
		0.493192, -0.204189, -0.845617,
		-0.530607, -0.840912, -0.106415,
		10.746097, 16.078056, 16.638073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921855, 16.723452, 15.970476>,  <11.117514, 16.666698, 16.712578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921855, 16.723452, 15.970476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.691106, 16.465034, 16.170414>,  <10.552656, 16.309984, 16.290377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.691106, 16.465034, 16.170414>,  <10.921855, 16.723452, 15.970476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.691106, 16.465034, 16.170414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815577, 0.421606, -0.396337,
		0.045314, -0.636297, -0.770112,
		-0.576872, -0.646045, 0.499845,
		10.518044, 16.271221, 16.320368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.398769, 16.491314, 15.414670>,  <10.921855, 16.723452, 15.970476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.398769, 16.491314, 15.414670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238521, 16.391647, 15.767355>,  <10.142371, 16.331846, 15.978966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238521, 16.391647, 15.767355>,  <10.398769, 16.491314, 15.414670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.238521, 16.391647, 15.767355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913969, 0.176432, -0.365421,
		-0.064511, -0.952254, -0.298414,
		-0.400623, -0.249167, 0.881712,
		10.118334, 16.316896, 16.031868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.814346, 16.118725, 15.311218>,  <10.398769, 16.491314, 15.414670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.814346, 16.118725, 15.311218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746838, 16.256334, 15.680686>,  <9.706332, 16.338900, 15.902367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746838, 16.256334, 15.680686>,  <9.814346, 16.118725, 15.311218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.746838, 16.256334, 15.680686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969484, 0.111111, -0.218528,
		-0.177809, -0.932363, 0.314773,
		-0.168773, 0.344024, 0.923668,
		9.696206, 16.359541, 15.957787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.210710, 15.771283, 15.560319>,  <9.814346, 16.118725, 15.311218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.210710, 15.771283, 15.560319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240156, 16.074881, 15.819088>,  <9.257824, 16.257040, 15.974349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240156, 16.074881, 15.819088>,  <9.210710, 15.771283, 15.560319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240156, 16.074881, 15.819088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979120, 0.178254, -0.097717,
		-0.189484, -0.626222, 0.756269,
		0.073616, 0.758994, 0.646923,
		9.262240, 16.302578, 16.013165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.614825, 15.695510, 15.991660>,  <9.210710, 15.771283, 15.560319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.614825, 15.695510, 15.991660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.743812, 16.072725, 16.024389>,  <8.821203, 16.299055, 16.044027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.743812, 16.072725, 16.024389>,  <8.614825, 15.695510, 15.991660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.743812, 16.072725, 16.024389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945842, 0.317595, 0.067202,
		0.037388, -0.099061, 0.994379,
		0.322466, 0.943038, 0.081822,
		8.840551, 16.355637, 16.048935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.174632, 15.877815, 16.452059>,  <8.614825, 15.695510, 15.991660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.174632, 15.877815, 16.452059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308348, 16.219479, 16.292728>,  <8.388577, 16.424477, 16.197130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308348, 16.219479, 16.292728>,  <8.174632, 15.877815, 16.452059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308348, 16.219479, 16.292728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889578, 0.425557, 0.165986,
		0.311289, 0.298854, 0.902101,
		0.334290, 0.854159, -0.398325,
		8.408634, 16.475727, 16.173231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.984315, 16.343788, 16.956362>,  <8.174632, 15.877815, 16.452059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.984315, 16.343788, 16.956362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.028074, 16.536869, 16.608791>,  <8.054330, 16.652718, 16.400249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.028074, 16.536869, 16.608791>,  <7.984315, 16.343788, 16.956362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.028074, 16.536869, 16.608791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875838, 0.460189, 0.145376,
		0.470043, 0.745133, 0.473113,
		0.109397, 0.482703, -0.868924,
		8.060893, 16.681681, 16.348114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.840778, 17.165003, 17.159464>,  <7.984315, 16.343788, 16.956362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.840778, 17.165003, 17.159464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.791014, 17.111479, 16.766197>,  <7.761155, 17.079365, 16.530237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.791014, 17.111479, 16.766197>,  <7.840778, 17.165003, 17.159464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.791014, 17.111479, 16.766197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769459, 0.638611, 0.010454,
		0.626462, 0.757807, -0.182412,
		-0.124412, -0.133809, -0.983167,
		7.753690, 17.071337, 16.471247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.595768, 17.781528, 16.823780>,  <7.840778, 17.165003, 17.159464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.595768, 17.781528, 16.823780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.512655, 17.522310, 16.530695>,  <7.462787, 17.366779, 16.354845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.512655, 17.522310, 16.530695>,  <7.595768, 17.781528, 16.823780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.512655, 17.522310, 16.530695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819106, 0.524721, -0.231804,
		0.534689, 0.552003, -0.639844,
		-0.207783, -0.648043, -0.732712,
		7.450320, 17.327896, 16.310883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505052, 18.176792, 16.262587>,  <7.595768, 17.781528, 16.823780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505052, 18.176792, 16.262587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.319761, 17.826893, 16.205683>,  <7.208586, 17.616953, 16.171541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.319761, 17.826893, 16.205683>,  <7.505052, 18.176792, 16.262587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.319761, 17.826893, 16.205683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865643, 0.481001, -0.138927,
		0.189952, 0.058791, -0.980032,
		-0.463229, -0.874747, -0.142259,
		7.180792, 17.564468, 16.163006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.178729, 18.692444, 16.291393>,  <7.505052, 18.176792, 16.262587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.178729, 18.692444, 16.291393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858996, 18.758223, 16.060213>,  <7.667156, 18.797689, 15.921506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858996, 18.758223, 16.060213>,  <8.178729, 18.692444, 16.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.858996, 18.758223, 16.060213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118689, -0.986083, -0.116419,
		-0.589050, -0.024462, 0.807726,
		-0.799333, 0.164445, -0.577948,
		7.619196, 18.807556, 15.886828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.647249, 18.823502, 16.772552>,  <8.178729, 18.692444, 16.291393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.647249, 18.823502, 16.772552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723714, 18.608952, 17.101370>,  <8.769592, 18.480221, 17.298660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723714, 18.608952, 17.101370>,  <8.647249, 18.823502, 16.772552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.723714, 18.608952, 17.101370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193525, -0.841645, -0.504164,
		0.962292, -0.062710, -0.264692,
		0.191161, -0.536377, 0.822044,
		8.781062, 18.448038, 17.347982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.724581, 18.098131, 16.889315>,  <8.647249, 18.823502, 16.772552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.724581, 18.098131, 16.889315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350319, 18.234423, 16.926096>,  <8.125762, 18.316196, 16.948166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350319, 18.234423, 16.926096>,  <8.724581, 18.098131, 16.889315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.350319, 18.234423, 16.926096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238076, -0.801724, 0.548232,
		0.260521, 0.491064, 0.831255,
		-0.935654, 0.340728, 0.091955,
		8.069623, 18.336641, 16.953682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.486421, 18.287600, 17.008432>,  <8.724581, 18.098131, 16.889315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.486421, 18.287600, 17.008432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469525, 18.569445, 16.725098>,  <9.459388, 18.738552, 16.555098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469525, 18.569445, 16.725098>,  <9.486421, 18.287600, 17.008432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469525, 18.569445, 16.725098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738866, 0.499255, 0.452571,
		0.672527, -0.504249, -0.541701,
		-0.042238, 0.704611, -0.708336,
		9.456854, 18.780828, 16.512596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209517, 18.517529, 17.122423>,  <9.486421, 18.287600, 17.008432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209517, 18.517529, 17.122423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.994338, 18.786470, 16.919031>,  <9.865231, 18.947836, 16.796995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.994338, 18.786470, 16.919031>,  <10.209517, 18.517529, 17.122423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.994338, 18.786470, 16.919031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521500, 0.739352, 0.425906,
		0.662306, -0.036057, -0.748366,
		-0.537949, 0.672353, -0.508481,
		9.832953, 18.988176, 16.766487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684505, 18.926668, 16.589348>,  <10.209517, 18.517529, 17.122423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684505, 18.926668, 16.589348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356970, 19.105230, 16.733694>,  <10.160449, 19.212368, 16.820303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356970, 19.105230, 16.733694>,  <10.684505, 18.926668, 16.589348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.356970, 19.105230, 16.733694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530577, 0.828517, 0.179017,
		-0.219071, 0.338054, -0.915275,
		-0.818838, 0.446406, 0.360868,
		10.111319, 19.239153, 16.841955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670623, 19.703171, 16.311192>,  <10.684505, 18.926668, 16.589348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670623, 19.703171, 16.311192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499549, 19.644886, 16.668034>,  <10.396904, 19.609915, 16.882139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499549, 19.644886, 16.668034>,  <10.670623, 19.703171, 16.311192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499549, 19.644886, 16.668034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506011, 0.779202, 0.369860,
		-0.749024, 0.609599, -0.259521,
		-0.427686, -0.145713, 0.892106,
		10.371243, 19.601171, 16.935665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434861, 20.344587, 16.572586>,  <10.670623, 19.703171, 16.311192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434861, 20.344587, 16.572586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.504350, 20.111532, 16.890165>,  <10.546042, 19.971699, 17.080713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.504350, 20.111532, 16.890165>,  <10.434861, 20.344587, 16.572586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.504350, 20.111532, 16.890165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395674, 0.779567, 0.485508,
		-0.901811, 0.229802, 0.365961,
		0.173720, -0.582637, 0.793949,
		10.556466, 19.936741, 17.128349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.280312, 20.741417, 17.196606>,  <10.434861, 20.344587, 16.572586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.280312, 20.741417, 17.196606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506513, 20.456240, 17.362459>,  <10.642233, 20.285133, 17.461971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506513, 20.456240, 17.362459>,  <10.280312, 20.741417, 17.196606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506513, 20.456240, 17.362459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477116, 0.692871, 0.540639,
		-0.672731, -0.107905, 0.731977,
		0.565503, -0.712942, 0.414632,
		10.676164, 20.242357, 17.486849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.146419, 20.646513, 17.934181>,  <10.280312, 20.741417, 17.196606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.146419, 20.646513, 17.934181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516196, 20.514908, 17.857079>,  <10.738063, 20.435944, 17.810818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516196, 20.514908, 17.857079>,  <10.146419, 20.646513, 17.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516196, 20.514908, 17.857079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379852, 0.750257, 0.541134,
		-0.033425, -0.573466, 0.818547,
		0.924443, -0.329015, -0.192755,
		10.793530, 20.416203, 17.799252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.473619, 20.579742, 18.597874>,  <10.146419, 20.646513, 17.934181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.473619, 20.579742, 18.597874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784815, 20.584761, 18.346615>,  <10.971533, 20.587772, 18.195860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784815, 20.584761, 18.346615>,  <10.473619, 20.579742, 18.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784815, 20.584761, 18.346615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525590, 0.534769, 0.661648,
		0.344215, -0.844905, 0.409452,
		0.777992, 0.012545, -0.628149,
		11.018212, 20.588524, 18.158171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002197, 20.298731, 19.026451>,  <10.473619, 20.579742, 18.597874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002197, 20.298731, 19.026451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.162660, 20.524784, 18.738091>,  <11.258937, 20.660416, 18.565075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.162660, 20.524784, 18.738091>,  <11.002197, 20.298731, 19.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.162660, 20.524784, 18.738091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678321, 0.345620, 0.648404,
		0.615594, -0.749112, -0.244696,
		0.401155, 0.565136, -0.720900,
		11.283007, 20.694324, 18.521820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706978, 20.215816, 19.150301>,  <11.002197, 20.298731, 19.026451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706978, 20.215816, 19.150301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703902, 20.541512, 18.918108>,  <11.702057, 20.736929, 18.778791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703902, 20.541512, 18.918108>,  <11.706978, 20.215816, 19.150301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703902, 20.541512, 18.918108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735048, 0.398176, 0.548781,
		0.677972, -0.422462, -0.601565,
		-0.007689, 0.814237, -0.580482,
		11.701595, 20.785782, 18.743963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351952, 20.303749, 18.939568>,  <11.706978, 20.215816, 19.150301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351952, 20.303749, 18.939568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175881, 20.662401, 18.920393>,  <12.070239, 20.877592, 18.908888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175881, 20.662401, 18.920393>,  <12.351952, 20.303749, 18.939568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175881, 20.662401, 18.920393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725002, 0.386400, 0.570147,
		0.529735, 0.216210, -0.820143,
		-0.440174, 0.896632, -0.047937,
		12.043829, 20.931391, 18.906012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.893511, 20.669081, 18.938833>,  <12.351952, 20.303749, 18.939568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.893511, 20.669081, 18.938833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586189, 20.899036, 19.051411>,  <12.401796, 21.037010, 19.118958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586189, 20.899036, 19.051411>,  <12.893511, 20.669081, 18.938833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586189, 20.899036, 19.051411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602313, 0.500511, 0.621858,
		0.216634, 0.647294, -0.730808,
		-0.768303, 0.574890, 0.281446,
		12.355699, 21.071503, 19.135845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.132818, 21.367764, 19.025663>,  <12.893511, 20.669081, 18.938833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.132818, 21.367764, 19.025663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786681, 21.390717, 19.224817>,  <12.578999, 21.404488, 19.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786681, 21.390717, 19.224817>,  <13.132818, 21.367764, 19.025663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.786681, 21.390717, 19.224817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457856, 0.494553, 0.738772,
		-0.203839, 0.867251, -0.454231,
		-0.865342, 0.057382, 0.497886,
		12.527079, 21.407930, 19.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114300, 22.006571, 19.257744>,  <13.132818, 21.367764, 19.025663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114300, 22.006571, 19.257744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868611, 21.810635, 19.505224>,  <12.721198, 21.693073, 19.653713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868611, 21.810635, 19.505224>,  <13.114300, 22.006571, 19.257744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.868611, 21.810635, 19.505224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388064, 0.495183, 0.777303,
		-0.687124, 0.717531, -0.114062,
		-0.614220, -0.489840, 0.618700,
		12.684345, 21.663683, 19.690834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876290, 22.469088, 19.774010>,  <13.114300, 22.006571, 19.257744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876290, 22.469088, 19.774010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.799635, 22.109682, 19.931971>,  <12.753642, 21.894039, 20.026747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.799635, 22.109682, 19.931971>,  <12.876290, 22.469088, 19.774010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.799635, 22.109682, 19.931971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326930, 0.320943, 0.888883,
		-0.925414, 0.299450, 0.232246,
		-0.191638, -0.898513, 0.394904,
		12.742144, 21.840128, 20.050442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534876, 22.583941, 20.487553>,  <12.876290, 22.469088, 19.774010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534876, 22.583941, 20.487553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715469, 22.227331, 20.472872>,  <12.823826, 22.013365, 20.464064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715469, 22.227331, 20.472872>,  <12.534876, 22.583941, 20.487553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715469, 22.227331, 20.472872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237692, 0.080524, 0.967997,
		-0.860038, -0.445758, 0.248263,
		0.451484, -0.891524, -0.036700,
		12.850915, 21.959873, 20.461863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324283, 22.354845, 21.131485>,  <12.534876, 22.583941, 20.487553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324283, 22.354845, 21.131485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633430, 22.125931, 21.021818>,  <12.818917, 21.988583, 20.956018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633430, 22.125931, 21.021818>,  <12.324283, 22.354845, 21.131485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633430, 22.125931, 21.021818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251859, -0.119927, 0.960304,
		-0.582447, -0.811239, 0.051447,
		0.772866, -0.572284, -0.274169,
		12.865290, 21.954247, 20.939568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.281589, 21.830706, 21.555525>,  <12.324283, 22.354845, 21.131485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.281589, 21.830706, 21.555525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648794, 21.811472, 21.398075>,  <12.869118, 21.799931, 21.303606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648794, 21.811472, 21.398075>,  <12.281589, 21.830706, 21.555525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648794, 21.811472, 21.398075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387631, -0.100530, 0.916317,
		-0.083629, -0.993771, -0.073650,
		0.918013, -0.048082, -0.393623,
		12.924198, 21.797047, 21.279987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627175, 21.321068, 21.971668>,  <12.281589, 21.830706, 21.555525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627175, 21.321068, 21.971668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900118, 21.559732, 21.802727>,  <13.063884, 21.702932, 21.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900118, 21.559732, 21.802727>,  <12.627175, 21.321068, 21.971668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.900118, 21.559732, 21.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437716, 0.129252, 0.889774,
		0.585486, -0.792014, -0.172973,
		0.682357, 0.596663, -0.422353,
		13.104825, 21.738731, 21.676022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275016, 21.064402, 22.207533>,  <12.627175, 21.321068, 21.971668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275016, 21.064402, 22.207533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293291, 21.449722, 22.101730>,  <13.304256, 21.680914, 22.038248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293291, 21.449722, 22.101730>,  <13.275016, 21.064402, 22.207533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293291, 21.449722, 22.101730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242638, 0.246152, 0.938369,
		0.969040, -0.107052, -0.222487,
		0.045689, 0.963301, -0.264507,
		13.306997, 21.738712, 22.022379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718116, 21.352644, 22.717407>,  <13.275016, 21.064402, 22.207533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718116, 21.352644, 22.717407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.579707, 21.685740, 22.544518>,  <13.496662, 21.885597, 22.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.579707, 21.685740, 22.544518>,  <13.718116, 21.352644, 22.717407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.579707, 21.685740, 22.544518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314507, 0.536978, 0.782777,
		0.883943, 0.134920, -0.447707,
		-0.346021, 0.832737, -0.432224,
		13.475901, 21.935560, 22.414850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278284, 21.908504, 22.885719>,  <13.718116, 21.352644, 22.717407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278284, 21.908504, 22.885719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937607, 22.099081, 22.798428>,  <13.733200, 22.213427, 22.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937607, 22.099081, 22.798428>,  <14.278284, 21.908504, 22.885719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937607, 22.099081, 22.798428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175631, 0.651865, 0.737717,
		0.493734, 0.589980, -0.638866,
		-0.851693, 0.476440, -0.218229,
		13.682099, 22.242014, 22.732960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440934, 22.637148, 22.902208>,  <14.278284, 21.908504, 22.885719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440934, 22.637148, 22.902208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044246, 22.629829, 22.953051>,  <13.806232, 22.625439, 22.983555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044246, 22.629829, 22.953051>,  <14.440934, 22.637148, 22.902208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044246, 22.629829, 22.953051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077432, 0.704403, 0.705564,
		-0.102443, 0.709564, -0.697154,
		-0.991720, -0.018298, 0.127104,
		13.746730, 22.624340, 22.991182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272653, 23.313368, 23.067316>,  <14.440934, 22.637148, 22.902208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272653, 23.313368, 23.067316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961003, 23.092495, 23.186018>,  <13.774014, 22.959970, 23.257238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961003, 23.092495, 23.186018>,  <14.272653, 23.313368, 23.067316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961003, 23.092495, 23.186018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108410, 0.584942, 0.803797,
		-0.617426, 0.594085, -0.515603,
		-0.779122, -0.552182, 0.296754,
		13.727266, 22.926840, 23.275043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808198, 23.820116, 23.423559>,  <14.272653, 23.313368, 23.067316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808198, 23.820116, 23.423559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686101, 23.448605, 23.507647>,  <13.612843, 23.225697, 23.558100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686101, 23.448605, 23.507647>,  <13.808198, 23.820116, 23.423559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686101, 23.448605, 23.507647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249315, 0.291000, 0.923667,
		-0.919059, 0.229532, -0.320385,
		-0.305243, -0.928781, 0.210220,
		13.594528, 23.169970, 23.570713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111400, 23.863302, 23.622154>,  <13.808198, 23.820116, 23.423559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111400, 23.863302, 23.622154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291902, 23.554493, 23.801197>,  <13.400203, 23.369207, 23.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291902, 23.554493, 23.801197>,  <13.111400, 23.863302, 23.622154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.291902, 23.554493, 23.801197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317456, 0.329895, 0.889040,
		-0.834021, -0.543279, -0.096216,
		0.451255, -0.772022, 0.447606,
		13.427279, 23.322886, 23.935478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.899872, 23.948933, 24.342016>,  <13.111400, 23.863302, 23.622154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.899872, 23.948933, 24.342016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125175, 23.621307, 24.385611>,  <13.260356, 23.424732, 24.411768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125175, 23.621307, 24.385611>,  <12.899872, 23.948933, 24.342016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125175, 23.621307, 24.385611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149037, 0.230443, 0.961605,
		-0.812731, -0.525386, 0.251869,
		0.563255, -0.819064, 0.108986,
		13.294151, 23.375587, 24.418306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673516, 23.531885, 24.950397>,  <12.899872, 23.948933, 24.342016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673516, 23.531885, 24.950397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.051282, 23.407862, 24.906679>,  <13.277942, 23.333447, 24.880449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.051282, 23.407862, 24.906679>,  <12.673516, 23.531885, 24.950397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.051282, 23.407862, 24.906679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148877, 0.106944, 0.983056,
		-0.293118, -0.944683, 0.147161,
		0.944414, -0.310061, -0.109295,
		13.334606, 23.314844, 24.873890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774773, 23.065145, 25.435575>,  <12.673516, 23.531885, 24.950397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774773, 23.065145, 25.435575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134708, 23.211298, 25.340258>,  <13.350670, 23.298990, 25.283068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134708, 23.211298, 25.340258>,  <12.774773, 23.065145, 25.435575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134708, 23.211298, 25.340258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224828, 0.079660, 0.971137,
		0.373819, -0.927443, -0.010467,
		0.899840, 0.365383, -0.238294,
		13.404660, 23.320913, 25.268770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182755, 22.781557, 25.875671>,  <12.774773, 23.065145, 25.435575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182755, 22.781557, 25.875671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397379, 23.093775, 25.747389>,  <13.526153, 23.281105, 25.670420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397379, 23.093775, 25.747389>,  <13.182755, 22.781557, 25.875671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397379, 23.093775, 25.747389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304977, 0.174994, 0.936144,
		0.786825, -0.600104, -0.144154,
		0.536558, 0.780546, -0.320707,
		13.558347, 23.327938, 25.651176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828085, 22.628231, 26.159986>,  <13.182755, 22.781557, 25.875671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828085, 22.628231, 26.159986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854774, 23.017340, 26.071207>,  <13.870789, 23.250805, 26.017939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854774, 23.017340, 26.071207>,  <13.828085, 22.628231, 26.159986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854774, 23.017340, 26.071207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290780, 0.193832, 0.936951,
		0.954461, -0.127056, -0.269929,
		0.066724, 0.972772, -0.221950,
		13.874792, 23.309172, 26.004622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356351, 22.888058, 26.554586>,  <13.828085, 22.628231, 26.159986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356351, 22.888058, 26.554586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199623, 23.245745, 26.468002>,  <14.105586, 23.460356, 26.416052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199623, 23.245745, 26.468002>,  <14.356351, 22.888058, 26.554586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199623, 23.245745, 26.468002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306051, 0.348556, 0.885913,
		0.867646, 0.280870, -0.410247,
		-0.391821, 0.894215, -0.216462,
		14.082077, 23.514009, 26.403063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954483, 23.316734, 26.718483>,  <14.356351, 22.888058, 26.554586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954483, 23.316734, 26.718483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604770, 23.510433, 26.705032>,  <14.394941, 23.626654, 26.696962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604770, 23.510433, 26.705032>,  <14.954483, 23.316734, 26.718483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604770, 23.510433, 26.705032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256537, 0.519750, 0.814892,
		0.412087, 0.703821, -0.578637,
		-0.874284, 0.484248, -0.033626,
		14.342484, 23.655708, 26.694944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095669, 24.039810, 26.756804>,  <14.954483, 23.316734, 26.718483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.095669, 24.039810, 26.756804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716463, 24.008322, 26.880140>,  <14.488940, 23.989429, 26.954142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.716463, 24.008322, 26.880140>,  <15.095669, 24.039810, 26.756804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716463, 24.008322, 26.880140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236344, 0.474665, 0.847841,
		-0.213101, 0.876639, -0.431384,
		-0.948014, -0.078721, 0.308340,
		14.432059, 23.984705, 26.972643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868923, 24.723827, 26.901743>,  <15.095669, 24.039810, 26.756804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868923, 24.723827, 26.901743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637894, 24.465017, 27.100847>,  <14.499276, 24.309731, 27.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637894, 24.465017, 27.100847>,  <14.868923, 24.723827, 26.901743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637894, 24.465017, 27.100847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298387, 0.400228, 0.866477,
		-0.759851, 0.648979, -0.038096,
		-0.577573, -0.647026, 0.497761,
		14.464622, 24.270910, 27.250175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637586, 25.140108, 27.484055>,  <14.868923, 24.723827, 26.901743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.637586, 25.140108, 27.484055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556766, 24.762695, 27.589066>,  <14.508273, 24.536247, 27.652073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556766, 24.762695, 27.589066>,  <14.637586, 25.140108, 27.484055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556766, 24.762695, 27.589066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263804, 0.205718, 0.942384,
		-0.943177, 0.259665, 0.207343,
		-0.202050, -0.943533, 0.262530,
		14.496151, 24.479635, 27.667824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238516, 25.207518, 28.089510>,  <14.637586, 25.140108, 27.484055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238516, 25.207518, 28.089510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387259, 24.836205, 28.090868>,  <14.476506, 24.613417, 28.091682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387259, 24.836205, 28.090868>,  <14.238516, 25.207518, 28.089510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.387259, 24.836205, 28.090868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229423, 0.095449, 0.968636,
		-0.899492, -0.359417, 0.248463,
		0.371860, -0.928283, 0.003397,
		14.498817, 24.557720, 28.091887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018420, 24.919899, 28.831722>,  <14.238516, 25.207518, 28.089510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018420, 24.919899, 28.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321307, 24.709686, 28.676579>,  <14.503039, 24.583559, 28.583492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321307, 24.709686, 28.676579>,  <14.018420, 24.919899, 28.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321307, 24.709686, 28.676579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419534, -0.063794, 0.905495,
		-0.500611, -0.848377, 0.172174,
		0.757218, -0.525534, -0.387860,
		14.548472, 24.552027, 28.560221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082169, 24.387802, 29.277716>,  <14.018420, 24.919899, 28.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082169, 24.387802, 29.277716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438209, 24.413734, 29.097263>,  <14.651833, 24.429293, 28.988993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438209, 24.413734, 29.097263>,  <14.082169, 24.387802, 29.277716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438209, 24.413734, 29.097263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452003, -0.252450, 0.855548,
		-0.058423, -0.965436, -0.254010,
		0.890101, 0.064830, -0.451129,
		14.705239, 24.433184, 28.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454195, 23.857119, 29.515196>,  <14.082169, 24.387802, 29.277716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454195, 23.857119, 29.515196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735306, 24.106142, 29.377483>,  <14.903973, 24.255556, 29.294857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.735306, 24.106142, 29.377483>,  <14.454195, 23.857119, 29.515196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735306, 24.106142, 29.377483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556756, -0.180047, 0.810929,
		0.442863, -0.761581, -0.473145,
		0.702777, 0.622557, -0.344279,
		14.946138, 24.292910, 29.274200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086827, 23.550655, 29.436602>,  <14.454195, 23.857119, 29.515196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086827, 23.550655, 29.436602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199736, 23.933859, 29.456764>,  <15.267481, 24.163782, 29.468863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199736, 23.933859, 29.456764>,  <15.086827, 23.550655, 29.436602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199736, 23.933859, 29.456764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473832, -0.184914, 0.860982,
		0.834150, -0.219144, -0.506132,
		0.282270, 0.958010, 0.050408,
		15.284417, 24.221262, 29.471888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744458, 23.576647, 29.713659>,  <15.086827, 23.550655, 29.436602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744458, 23.576647, 29.713659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620206, 23.950293, 29.784014>,  <15.545654, 24.174480, 29.826227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620206, 23.950293, 29.784014>,  <15.744458, 23.576647, 29.713659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620206, 23.950293, 29.784014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437739, -0.023668, 0.898791,
		0.843737, 0.356185, -0.401547,
		-0.310632, 0.934116, 0.175885,
		15.527017, 24.230528, 29.836779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291639, 23.829247, 30.146252>,  <15.744458, 23.576647, 29.713659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291639, 23.829247, 30.146252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975592, 24.068148, 30.201393>,  <15.785963, 24.211489, 30.234478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975592, 24.068148, 30.201393>,  <16.291639, 23.829247, 30.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975592, 24.068148, 30.201393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236816, 0.090009, 0.967376,
		0.565359, 0.796987, -0.212557,
		-0.790118, 0.597252, 0.137852,
		15.738556, 24.247324, 30.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599255, 24.327925, 30.497536>,  <16.291639, 23.829247, 30.146252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599255, 24.327925, 30.497536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206680, 24.393463, 30.537418>,  <15.971136, 24.432787, 30.561348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206680, 24.393463, 30.537418>,  <16.599255, 24.327925, 30.497536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206680, 24.393463, 30.537418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132804, 0.205444, 0.969616,
		0.138384, 0.964856, -0.223389,
		-0.981434, 0.163846, 0.099707,
		15.912251, 24.442617, 30.567329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592999, 24.981638, 30.746395>,  <16.599255, 24.327925, 30.497536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592999, 24.981638, 30.746395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257944, 24.786854, 30.845383>,  <16.056911, 24.669983, 30.904776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257944, 24.786854, 30.845383>,  <16.592999, 24.981638, 30.746395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257944, 24.786854, 30.845383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178625, 0.183941, 0.966570,
		-0.516199, 0.853837, -0.067093,
		-0.837635, -0.486958, 0.247467,
		16.006653, 24.640766, 30.919622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105032, 25.414862, 31.221352>,  <16.592999, 24.981638, 30.746395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105032, 25.414862, 31.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.082829, 25.017761, 31.263990>,  <16.069508, 24.779501, 31.289574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.082829, 25.017761, 31.263990>,  <16.105032, 25.414862, 31.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082829, 25.017761, 31.263990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281070, 0.086907, 0.955744,
		-0.958081, 0.083012, 0.274208,
		-0.055508, -0.992752, 0.106596,
		16.066175, 24.719936, 31.295969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.607597, 25.815958, 31.720369>,  <16.105032, 25.414862, 31.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.607597, 25.815958, 31.720369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.948782, 25.727468, 31.909479>,  <16.153492, 25.674376, 32.022945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.948782, 25.727468, 31.909479>,  <15.607597, 25.815958, 31.720369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948782, 25.727468, 31.909479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002877, 0.903741, 0.428071,
		-0.521966, -0.366488, 0.770219,
		0.852961, -0.221222, 0.472777,
		16.204670, 25.661102, 32.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440754, 25.910709, 32.445110>,  <15.607597, 25.815958, 31.720369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440754, 25.910709, 32.445110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838964, 25.919708, 32.408405>,  <16.077890, 25.925108, 32.386383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838964, 25.919708, 32.408405>,  <15.440754, 25.910709, 32.445110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838964, 25.919708, 32.408405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042129, 0.763621, 0.644288,
		0.084566, -0.645272, 0.759258,
		0.995527, 0.022498, -0.091762,
		16.137623, 25.926458, 32.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813350, 25.895868, 33.141819>,  <15.440754, 25.910709, 32.445110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813350, 25.895868, 33.141819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041454, 26.082048, 32.871067>,  <16.178316, 26.193756, 32.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041454, 26.082048, 32.871067>,  <15.813350, 25.895868, 33.141819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041454, 26.082048, 32.871067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019140, 0.816235, 0.577403,
		0.821248, -0.342220, 0.456550,
		0.570251, 0.465452, -0.676881,
		16.212532, 26.221684, 32.668003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334421, 25.530628, 33.562874>,  <15.813350, 25.895868, 33.141819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334421, 25.530628, 33.562874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656387, 25.423294, 33.774574>,  <16.849567, 25.358894, 33.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656387, 25.423294, 33.774574>,  <16.334421, 25.530628, 33.562874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656387, 25.423294, 33.774574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438885, -0.869490, 0.226642,
		0.399362, -0.414708, -0.817635,
		0.804916, -0.268335, 0.529251,
		16.897861, 25.342794, 33.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596771, 24.763325, 33.367783>,  <16.334421, 25.530628, 33.562874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596771, 24.763325, 33.367783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687420, 24.885387, 33.737759>,  <16.741810, 24.958626, 33.959743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687420, 24.885387, 33.737759>,  <16.596771, 24.763325, 33.367783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687420, 24.885387, 33.737759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413379, -0.829741, 0.375030,
		0.881907, -0.467343, -0.061893,
		0.226622, 0.305156, 0.924944,
		16.755407, 24.976934, 34.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938812, 24.284418, 33.827496>,  <16.596771, 24.763325, 33.367783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938812, 24.284418, 33.827496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736122, 24.548275, 34.049522>,  <16.614508, 24.706589, 34.182739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736122, 24.548275, 34.049522>,  <16.938812, 24.284418, 33.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736122, 24.548275, 34.049522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541360, -0.744550, 0.390608,
		0.670939, -0.102561, 0.734386,
		-0.506726, 0.659641, 0.555070,
		16.584105, 24.746168, 34.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676270, 23.846790, 33.215744>,  <16.938812, 24.284418, 33.827496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676270, 23.846790, 33.215744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.010582, 23.630835, 33.255730>,  <17.211168, 23.501261, 33.279720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.010582, 23.630835, 33.255730>,  <16.676270, 23.846790, 33.215744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.010582, 23.630835, 33.255730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485871, -0.812025, -0.323333,
		0.255737, 0.221666, -0.940990,
		0.835780, -0.539888, 0.099965,
		17.261316, 23.468868, 33.285721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872198, 23.532103, 32.565746>,  <16.676270, 23.846790, 33.215744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872198, 23.532103, 32.565746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.974516, 23.330990, 32.896027>,  <17.035906, 23.210321, 33.094196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.974516, 23.330990, 32.896027>,  <16.872198, 23.532103, 32.565746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974516, 23.330990, 32.896027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555095, -0.775666, -0.300351,
		0.791478, -0.381514, -0.477503,
		0.255795, -0.502781, 0.825700,
		17.051254, 23.180155, 33.143738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246822, 22.880383, 32.380615>,  <16.872198, 23.532103, 32.565746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246822, 22.880383, 32.380615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018431, 22.888033, 32.708912>,  <16.881395, 22.892622, 32.905891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.018431, 22.888033, 32.708912>,  <17.246822, 22.880383, 32.380615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.018431, 22.888033, 32.708912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647547, -0.625019, -0.435928,
		0.504642, -0.780375, 0.369258,
		-0.570981, 0.019124, 0.820741,
		16.847136, 22.893770, 32.955135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186066, 22.138161, 32.748806>,  <17.246822, 22.880383, 32.380615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186066, 22.138161, 32.748806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882303, 22.398275, 32.740543>,  <16.700045, 22.554344, 32.735588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882303, 22.398275, 32.740543>,  <17.186066, 22.138161, 32.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882303, 22.398275, 32.740543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509777, -0.614442, -0.602153,
		-0.404262, -0.446751, 0.798114,
		-0.759407, 0.650287, -0.020652,
		16.654482, 22.593361, 32.734348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437443, 21.780195, 32.675949>,  <17.186066, 22.138161, 32.748806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437443, 21.780195, 32.675949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381748, 22.165037, 32.582165>,  <16.348331, 22.395943, 32.525894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381748, 22.165037, 32.582165>,  <16.437443, 21.780195, 32.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381748, 22.165037, 32.582165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696052, -0.263496, -0.667893,
		-0.704361, 0.070201, 0.706362,
		-0.139237, 0.962103, -0.234460,
		16.339977, 22.453669, 32.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698917, 21.884932, 32.641537>,  <16.437443, 21.780195, 32.675949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698917, 21.884932, 32.641537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919042, 22.133244, 32.418182>,  <16.051115, 22.282230, 32.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919042, 22.133244, 32.418182>,  <15.698917, 21.884932, 32.641537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919042, 22.133244, 32.418182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511712, -0.277698, -0.813040,
		-0.659780, 0.733156, 0.164840,
		0.550310, 0.620778, -0.558385,
		16.084135, 22.319477, 32.250668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252875, 22.204052, 32.207802>,  <15.698917, 21.884932, 32.641537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252875, 22.204052, 32.207802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609744, 22.197565, 32.027241>,  <15.823866, 22.193674, 31.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609744, 22.197565, 32.027241>,  <15.252875, 22.204052, 32.207802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609744, 22.197565, 32.027241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401773, -0.485168, -0.776653,
		-0.206413, 0.874270, -0.439369,
		0.892172, -0.016215, -0.451404,
		15.877396, 22.192701, 31.891819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125975, 22.229042, 31.562176>,  <15.252875, 22.204052, 32.207802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125975, 22.229042, 31.562176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510297, 22.122080, 31.532923>,  <15.740890, 22.057903, 31.515371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510297, 22.122080, 31.532923>,  <15.125975, 22.229042, 31.562176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510297, 22.122080, 31.532923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191228, -0.448293, -0.873192,
		0.200713, 0.852952, -0.481858,
		0.960805, -0.267406, -0.073130,
		15.798538, 22.041859, 31.510984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320335, 22.345312, 30.790409>,  <15.125975, 22.229042, 31.562176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320335, 22.345312, 30.790409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571701, 22.083002, 30.957766>,  <15.722521, 21.925615, 31.058180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571701, 22.083002, 30.957766>,  <15.320335, 22.345312, 30.790409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571701, 22.083002, 30.957766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114488, -0.609978, -0.784104,
		0.769408, 0.444842, -0.458397,
		0.628414, -0.655776, 0.418393,
		15.760225, 21.886269, 31.083284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721175, 22.154081, 30.267000>,  <15.320335, 22.345312, 30.790409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721175, 22.154081, 30.267000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759008, 21.867342, 30.543314>,  <15.781709, 21.695297, 30.709103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759008, 21.867342, 30.543314>,  <15.721175, 22.154081, 30.267000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759008, 21.867342, 30.543314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009641, -0.693201, -0.720680,
		0.995470, 0.074824, -0.058654,
		0.094583, -0.716850, 0.690783,
		15.787383, 21.652287, 30.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299088, 21.713436, 30.093752>,  <15.721175, 22.154081, 30.267000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299088, 21.713436, 30.093752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040867, 21.513205, 30.324467>,  <15.885934, 21.393066, 30.462896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040867, 21.513205, 30.324467>,  <16.299088, 21.713436, 30.093752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040867, 21.513205, 30.324467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247468, -0.577383, -0.778067,
		0.722510, -0.645020, 0.248855,
		-0.645553, -0.500577, 0.576787,
		15.847200, 21.363031, 30.497503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450724, 20.963398, 29.983440>,  <16.299088, 21.713436, 30.093752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450724, 20.963398, 29.983440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077894, 20.986103, 30.126558>,  <15.854197, 20.999725, 30.212429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077894, 20.986103, 30.126558>,  <16.450724, 20.963398, 29.983440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077894, 20.986103, 30.126558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327986, -0.551597, -0.766919,
		0.153827, -0.832177, 0.532746,
		-0.932074, 0.056761, 0.357793,
		15.798272, 21.003132, 30.233896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114344, 20.289215, 30.016571>,  <16.450724, 20.963398, 29.983440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.114344, 20.289215, 30.016571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797132, 20.532743, 30.008123>,  <15.606806, 20.678860, 30.003056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797132, 20.532743, 30.008123>,  <16.114344, 20.289215, 30.016571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797132, 20.532743, 30.008123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464375, -0.626588, -0.625894,
		-0.394287, -0.486545, 0.779622,
		-0.793027, 0.608819, -0.021116,
		15.559224, 20.715389, 30.001789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534974, 19.829096, 30.034351>,  <16.114344, 20.289215, 30.016571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534974, 19.829096, 30.034351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338232, 20.165457, 29.944054>,  <15.220187, 20.367273, 29.889875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338232, 20.165457, 29.944054>,  <15.534974, 19.829096, 30.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338232, 20.165457, 29.944054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578598, -0.509422, -0.636956,
		-0.650619, -0.182673, 0.737106,
		-0.491853, 0.840904, -0.225745,
		15.190676, 20.417728, 29.876329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873936, 19.656263, 29.931856>,  <15.534974, 19.829096, 30.034351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873936, 19.656263, 29.931856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853053, 20.016748, 29.759766>,  <14.840524, 20.233040, 29.656511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853053, 20.016748, 29.759766>,  <14.873936, 19.656263, 29.931856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853053, 20.016748, 29.759766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547238, -0.386187, -0.742556,
		-0.835347, 0.196669, 0.513339,
		-0.052207, 0.901211, -0.430225,
		14.837391, 20.287111, 29.630697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126634, 19.772810, 29.888083>,  <14.873936, 19.656263, 29.931856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126634, 19.772810, 29.888083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333663, 19.982832, 29.617842>,  <14.457881, 20.108845, 29.455698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333663, 19.982832, 29.617842>,  <14.126634, 19.772810, 29.888083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333663, 19.982832, 29.617842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587806, -0.355587, -0.726665,
		-0.621773, 0.773224, 0.124588,
		0.517573, 0.525054, -0.675601,
		14.488935, 20.140348, 29.415161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.702278, 19.969755, 29.478401>,  <14.126634, 19.772810, 29.888083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.702278, 19.969755, 29.478401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998421, 20.068533, 29.228315>,  <14.176106, 20.127800, 29.078264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998421, 20.068533, 29.228315>,  <13.702278, 19.969755, 29.478401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998421, 20.068533, 29.228315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546427, -0.320633, -0.773701,
		-0.391525, 0.914447, -0.102445,
		0.740355, 0.246945, -0.625214,
		14.220528, 20.142616, 29.040751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352451, 20.215315, 28.864496>,  <13.702278, 19.969755, 29.478401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352451, 20.215315, 28.864496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.727854, 20.158237, 28.738737>,  <13.953095, 20.123991, 28.663282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.727854, 20.158237, 28.738737>,  <13.352451, 20.215315, 28.864496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727854, 20.158237, 28.738737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345258, -0.393605, -0.851981,
		-0.002177, 0.908138, -0.418667,
		0.938506, -0.142693, -0.314398,
		14.009405, 20.115429, 28.644417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314565, 20.561085, 28.130312>,  <13.352451, 20.215315, 28.864496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314565, 20.561085, 28.130312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.583515, 20.268841, 28.177847>,  <13.744885, 20.093494, 28.206367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.583515, 20.268841, 28.177847>,  <13.314565, 20.561085, 28.130312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583515, 20.268841, 28.177847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253689, -0.378273, -0.890254,
		0.695379, 0.568438, -0.439689,
		0.672376, -0.730608, 0.118836,
		13.785228, 20.049658, 28.213497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983562, 20.598066, 27.666405>,  <13.314565, 20.561085, 28.130312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983562, 20.598066, 27.666405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925049, 20.210222, 27.744846>,  <13.889941, 19.977516, 27.791912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925049, 20.210222, 27.744846>,  <13.983562, 20.598066, 27.666405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925049, 20.210222, 27.744846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029688, -0.202451, -0.978842,
		0.988797, -0.137366, 0.058401,
		-0.146284, -0.969610, 0.196105,
		13.881164, 19.919338, 27.803679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259889, 20.312342, 27.171129>,  <13.983562, 20.598066, 27.666405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.259889, 20.312342, 27.171129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066175, 19.996405, 27.321659>,  <13.949947, 19.806843, 27.411978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066175, 19.996405, 27.321659>,  <14.259889, 20.312342, 27.171129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066175, 19.996405, 27.321659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109251, -0.372172, -0.921712,
		0.868064, -0.487483, 0.093945,
		-0.484282, -0.789841, 0.376327,
		13.920891, 19.759453, 27.434557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451420, 19.720926, 26.757576>,  <14.259889, 20.312342, 27.171129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451420, 19.720926, 26.757576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113563, 19.625854, 26.949444>,  <13.910848, 19.568811, 27.064566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113563, 19.625854, 26.949444>,  <14.451420, 19.720926, 26.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113563, 19.625854, 26.949444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404452, -0.303682, -0.862668,
		0.350707, -0.922651, 0.160373,
		-0.844644, -0.237681, 0.479672,
		13.860169, 19.554550, 27.093346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228683, 19.127314, 26.430290>,  <14.451420, 19.720926, 26.757576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228683, 19.127314, 26.430290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899035, 19.257978, 26.615385>,  <13.701247, 19.336376, 26.726442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899035, 19.257978, 26.615385>,  <14.228683, 19.127314, 26.430290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899035, 19.257978, 26.615385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538554, -0.198812, -0.818800,
		-0.175477, -0.923993, 0.339772,
		-0.824116, 0.326666, 0.462733,
		13.651800, 19.355976, 26.754206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646106, 18.645035, 26.306320>,  <14.228683, 19.127314, 26.430290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646106, 18.645035, 26.306320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438379, 18.965118, 26.426302>,  <13.313744, 19.157169, 26.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438379, 18.965118, 26.426302>,  <13.646106, 18.645035, 26.306320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438379, 18.965118, 26.426302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684646, -0.179522, -0.706422,
		-0.511439, -0.572218, 0.641090,
		-0.519317, 0.800211, 0.299953,
		13.282584, 19.205181, 26.516289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.956757, 18.377422, 26.417732>,  <13.646106, 18.645035, 26.306320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.956757, 18.377422, 26.417732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964171, 18.772209, 26.353788>,  <12.968620, 19.009081, 26.315422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964171, 18.772209, 26.353788>,  <12.956757, 18.377422, 26.417732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964171, 18.772209, 26.353788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564158, -0.121676, -0.816652,
		-0.825459, 0.105325, 0.554549,
		0.018538, 0.986966, -0.159859,
		12.969733, 19.068298, 26.305830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191813, 18.530045, 26.225594>,  <12.956757, 18.377422, 26.417732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191813, 18.530045, 26.225594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.391720, 18.848629, 26.089428>,  <12.511664, 19.039780, 26.007729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.391720, 18.848629, 26.089428>,  <12.191813, 18.530045, 26.225594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391720, 18.848629, 26.089428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586438, 0.021911, -0.809698,
		-0.637433, 0.604294, 0.478025,
		0.499769, 0.796460, -0.340414,
		12.541651, 19.087566, 25.987303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717998, 18.918070, 25.955490>,  <12.191813, 18.530045, 26.225594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717998, 18.918070, 25.955490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.046730, 19.044104, 25.765619>,  <12.243970, 19.119724, 25.651697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.046730, 19.044104, 25.765619>,  <11.717998, 18.918070, 25.955490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.046730, 19.044104, 25.765619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498332, -0.006289, -0.866964,
		-0.276151, 0.949043, 0.151847,
		0.821831, 0.315084, -0.474675,
		12.293280, 19.138628, 25.623217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457229, 19.408278, 25.405476>,  <11.717998, 18.918070, 25.955490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457229, 19.408278, 25.405476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837028, 19.337196, 25.302032>,  <12.064907, 19.294548, 25.239967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837028, 19.337196, 25.302032>,  <11.457229, 19.408278, 25.405476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837028, 19.337196, 25.302032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277520, -0.091007, -0.956400,
		0.146418, 0.979867, -0.135727,
		0.949497, -0.177701, -0.258608,
		12.121877, 19.283886, 25.224451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616656, 19.846281, 24.871969>,  <11.457229, 19.408278, 25.405476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616656, 19.846281, 24.871969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.900177, 19.566534, 24.835121>,  <12.070290, 19.398685, 24.813013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.900177, 19.566534, 24.835121>,  <11.616656, 19.846281, 24.871969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.900177, 19.566534, 24.835121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160658, -0.032890, -0.986462,
		0.686870, 0.714005, -0.135672,
		0.708801, -0.699368, -0.092119,
		12.112818, 19.356724, 24.807486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.881553, 20.027153, 24.274565>,  <11.616656, 19.846281, 24.871969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.881553, 20.027153, 24.274565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007122, 19.649723, 24.316738>,  <12.082463, 19.423265, 24.342043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007122, 19.649723, 24.316738>,  <11.881553, 20.027153, 24.274565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.007122, 19.649723, 24.316738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007608, -0.108546, -0.994062,
		0.949418, 0.312861, -0.026897,
		0.313923, -0.943576, 0.105436,
		12.101299, 19.366650, 24.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.278448, 19.901480, 23.656397>,  <11.881553, 20.027153, 24.274565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.278448, 19.901480, 23.656397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.234507, 19.529610, 23.797045>,  <12.208141, 19.306488, 23.881433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.234507, 19.529610, 23.797045>,  <12.278448, 19.901480, 23.656397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.234507, 19.529610, 23.797045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053145, -0.347763, -0.936075,
		0.992526, -0.121519, -0.011205,
		-0.109854, -0.929674, 0.351622,
		12.201550, 19.250708, 23.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736075, 19.529066, 23.265686>,  <12.278448, 19.901480, 23.656397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736075, 19.529066, 23.265686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454123, 19.286345, 23.412619>,  <12.284952, 19.140713, 23.500778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454123, 19.286345, 23.412619>,  <12.736075, 19.529066, 23.265686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454123, 19.286345, 23.412619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103401, -0.424429, -0.899538,
		0.701749, -0.672049, 0.236427,
		-0.704880, -0.606803, 0.367334,
		12.242660, 19.104303, 23.522820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987431, 18.874577, 23.204348>,  <12.736075, 19.529066, 23.265686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987431, 18.874577, 23.204348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.591432, 18.818235, 23.207609>,  <12.353832, 18.784431, 23.209566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.591432, 18.818235, 23.207609>,  <12.987431, 18.874577, 23.204348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.591432, 18.818235, 23.207609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066002, -0.513443, -0.855582,
		0.124699, -0.846485, 0.517604,
		-0.989997, -0.140853, 0.008156,
		12.294433, 18.775980, 23.210056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957504, 18.236118, 23.054937>,  <12.987431, 18.874577, 23.204348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957504, 18.236118, 23.054937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595572, 18.388103, 22.978092>,  <12.378411, 18.479294, 22.931986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595572, 18.388103, 22.978092>,  <12.957504, 18.236118, 23.054937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.595572, 18.388103, 22.978092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013413, -0.425556, -0.904833,
		-0.425556, -0.821299, 0.379961,
		0.904833, -0.379961, 0.192114,
		12.324121, 18.502092, 22.920458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437222, 17.711733, 22.632952>,  <12.957504, 18.236118, 23.054937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437222, 17.711733, 22.632952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276453, 18.070848, 22.560911>,  <12.179992, 18.286318, 22.517687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276453, 18.070848, 22.560911>,  <12.437222, 17.711733, 22.632952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276453, 18.070848, 22.560911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272114, -0.304909, -0.912680,
		-0.874307, -0.317818, 0.366850,
		-0.401922, 0.897787, -0.180102,
		12.155876, 18.340185, 22.506880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906472, 17.567398, 22.233330>,  <12.437222, 17.711733, 22.632952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906472, 17.567398, 22.233330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977897, 17.948483, 22.134977>,  <12.020752, 18.177134, 22.075966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977897, 17.948483, 22.134977>,  <11.906472, 17.567398, 22.233330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.977897, 17.948483, 22.134977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108146, -0.229379, -0.967310,
		-0.977967, 0.199316, 0.062074,
		0.178562, 0.952711, -0.245880,
		12.031466, 18.234297, 22.061213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453944, 17.683388, 21.643290>,  <11.906472, 17.567398, 22.233330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453944, 17.683388, 21.643290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694659, 18.002619, 21.631142>,  <11.839088, 18.194159, 21.623852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694659, 18.002619, 21.631142>,  <11.453944, 17.683388, 21.643290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.694659, 18.002619, 21.631142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037312, -0.066081, -0.997116,
		-0.797785, 0.598918, -0.069545,
		0.601787, 0.798079, -0.030371,
		11.875196, 18.242043, 21.622030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.069818, 18.098125, 21.194122>,  <11.453944, 17.683388, 21.643290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.069818, 18.098125, 21.194122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452893, 18.213236, 21.195656>,  <11.682739, 18.282303, 21.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452893, 18.213236, 21.195656>,  <11.069818, 18.098125, 21.194122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.452893, 18.213236, 21.195656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004367, 0.027846, -0.999603,
		-0.287769, 0.957293, 0.027925,
		0.957690, 0.287777, 0.003833,
		11.740200, 18.299568, 21.196806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.102303, 18.605164, 20.705545>,  <11.069818, 18.098125, 21.194122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.102303, 18.605164, 20.705545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486736, 18.507822, 20.757845>,  <11.717397, 18.449417, 20.789225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486736, 18.507822, 20.757845>,  <11.102303, 18.605164, 20.705545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486736, 18.507822, 20.757845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156847, 0.091082, -0.983414,
		0.227409, 0.965652, 0.125707,
		0.961085, -0.243354, 0.130747,
		11.775062, 18.434816, 20.797070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488492, 19.027309, 20.334095>,  <11.102303, 18.605164, 20.705545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488492, 19.027309, 20.334095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737485, 18.720457, 20.396099>,  <11.886881, 18.536346, 20.433302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737485, 18.720457, 20.396099>,  <11.488492, 19.027309, 20.334095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737485, 18.720457, 20.396099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212642, -0.024834, -0.976815,
		0.753193, 0.641011, 0.147665,
		0.622482, -0.767130, 0.155010,
		11.924230, 18.490318, 20.442602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.924252, 19.168207, 19.817308>,  <11.488492, 19.027309, 20.334095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.924252, 19.168207, 19.817308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.033563, 18.801792, 19.934740>,  <12.099150, 18.581944, 20.005199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.033563, 18.801792, 19.934740>,  <11.924252, 19.168207, 19.817308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.033563, 18.801792, 19.934740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251327, -0.226604, -0.941002,
		0.928522, 0.330940, 0.168299,
		0.273278, -0.916040, 0.293581,
		12.115546, 18.526979, 20.022814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.596393, 18.959278, 19.457767>,  <11.924252, 19.168207, 19.817308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.596393, 18.959278, 19.457767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423449, 18.617830, 19.573975>,  <12.319682, 18.412962, 19.643700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423449, 18.617830, 19.573975>,  <12.596393, 18.959278, 19.457767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.423449, 18.617830, 19.573975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051339, -0.344973, -0.937208,
		0.900239, -0.390296, 0.192976,
		-0.432360, -0.853618, 0.290520,
		12.293740, 18.361746, 19.661131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995344, 18.353251, 19.212341>,  <12.596393, 18.959278, 19.457767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995344, 18.353251, 19.212341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614869, 18.237633, 19.255604>,  <12.386584, 18.168262, 19.281561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614869, 18.237633, 19.255604>,  <12.995344, 18.353251, 19.212341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614869, 18.237633, 19.255604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016232, -0.303113, -0.952816,
		0.308188, -0.908062, 0.283625,
		-0.951187, -0.289043, 0.108156,
		12.329513, 18.150919, 19.288050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966586, 17.809284, 18.689152>,  <12.995344, 18.353251, 19.212341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966586, 17.809284, 18.689152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583387, 17.887918, 18.772669>,  <12.353468, 17.935099, 18.822779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583387, 17.887918, 18.772669>,  <12.966586, 17.809284, 18.689152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.583387, 17.887918, 18.772669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266867, -0.344575, -0.900028,
		-0.104987, -0.917945, 0.382565,
		-0.957998, 0.196585, 0.208793,
		12.295988, 17.946894, 18.835306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.492726, 17.362431, 18.437851>,  <12.966586, 17.809284, 18.689152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.492726, 17.362431, 18.437851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689615, 17.033802, 18.322796>,  <13.807749, 16.836624, 18.253763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689615, 17.033802, 18.322796>,  <13.492726, 17.362431, 18.437851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689615, 17.033802, 18.322796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268873, -0.170783, 0.947914,
		-0.827904, -0.543922, 0.136836,
		0.492222, -0.821573, -0.287638,
		13.837282, 16.787331, 18.236504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171851, 16.877949, 18.833414>,  <13.492726, 17.362431, 18.437851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171851, 16.877949, 18.833414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.540367, 16.759855, 18.732172>,  <13.761477, 16.688999, 18.671427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.540367, 16.759855, 18.732172>,  <13.171851, 16.877949, 18.833414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540367, 16.759855, 18.732172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214259, -0.157796, 0.963947,
		-0.324528, -0.942305, -0.082120,
		0.921290, -0.295233, -0.253107,
		13.816754, 16.671286, 18.656240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.415884, 16.214680, 19.180174>,  <13.171851, 16.877949, 18.833414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.415884, 16.214680, 19.180174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739348, 16.437037, 19.103174>,  <13.933427, 16.570450, 19.056974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739348, 16.437037, 19.103174>,  <13.415884, 16.214680, 19.180174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739348, 16.437037, 19.103174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317363, -0.136717, 0.938397,
		0.495328, -0.819936, -0.286977,
		0.808660, 0.555890, -0.192498,
		13.981946, 16.603804, 19.045425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.037409, 15.918769, 19.509321>,  <13.415884, 16.214680, 19.180174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.037409, 15.918769, 19.509321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.193521, 16.275787, 19.418951>,  <14.287188, 16.489998, 19.364729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.193521, 16.275787, 19.418951>,  <14.037409, 15.918769, 19.509321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.193521, 16.275787, 19.418951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463663, 0.021462, 0.885752,
		0.795424, -0.450443, -0.405465,
		0.390279, 0.892547, -0.225925,
		14.310604, 16.543552, 19.351173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816388, 15.949905, 19.665243>,  <14.037409, 15.918769, 19.509321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816388, 15.949905, 19.665243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674836, 16.323318, 19.688162>,  <14.589905, 16.547367, 19.701914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674836, 16.323318, 19.688162>,  <14.816388, 15.949905, 19.665243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674836, 16.323318, 19.688162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491734, 0.133593, 0.860436,
		0.795591, 0.332667, -0.506327,
		-0.353881, 0.933534, 0.057298,
		14.568672, 16.603378, 19.705351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375226, 16.354244, 19.835157>,  <14.816388, 15.949905, 19.665243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375226, 16.354244, 19.835157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072512, 16.589163, 19.949949>,  <14.890882, 16.730114, 20.018824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072512, 16.589163, 19.949949>,  <15.375226, 16.354244, 19.835157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072512, 16.589163, 19.949949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431568, 0.119185, 0.894172,
		0.490941, 0.800548, -0.343656,
		-0.756786, 0.587297, 0.286979,
		14.845476, 16.765352, 20.036043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628835, 16.999353, 20.104424>,  <15.375226, 16.354244, 19.835157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628835, 16.999353, 20.104424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264853, 16.977978, 20.268925>,  <15.046465, 16.965153, 20.367626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264853, 16.977978, 20.268925>,  <15.628835, 16.999353, 20.104424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264853, 16.977978, 20.268925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380140, 0.288912, 0.878648,
		-0.165770, 0.955863, -0.242582,
		-0.909952, -0.053439, 0.411255,
		14.991868, 16.961946, 20.392302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588397, 17.619213, 20.617327>,  <15.628835, 16.999353, 20.104424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588397, 17.619213, 20.617327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295702, 17.367460, 20.721968>,  <15.120085, 17.216408, 20.784752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295702, 17.367460, 20.721968>,  <15.588397, 17.619213, 20.617327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295702, 17.367460, 20.721968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317837, 0.024441, 0.947830,
		-0.602942, 0.776711, 0.182157,
		-0.731738, -0.629383, 0.261604,
		15.076180, 17.178646, 20.800449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147709, 17.967249, 21.201237>,  <15.588397, 17.619213, 20.617327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147709, 17.967249, 21.201237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103317, 17.569786, 21.208492>,  <15.076682, 17.331308, 21.212845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103317, 17.569786, 21.208492>,  <15.147709, 17.967249, 21.201237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103317, 17.569786, 21.208492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010788, 0.017045, 0.999796,
		-0.993764, 0.111152, 0.008828,
		-0.110979, -0.993657, 0.018137,
		15.070024, 17.271688, 21.213934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889623, 17.886938, 21.927532>,  <15.147709, 17.967249, 21.201237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889623, 17.886938, 21.927532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969121, 17.515312, 21.802736>,  <15.016820, 17.292337, 21.727859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969121, 17.515312, 21.802736>,  <14.889623, 17.886938, 21.927532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969121, 17.515312, 21.802736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252080, -0.259171, 0.932355,
		-0.947078, -0.263947, 0.182690,
		0.198745, -0.929065, -0.311991,
		15.028745, 17.236593, 21.709139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493642, 17.454489, 22.353251>,  <14.889623, 17.886938, 21.927532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493642, 17.454489, 22.353251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787436, 17.221573, 22.213839>,  <14.963712, 17.081823, 22.130192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787436, 17.221573, 22.213839>,  <14.493642, 17.454489, 22.353251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787436, 17.221573, 22.213839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403784, -0.037798, 0.914073,
		-0.545428, -0.812103, 0.207357,
		0.734484, -0.582288, -0.348530,
		15.007781, 17.046886, 22.109280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548865, 16.913649, 22.885687>,  <14.493642, 17.454489, 22.353251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548865, 16.913649, 22.885687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899431, 16.908121, 22.693144>,  <15.109771, 16.904804, 22.577618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899431, 16.908121, 22.693144>,  <14.548865, 16.913649, 22.885687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899431, 16.908121, 22.693144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481333, 0.055512, 0.874778,
		0.014627, -0.998362, 0.055306,
		0.876416, -0.013826, -0.481357,
		15.162356, 16.903975, 22.548737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022770, 16.459263, 23.219021>,  <14.548865, 16.913649, 22.885687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022770, 16.459263, 23.219021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277996, 16.689287, 23.014208>,  <15.431132, 16.827301, 22.891321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277996, 16.689287, 23.014208>,  <15.022770, 16.459263, 23.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277996, 16.689287, 23.014208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484130, 0.217472, 0.847540,
		0.598740, -0.788676, -0.139643,
		0.638066, 0.575062, -0.512031,
		15.469416, 16.861805, 22.860600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565554, 16.407795, 23.718544>,  <15.022770, 16.459263, 23.219021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565554, 16.407795, 23.718544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640621, 16.722589, 23.483448>,  <15.685661, 16.911467, 23.342392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640621, 16.722589, 23.483448>,  <15.565554, 16.407795, 23.718544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640621, 16.722589, 23.483448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480297, 0.448427, 0.753809,
		0.856793, -0.423755, -0.293831,
		0.187668, 0.786985, -0.587737,
		15.696921, 16.958685, 23.307127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272697, 16.579172, 23.924509>,  <15.565554, 16.407795, 23.718544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272697, 16.579172, 23.924509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056047, 16.885620, 23.786118>,  <15.926057, 17.069489, 23.703083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056047, 16.885620, 23.786118>,  <16.272697, 16.579172, 23.924509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056047, 16.885620, 23.786118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269975, 0.548305, 0.791501,
		0.796086, 0.335294, -0.503811,
		-0.541627, 0.766120, -0.345977,
		15.893559, 17.115456, 23.682323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630688, 17.171679, 24.046545>,  <16.272697, 16.579172, 23.924509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630688, 17.171679, 24.046545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271599, 17.336290, 23.983633>,  <16.056145, 17.435057, 23.945887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271599, 17.336290, 23.983633>,  <16.630688, 17.171679, 24.046545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271599, 17.336290, 23.983633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098985, 0.536278, 0.838217,
		0.429296, 0.736919, -0.522165,
		-0.897723, 0.411529, -0.157278,
		16.002281, 17.459749, 23.936449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769018, 17.889946, 24.150307>,  <16.630688, 17.171679, 24.046545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769018, 17.889946, 24.150307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377743, 17.831261, 24.209122>,  <16.142977, 17.796049, 24.244411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377743, 17.831261, 24.209122>,  <16.769018, 17.889946, 24.150307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377743, 17.831261, 24.209122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049648, 0.522229, 0.851359,
		-0.201692, 0.840091, -0.503556,
		-0.978190, -0.146711, 0.147038,
		16.084286, 17.787247, 24.253233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587790, 18.482388, 24.486719>,  <16.769018, 17.889946, 24.150307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587790, 18.482388, 24.486719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265738, 18.260496, 24.570660>,  <16.072506, 18.127361, 24.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265738, 18.260496, 24.570660>,  <16.587790, 18.482388, 24.486719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265738, 18.260496, 24.570660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100912, 0.476794, 0.873203,
		-0.584448, 0.681867, -0.439861,
		-0.805131, -0.554730, 0.209853,
		16.024199, 18.094078, 24.633615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016485, 18.882557, 24.606346>,  <16.587790, 18.482388, 24.486719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016485, 18.882557, 24.606346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927947, 18.545761, 24.803144>,  <15.874825, 18.343683, 24.921223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927947, 18.545761, 24.803144>,  <16.016485, 18.882557, 24.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927947, 18.545761, 24.803144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059595, 0.515247, 0.854968,
		-0.973373, 0.159923, -0.164226,
		-0.221346, -0.841989, 0.491997,
		15.861544, 18.293165, 24.950743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521617, 19.018284, 25.082670>,  <16.016485, 18.882557, 24.606346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521617, 19.018284, 25.082670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665658, 18.682093, 25.244617>,  <15.752083, 18.480377, 25.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665658, 18.682093, 25.244617>,  <15.521617, 19.018284, 25.082670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665658, 18.682093, 25.244617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006280, 0.431791, 0.901952,
		-0.932892, -0.327337, 0.150210,
		0.360102, -0.840481, 0.404870,
		15.773688, 18.429949, 25.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052871, 18.824600, 25.632776>,  <15.521617, 19.018284, 25.082670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052871, 18.824600, 25.632776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.404428, 18.654791, 25.719799>,  <15.615361, 18.552906, 25.772013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.404428, 18.654791, 25.719799>,  <15.052871, 18.824600, 25.632776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404428, 18.654791, 25.719799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036177, 0.395437, 0.917780,
		-0.475648, -0.814500, 0.332188,
		0.878891, -0.424523, 0.217555,
		15.668095, 18.527433, 25.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170264, 18.799459, 26.421709>,  <15.052871, 18.824600, 25.632776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170264, 18.799459, 26.421709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544397, 18.702305, 26.318825>,  <15.768877, 18.644012, 26.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.544397, 18.702305, 26.318825>,  <15.170264, 18.799459, 26.421709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544397, 18.702305, 26.318825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335396, 0.377583, 0.863100,
		-0.112518, -0.893553, 0.434629,
		0.935334, -0.242887, -0.257209,
		15.824998, 18.629438, 26.241661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425784, 18.406536, 27.008345>,  <15.170264, 18.799459, 26.421709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425784, 18.406536, 27.008345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742045, 18.566685, 26.823057>,  <15.931802, 18.662773, 26.711885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742045, 18.566685, 26.823057>,  <15.425784, 18.406536, 27.008345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742045, 18.566685, 26.823057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296317, 0.411834, 0.861736,
		0.535785, -0.818593, 0.206980,
		0.790652, 0.400373, -0.463217,
		15.979241, 18.686796, 26.684092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982309, 18.189548, 27.354425>,  <15.425784, 18.406536, 27.008345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982309, 18.189548, 27.354425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164963, 18.488035, 27.160666>,  <16.274555, 18.667128, 27.044409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164963, 18.488035, 27.160666>,  <15.982309, 18.189548, 27.354425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164963, 18.488035, 27.160666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440766, 0.283205, 0.851775,
		0.772794, -0.602456, -0.199587,
		0.456633, 0.746218, -0.484401,
		16.301952, 18.711901, 27.015345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698942, 18.147783, 27.516232>,  <15.982309, 18.189548, 27.354425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698942, 18.147783, 27.516232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.624277, 18.516825, 27.381197>,  <16.579479, 18.738249, 27.300177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.624277, 18.516825, 27.381197>,  <16.698942, 18.147783, 27.516232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624277, 18.516825, 27.381197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440953, 0.385747, 0.810407,
		0.877906, 0.002412, -0.478827,
		-0.186661, 0.922601, -0.337586,
		16.568279, 18.793606, 27.279921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374073, 18.507181, 27.456310>,  <16.698942, 18.147783, 27.516232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374073, 18.507181, 27.456310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084042, 18.781265, 27.483870>,  <16.910023, 18.945715, 27.500406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084042, 18.781265, 27.483870>,  <17.374073, 18.507181, 27.456310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084042, 18.781265, 27.483870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479508, 0.430520, 0.764673,
		0.494298, 0.587487, -0.640725,
		-0.725080, 0.685209, 0.068900,
		16.866518, 18.986828, 27.504539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732561, 19.089397, 27.484655>,  <17.374073, 18.507181, 27.456310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732561, 19.089397, 27.484655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378256, 19.196337, 27.636417>,  <17.165672, 19.260500, 27.727474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378256, 19.196337, 27.636417>,  <17.732561, 19.089397, 27.484655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378256, 19.196337, 27.636417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455281, 0.341570, 0.822222,
		0.090227, 0.901030, -0.424269,
		-0.885764, 0.267348, 0.379403,
		17.112526, 19.276541, 27.750238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841930, 19.764395, 27.867552>,  <17.732561, 19.089397, 27.484655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841930, 19.764395, 27.867552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503212, 19.604786, 28.008245>,  <17.299980, 19.509020, 28.092661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503212, 19.604786, 28.008245>,  <17.841930, 19.764395, 27.867552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503212, 19.604786, 28.008245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256916, 0.272194, 0.927310,
		-0.465757, 0.875610, -0.127978,
		-0.846797, -0.399021, 0.351734,
		17.249172, 19.485079, 28.113766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503677, 20.319841, 28.249603>,  <17.841930, 19.764395, 27.867552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503677, 20.319841, 28.249603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365294, 19.961887, 28.362381>,  <17.282263, 19.747114, 28.430048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365294, 19.961887, 28.362381>,  <17.503677, 20.319841, 28.249603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365294, 19.961887, 28.362381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263305, 0.195823, 0.944629,
		-0.900546, 0.401039, 0.167881,
		-0.345958, -0.894886, 0.281943,
		17.261505, 19.693422, 28.446964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128372, 20.553822, 28.785393>,  <17.503677, 20.319841, 28.249603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128372, 20.553822, 28.785393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200178, 20.161291, 28.813038>,  <17.243261, 19.925774, 28.829624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200178, 20.161291, 28.813038>,  <17.128372, 20.553822, 28.785393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200178, 20.161291, 28.813038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348524, 0.129138, 0.928361,
		-0.919948, -0.142569, 0.365198,
		0.179517, -0.981324, 0.069111,
		17.254034, 19.866894, 28.833771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886131, 20.380871, 29.516552>,  <17.128372, 20.553822, 28.785393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886131, 20.380871, 29.516552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158031, 20.127073, 29.369389>,  <17.321173, 19.974794, 29.281090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158031, 20.127073, 29.369389>,  <16.886131, 20.380871, 29.516552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.158031, 20.127073, 29.369389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508901, 0.046790, 0.859553,
		-0.528165, -0.771511, 0.354699,
		0.679751, -0.634492, -0.367910,
		17.361958, 19.936726, 29.259016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090757, 19.787756, 29.980831>,  <16.886131, 20.380871, 29.516552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090757, 19.787756, 29.980831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392826, 19.856140, 29.727694>,  <17.574066, 19.897171, 29.575811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392826, 19.856140, 29.727694>,  <17.090757, 19.787756, 29.980831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392826, 19.856140, 29.727694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612469, 0.160113, 0.774110,
		0.233672, -0.972181, 0.016202,
		0.755169, 0.170964, -0.632844,
		17.619377, 19.907429, 29.537840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651484, 19.534338, 30.310341>,  <17.090757, 19.787756, 29.980831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651484, 19.534338, 30.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849226, 19.774496, 30.058901>,  <17.967871, 19.918591, 29.908037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849226, 19.774496, 30.058901>,  <17.651484, 19.534338, 30.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849226, 19.774496, 30.058901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679401, 0.184220, 0.710266,
		0.542242, -0.778194, -0.316840,
		0.494357, 0.600397, -0.628598,
		17.997534, 19.954615, 29.870321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388830, 19.303995, 30.347557>,  <17.651484, 19.534338, 30.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388830, 19.303995, 30.347557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.358070, 19.687958, 30.239733>,  <18.339615, 19.918335, 30.175039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.358070, 19.687958, 30.239733>,  <18.388830, 19.303995, 30.347557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358070, 19.687958, 30.239733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667513, 0.250395, 0.701234,
		0.740617, -0.126008, -0.660006,
		-0.076901, 0.959909, -0.269559,
		18.335001, 19.975931, 30.158865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097275, 19.544836, 30.250542>,  <18.388830, 19.303995, 30.347557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097275, 19.544836, 30.250542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882128, 19.855925, 30.380680>,  <18.753040, 20.042578, 30.458763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882128, 19.855925, 30.380680>,  <19.097275, 19.544836, 30.250542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882128, 19.855925, 30.380680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680978, 0.173320, 0.711497,
		0.496958, 0.604244, -0.622834,
		-0.537867, 0.777721, 0.325344,
		18.720768, 20.089241, 30.478283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476633, 20.167442, 30.255875>,  <19.097275, 19.544836, 30.250542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476633, 20.167442, 30.255875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210316, 20.179962, 30.554066>,  <19.050526, 20.187475, 30.732981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210316, 20.179962, 30.554066>,  <19.476633, 20.167442, 30.255875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210316, 20.179962, 30.554066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745306, 0.074996, 0.662491,
		-0.035171, 0.996692, -0.073261,
		-0.665794, 0.031302, 0.745479,
		19.010578, 20.189352, 30.777710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610603, 20.808041, 30.664757>,  <19.476633, 20.167442, 30.255875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610603, 20.808041, 30.664757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458141, 20.514433, 30.889591>,  <19.366665, 20.338268, 31.024492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458141, 20.514433, 30.889591>,  <19.610603, 20.808041, 30.664757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.458141, 20.514433, 30.889591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764261, 0.091942, 0.638319,
		-0.520217, 0.672878, 0.525937,
		-0.381155, -0.734018, 0.562084,
		19.343794, 20.294228, 31.058216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447729, 21.500729, 30.661020>,  <19.610603, 20.808041, 30.664757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.447729, 21.500729, 30.661020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581032, 21.666122, 30.322088>,  <19.661013, 21.765360, 30.118729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581032, 21.666122, 30.322088>,  <19.447729, 21.500729, 30.661020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581032, 21.666122, 30.322088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942658, 0.163593, -0.290918,
		0.018327, 0.895693, 0.444295,
		0.333257, 0.413486, -0.847331,
		19.681009, 21.790169, 30.067888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988625, 22.151480, 30.617636>,  <19.447729, 21.500729, 30.661020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988625, 22.151480, 30.617636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267971, 22.375433, 30.439281>,  <19.435579, 22.509806, 30.332270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267971, 22.375433, 30.439281>,  <18.988625, 22.151480, 30.617636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267971, 22.375433, 30.439281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380239, -0.237569, -0.893857,
		-0.606384, 0.793783, 0.046979,
		0.698367, 0.559883, -0.445885,
		19.477482, 22.543398, 30.305515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605711, 22.585356, 30.164253>,  <18.988625, 22.151480, 30.617636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605711, 22.585356, 30.164253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976873, 22.571762, 30.015749>,  <19.199572, 22.563606, 29.926647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976873, 22.571762, 30.015749>,  <18.605711, 22.585356, 30.164253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976873, 22.571762, 30.015749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365529, -0.278800, -0.888065,
		-0.073327, 0.959748, -0.271123,
		0.927907, -0.033984, -0.371259,
		19.255245, 22.561567, 29.904371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667744, 23.014425, 29.566595>,  <18.605711, 22.585356, 30.164253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667744, 23.014425, 29.566595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980577, 22.768755, 29.524387>,  <19.168278, 22.621353, 29.499063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980577, 22.768755, 29.524387>,  <18.667744, 23.014425, 29.566595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980577, 22.768755, 29.524387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314484, -0.242796, -0.917687,
		0.538002, 0.750891, -0.383035,
		0.782083, -0.614176, -0.105518,
		19.215202, 22.584501, 29.492731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.892473, 23.041107, 28.846792>,  <18.667744, 23.014425, 29.566595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.892473, 23.041107, 28.846792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059053, 22.703140, 28.981064>,  <19.159002, 22.500360, 29.061626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059053, 22.703140, 28.981064>,  <18.892473, 23.041107, 28.846792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059053, 22.703140, 28.981064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153905, -0.429410, -0.889899,
		0.896037, 0.318935, -0.308865,
		0.416450, -0.844918, 0.335681,
		19.183989, 22.449665, 29.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362701, 22.730587, 28.351734>,  <18.892473, 23.041107, 28.846792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362701, 22.730587, 28.351734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307194, 22.415981, 28.592445>,  <19.273890, 22.227217, 28.736872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307194, 22.415981, 28.592445>,  <19.362701, 22.730587, 28.351734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.307194, 22.415981, 28.592445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010928, -0.606403, -0.795082,
		0.990265, -0.116907, 0.075554,
		-0.138767, -0.786516, 0.601777,
		19.265564, 22.180027, 28.772978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795218, 22.245262, 28.087778>,  <19.362701, 22.730587, 28.351734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.795218, 22.245262, 28.087778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529535, 22.008640, 28.270599>,  <19.370127, 21.866667, 28.380291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.529535, 22.008640, 28.270599>,  <19.795218, 22.245262, 28.087778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529535, 22.008640, 28.270599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054383, -0.571543, -0.818768,
		0.745569, -0.568686, 0.347451,
		-0.664206, -0.591553, 0.457052,
		19.330275, 21.831175, 28.407715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944845, 21.552959, 27.959726>,  <19.795218, 22.245262, 28.087778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944845, 21.552959, 27.959726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558035, 21.536201, 28.060209>,  <19.325949, 21.526148, 28.120499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558035, 21.536201, 28.060209>,  <19.944845, 21.552959, 27.959726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558035, 21.536201, 28.060209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143709, -0.724578, -0.674043,
		0.210259, -0.687918, 0.694665,
		-0.967026, -0.041894, 0.251209,
		19.267927, 21.523634, 28.135572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782045, 20.891624, 27.936604>,  <19.944845, 21.552959, 27.959726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782045, 20.891624, 27.936604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399643, 21.005014, 27.906416>,  <19.170202, 21.073048, 27.888304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399643, 21.005014, 27.906416>,  <19.782045, 20.891624, 27.936604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399643, 21.005014, 27.906416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180890, -0.772204, -0.609082,
		-0.230937, -0.568634, 0.789509,
		-0.956006, 0.283473, -0.075470,
		19.112841, 21.090055, 27.883776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409834, 20.206741, 27.897635>,  <19.782045, 20.891624, 27.936604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.409834, 20.206741, 27.897635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183840, 20.502060, 27.750278>,  <19.048243, 20.679251, 27.661865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183840, 20.502060, 27.750278>,  <19.409834, 20.206741, 27.897635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183840, 20.502060, 27.750278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197643, -0.554578, -0.808320,
		-0.801080, -0.383880, 0.459247,
		-0.564986, 0.738295, -0.368390,
		19.014343, 20.723549, 27.639761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808167, 19.933321, 27.674103>,  <19.409834, 20.206741, 27.897635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808167, 19.933321, 27.674103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822865, 20.275112, 27.466827>,  <18.831684, 20.480186, 27.342463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822865, 20.275112, 27.466827>,  <18.808167, 19.933321, 27.674103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822865, 20.275112, 27.466827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455657, -0.447171, -0.769685,
		-0.889397, 0.264400, 0.372916,
		0.036747, 0.854477, -0.518188,
		18.833889, 20.531456, 27.311371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374109, 19.770962, 27.161505>,  <18.808167, 19.933321, 27.674103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374109, 19.770962, 27.161505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527878, 20.110668, 27.016745>,  <18.620138, 20.314491, 26.929890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527878, 20.110668, 27.016745>,  <18.374109, 19.770962, 27.161505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527878, 20.110668, 27.016745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226072, -0.293481, -0.928849,
		-0.895048, 0.438885, 0.079174,
		0.384422, 0.849264, -0.361899,
		18.643204, 20.365448, 26.908175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838667, 20.013756, 26.686045>,  <18.374109, 19.770962, 27.161505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838667, 20.013756, 26.686045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155106, 20.233747, 26.578949>,  <18.344969, 20.365744, 26.514690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155106, 20.233747, 26.578949>,  <17.838667, 20.013756, 26.686045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155106, 20.233747, 26.578949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293484, -0.042765, -0.955007,
		-0.536686, 0.834081, 0.127579,
		0.791098, 0.549981, -0.267741,
		18.392435, 20.398743, 26.498627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588278, 20.538897, 26.326496>,  <17.838667, 20.013756, 26.686045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588278, 20.538897, 26.326496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964853, 20.481388, 26.204496>,  <18.190798, 20.446882, 26.131296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964853, 20.481388, 26.204496>,  <17.588278, 20.538897, 26.326496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964853, 20.481388, 26.204496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310261, -0.015152, -0.950531,
		0.132038, 0.989495, -0.058871,
		0.941437, -0.143771, -0.305001,
		18.247284, 20.438257, 26.112995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840059, 21.053148, 25.857821>,  <17.588278, 20.538897, 26.326496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840059, 21.053148, 25.857821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074757, 20.740877, 25.771776>,  <18.215574, 20.553514, 25.720150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074757, 20.740877, 25.771776>,  <17.840059, 21.053148, 25.857821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074757, 20.740877, 25.771776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194552, 0.121961, -0.973281,
		0.786054, 0.612917, -0.080323,
		0.586744, -0.780678, -0.215112,
		18.250780, 20.506674, 25.707243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357567, 21.293821, 25.330118>,  <17.840059, 21.053148, 25.857821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357567, 21.293821, 25.330118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345366, 20.895491, 25.295704>,  <18.338045, 20.656492, 25.275055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345366, 20.895491, 25.295704>,  <18.357567, 21.293821, 25.330118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345366, 20.895491, 25.295704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100975, 0.088707, -0.990926,
		0.994421, -0.021541, -0.103259,
		-0.030505, -0.995825, -0.086037,
		18.336214, 20.596743, 25.269892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.438797, 21.256769, 24.691439>,  <18.357567, 21.293821, 25.330118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.438797, 21.256769, 24.691439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.351068, 20.874214, 24.768612>,  <18.298431, 20.644682, 24.814915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.351068, 20.874214, 24.768612>,  <18.438797, 21.256769, 24.691439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.351068, 20.874214, 24.768612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133260, -0.166528, -0.976990,
		0.966509, -0.239985, -0.090925,
		-0.219321, -0.956387, 0.192931,
		18.285273, 20.587297, 24.826490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663763, 20.922831, 24.126537>,  <18.438797, 21.256769, 24.691439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663763, 20.922831, 24.126537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431631, 20.634628, 24.278372>,  <18.292353, 20.461706, 24.369473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431631, 20.634628, 24.278372>,  <18.663763, 20.922831, 24.126537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431631, 20.634628, 24.278372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187651, -0.335256, -0.923250,
		0.792468, -0.607019, 0.059355,
		-0.580329, -0.720508, 0.379587,
		18.257532, 20.418476, 24.392248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819813, 20.272062, 23.726034>,  <18.663763, 20.922831, 24.126537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819813, 20.272062, 23.726034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470943, 20.213541, 23.912756>,  <18.261621, 20.178429, 24.024790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470943, 20.213541, 23.912756>,  <18.819813, 20.272062, 23.726034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470943, 20.213541, 23.912756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332578, -0.522462, -0.785128,
		0.358754, -0.840017, 0.407021,
		-0.872174, -0.146302, 0.466806,
		18.209291, 20.169651, 24.052797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723484, 19.568520, 23.775038>,  <18.819813, 20.272062, 23.726034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.723484, 19.568520, 23.775038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352150, 19.717041, 23.782314>,  <18.129351, 19.806154, 23.786680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352150, 19.717041, 23.782314>,  <18.723484, 19.568520, 23.775038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352150, 19.717041, 23.782314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290467, -0.693948, -0.658836,
		-0.232006, -0.616903, 0.752067,
		-0.928333, 0.371304, 0.018190,
		18.073650, 19.828432, 23.787771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268181, 18.974203, 23.804201>,  <18.723484, 19.568520, 23.775038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268181, 18.974203, 23.804201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046984, 19.278097, 23.667377>,  <17.914267, 19.460434, 23.585283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046984, 19.278097, 23.667377>,  <18.268181, 18.974203, 23.804201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046984, 19.278097, 23.667377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515422, -0.634493, -0.575985,
		-0.654633, -0.142206, 0.742451,
		-0.552989, 0.759734, -0.342064,
		17.881086, 19.506018, 23.564760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552856, 18.816320, 23.920668>,  <18.268181, 18.974203, 23.804201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552856, 18.816320, 23.920668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575357, 19.060547, 23.604683>,  <17.588858, 19.207083, 23.415092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575357, 19.060547, 23.604683>,  <17.552856, 18.816320, 23.920668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575357, 19.060547, 23.604683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601393, -0.610855, -0.514958,
		-0.796970, 0.504047, 0.332828,
		0.056253, 0.610567, -0.789964,
		17.592234, 19.243717, 23.367693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896822, 18.799925, 23.618610>,  <17.552856, 18.816320, 23.920668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896822, 18.799925, 23.618610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130253, 18.958334, 23.335032>,  <17.270311, 19.053379, 23.164885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130253, 18.958334, 23.335032>,  <16.896822, 18.799925, 23.618610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130253, 18.958334, 23.335032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444180, -0.575178, -0.686931,
		-0.679812, 0.715776, -0.159753,
		0.583575, 0.396025, -0.708946,
		17.305325, 19.077141, 23.122347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483503, 18.985188, 23.084806>,  <16.896822, 18.799925, 23.618610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483503, 18.985188, 23.084806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837204, 18.951717, 22.901024>,  <17.049423, 18.931635, 22.790754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837204, 18.951717, 22.901024>,  <16.483503, 18.985188, 23.084806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837204, 18.951717, 22.901024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461171, -0.311586, -0.830804,
		-0.073642, 0.946526, -0.314109,
		0.884250, -0.083677, -0.459457,
		17.102478, 18.926615, 22.763187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365734, 19.305214, 22.405117>,  <16.483503, 18.985188, 23.084806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365734, 19.305214, 22.405117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705324, 19.100748, 22.351517>,  <16.909079, 18.978069, 22.319357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705324, 19.100748, 22.351517>,  <16.365734, 19.305214, 22.405117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705324, 19.100748, 22.351517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352868, -0.359619, -0.863804,
		0.393355, 0.780632, -0.485680,
		0.848973, -0.511163, -0.134003,
		16.960016, 18.947399, 22.311316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670864, 19.501883, 21.778688>,  <16.365734, 19.305214, 22.405117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670864, 19.501883, 21.778688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814020, 19.132977, 21.837126>,  <16.899914, 18.911633, 21.872189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814020, 19.132977, 21.837126>,  <16.670864, 19.501883, 21.778688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814020, 19.132977, 21.837126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152402, -0.212051, -0.965302,
		0.921243, 0.323206, -0.216446,
		0.357889, -0.922265, 0.146094,
		16.921387, 18.856297, 21.880955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238997, 19.393143, 21.299368>,  <16.670864, 19.501883, 21.778688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238997, 19.393143, 21.299368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125151, 19.024811, 21.406002>,  <17.056843, 18.803812, 21.469982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125151, 19.024811, 21.406002>,  <17.238997, 19.393143, 21.299368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125151, 19.024811, 21.406002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055434, -0.261815, -0.963525,
		0.957038, -0.289012, 0.023471,
		-0.284615, -0.920829, 0.266588,
		17.039766, 18.748562, 21.485979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606007, 18.985270, 20.838066>,  <17.238997, 19.393143, 21.299368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606007, 18.985270, 20.838066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332150, 18.724081, 20.967615>,  <17.167835, 18.567368, 21.045345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332150, 18.724081, 20.967615>,  <17.606007, 18.985270, 20.838066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332150, 18.724081, 20.967615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048582, -0.484237, -0.873587,
		0.727259, -0.582359, 0.363251,
		-0.684641, -0.652972, 0.323874,
		17.126757, 18.528189, 21.064777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935560, 18.353924, 20.637552>,  <17.606007, 18.985270, 20.838066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935560, 18.353924, 20.637552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.551458, 18.265669, 20.705938>,  <17.320997, 18.212717, 20.746969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.551458, 18.265669, 20.705938>,  <17.935560, 18.353924, 20.637552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551458, 18.265669, 20.705938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006135, -0.595676, -0.803201,
		0.279053, -0.772327, 0.570648,
		-0.960256, -0.220635, 0.170964,
		17.263382, 18.199478, 20.757227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809515, 17.555984, 20.589096>,  <17.935560, 18.353924, 20.637552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809515, 17.555984, 20.589096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.471579, 17.758085, 20.518713>,  <17.268816, 17.879347, 20.476482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.471579, 17.758085, 20.518713>,  <17.809515, 17.555984, 20.589096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471579, 17.758085, 20.518713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200366, -0.603747, -0.771585,
		-0.496079, -0.616612, 0.611306,
		-0.844843, 0.505252, -0.175958,
		17.218126, 17.909662, 20.465925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495686, 17.048212, 20.265284>,  <17.809515, 17.555984, 20.589096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495686, 17.048212, 20.265284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252071, 17.354370, 20.182098>,  <17.105904, 17.538065, 20.132187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252071, 17.354370, 20.182098>,  <17.495686, 17.048212, 20.265284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252071, 17.354370, 20.182098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198440, -0.400904, -0.894370,
		-0.767919, -0.503434, 0.396049,
		-0.609034, 0.765395, -0.207961,
		17.069361, 17.583988, 20.119711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909285, 16.732841, 20.055990>,  <17.495686, 17.048212, 20.265284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909285, 16.732841, 20.055990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951185, 17.095730, 19.893026>,  <16.976326, 17.313463, 19.795248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951185, 17.095730, 19.893026>,  <16.909285, 16.732841, 20.055990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951185, 17.095730, 19.893026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013124, -0.408365, -0.912724,
		-0.994412, 0.100954, -0.030870,
		0.104750, 0.907219, -0.407408,
		16.982611, 17.367895, 19.770803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803020, 16.596909, 19.389990>,  <16.909285, 16.732841, 20.055990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803020, 16.596909, 19.389990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936436, 16.971952, 19.350710>,  <17.016485, 17.196978, 19.327143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936436, 16.971952, 19.350710>,  <16.803020, 16.596909, 19.389990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936436, 16.971952, 19.350710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019234, -0.110909, -0.993644,
		-0.942540, 0.329531, -0.055027,
		0.333539, 0.937608, -0.098198,
		17.036497, 17.253235, 19.321251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430964, 16.987843, 18.876947>,  <16.803020, 16.596909, 19.389990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430964, 16.987843, 18.876947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775379, 17.187819, 18.914202>,  <16.982029, 17.307804, 18.936554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775379, 17.187819, 18.914202>,  <16.430964, 16.987843, 18.876947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775379, 17.187819, 18.914202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081546, 0.045041, -0.995651,
		-0.501962, 0.864888, -0.001986,
		0.861037, 0.499941, 0.093137,
		17.033689, 17.337801, 18.942142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345154, 17.561806, 18.534502>,  <16.430964, 16.987843, 18.876947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345154, 17.561806, 18.534502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737907, 17.489855, 18.558315>,  <16.973560, 17.446684, 18.572603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737907, 17.489855, 18.558315>,  <16.345154, 17.561806, 18.534502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737907, 17.489855, 18.558315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052664, -0.042723, -0.997698,
		0.182008, 0.982760, -0.032476,
		0.981886, -0.179879, 0.059532,
		17.032473, 17.435892, 18.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732035, 18.079905, 18.021290>,  <16.345154, 17.561806, 18.534502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732035, 18.079905, 18.021290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959480, 17.761227, 18.103226>,  <17.095947, 17.570021, 18.152388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959480, 17.761227, 18.103226>,  <16.732035, 18.079905, 18.021290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959480, 17.761227, 18.103226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265931, -0.057612, -0.962269,
		0.778434, 0.601632, 0.179107,
		0.568613, -0.796693, 0.204839,
		17.130064, 17.522219, 18.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364256, 18.225653, 17.719513>,  <16.732035, 18.079905, 18.021290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364256, 18.225653, 17.719513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380896, 17.826817, 17.745054>,  <17.390881, 17.587515, 17.760380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380896, 17.826817, 17.745054>,  <17.364256, 18.225653, 17.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380896, 17.826817, 17.745054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362711, -0.044477, -0.930840,
		0.930973, 0.061884, 0.359806,
		0.041601, -0.997092, 0.063853,
		17.393375, 17.527689, 17.764210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973923, 18.091347, 17.540564>,  <17.364256, 18.225653, 17.719513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973923, 18.091347, 17.540564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.789675, 17.737637, 17.509876>,  <17.679125, 17.525410, 17.491463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.789675, 17.737637, 17.509876>,  <17.973923, 18.091347, 17.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789675, 17.737637, 17.509876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221360, -0.030741, -0.974707,
		0.859551, -0.465954, 0.209903,
		-0.460622, -0.884275, -0.076720,
		17.651487, 17.472355, 17.486860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370041, 17.719101, 17.075861>,  <17.973923, 18.091347, 17.540564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370041, 17.719101, 17.075861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018692, 17.530130, 17.046814>,  <17.807882, 17.416748, 17.029387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018692, 17.530130, 17.046814>,  <18.370041, 17.719101, 17.075861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018692, 17.530130, 17.046814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183755, -0.193520, -0.963734,
		0.441241, -0.859862, 0.256794,
		-0.878374, -0.472427, -0.072615,
		17.755180, 17.388403, 17.025030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455561, 17.097797, 16.587494>,  <18.370041, 17.719101, 17.075861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455561, 17.097797, 16.587494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.062210, 17.164204, 16.616903>,  <17.826199, 17.204048, 16.634550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.062210, 17.164204, 16.616903>,  <18.455561, 17.097797, 16.587494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.062210, 17.164204, 16.616903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086904, -0.074808, -0.993404,
		-0.159426, -0.983281, 0.087993,
		-0.983378, 0.166021, 0.073524,
		17.767197, 17.214008, 16.638960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052347, 16.544903, 16.160784>,  <18.455561, 17.097797, 16.587494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052347, 16.544903, 16.160784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835339, 16.878473, 16.201256>,  <17.705133, 17.078615, 16.225538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835339, 16.878473, 16.201256>,  <18.052347, 16.544903, 16.160784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835339, 16.878473, 16.201256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089340, 0.062485, -0.994039,
		-0.835277, -0.548329, 0.040603,
		-0.542523, 0.833925, 0.101180,
		17.672581, 17.128651, 16.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.453117, 16.455763, 15.625107>,  <18.052347, 16.544903, 16.160784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.453117, 16.455763, 15.625107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.520500, 16.833710, 15.737427>,  <17.560930, 17.060478, 15.804819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.520500, 16.833710, 15.737427>,  <17.453117, 16.455763, 15.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.520500, 16.833710, 15.737427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067252, 0.273191, -0.959606,
		-0.983412, 0.180536, -0.017524,
		0.168456, 0.944867, 0.280801,
		17.571037, 17.117170, 15.821667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176153, 15.854757, 15.336862>,  <17.453117, 16.455763, 15.625107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176153, 15.854757, 15.336862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988001, 15.502203, 15.354290>,  <16.875109, 15.290670, 15.364747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988001, 15.502203, 15.354290>,  <17.176153, 15.854757, 15.336862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988001, 15.502203, 15.354290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630995, 0.370447, 0.681626,
		-0.616917, 0.293132, -0.730402,
		-0.470382, -0.881387, 0.043570,
		16.846886, 15.237787, 15.367361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553797, 15.416017, 14.934204>,  <17.176153, 15.854757, 15.336862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553797, 15.416017, 14.934204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352240, 15.300836, 15.259946>,  <17.231304, 15.231727, 15.455391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352240, 15.300836, 15.259946>,  <17.553797, 15.416017, 14.934204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352240, 15.300836, 15.259946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670429, -0.724838, 0.158540,
		0.544623, 0.625854, 0.558294,
		-0.503895, -0.287952, 0.814355,
		17.201071, 15.214450, 15.504252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934240, 15.403221, 15.679452>,  <17.553797, 15.416017, 14.934204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934240, 15.403221, 15.679452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653801, 15.118052, 15.673756>,  <17.485538, 14.946950, 15.670338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.653801, 15.118052, 15.673756>,  <17.934240, 15.403221, 15.679452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653801, 15.118052, 15.673756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697281, -0.689619, 0.195514,
		-0.149208, 0.127144, 0.980597,
		-0.701097, -0.712924, -0.014242,
		17.443472, 14.904174, 15.669483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041479, 14.998130, 16.272652>,  <17.934240, 15.403221, 15.679452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041479, 14.998130, 16.272652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904785, 14.738961, 16.000353>,  <17.822769, 14.583460, 15.836974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904785, 14.738961, 16.000353>,  <18.041479, 14.998130, 16.272652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904785, 14.738961, 16.000353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879934, -0.474984, 0.010355,
		-0.330053, -0.595473, 0.732446,
		-0.341734, -0.647922, -0.680746,
		17.802265, 14.544584, 15.796129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339729, 14.353408, 16.450874>,  <18.041479, 14.998130, 16.272652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339729, 14.353408, 16.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.245583, 14.346033, 16.062181>,  <18.189095, 14.341608, 15.828966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.245583, 14.346033, 16.062181>,  <18.339729, 14.353408, 16.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245583, 14.346033, 16.062181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659102, -0.737815, -0.145646,
		-0.714273, -0.674751, 0.185809,
		-0.235368, -0.018436, -0.971732,
		18.174973, 14.340503, 15.770662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.334023, 13.623840, 16.347708>,  <18.339729, 14.353408, 16.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.334023, 13.623840, 16.347708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355291, 13.824570, 16.002375>,  <18.368053, 13.945007, 15.795175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355291, 13.824570, 16.002375>,  <18.334023, 13.623840, 16.347708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355291, 13.824570, 16.002375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637114, -0.682777, -0.357633,
		-0.768933, -0.531027, -0.356023,
		0.053172, 0.501823, -0.863334,
		18.371243, 13.975117, 15.743374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074991, 13.154676, 15.894596>,  <18.334023, 13.623840, 16.347708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074991, 13.154676, 15.894596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337286, 13.416841, 15.744691>,  <18.494663, 13.574140, 15.654748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337286, 13.416841, 15.744691>,  <18.074991, 13.154676, 15.894596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337286, 13.416841, 15.744691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609627, -0.752470, -0.249286,
		-0.445383, -0.065001, -0.892977,
		0.655735, 0.655411, -0.374764,
		18.534006, 13.613464, 15.632261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221058, 12.447598, 16.083597>,  <18.074991, 13.154676, 15.894596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221058, 12.447598, 16.083597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101694, 12.117552, 15.891709>,  <18.030075, 11.919523, 15.776576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101694, 12.117552, 15.891709>,  <18.221058, 12.447598, 16.083597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101694, 12.117552, 15.891709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245313, 0.552043, -0.796913,
		0.922374, -0.120124, -0.367146,
		-0.298409, -0.825117, -0.479722,
		18.012171, 11.870017, 15.747793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618671, 12.297700, 15.407201>,  <18.221058, 12.447598, 16.083597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618671, 12.297700, 15.407201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261333, 12.118702, 15.390785>,  <18.046930, 12.011303, 15.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261333, 12.118702, 15.390785>,  <18.618671, 12.297700, 15.407201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261333, 12.118702, 15.390785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177775, 0.435811, -0.882307,
		0.412706, -0.780912, -0.468883,
		-0.893348, -0.447489, -0.041035,
		17.993330, 11.984453, 15.378473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575550, 12.124392, 14.761069>,  <18.618671, 12.297700, 15.407201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575550, 12.124392, 14.761069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.199905, 12.088464, 14.893735>,  <17.974518, 12.066907, 14.973334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.199905, 12.088464, 14.893735>,  <18.575550, 12.124392, 14.761069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.199905, 12.088464, 14.893735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335945, 0.442747, -0.831334,
		-0.072174, -0.892137, -0.445963,
		-0.939112, -0.089818, 0.331664,
		17.918171, 12.061518, 14.993234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119919, 11.800955, 14.201823>,  <18.575550, 12.124392, 14.761069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119919, 11.800955, 14.201823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877523, 12.003663, 14.447087>,  <17.732086, 12.125288, 14.594246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877523, 12.003663, 14.447087>,  <18.119919, 11.800955, 14.201823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877523, 12.003663, 14.447087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328967, 0.542157, -0.773206,
		-0.724266, -0.670261, -0.161829,
		-0.605986, 0.506770, 0.613159,
		17.695728, 12.155694, 14.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442421, 11.813334, 13.830727>,  <18.119919, 11.800955, 14.201823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442421, 11.813334, 13.830727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408285, 12.075022, 14.131317>,  <17.387804, 12.232034, 14.311671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408285, 12.075022, 14.131317>,  <17.442421, 11.813334, 13.830727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408285, 12.075022, 14.131317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446417, 0.649178, -0.615857,
		-0.890746, -0.388030, 0.236652,
		-0.085342, 0.654218, 0.751476,
		17.382683, 12.271287, 14.356760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704126, 12.000400, 13.864526>,  <17.442421, 11.813334, 13.830727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704126, 12.000400, 13.864526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907581, 12.301280, 14.032089>,  <17.029654, 12.481808, 14.132627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907581, 12.301280, 14.032089>,  <16.704126, 12.000400, 13.864526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907581, 12.301280, 14.032089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405986, 0.638598, -0.653733,
		-0.759252, 0.162442, 0.630197,
		0.508637, 0.752200, 0.418908,
		17.060173, 12.526940, 14.157762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199799, 12.556373, 14.011942>,  <16.704126, 12.000400, 13.864526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199799, 12.556373, 14.011942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546286, 12.755394, 14.030314>,  <16.754177, 12.874806, 14.041338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546286, 12.755394, 14.030314>,  <16.199799, 12.556373, 14.011942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.546286, 12.755394, 14.030314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448045, 0.814125, -0.369400,
		-0.221189, 0.299401, 0.928135,
		0.866217, 0.497553, 0.045930,
		16.806150, 12.904660, 14.044093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105999, 13.281156, 14.337588>,  <16.199799, 12.556373, 14.011942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105999, 13.281156, 14.337588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449053, 13.359870, 14.147539>,  <16.654884, 13.407099, 14.033510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449053, 13.359870, 14.147539>,  <16.105999, 13.281156, 14.337588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449053, 13.359870, 14.147539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318112, 0.928926, -0.189476,
		0.404067, 0.313642, 0.859278,
		0.857633, 0.196786, -0.475122,
		16.706343, 13.418905, 14.005003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301619, 14.003923, 14.459381>,  <16.105999, 13.281156, 14.337588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301619, 14.003923, 14.459381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511290, 13.905308, 14.133324>,  <16.637093, 13.846138, 13.937689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511290, 13.905308, 14.133324>,  <16.301619, 14.003923, 14.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511290, 13.905308, 14.133324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331482, 0.822625, -0.461960,
		0.784449, 0.512354, 0.349477,
		0.524176, -0.246539, -0.815143,
		16.668543, 13.831347, 13.888781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614328, 14.608521, 14.329413>,  <16.301619, 14.003923, 14.459381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614328, 14.608521, 14.329413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675913, 14.394715, 13.997005>,  <16.712864, 14.266433, 13.797561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675913, 14.394715, 13.997005>,  <16.614328, 14.608521, 14.329413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675913, 14.394715, 13.997005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159743, 0.816518, -0.554780,
		0.975079, 0.218163, 0.040326,
		0.153960, -0.534512, -0.831019,
		16.722101, 14.234362, 13.747700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091959, 15.054977, 13.928248>,  <16.614328, 14.608521, 14.329413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091959, 15.054977, 13.928248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947708, 14.807132, 13.649385>,  <16.861158, 14.658424, 13.482068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947708, 14.807132, 13.649385>,  <17.091959, 15.054977, 13.928248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947708, 14.807132, 13.649385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046763, 0.758524, -0.649965,
		0.931537, -0.201793, -0.302519,
		-0.360627, -0.619614, -0.697157,
		16.839520, 14.621247, 13.440238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439081, 15.172359, 13.302888>,  <17.091959, 15.054977, 13.928248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439081, 15.172359, 13.302888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104572, 15.005186, 13.160912>,  <16.903868, 14.904882, 13.075726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104572, 15.005186, 13.160912>,  <17.439081, 15.172359, 13.302888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104572, 15.005186, 13.160912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041223, 0.693419, -0.719354,
		0.546763, -0.586944, -0.597115,
		-0.836272, -0.417931, -0.354940,
		16.853691, 14.879807, 13.054429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514660, 15.136842, 12.591353>,  <17.439081, 15.172359, 13.302888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514660, 15.136842, 12.591353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125252, 15.112163, 12.679397>,  <16.891605, 15.097355, 12.732223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125252, 15.112163, 12.679397>,  <17.514660, 15.136842, 12.591353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125252, 15.112163, 12.679397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195799, 0.721974, -0.663639,
		-0.117967, -0.689164, -0.714938,
		-0.973523, -0.061697, 0.220107,
		16.833195, 15.093654, 12.745429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283611, 15.347676, 11.998554>,  <17.514660, 15.136842, 12.591353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283611, 15.347676, 11.998554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957945, 15.356576, 12.230636>,  <16.762545, 15.361916, 12.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957945, 15.356576, 12.230636>,  <17.283611, 15.347676, 11.998554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957945, 15.356576, 12.230636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385050, 0.727241, -0.568206,
		-0.434590, -0.686022, -0.583528,
		-0.814167, 0.022249, 0.580204,
		16.713696, 15.363251, 12.404697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731455, 15.446902, 11.513256>,  <17.283611, 15.347676, 11.998554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731455, 15.446902, 11.513256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538986, 15.517258, 11.856776>,  <16.423506, 15.559471, 12.062888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538986, 15.517258, 11.856776>,  <16.731455, 15.446902, 11.513256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538986, 15.517258, 11.856776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421158, 0.812815, -0.402439,
		-0.768830, -0.555333, -0.317026,
		-0.481171, 0.175889, 0.858800,
		16.394634, 15.570024, 12.114416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101685, 15.754571, 11.275821>,  <16.731455, 15.446902, 11.513256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101685, 15.754571, 11.275821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122313, 15.848959, 11.663977>,  <16.134689, 15.905592, 11.896871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122313, 15.848959, 11.663977>,  <16.101685, 15.754571, 11.275821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122313, 15.848959, 11.663977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311967, 0.926864, -0.208806,
		-0.948692, -0.291961, 0.121414,
		0.051571, 0.235970, 0.970391,
		16.137783, 15.919750, 11.955094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487365, 15.939528, 11.583779>,  <16.101685, 15.754571, 11.275821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487365, 15.939528, 11.583779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759508, 16.145758, 11.792124>,  <15.922794, 16.269495, 11.917130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759508, 16.145758, 11.792124>,  <15.487365, 15.939528, 11.583779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759508, 16.145758, 11.792124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340131, 0.851660, -0.398731,
		-0.649173, 0.094119, 0.754796,
		0.680357, 0.515574, 0.520862,
		15.963615, 16.300430, 11.948382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046087, 16.540096, 11.825752>,  <15.487365, 15.939528, 11.583779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046087, 16.540096, 11.825752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436941, 16.619558, 11.856066>,  <15.671453, 16.667234, 11.874253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436941, 16.619558, 11.856066>,  <15.046087, 16.540096, 11.825752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436941, 16.619558, 11.856066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146857, 0.888334, -0.435082,
		-0.153752, 0.414005, 0.897196,
		0.977135, 0.198654, 0.075783,
		15.730082, 16.679155, 11.878800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215301, 17.234707, 12.185535>,  <15.046087, 16.540096, 11.825752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215301, 17.234707, 12.185535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547833, 17.159985, 11.976159>,  <15.747354, 17.115152, 11.850533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547833, 17.159985, 11.976159>,  <15.215301, 17.234707, 12.185535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547833, 17.159985, 11.976159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099556, 0.876535, -0.470930,
		0.546786, 0.443611, 0.710095,
		0.831333, -0.186804, -0.523441,
		15.797234, 17.103943, 11.819127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547067, 17.848124, 12.201465>,  <15.215301, 17.234707, 12.185535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547067, 17.848124, 12.201465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702653, 17.671879, 11.877843>,  <15.796004, 17.566132, 11.683670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702653, 17.671879, 11.877843>,  <15.547067, 17.848124, 12.201465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702653, 17.671879, 11.877843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027343, 0.883345, -0.467925,
		0.920847, 0.159884, 0.355638,
		0.388965, -0.440612, -0.809054,
		15.819343, 17.539696, 11.635127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034781, 18.275141, 11.991726>,  <15.547067, 17.848124, 12.201465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034781, 18.275141, 11.991726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958135, 18.049166, 11.670695>,  <15.912147, 17.913582, 11.478077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958135, 18.049166, 11.670695>,  <16.034781, 18.275141, 11.991726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958135, 18.049166, 11.670695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025561, 0.814580, -0.579488,
		0.981137, -0.131553, -0.141646,
		-0.191616, -0.564937, -0.802577,
		15.900650, 17.879684, 11.429922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568485, 18.351440, 11.439228>,  <16.034781, 18.275141, 11.991726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568485, 18.351440, 11.439228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446470, 18.083735, 11.168219>,  <16.373262, 17.923111, 11.005613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.446470, 18.083735, 11.168219>,  <16.568485, 18.351440, 11.439228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.446470, 18.083735, 11.168219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581685, -0.694235, 0.423886,
		-0.754052, -0.264805, 0.601068,
		-0.305036, -0.669265, -0.677523,
		16.354959, 17.882956, 10.964962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235950, 18.057121, 11.673456>,  <16.568485, 18.351440, 11.439228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235950, 18.057121, 11.673456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367731, 18.303541, 11.959658>,  <17.446800, 18.451393, 12.131378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367731, 18.303541, 11.959658>,  <17.235950, 18.057121, 11.673456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367731, 18.303541, 11.959658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489020, 0.759581, -0.428831,
		-0.807664, -0.208617, 0.551505,
		0.329451, 0.616048, 0.715504,
		17.466566, 18.488356, 12.174309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613934, 17.499958, 12.003018>,  <17.235950, 18.057121, 11.673456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613934, 17.499958, 12.003018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.217573, 17.476801, 11.954412>,  <16.979757, 17.462906, 11.925249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.217573, 17.476801, 11.954412>,  <17.613934, 17.499958, 12.003018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217573, 17.476801, 11.954412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047798, 0.692596, -0.719740,
		0.125829, -0.718998, -0.683526,
		-0.990900, -0.057893, -0.121516,
		16.920303, 17.459433, 11.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784729, 16.829325, 12.297666>,  <17.613934, 17.499958, 12.003018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784729, 16.829325, 12.297666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164602, 16.853035, 12.420686>,  <18.392527, 16.867262, 12.494498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164602, 16.853035, 12.420686>,  <17.784729, 16.829325, 12.297666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164602, 16.853035, 12.420686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184419, 0.899496, 0.396102,
		-0.253161, -0.432889, 0.865169,
		0.949684, 0.059276, 0.307550,
		18.449507, 16.870817, 12.512951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739899, 17.074560, 12.997015>,  <17.784729, 16.829325, 12.297666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739899, 17.074560, 12.997015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097502, 17.162193, 12.840681>,  <18.312063, 17.214773, 12.746881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097502, 17.162193, 12.840681>,  <17.739899, 17.074560, 12.997015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097502, 17.162193, 12.840681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032311, 0.901553, 0.431461,
		0.446885, -0.373102, 0.813074,
		0.894008, 0.219084, -0.390835,
		18.365704, 17.227919, 12.723431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282745, 17.259613, 13.475961>,  <17.739899, 17.074560, 12.997015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282745, 17.259613, 13.475961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349297, 17.456802, 13.134365>,  <18.389227, 17.575115, 12.929407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349297, 17.456802, 13.134365>,  <18.282745, 17.259613, 13.475961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349297, 17.456802, 13.134365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010597, 0.866905, 0.498362,
		0.986006, -0.073866, 0.149456,
		0.166376, 0.492972, -0.853990,
		18.399210, 17.604694, 12.878168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853043, 17.773422, 13.468912>,  <18.282745, 17.259613, 13.475961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853043, 17.773422, 13.468912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.606525, 17.909849, 13.184981>,  <18.458614, 17.991705, 13.014623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.606525, 17.909849, 13.184981>,  <18.853043, 17.773422, 13.468912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.606525, 17.909849, 13.184981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120372, 0.931555, 0.343098,
		0.778263, 0.126005, -0.615166,
		-0.616293, 0.341069, -0.709827,
		18.421637, 18.012169, 12.972034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.141857, 18.277836, 12.875834>,  <18.853043, 17.773422, 13.468912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.141857, 18.277836, 12.875834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766058, 18.322605, 13.005336>,  <18.540579, 18.349466, 13.083037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766058, 18.322605, 13.005336>,  <19.141857, 18.277836, 12.875834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766058, 18.322605, 13.005336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237005, 0.894770, 0.378437,
		-0.247330, 0.432272, -0.867161,
		-0.939498, 0.111922, 0.323755,
		18.484209, 18.356182, 13.102462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626478, 17.751476, 12.660069>,  <19.141857, 18.277836, 12.875834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626478, 17.751476, 12.660069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968199, 17.591871, 12.793309>,  <20.173231, 17.496109, 12.873254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968199, 17.591871, 12.793309>,  <19.626478, 17.751476, 12.660069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968199, 17.591871, 12.793309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353331, -0.915824, -0.190849,
		0.381213, 0.045348, -0.923374,
		0.854303, -0.399011, 0.333101,
		20.224489, 17.472168, 12.893240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085012, 17.281450, 12.105986>,  <19.626478, 17.751476, 12.660069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085012, 17.281450, 12.105986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.150953, 17.180464, 12.487370>,  <20.190517, 17.119871, 12.716200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.150953, 17.180464, 12.487370>,  <20.085012, 17.281450, 12.105986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.150953, 17.180464, 12.487370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107627, -0.965517, -0.237050,
		0.980429, -0.063540, -0.186338,
		0.164850, -0.252466, 0.953460,
		20.200409, 17.104725, 12.773407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399405, 16.654257, 12.044046>,  <20.085012, 17.281450, 12.105986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399405, 16.654257, 12.044046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308807, 16.649525, 12.433622>,  <20.254450, 16.646685, 12.667368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308807, 16.649525, 12.433622>,  <20.399405, 16.654257, 12.044046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308807, 16.649525, 12.433622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069279, -0.997198, -0.028224,
		0.971546, -0.073866, 0.225038,
		-0.226492, -0.011831, 0.973941,
		20.240860, 16.645975, 12.725804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945501, 16.259665, 12.381708>,  <20.399405, 16.654257, 12.044046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945501, 16.259665, 12.381708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611088, 16.244068, 12.600625>,  <20.410440, 16.234711, 12.731976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611088, 16.244068, 12.600625>,  <20.945501, 16.259665, 12.381708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611088, 16.244068, 12.600625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089883, -0.993729, 0.066505,
		0.541268, 0.104793, 0.834294,
		-0.836032, -0.038992, 0.547293,
		20.360279, 16.232370, 12.764813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.983698, 15.918060, 12.986452>,  <20.945501, 16.259665, 12.381708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.983698, 15.918060, 12.986452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.584772, 15.888961, 12.989803>,  <20.345417, 15.871501, 12.991814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.584772, 15.888961, 12.989803>,  <20.983698, 15.918060, 12.986452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584772, 15.888961, 12.989803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070833, -0.929323, 0.362409,
		-0.018579, 0.362030, 0.931981,
		-0.997315, -0.072748, 0.008378,
		20.285578, 15.867136, 12.992316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837030, 15.540994, 13.524032>,  <20.983698, 15.918060, 12.986452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837030, 15.540994, 13.524032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485279, 15.505891, 13.336843>,  <20.274229, 15.484829, 13.224531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.485279, 15.505891, 13.336843>,  <20.837030, 15.540994, 13.524032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.485279, 15.505891, 13.336843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055407, -0.957328, 0.283642,
		-0.472892, 0.275357, 0.836990,
		-0.879377, -0.087757, -0.467969,
		20.221466, 15.479564, 13.196453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381037, 15.066069, 14.039367>,  <20.837030, 15.540994, 13.524032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381037, 15.066069, 14.039367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.187460, 15.065860, 13.689327>,  <20.071314, 15.065735, 13.479303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.187460, 15.065860, 13.689327>,  <20.381037, 15.066069, 14.039367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187460, 15.065860, 13.689327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159857, -0.983121, 0.088990,
		-0.860374, 0.182957, 0.475692,
		-0.483944, -0.000522, -0.875099,
		20.042276, 15.065703, 13.426798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760681, 14.738568, 14.153038>,  <20.381037, 15.066069, 14.039367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760681, 14.738568, 14.153038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788836, 14.675969, 13.758971>,  <19.805729, 14.638410, 13.522532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788836, 14.675969, 13.758971>,  <19.760681, 14.738568, 14.153038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788836, 14.675969, 13.758971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072076, -0.985833, 0.151455,
		-0.994912, 0.060346, -0.080670,
		0.070388, -0.156499, -0.985167,
		19.809952, 14.629020, 13.463421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238825, 14.252979, 13.993238>,  <19.760681, 14.738568, 14.153038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238825, 14.252979, 13.993238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516838, 14.220881, 13.707444>,  <19.683647, 14.201623, 13.535968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516838, 14.220881, 13.707444>,  <19.238825, 14.252979, 13.993238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516838, 14.220881, 13.707444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012169, -0.992297, 0.123285,
		-0.718874, -0.094382, -0.688703,
		0.695034, -0.080245, -0.714485,
		19.725348, 14.196808, 13.493098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023636, 13.617351, 13.580719>,  <19.238825, 14.252979, 13.993238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023636, 13.617351, 13.580719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.411772, 13.686644, 13.513270>,  <19.644653, 13.728219, 13.472801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.411772, 13.686644, 13.513270>,  <19.023636, 13.617351, 13.580719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411772, 13.686644, 13.513270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185782, -0.980657, 0.061613,
		-0.154686, -0.091112, -0.983753,
		0.970339, 0.173233, -0.168621,
		19.702873, 13.738613, 13.462684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156694, 13.214802, 13.070992>,  <19.023636, 13.617351, 13.580719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156694, 13.214802, 13.070992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514263, 13.277896, 13.238812>,  <19.728804, 13.315753, 13.339505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514263, 13.277896, 13.238812>,  <19.156694, 13.214802, 13.070992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514263, 13.277896, 13.238812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200528, -0.977873, -0.059612,
		0.400866, 0.137421, -0.905772,
		0.893921, 0.157736, 0.419552,
		19.782440, 13.325217, 13.364678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517715, 12.668457, 12.776332>,  <19.156694, 13.214802, 13.070992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517715, 12.668457, 12.776332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.745712, 12.787328, 13.082743>,  <19.882509, 12.858650, 13.266589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.745712, 12.787328, 13.082743>,  <19.517715, 12.668457, 12.776332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.745712, 12.787328, 13.082743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297059, -0.943771, 0.145093,
		0.766072, 0.144854, -0.626219,
		0.569991, 0.297176, 0.766027,
		19.916710, 12.876480, 13.312551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171394, 12.309549, 12.623853>,  <19.517715, 12.668457, 12.776332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171394, 12.309549, 12.623853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178392, 12.408914, 13.011251>,  <20.182592, 12.468533, 13.243690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.178392, 12.408914, 13.011251>,  <20.171394, 12.309549, 12.623853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178392, 12.408914, 13.011251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349581, -0.909030, 0.226843,
		0.936743, 0.334599, -0.102745,
		0.017496, 0.248411, 0.968497,
		20.183641, 12.483437, 13.301801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812325, 12.050311, 12.943831>,  <20.171394, 12.309549, 12.623853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812325, 12.050311, 12.943831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.621637, 12.129440, 13.286434>,  <20.507225, 12.176918, 13.491996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.621637, 12.129440, 13.286434>,  <20.812325, 12.050311, 12.943831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.621637, 12.129440, 13.286434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349401, -0.851435, 0.391122,
		0.806633, 0.485720, 0.336777,
		-0.476720, 0.197822, 0.856507,
		20.478621, 12.188787, 13.543386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370016, 12.159869, 13.537973>,  <20.812325, 12.050311, 12.943831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370016, 12.159869, 13.537973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005384, 12.013143, 13.612239>,  <20.786606, 11.925106, 13.656798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005384, 12.013143, 13.612239>,  <21.370016, 12.159869, 13.537973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005384, 12.013143, 13.612239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411087, -0.806890, 0.424189,
		-0.005789, 0.463005, 0.886337,
		-0.911578, -0.366817, 0.185664,
		20.731911, 11.903097, 13.667938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926590, 12.268281, 13.074432>,  <21.370016, 12.159869, 13.537973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926590, 12.268281, 13.074432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639223, 12.528321, 12.975441>,  <21.466803, 12.684345, 12.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639223, 12.528321, 12.975441>,  <21.926590, 12.268281, 13.074432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.639223, 12.528321, 12.975441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186267, 0.162992, 0.968885,
		0.670211, 0.742160, 0.003997,
		-0.718416, 0.650102, -0.247479,
		21.423698, 12.723351, 12.901197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.403654, 12.838470, 13.483934>,  <21.926590, 12.268281, 13.074432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.403654, 12.838470, 13.483934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.444437, 13.082388, 13.169544>,  <22.468906, 13.228739, 12.980910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.444437, 13.082388, 13.169544>,  <22.403654, 12.838470, 13.483934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.444437, 13.082388, 13.169544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613783, 0.660336, 0.432698,
		0.782864, 0.438302, 0.441606,
		0.101956, 0.609794, -0.785975,
		22.475023, 13.265326, 12.933752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038582, 13.017297, 13.932179>,  <22.403654, 12.838470, 13.483934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038582, 13.017297, 13.932179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143234, 13.287313, 14.208114>,  <23.206026, 13.449322, 14.373674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143234, 13.287313, 14.208114>,  <23.038582, 13.017297, 13.932179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143234, 13.287313, 14.208114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619537, 0.430592, -0.656326,
		-0.740083, 0.599094, -0.305555,
		0.261632, 0.675038, 0.689835,
		23.221724, 13.489824, 14.415064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071907, 13.695213, 13.602883>,  <23.038582, 13.017297, 13.932179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071907, 13.695213, 13.602883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.311579, 13.731107, 13.921112>,  <23.455381, 13.752643, 14.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.311579, 13.731107, 13.921112>,  <23.071907, 13.695213, 13.602883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.311579, 13.731107, 13.921112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702947, 0.416666, -0.576416,
		-0.383212, 0.904620, 0.186579,
		0.599178, 0.089734, 0.795571,
		23.491333, 13.758027, 14.159783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.579130, 13.982750, 13.290986>,  <23.071907, 13.695213, 13.602883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.579130, 13.982750, 13.290986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.746937, 14.004306, 13.653444>,  <23.847622, 14.017240, 13.870919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.746937, 14.004306, 13.653444>,  <23.579130, 13.982750, 13.290986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.746937, 14.004306, 13.653444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896725, 0.130484, -0.422916,
		-0.141028, 0.989985, 0.006417,
		0.419518, 0.053889, 0.906146,
		23.872791, 14.020473, 13.925288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.977177, 14.602437, 13.530786>,  <23.579130, 13.982750, 13.290986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.977177, 14.602437, 13.530786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136856, 14.276962, 13.699808>,  <24.232664, 14.081677, 13.801222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136856, 14.276962, 13.699808>,  <23.977177, 14.602437, 13.530786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136856, 14.276962, 13.699808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837338, 0.135801, -0.529550,
		0.373504, 0.565217, 0.735543,
		0.399198, -0.813688, 0.422556,
		24.256615, 14.032856, 13.826574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696188, 14.827714, 13.829508>,  <23.977177, 14.602437, 13.530786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696188, 14.827714, 13.829508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684544, 14.445966, 13.710627>,  <24.677557, 14.216917, 13.639298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684544, 14.445966, 13.710627>,  <24.696188, 14.827714, 13.829508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684544, 14.445966, 13.710627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913452, 0.095337, -0.395623,
		0.405905, -0.282997, 0.868996,
		-0.029112, -0.954371, -0.297202,
		24.675810, 14.159655, 13.621466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410011, 14.657267, 14.034622>,  <24.696188, 14.827714, 13.829508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410011, 14.657267, 14.034622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297461, 14.361670, 13.789765>,  <25.229931, 14.184311, 13.642852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297461, 14.361670, 13.789765>,  <25.410011, 14.657267, 14.034622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297461, 14.361670, 13.789765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956137, -0.270034, -0.113507,
		-0.081418, -0.617229, 0.782559,
		-0.281378, -0.738992, -0.612141,
		25.213047, 14.139972, 13.606123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784351, 14.108097, 14.171828>,  <25.410011, 14.657267, 14.034622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784351, 14.108097, 14.171828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650087, 14.003345, 13.809889>,  <25.569529, 13.940495, 13.592725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650087, 14.003345, 13.809889>,  <25.784351, 14.108097, 14.171828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650087, 14.003345, 13.809889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889685, -0.403750, -0.213182,
		-0.309505, -0.876588, 0.368511,
		-0.335660, -0.261878, -0.904850,
		25.549389, 13.924782, 13.538434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165770, 14.247968, 14.749046>,  <25.784351, 14.108097, 14.171828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165770, 14.247968, 14.749046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483458, 14.074592, 14.919385>,  <26.674070, 13.970566, 15.021588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483458, 14.074592, 14.919385>,  <26.165770, 14.247968, 14.749046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483458, 14.074592, 14.919385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572587, -0.768430, 0.285762,
		0.203373, -0.470792, -0.858484,
		0.794219, -0.433440, 0.425847,
		26.721724, 13.944560, 15.047139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758602, 14.613115, 14.917453>,  <26.165770, 14.247968, 14.749046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758602, 14.613115, 14.917453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725573, 15.006088, 14.850510>,  <26.705755, 15.241872, 14.810344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725573, 15.006088, 14.850510>,  <26.758602, 14.613115, 14.917453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725573, 15.006088, 14.850510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345685, -0.129270, -0.929404,
		-0.934710, -0.134598, -0.328938,
		-0.082574, 0.982432, -0.167359,
		26.700800, 15.300817, 14.800302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<16.269962, 24.855524, 23.416983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898499, 24.764025, 23.533785>,  <15.675621, 24.709126, 23.603867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898499, 24.764025, 23.533785>,  <16.269962, 24.855524, 23.416983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898499, 24.764025, 23.533785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114378, -0.572263, -0.812055,
		0.352860, -0.787521, 0.505273,
		-0.928659, -0.228750, 0.292004,
		15.619902, 24.695400, 23.621386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151899, 24.201883, 23.075426>,  <16.269962, 24.855524, 23.416983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.151899, 24.201883, 23.075426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776575, 24.278009, 23.190912>,  <15.551381, 24.323685, 23.260204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776575, 24.278009, 23.190912>,  <16.151899, 24.201883, 23.075426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776575, 24.278009, 23.190912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345657, -0.492485, -0.798736,
		-0.009822, -0.849258, 0.527887,
		-0.938309, 0.190313, 0.288714,
		15.495082, 24.335104, 23.277527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887168, 23.627272, 22.924154>,  <16.151899, 24.201883, 23.075426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887168, 23.627272, 22.924154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.594902, 23.900345, 22.927525>,  <15.419542, 24.064190, 22.929546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.594902, 23.900345, 22.927525>,  <15.887168, 23.627272, 22.924154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594902, 23.900345, 22.927525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427927, -0.448316, -0.784787,
		-0.531988, -0.577019, 0.619708,
		-0.730662, 0.682687, 0.008423,
		15.375703, 24.105150, 22.930052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.285085, 23.233740, 22.858967>,  <15.887168, 23.627272, 22.924154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.285085, 23.233740, 22.858967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.194354, 23.609159, 22.754906>,  <15.139915, 23.834412, 22.692469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.194354, 23.609159, 22.754906>,  <15.285085, 23.233740, 22.858967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194354, 23.609159, 22.754906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278073, -0.318404, -0.906253,
		-0.933395, -0.133220, 0.333207,
		-0.226826, 0.938547, -0.260152,
		15.126307, 23.890724, 22.676861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669401, 23.186768, 22.508553>,  <15.285085, 23.233740, 22.858967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669401, 23.186768, 22.508553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.837976, 23.528627, 22.387253>,  <14.939121, 23.733744, 22.314472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.837976, 23.528627, 22.387253>,  <14.669401, 23.186768, 22.508553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837976, 23.528627, 22.387253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193816, -0.241784, -0.950776,
		-0.885903, 0.459468, 0.063748,
		0.421438, 0.854651, -0.303250,
		14.964408, 23.785023, 22.296278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242092, 23.326242, 21.979126>,  <14.669401, 23.186768, 22.508553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242092, 23.326242, 21.979126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.553088, 23.559921, 21.885983>,  <14.739686, 23.700129, 21.830095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.553088, 23.559921, 21.885983>,  <14.242092, 23.326242, 21.979126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553088, 23.559921, 21.885983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012344, -0.356023, -0.934396,
		-0.628773, 0.729359, -0.269593,
		0.777491, 0.584195, -0.232860,
		14.786336, 23.735180, 21.816124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101349, 23.622562, 21.384390>,  <14.242092, 23.326242, 21.979126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101349, 23.622562, 21.384390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.499874, 23.603531, 21.412941>,  <14.738990, 23.592112, 21.430071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.499874, 23.603531, 21.412941>,  <14.101349, 23.622562, 21.384390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.499874, 23.603531, 21.412941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047240, -0.390204, -0.919516,
		0.071600, 0.919498, -0.386518,
		0.996314, -0.047578, 0.071376,
		14.798768, 23.589258, 21.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.300486, 23.752771, 20.786041>,  <14.101349, 23.622562, 21.384390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.300486, 23.752771, 20.786041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659673, 23.633707, 20.915688>,  <14.875185, 23.562269, 20.993475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659673, 23.633707, 20.915688>,  <14.300486, 23.752771, 20.786041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659673, 23.633707, 20.915688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188836, -0.404633, -0.894770,
		0.397485, 0.864680, -0.307139,
		0.897968, -0.297659, 0.324118,
		14.929063, 23.544409, 21.012922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863937, 24.079845, 20.285265>,  <14.300486, 23.752771, 20.786041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863937, 24.079845, 20.285265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.995876, 23.752693, 20.473848>,  <15.075040, 23.556402, 20.586998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.995876, 23.752693, 20.473848>,  <14.863937, 24.079845, 20.285265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995876, 23.752693, 20.473848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142297, -0.450629, -0.881297,
		0.933249, 0.357780, -0.032257,
		0.329846, -0.817879, 0.471460,
		15.094831, 23.507330, 20.615286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356716, 23.773270, 19.750601>,  <14.863937, 24.079845, 20.285265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356716, 23.773270, 19.750601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.285565, 23.479727, 20.012840>,  <15.242875, 23.303600, 20.170185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.285565, 23.479727, 20.012840>,  <15.356716, 23.773270, 19.750601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285565, 23.479727, 20.012840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299619, -0.674982, -0.674261,
		0.937330, 0.076495, 0.339942,
		-0.177877, -0.733859, 0.655600,
		15.232203, 23.259569, 20.209520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993583, 23.300449, 19.889648>,  <15.356716, 23.773270, 19.750601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993583, 23.300449, 19.889648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.646749, 23.109688, 19.947237>,  <15.438649, 22.995230, 19.981791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.646749, 23.109688, 19.947237>,  <15.993583, 23.300449, 19.889648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646749, 23.109688, 19.947237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313367, -0.746823, -0.586564,
		0.387257, -0.463484, 0.797004,
		-0.867083, -0.476905, 0.143972,
		15.386624, 22.966616, 19.990429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183744, 22.653168, 20.094599>,  <15.993583, 23.300449, 19.889648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183744, 22.653168, 20.094599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808991, 22.614836, 19.960098>,  <15.584139, 22.591837, 19.879398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808991, 22.614836, 19.960098>,  <16.183744, 22.653168, 20.094599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808991, 22.614836, 19.960098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273989, -0.798655, -0.535798,
		-0.217203, -0.594110, 0.774504,
		-0.936884, -0.095828, -0.336250,
		15.527926, 22.586086, 19.859222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175413, 21.955122, 19.963737>,  <16.183744, 22.653168, 20.094599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175413, 21.955122, 19.963737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.839092, 22.038357, 19.763836>,  <15.637300, 22.088297, 19.643894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.839092, 22.038357, 19.763836>,  <16.175413, 21.955122, 19.963737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.839092, 22.038357, 19.763836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230433, -0.697786, -0.678229,
		-0.489850, -0.685416, 0.538750,
		-0.840801, 0.208085, -0.499753,
		15.586852, 22.100782, 19.613911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840100, 21.339025, 19.852549>,  <16.175413, 21.955122, 19.963737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840100, 21.339025, 19.852549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.722184, 21.595531, 19.569174>,  <15.651434, 21.749435, 19.399149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.722184, 21.595531, 19.569174>,  <15.840100, 21.339025, 19.852549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722184, 21.595531, 19.569174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127379, -0.708393, -0.694229,
		-0.947034, -0.294892, 0.127144,
		-0.294791, 0.641263, -0.708435,
		15.633747, 21.787910, 19.356644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323132, 20.985365, 19.379713>,  <15.840100, 21.339025, 19.852549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323132, 20.985365, 19.379713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.434376, 21.297026, 19.155008>,  <15.501122, 21.484022, 19.020185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.434376, 21.297026, 19.155008>,  <15.323132, 20.985365, 19.379713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434376, 21.297026, 19.155008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056720, -0.570493, -0.819341,
		-0.958873, 0.259730, -0.114466,
		0.278110, 0.779152, -0.561763,
		15.517809, 21.530771, 18.986479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854067, 21.091473, 18.803654>,  <15.323132, 20.985365, 19.379713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854067, 21.091473, 18.803654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.181399, 21.271929, 18.661213>,  <15.377799, 21.380203, 18.575748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.181399, 21.271929, 18.661213>,  <14.854067, 21.091473, 18.803654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181399, 21.271929, 18.661213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103784, -0.493404, -0.863586,
		-0.565300, 0.743657, -0.356947,
		0.818330, 0.451140, -0.356101,
		15.426898, 21.407270, 18.554382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582425, 21.165514, 18.129679>,  <14.854067, 21.091473, 18.803654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582425, 21.165514, 18.129679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.976611, 21.222778, 18.093096>,  <15.213122, 21.257137, 18.071146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.976611, 21.222778, 18.093096>,  <14.582425, 21.165514, 18.129679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976611, 21.222778, 18.093096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020439, -0.434533, -0.900424,
		-0.168645, 0.889205, -0.425291,
		0.985465, 0.143160, -0.091456,
		15.272250, 21.265726, 18.065659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.665949, 21.533758, 17.466864>,  <14.582425, 21.165514, 18.129679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.665949, 21.533758, 17.466864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.018677, 21.383295, 17.580635>,  <15.230313, 21.293018, 17.648899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.018677, 21.383295, 17.580635>,  <14.665949, 21.533758, 17.466864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018677, 21.383295, 17.580635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090016, -0.457787, -0.884493,
		0.462916, 0.805567, -0.369826,
		0.881820, -0.376156, 0.284431,
		15.283222, 21.270449, 17.665964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035368, 21.664740, 16.890390>,  <14.665949, 21.533758, 17.466864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035368, 21.664740, 16.890390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.273090, 21.388521, 17.055290>,  <15.415724, 21.222790, 17.154230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.273090, 21.388521, 17.055290>,  <15.035368, 21.664740, 16.890390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273090, 21.388521, 17.055290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015707, -0.522462, -0.852518,
		0.804086, 0.500181, -0.321348,
		0.594306, -0.690545, 0.412248,
		15.451382, 21.181358, 17.178965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528201, 21.494993, 16.340025>,  <15.035368, 21.664740, 16.890390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528201, 21.494993, 16.340025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.568496, 21.191996, 16.598034>,  <15.592672, 21.010197, 16.752840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.568496, 21.191996, 16.598034>,  <15.528201, 21.494993, 16.340025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568496, 21.191996, 16.598034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088350, -0.638948, -0.764159,
		0.990983, 0.133966, 0.002559,
		0.100736, -0.757495, 0.645022,
		15.598717, 20.964746, 16.791540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149450, 21.115719, 16.201351>,  <15.528201, 21.494993, 16.340025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.149450, 21.115719, 16.201351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.890207, 20.867008, 16.377237>,  <15.734661, 20.717781, 16.482769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.890207, 20.867008, 16.377237>,  <16.149450, 21.115719, 16.201351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.890207, 20.867008, 16.377237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142884, -0.666422, -0.731755,
		0.748023, -0.411429, 0.520756,
		-0.648109, -0.621777, 0.439713,
		15.695774, 20.680475, 16.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425215, 20.353905, 16.322256>,  <16.149450, 21.115719, 16.201351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425215, 20.353905, 16.322256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.030012, 20.366488, 16.261780>,  <15.792892, 20.374037, 16.225494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.030012, 20.366488, 16.261780>,  <16.425215, 20.353905, 16.322256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030012, 20.366488, 16.261780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069876, -0.782010, -0.619336,
		-0.137713, -0.622471, 0.770432,
		-0.988004, 0.031456, -0.151189,
		15.733611, 20.375925, 16.216423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291037, 19.685240, 16.429970>,  <16.425215, 20.353905, 16.322256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291037, 19.685240, 16.429970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021702, 19.886509, 16.213291>,  <15.860102, 20.007271, 16.083284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021702, 19.886509, 16.213291>,  <16.291037, 19.685240, 16.429970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021702, 19.886509, 16.213291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119765, -0.648771, -0.751500,
		-0.729574, -0.570887, 0.376577,
		-0.673334, 0.503174, -0.541698,
		15.819701, 20.037460, 16.050781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697496, 20.127851, 16.945761>,  <16.291037, 19.685240, 16.429970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697496, 20.127851, 16.945761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.061216, 19.974237, 16.881645>,  <17.279448, 19.882069, 16.843176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.061216, 19.974237, 16.881645>,  <16.697496, 20.127851, 16.945761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061216, 19.974237, 16.881645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344149, 0.477418, 0.808476,
		-0.233957, -0.790310, 0.566280,
		0.909300, -0.384033, -0.160289,
		17.334005, 19.859028, 16.833559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926714, 19.760647, 17.586323>,  <16.697496, 20.127851, 16.945761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926714, 19.760647, 17.586323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.267303, 19.831959, 17.389059>,  <17.471657, 19.874746, 17.270700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.267303, 19.831959, 17.389059>,  <16.926714, 19.760647, 17.586323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267303, 19.831959, 17.389059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349476, 0.508235, 0.787123,
		0.390968, -0.842564, 0.370446,
		0.851475, 0.178278, -0.493160,
		17.522745, 19.885443, 17.241110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502718, 19.589106, 18.074446>,  <16.926714, 19.760647, 17.586323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502718, 19.589106, 18.074446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.655149, 19.827665, 17.791861>,  <17.746609, 19.970800, 17.622311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.655149, 19.827665, 17.791861>,  <17.502718, 19.589106, 18.074446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655149, 19.827665, 17.791861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471471, 0.531941, 0.703387,
		0.795295, -0.601122, -0.078473,
		0.381078, 0.596399, -0.706462,
		17.769472, 20.006584, 17.579922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240467, 19.688345, 18.245081>,  <17.502718, 19.589106, 18.074446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240467, 19.688345, 18.245081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.112457, 19.993158, 18.019911>,  <18.035652, 20.176046, 17.884808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.112457, 19.993158, 18.019911>,  <18.240467, 19.688345, 18.245081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112457, 19.993158, 18.019911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456680, 0.644668, 0.613064,
		0.830077, -0.060882, -0.554316,
		-0.320024, 0.762035, -0.562927,
		18.016451, 20.221769, 17.851032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863752, 20.103895, 18.215839>,  <18.240467, 19.688345, 18.245081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863752, 20.103895, 18.215839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.596609, 20.372145, 18.086700>,  <18.436323, 20.533094, 18.009218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.596609, 20.372145, 18.086700>,  <18.863752, 20.103895, 18.215839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596609, 20.372145, 18.086700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484457, 0.720982, 0.495465,
		0.565036, 0.174496, -0.806403,
		-0.667859, 0.670623, -0.322845,
		18.396252, 20.573332, 17.989847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292933, 20.827211, 18.147219>,  <18.863752, 20.103895, 18.215839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.292933, 20.827211, 18.147219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.905861, 20.928083, 18.146667>,  <18.673618, 20.988607, 18.146338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.905861, 20.928083, 18.146667>,  <19.292933, 20.827211, 18.147219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905861, 20.928083, 18.146667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170799, 0.659401, 0.732132,
		0.185539, 0.708234, -0.681161,
		-0.967679, 0.252181, -0.001379,
		18.615557, 21.003738, 18.146254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236311, 21.681213, 18.097359>,  <19.292933, 20.827211, 18.147219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236311, 21.681213, 18.097359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.908594, 21.521744, 18.262194>,  <18.711964, 21.426062, 18.361095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.908594, 21.521744, 18.262194>,  <19.236311, 21.681213, 18.097359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908594, 21.521744, 18.262194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018365, 0.700092, 0.713816,
		-0.573081, 0.592393, -0.566259,
		-0.819293, -0.398675, 0.412089,
		18.662806, 21.402142, 18.385820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864304, 22.268959, 18.316694>,  <19.236311, 21.681213, 18.097359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864304, 22.268959, 18.316694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.730732, 21.967199, 18.542747>,  <18.650589, 21.786144, 18.678379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.730732, 21.967199, 18.542747>,  <18.864304, 22.268959, 18.316694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730732, 21.967199, 18.542747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004977, 0.598128, 0.801385,
		-0.942585, 0.270418, -0.195977,
		-0.333928, -0.754399, 0.565132,
		18.630554, 21.740879, 18.712288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292528, 22.617819, 18.633802>,  <18.864304, 22.268959, 18.316694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292528, 22.617819, 18.633802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.389820, 22.296432, 18.851162>,  <18.448195, 22.103601, 18.981579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.389820, 22.296432, 18.851162>,  <18.292528, 22.617819, 18.633802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389820, 22.296432, 18.851162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036986, 0.552134, 0.832935,
		-0.969264, -0.222691, 0.104578,
		0.243228, -0.803465, 0.543400,
		18.462790, 22.055393, 19.014181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797262, 22.592726, 19.304579>,  <18.292528, 22.617819, 18.633802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797262, 22.592726, 19.304579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.116289, 22.379372, 19.417282>,  <18.307705, 22.251358, 19.484903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.116289, 22.379372, 19.417282>,  <17.797262, 22.592726, 19.304579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116289, 22.379372, 19.417282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029992, 0.431438, 0.901644,
		-0.602485, -0.727571, 0.328103,
		0.797566, -0.533386, 0.281756,
		18.355558, 22.219357, 19.501808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587475, 22.238155, 19.956827>,  <17.797262, 22.592726, 19.304579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587475, 22.238155, 19.956827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.983540, 22.275215, 19.914885>,  <18.221178, 22.297451, 19.889719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.983540, 22.275215, 19.914885>,  <17.587475, 22.238155, 19.956827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983540, 22.275215, 19.914885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052433, 0.449083, 0.891950,
		0.129728, -0.888673, 0.439807,
		0.990162, 0.092650, -0.104854,
		18.280588, 22.303011, 19.883429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.109081, 21.758633, 20.365070>,  <17.587475, 22.238155, 19.956827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.109081, 21.758633, 20.365070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.261583, 22.119358, 20.283703>,  <18.353085, 22.335793, 20.234882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.261583, 22.119358, 20.283703>,  <18.109081, 21.758633, 20.365070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261583, 22.119358, 20.283703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084715, 0.253193, 0.963699,
		0.920580, -0.350184, 0.172928,
		0.381256, 0.901812, -0.203418,
		18.375959, 22.389902, 20.222677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503565, 21.935516, 20.982506>,  <18.109081, 21.758633, 20.365070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503565, 21.935516, 20.982506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.416117, 22.279074, 20.797249>,  <18.363647, 22.485209, 20.686094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.416117, 22.279074, 20.797249>,  <18.503565, 21.935516, 20.982506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416117, 22.279074, 20.797249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174144, 0.432665, 0.884576,
		0.960145, 0.274042, 0.054981,
		-0.218623, 0.858895, -0.463144,
		18.350531, 22.536743, 20.658306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848186, 22.330713, 21.375542>,  <18.503565, 21.935516, 20.982506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848186, 22.330713, 21.375542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.590225, 22.576242, 21.193411>,  <18.435448, 22.723560, 21.084133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.590225, 22.576242, 21.193411>,  <18.848186, 22.330713, 21.375542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590225, 22.576242, 21.193411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208017, 0.432299, 0.877409,
		0.735411, 0.660559, -0.151105,
		-0.644903, 0.613824, -0.455325,
		18.396755, 22.760389, 21.056814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.938673, 22.944134, 21.786766>,  <18.848186, 22.330713, 21.375542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.938673, 22.944134, 21.786766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.621109, 23.009365, 21.552464>,  <18.430571, 23.048504, 21.411882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.621109, 23.009365, 21.552464>,  <18.938673, 22.944134, 21.786766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621109, 23.009365, 21.552464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354943, 0.657884, 0.664232,
		0.493681, 0.735252, -0.464418,
		-0.793911, 0.163077, -0.585757,
		18.382936, 23.058289, 21.376736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930008, 23.652334, 21.853575>,  <18.938673, 22.944134, 21.786766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930008, 23.652334, 21.853575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.576799, 23.504452, 21.737923>,  <18.364874, 23.415722, 21.668531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.576799, 23.504452, 21.737923>,  <18.930008, 23.652334, 21.853575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.576799, 23.504452, 21.737923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468279, 0.735330, 0.489902,
		0.031487, 0.567986, -0.822436,
		-0.883019, -0.369704, -0.289129,
		18.311893, 23.393541, 21.651184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.645924, 24.259720, 21.583923>,  <18.930008, 23.652334, 21.853575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.645924, 24.259720, 21.583923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.357370, 23.997414, 21.672983>,  <18.184238, 23.840029, 21.726419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.357370, 23.997414, 21.672983>,  <18.645924, 24.259720, 21.583923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357370, 23.997414, 21.672983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384436, 0.646608, 0.658868,
		-0.576032, 0.389702, -0.718554,
		-0.721385, -0.655767, 0.222651,
		18.140955, 23.800684, 21.739779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.036835, 24.665079, 21.809399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.971783, 24.294060, 21.943983>,  <17.932751, 24.071447, 22.024733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.971783, 24.294060, 21.943983>,  <18.036835, 24.665079, 21.809399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971783, 24.294060, 21.943983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388775, 0.373653, 0.842162,
		-0.906865, 0.006155, -0.421376,
		-0.162632, -0.927548, 0.336460,
		17.922993, 24.015795, 22.044922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345320, 24.698328, 22.095463>,  <18.036835, 24.665079, 21.809399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345320, 24.698328, 22.095463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.560658, 24.402451, 22.256975>,  <17.689859, 24.224924, 22.353882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.560658, 24.402451, 22.256975>,  <17.345320, 24.698328, 22.095463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560658, 24.402451, 22.256975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243141, 0.322427, 0.914835,
		-0.806887, -0.590672, -0.006273,
		0.538345, -0.739694, 0.403779,
		17.722160, 24.180542, 22.378109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956711, 24.479393, 22.597788>,  <17.345320, 24.698328, 22.095463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956711, 24.479393, 22.597788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314066, 24.339708, 22.710857>,  <17.528479, 24.255898, 22.778700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314066, 24.339708, 22.710857>,  <16.956711, 24.479393, 22.597788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314066, 24.339708, 22.710857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142508, 0.376424, 0.915422,
		-0.426084, -0.858111, 0.286527,
		0.893389, -0.349214, 0.282676,
		17.582083, 24.234943, 22.795660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875599, 24.215197, 23.315220>,  <16.956711, 24.479393, 22.597788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875599, 24.215197, 23.315220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.267109, 24.267410, 23.252028>,  <17.502016, 24.298738, 23.214111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.267109, 24.267410, 23.252028>,  <16.875599, 24.215197, 23.315220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267109, 24.267410, 23.252028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081336, 0.460138, 0.884114,
		0.188099, -0.878199, 0.439755,
		0.978777, 0.130534, -0.157981,
		17.560741, 24.306570, 23.204634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178644, 23.932924, 23.964464>,  <16.875599, 24.215197, 23.315220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178644, 23.932924, 23.964464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.441444, 24.180922, 23.792906>,  <17.599125, 24.329720, 23.689970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.441444, 24.180922, 23.792906>,  <17.178644, 23.932924, 23.964464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441444, 24.180922, 23.792906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245131, 0.362313, 0.899244,
		0.712923, -0.695942, 0.086061,
		0.657002, 0.619996, -0.428898,
		17.638546, 24.366920, 23.664236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711649, 23.820238, 24.402550>,  <17.178644, 23.932924, 23.964464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711649, 23.820238, 24.402550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797476, 24.163568, 24.216114>,  <17.848972, 24.369566, 24.104254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797476, 24.163568, 24.216114>,  <17.711649, 23.820238, 24.402550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797476, 24.163568, 24.216114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352577, 0.376958, 0.856500,
		0.910852, -0.348108, -0.221744,
		0.214566, 0.858326, -0.466088,
		17.861845, 24.421066, 24.076288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391184, 23.947504, 24.636003>,  <17.711649, 23.820238, 24.402550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391184, 23.947504, 24.636003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.271248, 24.312599, 24.525005>,  <18.199286, 24.531656, 24.458406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.271248, 24.312599, 24.525005>,  <18.391184, 23.947504, 24.636003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.271248, 24.312599, 24.525005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408628, 0.385721, 0.827189,
		0.862043, 0.134633, -0.488626,
		-0.299840, 0.912739, -0.277494,
		18.181295, 24.586420, 24.441757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949966, 24.347851, 24.653347>,  <18.391184, 23.947504, 24.636003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949966, 24.347851, 24.653347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.642439, 24.600218, 24.695038>,  <18.457922, 24.751638, 24.720053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.642439, 24.600218, 24.695038>,  <18.949966, 24.347851, 24.653347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642439, 24.600218, 24.695038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, 0.281520, 0.892645,
		0.533844, 0.722972, -0.438545,
		-0.768817, 0.630918, 0.104226,
		18.411795, 24.789494, 24.726305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284540, 24.926426, 24.934446>,  <18.949966, 24.347851, 24.653347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284540, 24.926426, 24.934446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.898453, 24.979099, 25.024794>,  <18.666801, 25.010704, 25.079002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.898453, 24.979099, 25.024794>,  <19.284540, 24.926426, 24.934446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.898453, 24.979099, 25.024794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250197, 0.214492, 0.944137,
		0.075881, 0.967808, -0.239978,
		-0.965217, 0.131684, 0.225867,
		18.608889, 25.018604, 25.092554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233179, 25.676535, 25.240385>,  <19.284540, 24.926426, 24.934446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233179, 25.676535, 25.240385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929747, 25.443623, 25.357347>,  <18.747686, 25.303875, 25.427525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929747, 25.443623, 25.357347>,  <19.233179, 25.676535, 25.240385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929747, 25.443623, 25.357347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186964, 0.235380, 0.953751,
		-0.624178, 0.778168, -0.069689,
		-0.758582, -0.582281, 0.292408,
		18.702171, 25.268938, 25.445070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750355, 26.095501, 25.557026>,  <19.233179, 25.676535, 25.240385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750355, 26.095501, 25.557026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.667826, 25.747808, 25.736744>,  <18.618309, 25.539192, 25.844576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.667826, 25.747808, 25.736744>,  <18.750355, 26.095501, 25.557026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.667826, 25.747808, 25.736744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358329, 0.360159, 0.861328,
		-0.910512, 0.338707, 0.237162,
		-0.206322, -0.869231, 0.449297,
		18.605928, 25.487040, 25.871532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585896, 26.318439, 26.179493>,  <18.750355, 26.095501, 25.557026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585896, 26.318439, 26.179493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.612207, 25.922110, 26.226711>,  <18.627995, 25.684311, 26.255043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.612207, 25.922110, 26.226711>,  <18.585896, 26.318439, 26.179493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612207, 25.922110, 26.226711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148133, 0.126688, 0.980819,
		-0.986777, -0.047031, 0.155108,
		0.065779, -0.990827, 0.118046,
		18.631941, 25.624861, 26.262125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187996, 26.226015, 26.927496>,  <18.585896, 26.318439, 26.179493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187996, 26.226015, 26.927496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.441410, 25.928242, 26.843159>,  <18.593458, 25.749578, 26.792557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.441410, 25.928242, 26.843159>,  <18.187996, 26.226015, 26.927496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441410, 25.928242, 26.843159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261118, -0.050801, 0.963969,
		-0.728320, -0.665763, 0.162201,
		0.633535, -0.744431, -0.210842,
		18.631472, 25.704912, 26.779905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069296, 25.725697, 27.446373>,  <18.187996, 26.226015, 26.927496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069296, 25.725697, 27.446373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.423136, 25.593042, 27.315226>,  <18.635441, 25.513451, 27.236538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.423136, 25.593042, 27.315226>,  <18.069296, 25.725697, 27.446373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423136, 25.593042, 27.315226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255026, -0.244605, 0.935484,
		-0.390439, -0.911145, -0.131802,
		0.884601, -0.331636, -0.327869,
		18.688517, 25.493551, 27.216866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126036, 25.148399, 27.910975>,  <18.069296, 25.725697, 27.446373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126036, 25.148399, 27.910975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487068, 25.234095, 27.761604>,  <18.703688, 25.285511, 27.671982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487068, 25.234095, 27.761604>,  <18.126036, 25.148399, 27.910975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487068, 25.234095, 27.761604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426987, -0.334625, 0.840065,
		0.055016, -0.917676, -0.393503,
		0.902583, 0.214237, -0.373426,
		18.757843, 25.298367, 27.649576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.601978, 24.624651, 28.247528>,  <18.126036, 25.148399, 27.910975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.601978, 24.624651, 28.247528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830284, 24.933655, 28.136202>,  <18.967268, 25.119057, 28.069407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830284, 24.933655, 28.136202>,  <18.601978, 24.624651, 28.247528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830284, 24.933655, 28.136202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529579, -0.087290, 0.843757,
		0.627516, -0.628976, -0.458926,
		0.570763, 0.772509, -0.278316,
		19.001513, 25.165407, 28.052708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220560, 24.463137, 28.429396>,  <18.601978, 24.624651, 28.247528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.220560, 24.463137, 28.429396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234249, 24.861927, 28.401476>,  <19.242462, 25.101200, 28.384724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234249, 24.861927, 28.401476>,  <19.220560, 24.463137, 28.429396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234249, 24.861927, 28.401476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560737, 0.038658, 0.827091,
		0.827287, -0.067441, -0.557717,
		0.034220, 0.996974, -0.069798,
		19.244514, 25.161018, 28.380537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877131, 24.708937, 28.423450>,  <19.220560, 24.463137, 28.429396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877131, 24.708937, 28.423450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.674345, 25.035482, 28.534113>,  <19.552673, 25.231411, 28.600510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.674345, 25.035482, 28.534113>,  <19.877131, 24.708937, 28.423450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.674345, 25.035482, 28.534113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508763, 0.024308, 0.860564,
		0.695809, 0.577024, -0.427660,
		-0.506962, 0.816365, 0.276655,
		19.522257, 25.280392, 28.617109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407167, 25.185343, 28.810034>,  <19.877131, 24.708937, 28.423450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407167, 25.185343, 28.810034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.038279, 25.300426, 28.913363>,  <19.816946, 25.369476, 28.975359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.038279, 25.300426, 28.913363>,  <20.407167, 25.185343, 28.810034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038279, 25.300426, 28.913363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289772, 0.071934, 0.954389,
		0.256004, 0.955013, -0.149709,
		-0.922222, 0.287709, 0.258320,
		19.761612, 25.386740, 28.990858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494484, 25.780416, 29.276291>,  <20.407167, 25.185343, 28.810034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494484, 25.780416, 29.276291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.126356, 25.652803, 29.366823>,  <19.905479, 25.576235, 29.421143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.126356, 25.652803, 29.366823>,  <20.494484, 25.780416, 29.276291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.126356, 25.652803, 29.366823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284983, -0.150524, 0.946640,
		-0.267941, 0.935714, 0.229450,
		-0.920322, -0.319033, 0.226331,
		19.850260, 25.557093, 29.434723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.383844, 26.084658, 29.932590>,  <20.494484, 25.780416, 29.276291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.383844, 26.084658, 29.932590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.117386, 25.788006, 29.901003>,  <19.957512, 25.610014, 29.882051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.117386, 25.788006, 29.901003>,  <20.383844, 26.084658, 29.932590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117386, 25.788006, 29.901003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109806, -0.202249, 0.973159,
		-0.737696, 0.639593, 0.216162,
		-0.666144, -0.741631, -0.078967,
		19.917543, 25.565517, 29.877314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.852398, 26.173744, 30.509348>,  <20.383844, 26.084658, 29.932590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.852398, 26.173744, 30.509348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.899170, 25.792049, 30.399254>,  <19.927233, 25.563032, 30.333197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.899170, 25.792049, 30.399254>,  <19.852398, 26.173744, 30.509348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899170, 25.792049, 30.399254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039367, -0.272467, 0.961360,
		-0.992360, -0.123247, 0.005706,
		0.116930, -0.954239, -0.275237,
		19.934250, 25.505777, 30.316683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229822, 25.849617, 30.839962>,  <19.852398, 26.173744, 30.509348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229822, 25.849617, 30.839962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.571880, 25.645962, 30.800962>,  <19.777115, 25.523769, 30.777563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.571880, 25.645962, 30.800962>,  <19.229822, 25.849617, 30.839962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571880, 25.645962, 30.800962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031292, -0.137037, 0.990072,
		-0.517444, -0.849705, -0.101254,
		0.855145, -0.509138, -0.097498,
		19.828424, 25.493219, 30.771713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.719116, 26.286070, 31.188141>,  <19.229822, 25.849617, 30.839962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.719116, 26.286070, 31.188141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.550686, 26.050129, 30.912527>,  <18.449627, 25.908564, 30.747160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.550686, 26.050129, 30.912527>,  <18.719116, 26.286070, 31.188141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550686, 26.050129, 30.912527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819903, -0.077334, 0.567255,
		-0.387883, 0.803798, -0.451059,
		-0.421077, -0.589854, -0.689033,
		18.424362, 25.873173, 30.705816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139355, 26.499720, 30.788380>,  <18.719116, 26.286070, 31.188141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139355, 26.499720, 30.788380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.775036, 26.477966, 30.952084>,  <17.556444, 26.464914, 31.050306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.775036, 26.477966, 30.952084>,  <18.139355, 26.499720, 30.788380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775036, 26.477966, 30.952084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389760, -0.213652, -0.895790,
		0.136156, -0.975395, 0.173397,
		-0.910796, -0.054384, 0.409260,
		17.501797, 26.461651, 31.074862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826405, 25.913418, 30.607862>,  <18.139355, 26.499720, 30.788380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826405, 25.913418, 30.607862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.516872, 26.154520, 30.685705>,  <17.331154, 26.299181, 30.732410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.516872, 26.154520, 30.685705>,  <17.826405, 25.913418, 30.607862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516872, 26.154520, 30.685705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390518, -0.212124, -0.895823,
		-0.498684, -0.769211, 0.399536,
		-0.773828, 0.602758, 0.194608,
		17.284723, 26.335348, 30.744087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093956, 25.493927, 30.512905>,  <17.826405, 25.913418, 30.607862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093956, 25.493927, 30.512905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.029905, 25.885509, 30.462296>,  <16.991474, 26.120459, 30.431931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.029905, 25.885509, 30.462296>,  <17.093956, 25.493927, 30.512905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029905, 25.885509, 30.462296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383316, -0.179788, -0.905950,
		-0.909631, -0.096569, 0.404037,
		-0.160127, 0.978954, -0.126524,
		16.981867, 26.179195, 30.424337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521769, 25.557205, 30.042900>,  <17.093956, 25.493927, 30.512905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521769, 25.557205, 30.042900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.678894, 25.924911, 30.032745>,  <16.773170, 26.145536, 30.026653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.678894, 25.924911, 30.032745>,  <16.521769, 25.557205, 30.042900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678894, 25.924911, 30.032745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291328, 0.098210, -0.951568,
		-0.872252, 0.381187, 0.306387,
		0.392816, 0.919267, -0.025387,
		16.796740, 26.200691, 30.025129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912573, 26.064226, 29.879108>,  <16.521769, 25.557205, 30.042900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912573, 26.064226, 29.879108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.255499, 26.251492, 29.793472>,  <16.461254, 26.363850, 29.742090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.255499, 26.251492, 29.793472>,  <15.912573, 26.064226, 29.879108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255499, 26.251492, 29.793472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252790, 0.020575, -0.967303,
		-0.448450, 0.883403, 0.135986,
		0.857316, 0.468163, -0.214088,
		16.512693, 26.391941, 29.729246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716272, 26.462116, 29.375542>,  <15.912573, 26.064226, 29.879108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716272, 26.462116, 29.375542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.109177, 26.477608, 29.302149>,  <16.344919, 26.486902, 29.258112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.109177, 26.477608, 29.302149>,  <15.716272, 26.462116, 29.375542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109177, 26.477608, 29.302149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179742, -0.084544, -0.980074,
		-0.053470, 0.995667, -0.076083,
		0.982260, 0.038729, -0.183484,
		16.403854, 26.489227, 29.247105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761996, 26.871653, 28.820559>,  <15.716272, 26.462116, 29.375542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761996, 26.871653, 28.820559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.114237, 26.682161, 28.825039>,  <16.325581, 26.568466, 28.827728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.114237, 26.682161, 28.825039>,  <15.761996, 26.871653, 28.820559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114237, 26.682161, 28.825039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130217, -0.264653, -0.955512,
		0.455616, 0.839965, -0.294741,
		0.880601, -0.473727, 0.011202,
		16.378418, 26.540043, 28.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098068, 27.053951, 28.209715>,  <15.761996, 26.871653, 28.820559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098068, 27.053951, 28.209715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.263454, 26.706835, 28.319975>,  <16.362686, 26.498564, 28.386131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.263454, 26.706835, 28.319975>,  <16.098068, 27.053951, 28.209715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263454, 26.706835, 28.319975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118231, -0.351343, -0.928752,
		0.902811, 0.351418, -0.247868,
		0.413467, -0.867793, 0.275648,
		16.387495, 26.446497, 28.402670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497345, 26.955746, 27.602345>,  <16.098068, 27.053951, 28.209715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497345, 26.955746, 27.602345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.477976, 26.607689, 27.798510>,  <16.466354, 26.398853, 27.916208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.477976, 26.607689, 27.798510>,  <16.497345, 26.955746, 27.602345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477976, 26.607689, 27.798510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027261, -0.491957, -0.870193,
		0.998455, -0.028768, 0.047543,
		-0.048423, -0.870144, 0.490412,
		16.463449, 26.346645, 27.945633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931616, 26.466072, 27.272240>,  <16.497345, 26.955746, 27.602345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931616, 26.466072, 27.272240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.672781, 26.227140, 27.461756>,  <16.517481, 26.083782, 27.575466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.672781, 26.227140, 27.461756>,  <16.931616, 26.466072, 27.272240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672781, 26.227140, 27.461756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122741, -0.531712, -0.837984,
		0.752471, -0.600402, 0.270747,
		-0.647087, -0.597327, 0.473792,
		16.478655, 26.047943, 27.603893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210884, 25.717670, 27.221992>,  <16.931616, 26.466072, 27.272240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210884, 25.717670, 27.221992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.814253, 25.705185, 27.272272>,  <16.576275, 25.697693, 27.302441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.814253, 25.705185, 27.272272>,  <17.210884, 25.717670, 27.221992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814253, 25.705185, 27.272272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079870, -0.616636, -0.783187,
		0.101959, -0.786630, 0.608949,
		-0.991577, -0.031216, 0.125700,
		16.516779, 25.695820, 27.309982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077122, 25.029915, 26.994406>,  <17.210884, 25.717670, 27.221992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077122, 25.029915, 26.994406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.707287, 25.181770, 27.007113>,  <16.485386, 25.272884, 27.014736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.707287, 25.181770, 27.007113>,  <17.077122, 25.029915, 26.994406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.707287, 25.181770, 27.007113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252073, -0.547118, -0.798199,
		-0.285648, -0.746013, 0.601556,
		-0.924589, 0.379640, 0.031766,
		16.429911, 25.295662, 27.016642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.527498, 24.485256, 26.867077>,  <17.077122, 25.029915, 26.994406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.527498, 24.485256, 26.867077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.359394, 24.831139, 26.757048>,  <16.258532, 25.038668, 26.691031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.359394, 24.831139, 26.757048>,  <16.527498, 24.485256, 26.867077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359394, 24.831139, 26.757048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190036, -0.380291, -0.905133,
		-0.887282, -0.328116, 0.324146,
		-0.420259, 0.864707, -0.275072,
		16.233316, 25.090551, 26.674526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985815, 24.258648, 26.330914>,  <16.527498, 24.485256, 26.867077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985815, 24.258648, 26.330914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.036200, 24.650709, 26.269686>,  <16.066431, 24.885946, 26.232950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.036200, 24.650709, 26.269686>,  <15.985815, 24.258648, 26.330914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036200, 24.650709, 26.269686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200013, -0.126037, -0.971653,
		-0.971663, 0.153007, 0.180167,
		0.125962, 0.980155, -0.153069,
		16.073988, 24.944756, 26.223764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336066, 24.540165, 26.082033>,  <15.985815, 24.258648, 26.330914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336066, 24.540165, 26.082033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.615104, 24.799097, 25.959181>,  <15.782526, 24.954456, 25.885469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.615104, 24.799097, 25.959181>,  <15.336066, 24.540165, 26.082033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615104, 24.799097, 25.959181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289967, -0.136919, -0.947192,
		-0.655196, 0.749812, 0.092190,
		0.697593, 0.647329, -0.307130,
		15.824382, 24.993296, 25.867043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961343, 24.780464, 25.560036>,  <15.336066, 24.540165, 26.082033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961343, 24.780464, 25.560036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323376, 24.943830, 25.512669>,  <15.540595, 25.041851, 25.484247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.323376, 24.943830, 25.512669>,  <14.961343, 24.780464, 25.560036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323376, 24.943830, 25.512669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130495, 0.001719, -0.991447,
		-0.404719, 0.912794, 0.054852,
		0.905082, 0.408415, -0.118420,
		15.594900, 25.066355, 25.477142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879854, 25.443819, 25.182867>,  <14.961343, 24.780464, 25.560036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879854, 25.443819, 25.182867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.250042, 25.300968, 25.132322>,  <15.472155, 25.215258, 25.101995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.250042, 25.300968, 25.132322>,  <14.879854, 25.443819, 25.182867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250042, 25.300968, 25.132322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133606, 0.004424, -0.991025,
		0.354480, 0.934045, -0.043620,
		0.925469, -0.357127, -0.126362,
		15.527682, 25.193830, 25.094414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198924, 25.805273, 24.620253>,  <14.879854, 25.443819, 25.182867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198924, 25.805273, 24.620253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.446949, 25.492510, 24.645987>,  <15.595764, 25.304852, 24.661427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.446949, 25.492510, 24.645987>,  <15.198924, 25.805273, 24.620253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446949, 25.492510, 24.645987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229316, -0.259049, -0.938247,
		0.750291, 0.567018, -0.339932,
		0.620062, -0.781910, 0.064336,
		15.632968, 25.257936, 24.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645641, 25.860378, 24.088074>,  <15.198924, 25.805273, 24.620253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645641, 25.860378, 24.088074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.633205, 25.473963, 24.190683>,  <15.625744, 25.242113, 24.252249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.633205, 25.473963, 24.190683>,  <15.645641, 25.860378, 24.088074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633205, 25.473963, 24.190683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218742, -0.243850, -0.944822,
		0.975287, -0.085488, -0.203732,
		-0.031091, -0.966038, 0.256523,
		15.623878, 25.184151, 24.267641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964381, 25.498701, 23.610947>,  <15.645641, 25.860378, 24.088074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964381, 25.498701, 23.610947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.769079, 25.194897, 23.782879>,  <15.651897, 25.012615, 23.886038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.769079, 25.194897, 23.782879>,  <15.964381, 25.498701, 23.610947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769079, 25.194897, 23.782879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132259, -0.422439, -0.896690,
		0.862620, -0.494663, 0.105806,
		-0.488256, -0.759509, 0.429828,
		15.622602, 24.967045, 23.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<13.865829, 19.592373, 8.585155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.184710, 19.832546, 8.610305>,  <14.376038, 19.976650, 8.625395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.184710, 19.832546, 8.610305>,  <13.865829, 19.592373, 8.585155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184710, 19.832546, 8.610305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514208, -0.729884, 0.450400,
		0.316327, -0.326727, -0.890610,
		0.797200, 0.600433, 0.062877,
		14.423869, 20.012676, 8.629168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458645, 19.189596, 8.342532>,  <13.865829, 19.592373, 8.585155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458645, 19.189596, 8.342532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.585392, 19.477833, 8.589221>,  <14.661440, 19.650774, 8.737234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.585392, 19.477833, 8.589221>,  <14.458645, 19.189596, 8.342532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585392, 19.477833, 8.589221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398427, -0.691202, 0.602906,
		0.860727, 0.054677, -0.506122,
		0.316867, 0.720590, 0.616721,
		14.680452, 19.694010, 8.774238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191726, 19.126232, 8.461493>,  <14.458645, 19.189596, 8.342532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191726, 19.126232, 8.461493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.050179, 19.307682, 8.788664>,  <14.965250, 19.416552, 8.984966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.050179, 19.307682, 8.788664>,  <15.191726, 19.126232, 8.461493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050179, 19.307682, 8.788664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523981, -0.628237, 0.575119,
		0.774740, 0.632093, -0.015378,
		-0.353868, 0.453626, 0.817925,
		14.944018, 19.443769, 9.034041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766784, 19.339590, 8.906005>,  <15.191726, 19.126232, 8.461493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766784, 19.339590, 8.906005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.444592, 19.282158, 9.135993>,  <15.251278, 19.247698, 9.273986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.444592, 19.282158, 9.135993>,  <15.766784, 19.339590, 8.906005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444592, 19.282158, 9.135993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529401, -0.610373, 0.589219,
		0.266346, 0.778993, 0.567653,
		-0.805478, -0.143581, 0.574970,
		15.202950, 19.239084, 9.308484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918397, 19.353733, 9.544935>,  <15.766784, 19.339590, 8.906005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.918397, 19.353733, 9.544935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608373, 19.101025, 9.540104>,  <15.422359, 18.949400, 9.537206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.608373, 19.101025, 9.540104>,  <15.918397, 19.353733, 9.544935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608373, 19.101025, 9.540104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433826, -0.545922, 0.716773,
		-0.459430, 0.550304, 0.697202,
		-0.775061, -0.631771, -0.012077,
		15.375854, 18.911493, 9.536481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727361, 19.095106, 10.154642>,  <15.918397, 19.353733, 9.544935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.727361, 19.095106, 10.154642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.576995, 18.785381, 9.951022>,  <15.486775, 18.599546, 9.828851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.576995, 18.785381, 9.951022>,  <15.727361, 19.095106, 10.154642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576995, 18.785381, 9.951022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151155, -0.593222, 0.790721,
		-0.914243, 0.220299, 0.340042,
		-0.375915, -0.774310, -0.509049,
		15.464220, 18.553089, 9.798307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237499, 18.880878, 10.586373>,  <15.727361, 19.095106, 10.154642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237499, 18.880878, 10.586373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.398591, 18.605080, 10.345573>,  <15.495246, 18.439600, 10.201094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.398591, 18.605080, 10.345573>,  <15.237499, 18.880878, 10.586373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398591, 18.605080, 10.345573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201565, -0.574744, 0.793121,
		-0.892849, -0.440756, -0.092489,
		0.402731, -0.689495, -0.602001,
		15.519410, 18.398232, 10.164973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928797, 18.134848, 10.589462>,  <15.237499, 18.880878, 10.586373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928797, 18.134848, 10.589462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.317804, 18.154181, 10.498362>,  <15.551209, 18.165779, 10.443702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.317804, 18.154181, 10.498362>,  <14.928797, 18.134848, 10.589462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317804, 18.154181, 10.498362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179840, -0.777199, 0.603008,
		-0.147864, -0.627396, -0.764533,
		0.972519, 0.048330, -0.227750,
		15.609560, 18.168680, 10.430037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155670, 17.515547, 10.559671>,  <14.928797, 18.134848, 10.589462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155670, 17.515547, 10.559671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.496699, 17.713514, 10.626812>,  <15.701317, 17.832294, 10.667096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.496699, 17.713514, 10.626812>,  <15.155670, 17.515547, 10.559671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496699, 17.713514, 10.626812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311361, -0.738989, 0.597452,
		0.419732, -0.457109, -0.784141,
		0.852572, 0.494920, 0.167852,
		15.752471, 17.861990, 10.677168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717743, 17.038506, 10.456947>,  <15.155670, 17.515547, 10.559671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717743, 17.038506, 10.456947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.812147, 17.305330, 10.739600>,  <15.868790, 17.465425, 10.909192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.812147, 17.305330, 10.739600>,  <15.717743, 17.038506, 10.456947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812147, 17.305330, 10.739600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364157, -0.734896, 0.572117,
		0.900938, 0.122300, -0.416358,
		0.236010, 0.667062, 0.706632,
		15.882950, 17.505449, 10.951590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495638, 17.023373, 10.678390>,  <15.717743, 17.038506, 10.456947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495638, 17.023373, 10.678390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.263781, 17.166016, 10.971468>,  <16.124666, 17.251602, 11.147315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.263781, 17.166016, 10.971468>,  <16.495638, 17.023373, 10.678390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263781, 17.166016, 10.971468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448726, -0.610859, 0.652301,
		0.680190, 0.706882, 0.194061,
		-0.579643, 0.356608, 0.732697,
		16.089888, 17.272999, 11.191277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898655, 16.908615, 11.191917>,  <16.495638, 17.023373, 10.678390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898655, 16.908615, 11.191917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.548231, 16.956385, 11.378791>,  <16.337976, 16.985046, 11.490914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.548231, 16.956385, 11.378791>,  <16.898655, 16.908615, 11.191917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.548231, 16.956385, 11.378791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260380, -0.698299, 0.666769,
		0.405862, 0.705773, 0.580654,
		-0.876058, 0.119426, 0.467183,
		16.285414, 16.992212, 11.518946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967548, 16.936621, 11.862176>,  <16.898655, 16.908615, 11.191917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967548, 16.936621, 11.862176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.573563, 16.867563, 11.864565>,  <16.337172, 16.826130, 11.865998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.573563, 16.867563, 11.864565>,  <16.967548, 16.936621, 11.862176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573563, 16.867563, 11.864565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097454, -0.526790, 0.844390,
		-0.142631, 0.832278, 0.535695,
		-0.984966, -0.172642, 0.005972,
		16.278072, 16.815771, 11.866357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847136, 16.860352, 12.596757>,  <16.967548, 16.936621, 11.862176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847136, 16.860352, 12.596757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.567852, 16.673647, 12.379633>,  <16.400282, 16.561625, 12.249358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.567852, 16.673647, 12.379633>,  <16.847136, 16.860352, 12.596757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567852, 16.673647, 12.379633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114104, -0.821089, 0.559280,
		-0.706744, 0.328556, 0.626549,
		-0.698207, -0.466759, -0.542810,
		16.358389, 16.533619, 12.216790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240038, 16.679581, 12.982208>,  <16.847136, 16.860352, 12.596757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240038, 16.679581, 12.982208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.262205, 16.409908, 12.687615>,  <16.275505, 16.248104, 12.510859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.262205, 16.409908, 12.687615>,  <16.240038, 16.679581, 12.982208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262205, 16.409908, 12.687615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130285, -0.726427, 0.674782,
		-0.989927, -0.133346, 0.047580,
		0.055416, -0.674183, -0.736482,
		16.278830, 16.207653, 12.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039160, 16.002043, 13.292140>,  <16.240038, 16.679581, 12.982208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039160, 16.002043, 13.292140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.131584, 15.872930, 12.925006>,  <16.187038, 15.795462, 12.704725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.131584, 15.872930, 12.925006>,  <16.039160, 16.002043, 13.292140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131584, 15.872930, 12.925006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085010, -0.933058, 0.349538,
		-0.969218, -0.158789, -0.188153,
		0.231061, -0.322784, -0.917835,
		16.200903, 15.776094, 12.649655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669403, 15.453760, 13.140979>,  <16.039160, 16.002043, 13.292140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669403, 15.453760, 13.140979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.995384, 15.428459, 12.910553>,  <16.190973, 15.413279, 12.772298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.995384, 15.428459, 12.910553>,  <15.669403, 15.453760, 13.140979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995384, 15.428459, 12.910553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192891, -0.907744, 0.372551,
		-0.546483, -0.414729, -0.727569,
		0.814954, -0.063251, -0.576064,
		16.239870, 15.409484, 12.737734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590078, 14.833378, 12.887641>,  <15.669403, 15.453760, 13.140979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590078, 14.833378, 12.887641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.973581, 14.941464, 12.852392>,  <16.203684, 15.006316, 12.831244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.973581, 14.941464, 12.852392>,  <15.590078, 14.833378, 12.887641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973581, 14.941464, 12.852392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284221, -0.912524, 0.294140,
		-0.000931, -0.307055, -0.951691,
		0.958758, 0.270216, -0.088121,
		16.261209, 15.022530, 12.825955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838611, 14.326359, 12.551387>,  <15.590078, 14.833378, 12.887641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838611, 14.326359, 12.551387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.155792, 14.502807, 12.719500>,  <16.346102, 14.608675, 12.820368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.155792, 14.502807, 12.719500>,  <15.838611, 14.326359, 12.551387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155792, 14.502807, 12.719500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269986, -0.872775, 0.406659,
		0.546198, -0.208991, -0.811166,
		0.792954, 0.441120, 0.420283,
		16.393679, 14.635142, 12.845584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177473, 13.809781, 12.621201>,  <15.838611, 14.326359, 12.551387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177473, 13.809781, 12.621201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.376877, 14.059824, 12.861444>,  <16.496519, 14.209849, 13.005589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.376877, 14.059824, 12.861444>,  <16.177473, 13.809781, 12.621201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376877, 14.059824, 12.861444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392908, -0.780512, 0.486234,
		0.772731, -0.006407, -0.634701,
		0.498508, 0.625107, 0.600609,
		16.526428, 14.247356, 13.041626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785519, 13.512718, 12.665115>,  <16.177473, 13.809781, 12.621201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785519, 13.512718, 12.665115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.792883, 13.742303, 12.992585>,  <16.797302, 13.880054, 13.189067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.792883, 13.742303, 12.992585>,  <16.785519, 13.512718, 12.665115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792883, 13.742303, 12.992585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492486, -0.717798, 0.492162,
		0.870126, 0.394124, -0.295884,
		0.018412, 0.573962, 0.818675,
		16.798407, 13.914492, 13.238188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444645, 13.451445, 12.866595>,  <16.785519, 13.512718, 12.665115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444645, 13.451445, 12.866595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.244400, 13.582648, 13.187044>,  <17.124252, 13.661370, 13.379313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.244400, 13.582648, 13.187044>,  <17.444645, 13.451445, 12.866595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244400, 13.582648, 13.187044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470812, -0.673432, 0.569934,
		0.726445, 0.662494, 0.182698,
		-0.500613, 0.328010, 0.801122,
		17.094215, 13.681051, 13.427381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888912, 13.581161, 13.462560>,  <17.444645, 13.451445, 12.866595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888912, 13.581161, 13.462560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.536955, 13.535732, 13.647120>,  <17.325781, 13.508475, 13.757856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.536955, 13.535732, 13.647120>,  <17.888912, 13.581161, 13.462560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536955, 13.535732, 13.647120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403207, -0.692232, 0.598531,
		0.251421, 0.712683, 0.654882,
		-0.879893, -0.113570, 0.461401,
		17.272987, 13.501661, 13.785541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021177, 13.369651, 14.101632>,  <17.888912, 13.581161, 13.462560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021177, 13.369651, 14.101632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.641987, 13.245170, 14.074817>,  <17.414473, 13.170481, 14.058727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.641987, 13.245170, 14.074817>,  <18.021177, 13.369651, 14.101632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641987, 13.245170, 14.074817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219997, -0.792640, 0.568615,
		-0.230092, 0.524285, 0.819868,
		-0.947976, -0.311202, -0.067039,
		17.357594, 13.151809, 14.054705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746033, 13.503169, 14.739969>,  <18.021177, 13.369651, 14.101632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746033, 13.503169, 14.739969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.540869, 13.204679, 14.570230>,  <17.417770, 13.025586, 14.468386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.540869, 13.204679, 14.570230>,  <17.746033, 13.503169, 14.739969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540869, 13.204679, 14.570230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317518, -0.624183, 0.713848,
		-0.797561, 0.231403, 0.557090,
		-0.512912, -0.746223, -0.424350,
		17.386995, 12.980813, 14.442924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393660, 13.168898, 15.286002>,  <17.746033, 13.503169, 14.739969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393660, 13.168898, 15.286002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.381939, 12.896500, 14.993322>,  <17.374907, 12.733061, 14.817715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.381939, 12.896500, 14.993322>,  <17.393660, 13.168898, 15.286002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.381939, 12.896500, 14.993322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217736, -0.718785, 0.660256,
		-0.975568, -0.139971, 0.169340,
		-0.029302, -0.680996, -0.731700,
		17.373148, 12.692201, 14.773812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905785, 12.677253, 15.453440>,  <17.393660, 13.168898, 15.286002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905785, 12.677253, 15.453440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.195660, 12.529034, 15.221054>,  <17.369585, 12.440102, 15.081622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.195660, 12.529034, 15.221054>,  <16.905785, 12.677253, 15.453440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195660, 12.529034, 15.221054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133840, -0.751359, 0.646178,
		-0.675952, -0.546035, -0.494908,
		0.724690, -0.370548, -0.580964,
		17.413067, 12.417870, 15.046764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720837, 12.008474, 15.450953>,  <16.905785, 12.677253, 15.453440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720837, 12.008474, 15.450953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.103502, 12.042017, 15.339409>,  <17.333101, 12.062142, 15.272482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.103502, 12.042017, 15.339409>,  <16.720837, 12.008474, 15.450953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103502, 12.042017, 15.339409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237443, -0.779010, 0.580314,
		-0.168573, -0.621378, -0.765161,
		0.956663, 0.083857, -0.278862,
		17.390501, 12.067174, 15.255751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927494, 11.275298, 15.271490>,  <16.720837, 12.008474, 15.450953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.927494, 11.275298, 15.271490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.257345, 11.500938, 15.288363>,  <17.455256, 11.636322, 15.298488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.257345, 11.500938, 15.288363>,  <16.927494, 11.275298, 15.271490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257345, 11.500938, 15.288363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464456, -0.717757, 0.518754,
		0.322907, -0.408186, -0.853883,
		0.824628, 0.564100, 0.042184,
		17.504734, 11.670169, 15.301019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465033, 10.875833, 15.035715>,  <16.927494, 11.275298, 15.271490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465033, 10.875833, 15.035715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.632446, 11.175959, 15.240403>,  <17.732895, 11.356034, 15.363216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.632446, 11.175959, 15.240403>,  <17.465033, 10.875833, 15.035715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632446, 11.175959, 15.240403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565325, -0.656209, 0.499797,
		0.710801, 0.080107, -0.698817,
		0.418533, 0.750315, 0.511720,
		17.758007, 11.401053, 15.393919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224762, 10.700902, 15.076014>,  <17.465033, 10.875833, 15.035715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224762, 10.700902, 15.076014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.136295, 10.960464, 15.367221>,  <18.083216, 11.116200, 15.541945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.136295, 10.960464, 15.367221>,  <18.224762, 10.700902, 15.076014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.136295, 10.960464, 15.367221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693275, -0.420415, 0.585338,
		0.685898, 0.634173, -0.356887,
		-0.221165, 0.648904, 0.728018,
		18.069946, 11.155134, 15.585627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884363, 10.885168, 15.302965>,  <18.224762, 10.700902, 15.076014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884363, 10.885168, 15.302965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.609959, 10.975510, 15.579625>,  <18.445316, 11.029715, 15.745622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.609959, 10.975510, 15.579625>,  <18.884363, 10.885168, 15.302965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609959, 10.975510, 15.579625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612263, -0.334387, 0.716463,
		0.393095, 0.914973, 0.091111,
		-0.686010, 0.225853, 0.691650,
		18.404156, 11.043265, 15.787120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.938112, 10.706475, 14.578007>,  <18.884363, 10.885168, 15.302965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.938112, 10.706475, 14.578007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981262, 10.308845, 14.572706>,  <19.007153, 10.070267, 14.569526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981262, 10.308845, 14.572706>,  <18.938112, 10.706475, 14.578007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981262, 10.308845, 14.572706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929380, -0.105571, 0.353706,
		-0.353010, -0.025840, -0.935263,
		0.107877, -0.994076, -0.013252,
		19.013626, 10.010622, 14.568730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429775, 10.315572, 15.147825>,  <18.938112, 10.706475, 14.578007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429775, 10.315572, 15.147825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.558317, 10.232367, 14.778294>,  <19.635443, 10.182444, 14.556575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.558317, 10.232367, 14.778294>,  <19.429775, 10.315572, 15.147825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558317, 10.232367, 14.778294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118847, 0.976721, -0.178582,
		0.939471, -0.052406, 0.338596,
		0.321355, -0.208014, -0.923830,
		19.654724, 10.169963, 14.501144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183182, 10.460796, 15.017705>,  <19.429775, 10.315572, 15.147825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183182, 10.460796, 15.017705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.957537, 10.492828, 14.688982>,  <19.822149, 10.512048, 14.491749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.957537, 10.492828, 14.688982>,  <20.183182, 10.460796, 15.017705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957537, 10.492828, 14.688982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035831, 0.996722, 0.072529,
		0.824921, 0.011469, -0.565131,
		-0.564111, 0.080080, -0.821807,
		19.788303, 10.516852, 14.442440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426451, 10.625551, 14.402182>,  <20.183182, 10.460796, 15.017705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.426451, 10.625551, 14.402182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046650, 10.750051, 14.418015>,  <19.818769, 10.824750, 14.427514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046650, 10.750051, 14.418015>,  <20.426451, 10.625551, 14.402182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046650, 10.750051, 14.418015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306945, 0.947613, -0.088397,
		-0.065023, -0.071784, -0.995299,
		-0.949504, 0.311249, 0.039583,
		19.761799, 10.843426, 14.429890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339191, 11.017666, 13.727983>,  <20.426451, 10.625551, 14.402182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339191, 11.017666, 13.727983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.130297, 11.124093, 14.052075>,  <20.004959, 11.187949, 14.246531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.130297, 11.124093, 14.052075>,  <20.339191, 11.017666, 13.727983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130297, 11.124093, 14.052075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316829, 0.942616, -0.105327,
		-0.791762, 0.201699, -0.576568,
		-0.522238, 0.266067, 0.810232,
		19.973625, 11.203913, 14.295145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.796011, 11.563513, 13.594604>,  <20.339191, 11.017666, 13.727983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.796011, 11.563513, 13.594604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.978153, 11.541538, 13.950048>,  <20.087439, 11.528354, 14.163316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.978153, 11.541538, 13.950048>,  <19.796011, 11.563513, 13.594604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978153, 11.541538, 13.950048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178059, 0.983549, -0.030439,
		-0.872321, 0.172086, 0.457649,
		0.455358, -0.054936, 0.888612,
		20.114761, 11.525058, 14.216632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.471087, 11.862115, 14.274607>,  <19.796011, 11.563513, 13.594604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.471087, 11.862115, 14.274607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859304, 11.874965, 14.179100>,  <20.092236, 11.882674, 14.121796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859304, 11.874965, 14.179100>,  <19.471087, 11.862115, 14.274607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859304, 11.874965, 14.179100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086218, 0.971745, -0.219723,
		0.224962, 0.233837, 0.945892,
		0.970546, 0.032124, -0.238766,
		20.150469, 11.884602, 14.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788477, 12.451267, 14.607987>,  <19.471087, 11.862115, 14.274607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788477, 12.451267, 14.607987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.002546, 12.369781, 14.280064>,  <20.130987, 12.320889, 14.083309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.002546, 12.369781, 14.280064>,  <19.788477, 12.451267, 14.607987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002546, 12.369781, 14.280064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025898, 0.973986, -0.225123,
		0.844346, 0.099248, 0.526527,
		0.535173, -0.203718, -0.819810,
		20.163097, 12.308665, 14.034121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378836, 12.837402, 14.591900>,  <19.788477, 12.451267, 14.607987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378836, 12.837402, 14.591900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.318844, 12.728580, 14.211691>,  <20.282848, 12.663287, 13.983565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.318844, 12.728580, 14.211691>,  <20.378836, 12.837402, 14.591900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318844, 12.728580, 14.211691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004017, 0.961221, -0.275750,
		0.988681, -0.045174, -0.143069,
		-0.149978, -0.272054, -0.950522,
		20.273849, 12.646964, 13.926534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766159, 13.272762, 14.245567>,  <20.378836, 12.837402, 14.591900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766159, 13.272762, 14.245567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.539114, 13.150552, 13.939764>,  <20.402887, 13.077226, 13.756282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.539114, 13.150552, 13.939764>,  <20.766159, 13.272762, 14.245567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.539114, 13.150552, 13.939764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000653, 0.928425, -0.371519,
		0.823296, -0.211378, -0.526785,
		-0.567611, -0.305526, -0.764507,
		20.368830, 13.058894, 13.710412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000320, 13.597578, 13.769081>,  <20.766159, 13.272762, 14.245567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000320, 13.597578, 13.769081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.648029, 13.498635, 13.607522>,  <20.436655, 13.439270, 13.510587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.648029, 13.498635, 13.607522>,  <21.000320, 13.597578, 13.769081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648029, 13.498635, 13.607522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135463, 0.948718, -0.285629,
		0.453836, -0.196848, -0.869070,
		-0.880728, -0.247356, -0.403897,
		20.383810, 13.424429, 13.486353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959875, 13.811207, 13.077395>,  <21.000320, 13.597578, 13.769081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959875, 13.811207, 13.077395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.582579, 13.786386, 13.207899>,  <20.356201, 13.771493, 13.286201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.582579, 13.786386, 13.207899>,  <20.959875, 13.811207, 13.077395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582579, 13.786386, 13.207899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148353, 0.957653, -0.246762,
		-0.297130, -0.281158, -0.912504,
		-0.943242, -0.062053, 0.326259,
		20.299606, 13.767770, 13.305777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515350, 14.139184, 12.479003>,  <20.959875, 13.811207, 13.077395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515350, 14.139184, 12.479003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.275925, 14.156985, 12.798938>,  <20.132269, 14.167666, 12.990898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.275925, 14.156985, 12.798938>,  <20.515350, 14.139184, 12.479003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275925, 14.156985, 12.798938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202279, 0.957703, -0.204665,
		-0.775115, -0.284295, -0.564246,
		-0.598565, 0.044504, 0.799837,
		20.096355, 14.170337, 13.038889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883957, 14.379647, 12.201783>,  <20.515350, 14.139184, 12.479003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883957, 14.379647, 12.201783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.919121, 14.458057, 12.592443>,  <19.940218, 14.505103, 12.826839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.919121, 14.458057, 12.592443>,  <19.883957, 14.379647, 12.201783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919121, 14.458057, 12.592443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060043, 0.979706, -0.191234,
		-0.994317, -0.041830, 0.097894,
		0.087908, 0.196025, 0.976651,
		19.945494, 14.516865, 12.885439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.463179, 14.995183, 12.292531>,  <19.883957, 14.379647, 12.201783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.463179, 14.995183, 12.292531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.634733, 15.015865, 12.653282>,  <19.737665, 15.028275, 12.869733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.634733, 15.015865, 12.653282>,  <19.463179, 14.995183, 12.292531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634733, 15.015865, 12.653282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053573, 0.998059, -0.031743,
		-0.901769, -0.034703, 0.430823,
		0.428885, 0.051706, 0.901878,
		19.763399, 15.031377, 12.923845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038700, 15.375999, 12.660092>,  <19.463179, 14.995183, 12.292531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038700, 15.375999, 12.660092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.408428, 15.399628, 12.810901>,  <19.630264, 15.413804, 12.901385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.408428, 15.399628, 12.810901>,  <19.038700, 15.375999, 12.660092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408428, 15.399628, 12.810901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058508, 0.998203, -0.012955,
		-0.377109, -0.010084, 0.926114,
		0.924319, 0.059070, 0.377021,
		19.685724, 15.417349, 12.924007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035294, 15.885993, 13.126016>,  <19.038700, 15.375999, 12.660092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035294, 15.885993, 13.126016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.430063, 15.859481, 13.067245>,  <19.666925, 15.843574, 13.031981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.430063, 15.859481, 13.067245>,  <19.035294, 15.885993, 13.126016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430063, 15.859481, 13.067245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090918, 0.981604, 0.167893,
		0.133098, -0.179056, 0.974794,
		0.986924, -0.066281, -0.146929,
		19.726141, 15.839597, 13.023166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391714, 16.237242, 13.600945>,  <19.035294, 15.885993, 13.126016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391714, 16.237242, 13.600945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.678446, 16.241705, 13.322081>,  <19.850485, 16.244383, 13.154762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.678446, 16.241705, 13.322081>,  <19.391714, 16.237242, 13.600945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678446, 16.241705, 13.322081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160123, 0.970514, 0.180176,
		0.678614, -0.240787, 0.693905,
		0.716829, 0.011160, -0.697160,
		19.893494, 16.245052, 13.112932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746054, 16.678940, 13.926898>,  <19.391714, 16.237242, 13.600945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746054, 16.678940, 13.926898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.919470, 16.662220, 13.566832>,  <20.023520, 16.652187, 13.350792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.919470, 16.662220, 13.566832>,  <19.746054, 16.678940, 13.926898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919470, 16.662220, 13.566832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437033, 0.883336, 0.169466,
		0.788065, -0.466872, 0.401227,
		0.433538, -0.041799, -0.900165,
		20.049532, 16.649681, 13.296782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432545, 16.812407, 14.054748>,  <19.746054, 16.678940, 13.926898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432545, 16.812407, 14.054748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.357353, 16.907324, 13.673516>,  <20.312239, 16.964273, 13.444777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.357353, 16.907324, 13.673516>,  <20.432545, 16.812407, 14.054748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357353, 16.907324, 13.673516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390190, 0.908557, 0.149250,
		0.901341, -0.343826, -0.263377,
		-0.187978, 0.237292, -0.953078,
		20.300961, 16.978512, 13.387593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.553389, 22.184666, 19.823030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157681, 22.215521, 19.872654>,  <18.920256, 22.234034, 19.902428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157681, 22.215521, 19.872654>,  <19.553389, 22.184666, 19.823030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157681, 22.215521, 19.872654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132711, -0.829515, -0.542488,
		0.061062, -0.553132, 0.830853,
		-0.989272, 0.077138, 0.124059,
		18.860899, 22.238663, 19.909872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384958, 21.463123, 19.915808>,  <19.553389, 22.184666, 19.823030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384958, 21.463123, 19.915808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077765, 21.676460, 19.773968>,  <18.893448, 21.804462, 19.688864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077765, 21.676460, 19.773968>,  <19.384958, 21.463123, 19.915808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077765, 21.676460, 19.773968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157655, -0.694050, -0.702453,
		-0.620758, -0.483570, 0.617106,
		-0.767987, 0.533343, -0.354600,
		18.847368, 21.836464, 19.667587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801872, 20.982052, 19.724419>,  <19.384958, 21.463123, 19.915808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801872, 20.982052, 19.724419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694704, 21.312229, 19.525677>,  <18.630404, 21.510336, 19.406431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694704, 21.312229, 19.525677>,  <18.801872, 20.982052, 19.724419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694704, 21.312229, 19.525677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126197, -0.541333, -0.831284,
		-0.955140, -0.160017, 0.249202,
		-0.267921, 0.825441, -0.496855,
		18.614328, 21.559862, 19.376619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093422, 20.866201, 19.459574>,  <18.801872, 20.982052, 19.724419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093422, 20.866201, 19.459574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277821, 21.125875, 19.217569>,  <18.388460, 21.281679, 19.072367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277821, 21.125875, 19.217569>,  <18.093422, 20.866201, 19.459574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277821, 21.125875, 19.217569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341123, -0.499756, -0.796166,
		-0.819217, 0.573414, -0.008934,
		0.460998, 0.649184, -0.605013,
		18.416121, 21.320631, 19.036066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589357, 20.993481, 18.988462>,  <18.093422, 20.866201, 19.459574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589357, 20.993481, 18.988462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926867, 21.107969, 18.806860>,  <18.129372, 21.176662, 18.697899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926867, 21.107969, 18.806860>,  <17.589357, 20.993481, 18.988462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926867, 21.107969, 18.806860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237335, -0.559733, -0.793959,
		-0.481370, 0.777674, -0.404359,
		0.843774, 0.286220, -0.454008,
		18.179998, 21.193834, 18.670658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385126, 21.333761, 18.408100>,  <17.589357, 20.993481, 18.988462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385126, 21.333761, 18.408100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759281, 21.227448, 18.314795>,  <17.983774, 21.163660, 18.258812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759281, 21.227448, 18.314795>,  <17.385126, 21.333761, 18.408100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759281, 21.227448, 18.314795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349896, -0.600045, -0.719388,
		0.051235, 0.754523, -0.654271,
		0.935386, -0.265785, -0.233262,
		18.039898, 21.147713, 18.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.429150, 21.286205, 17.659464>,  <17.385126, 21.333761, 18.408100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.429150, 21.286205, 17.659464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728859, 21.047054, 17.773399>,  <17.908684, 20.903564, 17.841761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728859, 21.047054, 17.773399>,  <17.429150, 21.286205, 17.659464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728859, 21.047054, 17.773399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230786, -0.638862, -0.733889,
		0.620747, 0.484147, -0.616664,
		0.749273, -0.597877, 0.284837,
		17.953642, 20.867691, 17.858850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866468, 21.221251, 17.045614>,  <17.429150, 21.286205, 17.659464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866468, 21.221251, 17.045614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904356, 20.911263, 17.295557>,  <17.927088, 20.725269, 17.445522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904356, 20.911263, 17.295557>,  <17.866468, 21.221251, 17.045614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904356, 20.911263, 17.295557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126353, -0.631962, -0.764630,
		0.987453, -0.006528, -0.157778,
		0.094718, -0.774972, 0.624857,
		17.932772, 20.678770, 17.483015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300644, 20.803574, 16.720654>,  <17.866468, 21.221251, 17.045614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.300644, 20.803574, 16.720654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.120676, 20.569717, 16.990694>,  <18.012695, 20.429403, 17.152719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.120676, 20.569717, 16.990694>,  <18.300644, 20.803574, 16.720654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120676, 20.569717, 16.990694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053889, -0.736787, -0.673974,
		0.891441, -0.339615, 0.299990,
		-0.449921, -0.584642, 0.675104,
		17.985701, 20.394325, 17.193226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569216, 20.244993, 16.585388>,  <18.300644, 20.803574, 16.720654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569216, 20.244993, 16.585388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247253, 20.137190, 16.796854>,  <18.054075, 20.072508, 16.923735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247253, 20.137190, 16.796854>,  <18.569216, 20.244993, 16.585388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247253, 20.137190, 16.796854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219927, -0.691973, -0.687609,
		0.551140, -0.669730, 0.497701,
		-0.804908, -0.269511, 0.528666,
		18.005781, 20.056337, 16.955454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608662, 19.433266, 16.600056>,  <18.569216, 20.244993, 16.585388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608662, 19.433266, 16.600056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242846, 19.582733, 16.662008>,  <18.023355, 19.672413, 16.699179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242846, 19.582733, 16.662008>,  <18.608662, 19.433266, 16.600056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242846, 19.582733, 16.662008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385434, -0.688876, -0.613914,
		-0.122707, -0.621145, 0.774029,
		-0.914540, 0.373669, 0.154880,
		17.968483, 19.694834, 16.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.197504, 19.121790, 16.084703>,  <18.608662, 19.433266, 16.600056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.197504, 19.121790, 16.084703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899992, 19.273476, 16.304882>,  <17.721485, 19.364487, 16.436989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899992, 19.273476, 16.304882>,  <18.197504, 19.121790, 16.084703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899992, 19.273476, 16.304882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654283, -0.581535, -0.483458,
		0.136770, -0.719733, 0.680646,
		-0.743780, 0.379212, 0.550445,
		17.676859, 19.387239, 16.470016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838341, 18.577482, 16.421835>,  <18.197504, 19.121790, 16.084703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838341, 18.577482, 16.421835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631548, 18.895998, 16.296200>,  <17.507473, 19.087109, 16.220818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631548, 18.895998, 16.296200>,  <17.838341, 18.577482, 16.421835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.631548, 18.895998, 16.296200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661180, -0.604512, -0.444304,
		-0.543666, -0.022028, 0.839013,
		-0.516981, 0.796291, -0.314088,
		17.476454, 19.134886, 16.201973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086267, 18.659363, 16.735315>,  <17.838341, 18.577482, 16.421835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086267, 18.659363, 16.735315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168512, 18.776703, 16.361862>,  <17.217859, 18.847107, 16.137791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168512, 18.776703, 16.361862>,  <17.086267, 18.659363, 16.735315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168512, 18.776703, 16.361862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748792, -0.567099, -0.343087,
		-0.630107, 0.769639, 0.103055,
		0.205611, 0.293348, -0.933633,
		17.230196, 18.864708, 16.081772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778816, 18.013508, 16.324858>,  <17.086267, 18.659363, 16.735315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778816, 18.013508, 16.324858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034718, 17.706854, 16.302996>,  <17.188259, 17.522861, 16.289879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034718, 17.706854, 16.302996>,  <16.778816, 18.013508, 16.324858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034718, 17.706854, 16.302996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199794, -0.234553, 0.951350,
		-0.742157, -0.597710, -0.303225,
		0.639754, -0.766634, -0.054657,
		17.226645, 17.476864, 16.286598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458225, 17.471996, 16.652603>,  <16.778816, 18.013508, 16.324858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458225, 17.471996, 16.652603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849905, 17.390833, 16.652813>,  <17.084913, 17.342134, 16.652939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849905, 17.390833, 16.652813>,  <16.458225, 17.471996, 16.652603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849905, 17.390833, 16.652813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058936, -0.281940, 0.957621,
		-0.194163, -0.937730, -0.288033,
		0.979198, -0.202910, 0.000523,
		17.143663, 17.329960, 16.652969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632750, 16.759844, 16.913511>,  <16.458225, 17.471996, 16.652603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.632750, 16.759844, 16.913511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979395, 16.953674, 16.961121>,  <17.187382, 17.069973, 16.989687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979395, 16.953674, 16.961121>,  <16.632750, 16.759844, 16.913511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979395, 16.953674, 16.961121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015989, -0.211445, 0.977259,
		0.498726, -0.848807, -0.175493,
		0.866612, 0.484579, 0.119025,
		17.239378, 17.099049, 16.996828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949261, 16.394615, 17.394127>,  <16.632750, 16.759844, 16.913511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949261, 16.394615, 17.394127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.145716, 16.742121, 17.419535>,  <17.263588, 16.950624, 17.434780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.145716, 16.742121, 17.419535>,  <16.949261, 16.394615, 17.394127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145716, 16.742121, 17.419535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108347, -0.133282, 0.985138,
		0.864318, -0.476955, -0.159588,
		0.491137, 0.868763, 0.063522,
		17.293056, 17.002750, 17.438591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409595, 16.183472, 17.852394>,  <16.949261, 16.394615, 17.394127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409595, 16.183472, 17.852394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393564, 16.582911, 17.838572>,  <17.383945, 16.822575, 17.830278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393564, 16.582911, 17.838572>,  <17.409595, 16.183472, 17.852394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393564, 16.582911, 17.838572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208848, 0.042192, 0.977037,
		0.977126, 0.031942, -0.210246,
		-0.040079, 0.998599, -0.034555,
		17.381540, 16.882490, 17.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847296, 16.472393, 18.378468>,  <17.409595, 16.183472, 17.852394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847296, 16.472393, 18.378468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620010, 16.790813, 18.295107>,  <17.483639, 16.981867, 18.245090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620010, 16.790813, 18.295107>,  <17.847296, 16.472393, 18.378468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620010, 16.790813, 18.295107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111416, 0.325351, 0.939006,
		0.815302, 0.510339, -0.273563,
		-0.568216, 0.796053, -0.208400,
		17.449545, 17.029629, 18.232588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206131, 16.989223, 18.732557>,  <17.847296, 16.472393, 18.378468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206131, 16.989223, 18.732557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826405, 17.105446, 18.684587>,  <17.598570, 17.175179, 18.655806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826405, 17.105446, 18.684587>,  <18.206131, 16.989223, 18.732557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826405, 17.105446, 18.684587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033041, 0.471644, 0.881170,
		0.312589, 0.832544, -0.457338,
		-0.949314, 0.290554, -0.119923,
		17.541611, 17.192612, 18.648611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.197224, 17.747335, 18.875576>,  <18.206131, 16.989223, 18.732557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.197224, 17.747335, 18.875576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826891, 17.600363, 18.910957>,  <17.604691, 17.512178, 18.932186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826891, 17.600363, 18.910957>,  <18.197224, 17.747335, 18.875576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826891, 17.600363, 18.910957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117437, 0.502164, 0.856762,
		-0.359221, 0.782831, -0.508070,
		-0.925834, -0.367433, 0.088454,
		17.549141, 17.490133, 18.937494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800982, 18.333319, 19.167046>,  <18.197224, 17.747335, 18.875576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800982, 18.333319, 19.167046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541597, 18.030579, 19.199732>,  <17.385967, 17.848934, 19.219343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541597, 18.030579, 19.199732>,  <17.800982, 18.333319, 19.167046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541597, 18.030579, 19.199732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389120, 0.421810, 0.818940,
		-0.654283, 0.499252, -0.568032,
		-0.648459, -0.756851, 0.081714,
		17.347059, 17.803524, 19.224245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030640, 18.551516, 19.283449>,  <17.800982, 18.333319, 19.167046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030640, 18.551516, 19.283449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999022, 18.182030, 19.433382>,  <16.980051, 17.960339, 19.523342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999022, 18.182030, 19.433382>,  <17.030640, 18.551516, 19.283449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999022, 18.182030, 19.433382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278035, 0.381518, 0.881556,
		-0.957313, -0.034533, -0.286983,
		-0.079047, -0.923716, 0.374834,
		16.975307, 17.904915, 19.545832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424820, 18.607447, 19.747673>,  <17.030640, 18.551516, 19.283449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424820, 18.607447, 19.747673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623686, 18.283590, 19.872450>,  <16.743006, 18.089275, 19.947315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623686, 18.283590, 19.872450>,  <16.424820, 18.607447, 19.747673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623686, 18.283590, 19.872450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135821, 0.282469, 0.949613,
		-0.856961, -0.514480, 0.030466,
		0.497163, -0.809643, 0.311942,
		16.772835, 18.040697, 19.966032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.050087, 18.421892, 20.366013>,  <16.424820, 18.607447, 19.747673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.050087, 18.421892, 20.366013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.413975, 18.256817, 20.384319>,  <16.632307, 18.157772, 20.395304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.413975, 18.256817, 20.384319>,  <16.050087, 18.421892, 20.366013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413975, 18.256817, 20.384319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015396, 0.143679, 0.989505,
		-0.414935, -0.899468, 0.137062,
		0.909721, -0.412690, 0.045769,
		16.686892, 18.133011, 20.398050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013849, 18.061569, 20.985146>,  <16.050087, 18.421892, 20.366013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013849, 18.061569, 20.985146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401329, 18.092472, 20.890783>,  <16.633818, 18.111013, 20.834166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401329, 18.092472, 20.890783>,  <16.013849, 18.061569, 20.985146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401329, 18.092472, 20.890783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230265, 0.075315, 0.970209,
		0.092733, -0.994162, 0.055166,
		0.968699, 0.077267, -0.235905,
		16.691938, 18.115648, 20.820011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284145, 17.570944, 21.368095>,  <16.013849, 18.061569, 20.985146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284145, 17.570944, 21.368095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531855, 17.875610, 21.291815>,  <16.680481, 18.058411, 21.246046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531855, 17.875610, 21.291815>,  <16.284145, 17.570944, 21.368095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531855, 17.875610, 21.291815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067624, 0.293714, 0.953498,
		0.782258, -0.577580, 0.233396,
		0.619273, 0.761665, -0.190701,
		16.717636, 18.104111, 21.234604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334272, 17.050690, 21.980667>,  <16.284145, 17.570944, 21.368095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334272, 17.050690, 21.980667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972146, 17.000395, 22.142946>,  <15.754869, 16.970217, 22.240314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972146, 17.000395, 22.142946>,  <16.334272, 17.050690, 21.980667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972146, 17.000395, 22.142946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302529, -0.479542, -0.823721,
		0.298122, -0.868464, 0.396098,
		-0.905317, -0.125738, 0.405698,
		15.700551, 16.962673, 22.264656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091408, 16.449167, 21.621964>,  <16.334272, 17.050690, 21.980667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091408, 16.449167, 21.621964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770994, 16.635521, 21.772322>,  <15.578746, 16.747334, 21.862535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770994, 16.635521, 21.772322>,  <16.091408, 16.449167, 21.621964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770994, 16.635521, 21.772322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480933, -0.126963, -0.867516,
		-0.356437, -0.875690, 0.325761,
		-0.801034, 0.465884, 0.375894,
		15.530684, 16.775286, 21.885090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480487, 16.105696, 21.359444>,  <16.091408, 16.449167, 21.621964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480487, 16.105696, 21.359444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374758, 16.473980, 21.474279>,  <15.311320, 16.694950, 21.543180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374758, 16.473980, 21.474279>,  <15.480487, 16.105696, 21.359444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374758, 16.473980, 21.474279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502797, 0.122469, -0.855685,
		-0.823000, -0.370525, 0.430561,
		-0.264322, 0.920713, 0.287091,
		15.295461, 16.750195, 21.560408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723063, 16.034351, 21.335789>,  <15.480487, 16.105696, 21.359444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723063, 16.034351, 21.335789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835670, 16.417028, 21.306170>,  <14.903234, 16.646635, 21.288397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835670, 16.417028, 21.306170>,  <14.723063, 16.034351, 21.335789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835670, 16.417028, 21.306170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470269, 0.070290, -0.879719,
		-0.836418, 0.282481, 0.469691,
		0.281518, 0.956694, -0.074050,
		14.920125, 16.704037, 21.283955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054802, 16.410013, 21.127432>,  <14.723063, 16.034351, 21.335789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054802, 16.410013, 21.127432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372223, 16.629160, 21.021515>,  <14.562675, 16.760649, 20.957964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372223, 16.629160, 21.021515>,  <14.054802, 16.410013, 21.127432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372223, 16.629160, 21.021515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381191, 0.108388, -0.918121,
		-0.474309, 0.829513, 0.294854,
		0.793552, 0.547869, -0.264794,
		14.610289, 16.793520, 20.942078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760714, 16.941744, 20.876467>,  <14.054802, 16.410013, 21.127432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760714, 16.941744, 20.876467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129416, 16.931181, 20.721720>,  <14.350638, 16.924843, 20.628872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129416, 16.931181, 20.721720>,  <13.760714, 16.941744, 20.876467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129416, 16.931181, 20.721720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377635, 0.165474, -0.911049,
		0.088076, 0.985860, 0.142555,
		0.921756, -0.026408, -0.386869,
		14.405943, 16.923258, 20.605659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853392, 17.551495, 20.413809>,  <13.760714, 16.941744, 20.876467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853392, 17.551495, 20.413809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143840, 17.302511, 20.296988>,  <14.318110, 17.153122, 20.226894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143840, 17.302511, 20.296988>,  <13.853392, 17.551495, 20.413809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143840, 17.302511, 20.296988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329707, 0.057516, -0.942330,
		0.603358, 0.780538, -0.163465,
		0.726122, -0.622457, -0.292052,
		14.361676, 17.115774, 20.209372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893170, 17.678171, 19.663446>,  <13.853392, 17.551495, 20.413809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893170, 17.678171, 19.663446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127205, 17.354229, 19.680456>,  <14.267626, 17.159864, 19.690662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127205, 17.354229, 19.680456>,  <13.893170, 17.678171, 19.663446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127205, 17.354229, 19.680456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067101, -0.100603, -0.992661,
		0.808190, 0.577940, -0.113203,
		0.585087, -0.809855, 0.042526,
		14.302731, 17.111273, 19.693214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490753, 17.767101, 19.114822>,  <13.893170, 17.678171, 19.663446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490753, 17.767101, 19.114822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408958, 17.387646, 19.211382>,  <14.359881, 17.159973, 19.269318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408958, 17.387646, 19.211382>,  <14.490753, 17.767101, 19.114822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.408958, 17.387646, 19.211382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156828, -0.211673, -0.964676,
		0.966224, -0.235122, -0.105489,
		-0.204488, -0.948637, 0.241397,
		14.347612, 17.103054, 19.283802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958444, 17.397434, 18.762850>,  <14.490753, 17.767101, 19.114822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958444, 17.397434, 18.762850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.648333, 17.158522, 18.845020>,  <14.462266, 17.015175, 18.894323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.648333, 17.158522, 18.845020>,  <14.958444, 17.397434, 18.762850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648333, 17.158522, 18.845020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019942, -0.301931, -0.953121,
		0.631306, -0.743030, 0.222170,
		-0.775277, -0.597280, 0.205428,
		14.415750, 16.979338, 18.906649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648561, 17.684107, 18.725843>,  <14.958444, 17.397434, 18.762850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648561, 17.684107, 18.725843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539145, 17.598942, 19.101044>,  <15.473495, 17.547844, 19.326164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539145, 17.598942, 19.101044>,  <15.648561, 17.684107, 18.725843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539145, 17.598942, 19.101044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961328, 0.092963, -0.259243,
		-0.032005, -0.972639, -0.230105,
		-0.273541, -0.212909, 0.938001,
		15.457082, 17.535069, 19.382444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798823, 18.234213, 18.128349>,  <15.648561, 17.684107, 18.725843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798823, 18.234213, 18.128349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003878, 17.899616, 18.050907>,  <16.126909, 17.698858, 18.004442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003878, 17.899616, 18.050907>,  <15.798823, 18.234213, 18.128349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003878, 17.899616, 18.050907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182648, 0.326571, -0.927357,
		0.838955, 0.440034, 0.320196,
		0.512635, -0.836494, -0.193607,
		16.157667, 17.648668, 17.992825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.056499, 19.960789, 27.453279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.328749, 19.668358, 27.472364>,  <16.492098, 19.492899, 27.483814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.328749, 19.668358, 27.472364>,  <16.056499, 19.960789, 27.453279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328749, 19.668358, 27.472364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106815, -0.163448, -0.980752,
		0.724806, 0.662426, -0.189337,
		0.680623, -0.731079, 0.047711,
		16.532936, 19.449034, 27.486677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351555, 19.989044, 26.785118>,  <16.056499, 19.960789, 27.453279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351555, 19.989044, 26.785118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.467653, 19.635748, 26.932438>,  <16.537312, 19.423771, 27.020830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.467653, 19.635748, 26.932438>,  <16.351555, 19.989044, 26.785118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467653, 19.635748, 26.932438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071548, -0.403819, -0.912037,
		0.954274, 0.238362, -0.180400,
		0.290244, -0.883240, 0.368300,
		16.554726, 19.370775, 27.042929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847830, 19.691906, 26.393261>,  <16.351555, 19.989044, 26.785118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847830, 19.691906, 26.393261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.661741, 19.398092, 26.590858>,  <16.550089, 19.221804, 26.709417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.661741, 19.398092, 26.590858>,  <16.847830, 19.691906, 26.393261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661741, 19.398092, 26.590858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298245, -0.395364, -0.868756,
		0.833439, -0.551493, -0.035140,
		-0.465220, -0.734535, 0.493992,
		16.522175, 19.177732, 26.739056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077868, 19.107075, 26.087997>,  <16.847830, 19.691906, 26.393261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077868, 19.107075, 26.087997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.735521, 18.977211, 26.249039>,  <16.530113, 18.899292, 26.345663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.735521, 18.977211, 26.249039>,  <17.077868, 19.107075, 26.087997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735521, 18.977211, 26.249039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175256, -0.550329, -0.816347,
		0.486600, -0.769242, 0.414109,
		-0.855865, -0.324660, 0.402605,
		16.478762, 18.879812, 26.369820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050079, 18.389376, 25.977127>,  <17.077868, 19.107075, 26.087997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050079, 18.389376, 25.977127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.667572, 18.476439, 26.055283>,  <16.438068, 18.528675, 26.102177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.667572, 18.476439, 26.055283>,  <17.050079, 18.389376, 25.977127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667572, 18.476439, 26.055283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292134, -0.677657, -0.674862,
		-0.014479, -0.702429, 0.711607,
		-0.956268, 0.217655, 0.195391,
		16.380692, 18.541735, 26.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720461, 17.728493, 26.011763>,  <17.050079, 18.389376, 25.977127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720461, 17.728493, 26.011763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426916, 17.986734, 25.927250>,  <16.250790, 18.141680, 25.876543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426916, 17.986734, 25.927250>,  <16.720461, 17.728493, 26.011763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426916, 17.986734, 25.927250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365739, -0.637622, -0.677992,
		-0.572431, -0.420280, 0.704050,
		-0.733864, 0.645603, -0.211282,
		16.206757, 18.180416, 25.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.179674, 17.279058, 25.760023>,  <16.720461, 17.728493, 26.011763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.179674, 17.279058, 25.760023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.047873, 17.634190, 25.631533>,  <15.968792, 17.847269, 25.554438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.047873, 17.634190, 25.631533>,  <16.179674, 17.279058, 25.760023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047873, 17.634190, 25.631533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341202, -0.429207, -0.836279,
		-0.880346, -0.165953, 0.444353,
		-0.329502, 0.887830, -0.321227,
		15.949022, 17.900539, 25.535164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540156, 17.170284, 25.448557>,  <16.179674, 17.279058, 25.760023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540156, 17.170284, 25.448557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.688631, 17.506227, 25.290133>,  <15.777716, 17.707792, 25.195078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.688631, 17.506227, 25.290133>,  <15.540156, 17.170284, 25.448557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688631, 17.506227, 25.290133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311141, -0.289378, -0.905236,
		-0.874878, 0.459242, 0.153901,
		0.371186, 0.839856, -0.396059,
		15.799987, 17.758184, 25.171314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025049, 17.387920, 24.989897>,  <15.540156, 17.170284, 25.448557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025049, 17.387920, 24.989897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.345919, 17.589199, 24.861326>,  <15.538440, 17.709967, 24.784184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.345919, 17.589199, 24.861326>,  <15.025049, 17.387920, 24.989897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345919, 17.589199, 24.861326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317779, -0.095957, -0.943297,
		-0.505505, 0.858829, 0.082931,
		0.802173, 0.503195, -0.321424,
		15.586571, 17.740158, 24.764898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807346, 17.591887, 24.314636>,  <15.025049, 17.387920, 24.989897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807346, 17.591887, 24.314636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.201295, 17.661016, 24.309561>,  <15.437664, 17.702494, 24.306515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.201295, 17.661016, 24.309561>,  <14.807346, 17.591887, 24.314636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201295, 17.661016, 24.309561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025104, -0.214744, -0.976348,
		-0.171463, 0.961258, -0.215833,
		0.984871, 0.172826, -0.012689,
		15.496757, 17.712864, 24.305754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.940270, 18.169680, 23.858362>,  <14.807346, 17.591887, 24.314636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.940270, 18.169680, 23.858362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.244827, 17.911537, 23.883003>,  <15.427562, 17.756651, 23.897787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.244827, 17.911537, 23.883003>,  <14.940270, 18.169680, 23.858362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244827, 17.911537, 23.883003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096599, -0.206899, -0.973582,
		0.641053, 0.735328, -0.219873,
		0.761393, -0.645357, 0.061602,
		15.473246, 17.717930, 23.901484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163352, 18.168169, 23.213512>,  <14.940270, 18.169680, 23.858362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163352, 18.168169, 23.213512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.392028, 17.865976, 23.341524>,  <15.529233, 17.684662, 23.418331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.392028, 17.865976, 23.341524>,  <15.163352, 18.168169, 23.213512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392028, 17.865976, 23.341524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068487, -0.344757, -0.936190,
		0.817607, 0.557128, -0.145353,
		0.571689, -0.755481, 0.320031,
		15.563535, 17.639332, 23.437534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814215, 18.086164, 22.710756>,  <15.163352, 18.168169, 23.213512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814215, 18.086164, 22.710756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766115, 17.727655, 22.881514>,  <15.737256, 17.512550, 22.983969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766115, 17.727655, 22.881514>,  <15.814215, 18.086164, 22.710756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766115, 17.727655, 22.881514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055635, -0.423254, -0.904301,
		0.991184, -0.132491, 0.001031,
		-0.120248, -0.896271, 0.426893,
		15.730041, 17.458775, 23.009583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282503, 17.766504, 22.401329>,  <15.814215, 18.086164, 22.710756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282503, 17.766504, 22.401329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.020058, 17.491817, 22.526508>,  <15.862591, 17.327005, 22.601616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.020058, 17.491817, 22.526508>,  <16.282503, 17.766504, 22.401329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020058, 17.491817, 22.526508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020316, -0.398462, -0.916960,
		0.754390, -0.607986, 0.247484,
		-0.656112, -0.686717, 0.312948,
		15.823224, 17.285803, 22.620392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910765, 17.497942, 21.896841>,  <16.282503, 17.766504, 22.401329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910765, 17.497942, 21.896841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.914097, 17.876833, 21.768658>,  <16.916096, 18.104168, 21.691748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.914097, 17.876833, 21.768658>,  <16.910765, 17.497942, 21.896841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914097, 17.876833, 21.768658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372985, 0.294399, 0.879893,
		0.927800, -0.126856, -0.350849,
		0.008330, 0.947226, -0.320459,
		16.916595, 18.161001, 21.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487892, 17.736250, 22.059772>,  <16.910765, 17.497942, 21.896841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487892, 17.736250, 22.059772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.302719, 18.086613, 22.005400>,  <17.191614, 18.296831, 21.972776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.302719, 18.086613, 22.005400>,  <17.487892, 17.736250, 22.059772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302719, 18.086613, 22.005400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519220, 0.392253, 0.759308,
		0.718403, 0.280932, -0.636376,
		-0.462934, 0.875908, -0.135930,
		17.163839, 18.349384, 21.964621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007113, 18.190815, 22.115177>,  <17.487892, 17.736250, 22.059772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007113, 18.190815, 22.115177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.681644, 18.413651, 22.181622>,  <17.486364, 18.547352, 22.221487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.681644, 18.413651, 22.181622>,  <18.007113, 18.190815, 22.115177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681644, 18.413651, 22.181622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511463, 0.550220, 0.660048,
		0.276309, 0.622020, -0.732629,
		-0.813670, 0.557090, 0.166109,
		17.437544, 18.580778, 22.231455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157700, 19.033472, 21.996719>,  <18.007113, 18.190815, 22.115177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157700, 19.033472, 21.996719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.840803, 18.998762, 22.238321>,  <17.650665, 18.977936, 22.383284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.840803, 18.998762, 22.238321>,  <18.157700, 19.033472, 21.996719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840803, 18.998762, 22.238321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433036, 0.617442, 0.656692,
		-0.429923, 0.781815, -0.451587,
		-0.792241, -0.086774, 0.604007,
		17.603130, 18.972731, 22.419523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044300, 19.666767, 22.234013>,  <18.157700, 19.033472, 21.996719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044300, 19.666767, 22.234013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.815809, 19.472425, 22.498632>,  <17.678715, 19.355822, 22.657404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.815809, 19.472425, 22.498632>,  <18.044300, 19.666767, 22.234013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815809, 19.472425, 22.498632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138207, 0.737546, 0.661003,
		-0.809073, 0.469014, -0.354157,
		-0.571227, -0.485852, 0.661549,
		17.644442, 19.326670, 22.697098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660099, 20.237801, 22.547953>,  <18.044300, 19.666767, 22.234013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660099, 20.237801, 22.547953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.619528, 19.922777, 22.791088>,  <17.595184, 19.733763, 22.936970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.619528, 19.922777, 22.791088>,  <17.660099, 20.237801, 22.547953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619528, 19.922777, 22.791088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118591, 0.597060, 0.793382,
		-0.987749, 0.152556, 0.032839,
		-0.101428, -0.787557, 0.607837,
		17.589100, 19.686510, 22.973440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162645, 20.454552, 23.095966>,  <17.660099, 20.237801, 22.547953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162645, 20.454552, 23.095966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.373348, 20.147545, 23.242086>,  <17.499771, 19.963341, 23.329758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.373348, 20.147545, 23.242086>,  <17.162645, 20.454552, 23.095966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373348, 20.147545, 23.242086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196124, 0.527903, 0.826350,
		-0.827080, -0.363642, 0.428606,
		0.526758, -0.767517, 0.365300,
		17.531376, 19.917290, 23.351677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951263, 20.370068, 23.702801>,  <17.162645, 20.454552, 23.095966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951263, 20.370068, 23.702801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.309502, 20.195965, 23.739590>,  <17.524445, 20.091503, 23.761663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.309502, 20.195965, 23.739590>,  <16.951263, 20.370068, 23.702801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309502, 20.195965, 23.739590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103254, 0.404469, 0.908704,
		-0.432718, -0.804337, 0.407183,
		0.895597, -0.435256, 0.091970,
		17.578180, 20.065388, 23.767181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973127, 20.242386, 24.480358>,  <16.951263, 20.370068, 23.702801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973127, 20.242386, 24.480358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.349001, 20.197519, 24.351107>,  <17.574526, 20.170599, 24.273556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.349001, 20.197519, 24.351107>,  <16.973127, 20.242386, 24.480358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349001, 20.197519, 24.351107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337540, 0.151315, 0.929070,
		-0.055316, -0.982101, 0.180049,
		0.939684, -0.112166, -0.323128,
		17.630907, 20.163870, 24.254168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320148, 19.617708, 24.830769>,  <16.973127, 20.242386, 24.480358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320148, 19.617708, 24.830769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.612417, 19.856104, 24.697552>,  <17.787779, 19.999142, 24.617622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.612417, 19.856104, 24.697552>,  <17.320148, 19.617708, 24.830769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.612417, 19.856104, 24.697552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377908, 0.053201, 0.924313,
		0.568601, -0.801226, -0.186357,
		0.730670, 0.595991, -0.333040,
		17.831617, 20.034901, 24.597639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938396, 19.355896, 25.103924>,  <17.320148, 19.617708, 24.830769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938396, 19.355896, 25.103924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.035673, 19.731989, 25.008577>,  <18.094040, 19.957645, 24.951370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.035673, 19.731989, 25.008577>,  <17.938396, 19.355896, 25.103924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035673, 19.731989, 25.008577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396375, 0.127957, 0.909128,
		0.885294, -0.315574, -0.341567,
		0.243191, 0.940234, -0.238366,
		18.108631, 20.014059, 24.937067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550343, 19.296610, 25.173260>,  <17.938396, 19.355896, 25.103924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550343, 19.296610, 25.173260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.468542, 19.685764, 25.216480>,  <18.419462, 19.919256, 25.242413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.468542, 19.685764, 25.216480>,  <18.550343, 19.296610, 25.173260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468542, 19.685764, 25.216480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386976, -0.021042, 0.921850,
		0.899127, 0.230334, -0.372180,
		-0.204502, 0.972884, 0.108054,
		18.407192, 19.977629, 25.248896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100069, 19.589701, 25.507109>,  <18.550343, 19.296610, 25.173260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100069, 19.589701, 25.507109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.848276, 19.895811, 25.560932>,  <18.697201, 20.079477, 25.593225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.848276, 19.895811, 25.560932>,  <19.100069, 19.589701, 25.507109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848276, 19.895811, 25.560932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398100, 0.168920, 0.901656,
		0.667286, 0.621143, -0.410988,
		-0.629481, 0.765276, 0.134559,
		18.659431, 20.125395, 25.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447721, 20.275787, 25.648903>,  <19.100069, 19.589701, 25.507109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.447721, 20.275787, 25.648903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.079514, 20.308632, 25.801689>,  <18.858589, 20.328339, 25.893362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.079514, 20.308632, 25.801689>,  <19.447721, 20.275787, 25.648903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079514, 20.308632, 25.801689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385937, 0.343182, 0.856317,
		-0.060772, 0.935673, -0.347595,
		-0.920521, 0.082110, 0.381967,
		18.803356, 20.333265, 25.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.537204, 24.671204, 26.119446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.706084, 24.316040, 26.192509>,  <13.807412, 24.102942, 26.236345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.706084, 24.316040, 26.192509>,  <13.537204, 24.671204, 26.119446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706084, 24.316040, 26.192509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124456, -0.256363, -0.958534,
		0.897919, 0.381961, -0.218743,
		0.422200, -0.887910, 0.182656,
		13.832745, 24.049667, 26.247305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950516, 24.572161, 25.652157>,  <13.537204, 24.671204, 26.119446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950516, 24.572161, 25.652157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.921326, 24.188440, 25.761274>,  <13.903811, 23.958208, 25.826746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.921326, 24.188440, 25.761274>,  <13.950516, 24.572161, 25.652157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921326, 24.188440, 25.761274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183032, -0.255997, -0.949192,
		0.980395, -0.119197, -0.156902,
		-0.072974, -0.959301, 0.272795,
		13.899433, 23.900650, 25.843113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306990, 24.291452, 25.099821>,  <13.950516, 24.572161, 25.652157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306990, 24.291452, 25.099821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.098726, 23.998068, 25.274612>,  <13.973768, 23.822037, 25.379488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.098726, 23.998068, 25.274612>,  <14.306990, 24.291452, 25.099821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098726, 23.998068, 25.274612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091845, -0.460739, -0.882771,
		0.848810, -0.499757, 0.172523,
		-0.520659, -0.733460, 0.436980,
		13.942529, 23.778030, 25.405706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644475, 23.649471, 24.987574>,  <14.306990, 24.291452, 25.099821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644475, 23.649471, 24.987574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268076, 23.542671, 25.070747>,  <14.042236, 23.478592, 25.120651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268076, 23.542671, 25.070747>,  <14.644475, 23.649471, 24.987574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268076, 23.542671, 25.070747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058307, -0.477329, -0.876788,
		0.333354, -0.837179, 0.433597,
		-0.940997, -0.266999, 0.207933,
		13.985777, 23.462572, 25.133127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.567127, 23.000008, 24.685238>,  <14.644475, 23.649471, 24.987574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.567127, 23.000008, 24.685238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.185073, 23.097624, 24.752359>,  <13.955840, 23.156193, 24.792633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.185073, 23.097624, 24.752359>,  <14.567127, 23.000008, 24.685238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.185073, 23.097624, 24.752359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252234, -0.373351, -0.892741,
		-0.155213, -0.895017, 0.418156,
		-0.955137, 0.244038, 0.167804,
		13.898532, 23.170835, 24.802700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254992, 22.551369, 24.285858>,  <14.567127, 23.000008, 24.685238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254992, 22.551369, 24.285858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.958926, 22.814274, 24.342661>,  <13.781287, 22.972017, 24.376741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.958926, 22.814274, 24.342661>,  <14.254992, 22.551369, 24.285858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958926, 22.814274, 24.342661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372417, -0.224851, -0.900415,
		-0.559879, -0.719339, 0.411202,
		-0.740163, 0.657262, 0.142004,
		13.736877, 23.011452, 24.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633545, 22.082655, 24.360270>,  <14.254992, 22.551369, 24.285858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633545, 22.082655, 24.360270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.615314, 22.465340, 24.245289>,  <13.604377, 22.694950, 24.176300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.615314, 22.465340, 24.245289>,  <13.633545, 22.082655, 24.360270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615314, 22.465340, 24.245289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181259, -0.290895, -0.939428,
		-0.982379, 0.009289, 0.186670,
		-0.045575, 0.956710, -0.287453,
		13.601642, 22.752352, 24.159054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.047648, 22.090565, 23.927237>,  <13.633545, 22.082655, 24.360270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.047648, 22.090565, 23.927237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190625, 22.447710, 23.817671>,  <13.276411, 22.661997, 23.751932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.190625, 22.447710, 23.817671>,  <13.047648, 22.090565, 23.927237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.190625, 22.447710, 23.817671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019746, -0.286001, -0.958026,
		-0.933727, 0.347847, -0.084598,
		0.357441, 0.892864, -0.273915,
		13.297857, 22.715569, 23.735497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.626359, 22.207611, 23.505156>,  <13.047648, 22.090565, 23.927237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.626359, 22.207611, 23.505156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.944797, 22.437336, 23.428841>,  <13.135859, 22.575171, 23.383051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.944797, 22.437336, 23.428841>,  <12.626359, 22.207611, 23.505156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944797, 22.437336, 23.428841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015340, -0.334309, -0.942339,
		-0.604978, 0.747264, -0.274951,
		0.796094, 0.574312, -0.190787,
		13.183625, 22.609629, 23.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439164, 22.576012, 23.012768>,  <12.626359, 22.207611, 23.505156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439164, 22.576012, 23.012768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.838537, 22.598341, 23.011229>,  <13.078161, 22.611738, 23.010305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.838537, 22.598341, 23.011229>,  <12.439164, 22.576012, 23.012768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838537, 22.598341, 23.011229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007544, -0.202410, -0.979272,
		-0.055443, 0.977709, -0.202514,
		0.998433, 0.055821, -0.003846,
		13.138067, 22.615088, 23.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516131, 22.746035, 22.366796>,  <12.439164, 22.576012, 23.012768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516131, 22.746035, 22.366796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.866087, 22.592505, 22.484947>,  <13.076060, 22.500387, 22.555838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.866087, 22.592505, 22.484947>,  <12.516131, 22.746035, 22.366796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.866087, 22.592505, 22.484947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141173, -0.381293, -0.913611,
		0.463291, 0.841008, -0.279404,
		0.874890, -0.383824, 0.295377,
		13.128553, 22.477358, 22.573561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.023861, 22.995909, 21.867582>,  <12.516131, 22.746035, 22.366796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.023861, 22.995909, 21.867582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.142190, 22.652849, 22.035835>,  <13.213187, 22.447014, 22.136787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.142190, 22.652849, 22.035835>,  <13.023861, 22.995909, 21.867582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142190, 22.652849, 22.035835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048270, -0.426356, -0.903267,
		0.954023, 0.287510, -0.084727,
		0.295822, -0.857647, 0.420631,
		13.230936, 22.395555, 22.162025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.603825, 22.893391, 21.541132>,  <13.023861, 22.995909, 21.867582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.603825, 22.893391, 21.541132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504783, 22.537418, 21.694345>,  <13.445357, 22.323835, 21.786274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504783, 22.537418, 21.694345>,  <13.603825, 22.893391, 21.541132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.504783, 22.537418, 21.694345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005100, -0.396535, -0.918006,
		0.968847, -0.225350, 0.102723,
		-0.247606, -0.889931, 0.383032,
		13.430501, 22.270439, 21.809256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098449, 22.405806, 21.105797>,  <13.603825, 22.893391, 21.541132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098449, 22.405806, 21.105797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.803663, 22.199516, 21.280571>,  <13.626792, 22.075743, 21.385435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.803663, 22.199516, 21.280571>,  <14.098449, 22.405806, 21.105797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803663, 22.199516, 21.280571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303049, -0.325711, -0.895586,
		0.604190, -0.792427, 0.083748,
		-0.736964, -0.515724, 0.436935,
		13.582574, 22.044800, 21.411652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817813, 22.340490, 21.012581>,  <14.098449, 22.405806, 21.105797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817813, 22.340490, 21.012581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.984396, 22.606913, 20.765055>,  <15.084346, 22.766766, 20.616539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.984396, 22.606913, 20.765055>,  <14.817813, 22.340490, 21.012581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984396, 22.606913, 20.765055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099241, 0.643280, 0.759172,
		0.903722, -0.377576, 0.201799,
		0.416459, 0.666054, -0.618817,
		15.109334, 22.806728, 20.579409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573421, 22.498201, 21.203411>,  <14.817813, 22.340490, 21.012581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573421, 22.498201, 21.203411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.429204, 22.811567, 21.000919>,  <15.342673, 22.999588, 20.879425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.429204, 22.811567, 21.000919>,  <15.573421, 22.498201, 21.203411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429204, 22.811567, 21.000919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029068, 0.551904, 0.833401,
		0.932289, 0.285763, -0.221758,
		-0.360544, 0.783417, -0.506227,
		15.321041, 23.046593, 20.849051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005060, 23.040890, 21.391756>,  <15.573421, 22.498201, 21.203411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005060, 23.040890, 21.391756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.650036, 23.180635, 21.271637>,  <15.437021, 23.264482, 21.199566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.650036, 23.180635, 21.271637>,  <16.005060, 23.040890, 21.391756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650036, 23.180635, 21.271637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081567, 0.522374, 0.848807,
		0.453413, 0.777862, -0.435141,
		-0.887560, 0.349367, -0.300299,
		15.383768, 23.285446, 21.181547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058468, 23.860968, 21.447689>,  <16.005060, 23.040890, 21.391756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058468, 23.860968, 21.447689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.666423, 23.787659, 21.417263>,  <15.431195, 23.743673, 21.399008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.666423, 23.787659, 21.417263>,  <16.058468, 23.860968, 21.447689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666423, 23.787659, 21.417263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181383, 0.672020, 0.717976,
		-0.080469, 0.717496, -0.691899,
		-0.980115, -0.183273, -0.076065,
		15.372389, 23.732677, 21.394444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814697, 24.413174, 21.505907>,  <16.058468, 23.860968, 21.447689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814697, 24.413174, 21.505907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.494609, 24.197512, 21.610949>,  <15.302556, 24.068115, 21.673973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.494609, 24.197512, 21.610949>,  <15.814697, 24.413174, 21.505907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494609, 24.197512, 21.610949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013981, 0.420995, 0.906955,
		-0.599542, 0.729436, -0.329351,
		-0.800221, -0.539153, 0.262603,
		15.254542, 24.035767, 21.689730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540509, 24.885351, 21.909021>,  <15.814697, 24.413174, 21.505907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540509, 24.885351, 21.909021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.360085, 24.551580, 22.035688>,  <15.251831, 24.351318, 22.111689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.360085, 24.551580, 22.035688>,  <15.540509, 24.885351, 21.909021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360085, 24.551580, 22.035688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069437, 0.386547, 0.919652,
		-0.889789, 0.392829, -0.232296,
		-0.451059, -0.834426, 0.316668,
		15.224768, 24.301252, 22.130690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007412, 25.136709, 22.355421>,  <15.540509, 24.885351, 21.909021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007412, 25.136709, 22.355421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.978521, 24.750547, 22.455643>,  <14.961186, 24.518850, 22.515776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.978521, 24.750547, 22.455643>,  <15.007412, 25.136709, 22.355421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978521, 24.750547, 22.455643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188445, 0.233476, 0.953927,
		-0.979424, 0.116115, 0.165063,
		-0.072227, -0.965405, 0.250553,
		14.956853, 24.460926, 22.530809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515124, 25.049541, 22.921280>,  <15.007412, 25.136709, 22.355421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515124, 25.049541, 22.921280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788993, 24.758015, 22.924105>,  <14.953314, 24.583097, 22.925798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.788993, 24.758015, 22.924105>,  <14.515124, 25.049541, 22.921280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788993, 24.758015, 22.924105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250013, 0.243946, 0.937008,
		-0.684631, -0.639776, 0.349237,
		0.684670, -0.728819, 0.007061,
		14.994394, 24.539370, 22.926224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323848, 24.756992, 23.618469>,  <14.515124, 25.049541, 22.921280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323848, 24.756992, 23.618469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.688097, 24.628296, 23.514740>,  <14.906647, 24.551079, 23.452503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.688097, 24.628296, 23.514740>,  <14.323848, 24.756992, 23.618469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688097, 24.628296, 23.514740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242185, -0.092948, 0.965768,
		-0.334828, -0.942255, -0.006721,
		0.910624, -0.321739, -0.259322,
		14.961285, 24.531775, 23.436943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569195, 24.138145, 24.118418>,  <14.323848, 24.756992, 23.618469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569195, 24.138145, 24.118418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.881856, 24.329830, 23.958731>,  <15.069452, 24.444841, 23.862919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.881856, 24.329830, 23.958731>,  <14.569195, 24.138145, 24.118418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.881856, 24.329830, 23.958731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332717, 0.221028, 0.916758,
		0.527559, -0.849414, 0.013326,
		0.781653, 0.479210, -0.399220,
		15.116352, 24.473593, 23.838964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086816, 23.957508, 24.498920>,  <14.569195, 24.138145, 24.118418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086816, 23.957508, 24.498920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244317, 24.273422, 24.310795>,  <15.338818, 24.462971, 24.197920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.244317, 24.273422, 24.310795>,  <15.086816, 23.957508, 24.498920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244317, 24.273422, 24.310795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502527, 0.243469, 0.829572,
		0.769692, -0.562992, -0.301023,
		0.393753, 0.789787, -0.470315,
		15.362443, 24.510359, 24.169701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742018, 23.934074, 24.740980>,  <15.086816, 23.957508, 24.498920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742018, 23.934074, 24.740980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.722136, 24.301804, 24.584837>,  <15.710208, 24.522440, 24.491152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.722136, 24.301804, 24.584837>,  <15.742018, 23.934074, 24.740980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722136, 24.301804, 24.584837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603359, 0.339099, 0.721782,
		0.795919, -0.199650, -0.571535,
		-0.049703, 0.919321, -0.390356,
		15.707226, 24.577600, 24.467730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408398, 24.233616, 24.691284>,  <15.742018, 23.934074, 24.740980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408398, 24.233616, 24.691284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.159237, 24.546152, 24.706793>,  <16.009741, 24.733673, 24.716097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.159237, 24.546152, 24.706793>,  <16.408398, 24.233616, 24.691284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159237, 24.546152, 24.706793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500859, 0.360245, 0.786997,
		0.600945, 0.509640, -0.615738,
		-0.622901, 0.781340, 0.038770,
		15.972366, 24.780554, 24.718424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801964, 24.821306, 24.836742>,  <16.408398, 24.233616, 24.691284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801964, 24.821306, 24.836742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.434238, 24.943892, 24.935490>,  <16.213604, 25.017443, 24.994740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.434238, 24.943892, 24.935490>,  <16.801964, 24.821306, 24.836742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434238, 24.943892, 24.935490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339464, 0.300222, 0.891421,
		0.199073, 0.903297, -0.380031,
		-0.919312, 0.306465, 0.246871,
		16.158445, 25.035831, 25.009550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323946, 25.489168, 24.692575>,  <16.801964, 24.821306, 24.836742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323946, 25.489168, 24.692575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.646582, 25.255230, 24.726913>,  <17.840162, 25.114866, 24.747517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.646582, 25.255230, 24.726913>,  <17.323946, 25.489168, 24.692575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.646582, 25.255230, 24.726913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048411, -0.079380, -0.995668,
		0.589127, 0.807251, -0.035715,
		0.806589, -0.584846, 0.085845,
		17.888557, 25.079777, 24.752666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738714, 25.709696, 24.055063>,  <17.323946, 25.489168, 24.692575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738714, 25.709696, 24.055063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.888498, 25.361811, 24.183672>,  <17.978369, 25.153080, 24.260838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.888498, 25.361811, 24.183672>,  <17.738714, 25.709696, 24.055063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888498, 25.361811, 24.183672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246266, -0.241014, -0.938757,
		0.893941, 0.430709, 0.123931,
		0.374462, -0.869714, 0.321521,
		18.000837, 25.100897, 24.280128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128262, 25.543003, 23.469048>,  <17.738714, 25.709696, 24.055063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128262, 25.543003, 23.469048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.056543, 25.197016, 23.656528>,  <18.013514, 24.989424, 23.769016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.056543, 25.197016, 23.656528>,  <18.128262, 25.543003, 23.469048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056543, 25.197016, 23.656528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106522, -0.456553, -0.883296,
		0.978012, -0.208296, -0.010282,
		-0.179293, -0.864970, 0.468702,
		18.002756, 24.937525, 23.797138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574636, 25.133312, 23.203600>,  <18.128262, 25.543003, 23.469048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574636, 25.133312, 23.203600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.303698, 24.878548, 23.350868>,  <18.141134, 24.725689, 23.439228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.303698, 24.878548, 23.350868>,  <18.574636, 25.133312, 23.203600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303698, 24.878548, 23.350868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033080, -0.473582, -0.880129,
		0.734921, -0.608330, 0.299709,
		-0.677346, -0.636910, 0.368169,
		18.100494, 24.687475, 23.461319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802502, 24.411541, 23.110493>,  <18.574636, 25.133312, 23.203600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802502, 24.411541, 23.110493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.405573, 24.376003, 23.144905>,  <18.167416, 24.354681, 23.165552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.405573, 24.376003, 23.144905>,  <18.802502, 24.411541, 23.110493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405573, 24.376003, 23.144905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000370, -0.693492, -0.720464,
		0.123671, -0.714965, 0.688135,
		-0.992323, -0.088846, 0.086029,
		18.107876, 24.349350, 23.170713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767908, 23.659031, 23.067966>,  <18.802502, 24.411541, 23.110493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767908, 23.659031, 23.067966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.417742, 23.832407, 22.982386>,  <18.207642, 23.936434, 22.931038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.417742, 23.832407, 22.982386>,  <18.767908, 23.659031, 23.067966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.417742, 23.832407, 22.982386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112638, -0.613363, -0.781728,
		-0.470064, -0.660238, 0.585769,
		-0.875416, 0.433442, -0.213952,
		18.155117, 23.962440, 22.918200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339113, 23.101559, 22.818882>,  <18.767908, 23.659031, 23.067966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339113, 23.101559, 22.818882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.134937, 23.421982, 22.693819>,  <18.012432, 23.614237, 22.618782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.134937, 23.421982, 22.693819>,  <18.339113, 23.101559, 22.818882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134937, 23.421982, 22.693819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081229, -0.406883, -0.909862,
		-0.856068, -0.439033, 0.272758,
		-0.510440, 0.801060, -0.312657,
		17.981806, 23.662300, 22.600021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728981, 22.853361, 22.531300>,  <18.339113, 23.101559, 22.818882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728981, 22.853361, 22.531300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.795525, 23.214117, 22.371840>,  <17.835451, 23.430571, 22.276163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.795525, 23.214117, 22.371840>,  <17.728981, 22.853361, 22.531300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795525, 23.214117, 22.371840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012254, -0.402362, -0.915399,
		-0.985989, 0.157169, -0.055885,
		0.166358, 0.901888, -0.398651,
		17.845432, 23.484684, 22.252245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168148, 22.949352, 22.077538>,  <17.728981, 22.853361, 22.531300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.168148, 22.949352, 22.077538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.479921, 23.180592, 21.980967>,  <17.666985, 23.319334, 21.923023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.479921, 23.180592, 21.980967>,  <17.168148, 22.949352, 22.077538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479921, 23.180592, 21.980967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136417, -0.532735, -0.835215,
		-0.611453, 0.618059, -0.494094,
		0.779433, 0.578097, -0.241428,
		17.713751, 23.354021, 21.908539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121363, 22.915363, 21.397234>,  <17.168148, 22.949352, 22.077538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121363, 22.915363, 21.397234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.475893, 23.085493, 21.470470>,  <17.688612, 23.187571, 21.514412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.475893, 23.085493, 21.470470>,  <17.121363, 22.915363, 21.397234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475893, 23.085493, 21.470470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337697, -0.323163, -0.884040,
		-0.316835, 0.845378, -0.430059,
		0.886327, 0.425325, 0.183092,
		17.741791, 23.213091, 21.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213602, 23.205227, 20.834944>,  <17.121363, 22.915363, 21.397234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213602, 23.205227, 20.834944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.575525, 23.166212, 21.000742>,  <17.792679, 23.142803, 21.100222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.575525, 23.166212, 21.000742>,  <17.213602, 23.205227, 20.834944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575525, 23.166212, 21.000742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370636, -0.298840, -0.879388,
		0.209642, 0.949305, -0.234242,
		0.904809, -0.097538, 0.414496,
		17.846968, 23.136951, 21.125092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637899, 23.621059, 20.430595>,  <17.213602, 23.205227, 20.834944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637899, 23.621059, 20.430595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885725, 23.374989, 20.625612>,  <18.034420, 23.227346, 20.742622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885725, 23.374989, 20.625612>,  <17.637899, 23.621059, 20.430595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885725, 23.374989, 20.625612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412466, -0.273305, -0.869009,
		0.667843, 0.739500, 0.084411,
		0.619562, -0.615178, 0.487543,
		18.071594, 23.190435, 20.771875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333727, 23.727028, 20.206743>,  <17.637899, 23.621059, 20.430595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333727, 23.727028, 20.206743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330580, 23.353008, 20.348515>,  <18.328691, 23.128595, 20.433577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330580, 23.353008, 20.348515>,  <18.333727, 23.727028, 20.206743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330580, 23.353008, 20.348515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297927, -0.340532, -0.891783,
		0.954556, 0.098579, 0.281256,
		-0.007866, -0.935051, 0.354427,
		18.328220, 23.072493, 20.454842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933603, 23.465851, 19.899721>,  <18.333727, 23.727028, 20.206743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933603, 23.465851, 19.899721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.731005, 23.138786, 20.009188>,  <18.609446, 22.942547, 20.074867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.731005, 23.138786, 20.009188>,  <18.933603, 23.465851, 19.899721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731005, 23.138786, 20.009188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074534, -0.357720, -0.930850,
		0.859015, -0.451074, 0.242127,
		-0.506495, -0.817661, 0.273666,
		18.579056, 22.893488, 20.091288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.611568, 8.655208, 18.522537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.775399, 8.479261, 18.202847>,  <14.873698, 8.373693, 18.011032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.775399, 8.479261, 18.202847>,  <14.611568, 8.655208, 18.522537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775399, 8.479261, 18.202847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534585, -0.825628, 0.180438,
		-0.739233, 0.353351, -0.573304,
		0.409578, -0.439865, -0.799227,
		14.898273, 8.347301, 17.963078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320056, 8.261279, 17.920889>,  <14.611568, 8.655208, 18.522537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.320056, 8.261279, 17.920889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.453334, 7.982336, 17.667063>,  <14.533300, 7.814970, 17.514767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.453334, 7.982336, 17.667063>,  <14.320056, 8.261279, 17.920889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453334, 7.982336, 17.667063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823851, 0.111971, -0.555637,
		0.458531, 0.707922, -0.537211,
		0.333195, -0.697359, -0.634564,
		14.553292, 7.773129, 17.476694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239516, 9.057156, 18.041279>,  <14.320056, 8.261279, 17.920889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239516, 9.057156, 18.041279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.938355, 8.826602, 18.168350>,  <13.757659, 8.688270, 18.244593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.938355, 8.826602, 18.168350>,  <14.239516, 9.057156, 18.041279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938355, 8.826602, 18.168350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657733, 0.675792, -0.332705,
		-0.022917, -0.459441, -0.887913,
		-0.752903, -0.576385, 0.317677,
		13.712484, 8.653687, 18.263653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733130, 9.046164, 17.508461>,  <14.239516, 9.057156, 18.041279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733130, 9.046164, 17.508461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.567443, 8.977431, 17.865986>,  <13.468030, 8.936192, 18.080500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.567443, 8.977431, 17.865986>,  <13.733130, 9.046164, 17.508461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567443, 8.977431, 17.865986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644617, 0.748667, -0.154808,
		-0.642565, -0.640290, -0.420878,
		-0.414220, -0.171831, 0.893810,
		13.443177, 8.925882, 18.134129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.927454, 8.988311, 17.490978>,  <13.733130, 9.046164, 17.508461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.927454, 8.988311, 17.490978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.095776, 9.129200, 17.825371>,  <13.196769, 9.213734, 18.026007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.095776, 9.129200, 17.825371>,  <12.927454, 8.988311, 17.490978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095776, 9.129200, 17.825371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498644, 0.859645, -0.111193,
		-0.757812, -0.370066, 0.537376,
		0.420804, 0.352223, 0.835981,
		13.222016, 9.234867, 18.076164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457366, 9.253582, 17.930250>,  <12.927454, 8.988311, 17.490978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457366, 9.253582, 17.930250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.799022, 9.456697, 17.975151>,  <13.004015, 9.578565, 18.002092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.799022, 9.456697, 17.975151>,  <12.457366, 9.253582, 17.930250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.799022, 9.456697, 17.975151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449148, 0.829107, -0.332939,
		-0.262131, 0.233958, 0.936243,
		0.854139, 0.507785, 0.112253,
		13.055264, 9.609032, 18.008827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402893, 9.525414, 18.697048>,  <12.457366, 9.253582, 17.930250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402893, 9.525414, 18.697048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.674073, 9.735991, 18.902277>,  <12.836782, 9.862336, 19.025414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.674073, 9.735991, 18.902277>,  <12.402893, 9.525414, 18.697048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674073, 9.735991, 18.902277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414851, 0.850184, -0.324169,
		-0.606862, 0.006922, 0.794777,
		0.677951, 0.526441, 0.513073,
		12.877459, 9.893923, 19.056198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167021, 9.868608, 19.260405>,  <12.402893, 9.525414, 18.697048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167021, 9.868608, 19.260405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.497484, 10.085530, 19.199259>,  <12.695763, 10.215684, 19.162571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.497484, 10.085530, 19.199259>,  <12.167021, 9.868608, 19.260405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497484, 10.085530, 19.199259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559999, 0.760393, -0.328943,
		-0.062152, 0.357362, 0.931896,
		0.826158, 0.542306, -0.152863,
		12.745332, 10.248222, 19.153400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239127, 10.523810, 19.668341>,  <12.167021, 9.868608, 19.260405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239127, 10.523810, 19.668341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.415080, 10.546210, 19.309818>,  <12.520652, 10.559650, 19.094704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.415080, 10.546210, 19.309818>,  <12.239127, 10.523810, 19.668341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415080, 10.546210, 19.309818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654614, 0.703257, -0.277328,
		0.614804, 0.708727, 0.346009,
		0.439883, 0.056000, -0.896308,
		12.547045, 10.563010, 19.040926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.469814, 11.221481, 19.495329>,  <12.239127, 10.523810, 19.668341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.469814, 11.221481, 19.495329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.417416, 11.022993, 19.152027>,  <12.385977, 10.903900, 18.946045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.417416, 11.022993, 19.152027>,  <12.469814, 11.221481, 19.495329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417416, 11.022993, 19.152027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549304, 0.757008, -0.353841,
		0.825291, 0.425092, -0.371742,
		-0.130996, -0.496221, -0.858257,
		12.378117, 10.874126, 18.894550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544094, 11.638974, 18.946836>,  <12.469814, 11.221481, 19.495329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544094, 11.638974, 18.946836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.310102, 11.351392, 18.796690>,  <12.169706, 11.178843, 18.706602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.310102, 11.351392, 18.796690>,  <12.544094, 11.638974, 18.946836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310102, 11.351392, 18.796690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596162, 0.694963, -0.402018,
		0.549898, -0.011395, -0.835154,
		-0.584982, -0.718956, -0.375365,
		12.134607, 11.135705, 18.684080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434876, 11.767596, 18.208158>,  <12.544094, 11.638974, 18.946836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434876, 11.767596, 18.208158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.134624, 11.534302, 18.332344>,  <11.954472, 11.394325, 18.406855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.134624, 11.534302, 18.332344>,  <12.434876, 11.767596, 18.208158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134624, 11.534302, 18.332344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660355, 0.646602, -0.381886,
		0.021984, -0.491672, -0.870503,
		-0.750632, -0.583236, 0.310463,
		11.909434, 11.359331, 18.425484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090732, 11.724284, 17.576698>,  <12.434876, 11.767596, 18.208158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090732, 11.724284, 17.576698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.836543, 11.619393, 17.867191>,  <11.684030, 11.556458, 18.041487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.836543, 11.619393, 17.867191>,  <12.090732, 11.724284, 17.576698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836543, 11.619393, 17.867191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723252, 0.531470, -0.440962,
		-0.270338, -0.805467, -0.527391,
		-0.635472, -0.262228, 0.726231,
		11.645902, 11.540725, 18.085060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377352, 11.546416, 17.234617>,  <12.090732, 11.724284, 17.576698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377352, 11.546416, 17.234617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.275124, 11.588499, 17.619038>,  <11.213787, 11.613749, 17.849689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.275124, 11.588499, 17.619038>,  <11.377352, 11.546416, 17.234617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.275124, 11.588499, 17.619038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870418, 0.407611, -0.276090,
		-0.420781, -0.907075, -0.012598,
		-0.255569, 0.105208, 0.961049,
		11.198453, 11.620061, 17.907352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633505, 11.222383, 17.373316>,  <11.377352, 11.546416, 17.234617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633505, 11.222383, 17.373316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.738940, 11.507957, 17.632797>,  <10.802201, 11.679302, 17.788486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.738940, 11.507957, 17.632797>,  <10.633505, 11.222383, 17.373316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.738940, 11.507957, 17.632797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867005, 0.470143, -0.165127,
		-0.422874, -0.518905, 0.742910,
		0.263589, 0.713935, 0.648705,
		10.818017, 11.722137, 17.827410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.012156, 11.308595, 17.741898>,  <10.633505, 11.222383, 17.373316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.012156, 11.308595, 17.741898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.249168, 11.628386, 17.781374>,  <10.391376, 11.820262, 17.805059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.249168, 11.628386, 17.781374>,  <10.012156, 11.308595, 17.741898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.249168, 11.628386, 17.781374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779367, 0.599934, -0.180738,
		-0.203705, 0.030176, 0.978567,
		0.592530, 0.799480, 0.098691,
		10.426928, 11.868231, 17.810982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.532428, 11.807350, 18.136791>,  <10.012156, 11.308595, 17.741898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.532428, 11.807350, 18.136791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.830008, 12.029216, 17.987720>,  <10.008555, 12.162335, 17.898277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.830008, 12.029216, 17.987720>,  <9.532428, 11.807350, 18.136791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.830008, 12.029216, 17.987720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660617, 0.694445, -0.285185,
		0.100623, 0.458361, 0.883052,
		0.743948, 0.554663, -0.372678,
		10.053192, 12.195615, 17.875917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.411800, 12.442748, 18.470640>,  <9.532428, 11.807350, 18.136791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.411800, 12.442748, 18.470640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.623840, 12.473440, 18.132858>,  <9.751064, 12.491856, 17.930189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.623840, 12.473440, 18.132858>,  <9.411800, 12.442748, 18.470640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.623840, 12.473440, 18.132858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700423, 0.600931, -0.385084,
		0.477912, 0.795610, 0.372297,
		0.530101, 0.076729, -0.844456,
		9.782870, 12.496459, 17.879522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.430039, 13.153476, 18.238087>,  <9.411800, 12.442748, 18.470640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.430039, 13.153476, 18.238087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.508488, 12.952468, 17.901276>,  <9.555556, 12.831863, 17.699188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.508488, 12.952468, 17.901276>,  <9.430039, 13.153476, 18.238087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508488, 12.952468, 17.901276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617989, 0.603365, -0.504024,
		0.761332, 0.619214, -0.192219,
		0.196120, -0.502519, -0.842028,
		9.567324, 12.801712, 17.648666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504122, 13.710175, 17.738344>,  <9.430039, 13.153476, 18.238087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504122, 13.710175, 17.738344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443636, 13.389742, 17.506689>,  <9.407345, 13.197482, 17.367697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443636, 13.389742, 17.506689>,  <9.504122, 13.710175, 17.738344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443636, 13.389742, 17.506689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578651, 0.546738, -0.605178,
		0.801435, 0.243607, -0.546222,
		-0.151214, -0.801082, -0.579139,
		9.398272, 13.149417, 17.332947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.248687, 14.040375, 17.253851>,  <9.504122, 13.710175, 17.738344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.248687, 14.040375, 17.253851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.183932, 13.676095, 17.101841>,  <9.145080, 13.457527, 17.010635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.183932, 13.676095, 17.101841>,  <9.248687, 14.040375, 17.253851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.183932, 13.676095, 17.101841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724330, 0.371199, -0.580997,
		0.670178, 0.181207, -0.719739,
		-0.161886, -0.910700, -0.380023,
		9.135366, 13.402884, 16.987835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402438, 13.964065, 16.467781>,  <9.248687, 14.040375, 17.253851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402438, 13.964065, 16.467781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.120091, 13.694380, 16.554676>,  <8.950684, 13.532569, 16.606813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.120091, 13.694380, 16.554676>,  <9.402438, 13.964065, 16.467781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.120091, 13.694380, 16.554676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621471, 0.442296, -0.646643,
		0.339893, -0.591448, -0.731205,
		-0.705865, -0.674213, 0.217235,
		8.908332, 13.492116, 16.619846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058536, 13.793322, 15.839146>,  <9.402438, 13.964065, 16.467781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058536, 13.793322, 15.839146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.787327, 13.639303, 16.089594>,  <8.624601, 13.546892, 16.239862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.787327, 13.639303, 16.089594>,  <9.058536, 13.793322, 15.839146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.787327, 13.639303, 16.089594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730272, 0.449757, -0.514220,
		-0.083604, -0.805890, -0.586133,
		-0.678022, -0.385045, 0.626120,
		8.583920, 13.523789, 16.277430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.467079, 13.588615, 15.478569>,  <9.058536, 13.793322, 15.839146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.467079, 13.588615, 15.478569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.307790, 13.600301, 15.845299>,  <8.212216, 13.607312, 16.065336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.307790, 13.600301, 15.845299>,  <8.467079, 13.588615, 15.478569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.307790, 13.600301, 15.845299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889748, 0.230777, -0.393816,
		-0.223087, -0.972568, -0.065906,
		-0.398222, 0.029215, 0.916823,
		8.188323, 13.609065, 16.120346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.802804, 13.320899, 15.376223>,  <8.467079, 13.588615, 15.478569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.802804, 13.320899, 15.376223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.779608, 13.534496, 15.713622>,  <7.765691, 13.662655, 15.916061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.779608, 13.534496, 15.713622>,  <7.802804, 13.320899, 15.376223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.779608, 13.534496, 15.713622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777699, 0.505611, -0.373553,
		-0.625956, -0.677650, 0.385965,
		-0.057990, 0.533992, 0.843498,
		7.762211, 13.694694, 15.966672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.025116, 13.308239, 15.645490>,  <7.802804, 13.320899, 15.376223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.025116, 13.308239, 15.645490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.239101, 13.630996, 15.745680>,  <7.367493, 13.824650, 15.805794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.239101, 13.630996, 15.745680>,  <7.025116, 13.308239, 15.645490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.239101, 13.630996, 15.745680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709347, 0.590004, -0.385645,
		-0.458955, 0.028633, 0.887998,
		0.534964, 0.806893, 0.250475,
		7.399590, 13.873064, 15.820822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.600715, 13.739410, 15.925155>,  <7.025116, 13.308239, 15.645490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.600715, 13.739410, 15.925155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.892900, 14.007739, 15.873898>,  <7.068211, 14.168736, 15.843143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.892900, 14.007739, 15.873898>,  <6.600715, 13.739410, 15.925155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.892900, 14.007739, 15.873898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675926, 0.683263, -0.276181,
		-0.097714, 0.288355, 0.952525,
		0.730463, 0.670823, -0.128142,
		7.112039, 14.208986, 15.835455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.430381, 14.387906, 16.286270>,  <6.600715, 13.739410, 15.925155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.430381, 14.387906, 16.286270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.664903, 14.480096, 15.975625>,  <6.805616, 14.535410, 15.789238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.664903, 14.480096, 15.975625>,  <6.430381, 14.387906, 16.286270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.664903, 14.480096, 15.975625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647600, 0.709298, -0.278408,
		0.486684, 0.666167, 0.565120,
		0.586304, 0.230475, -0.776613,
		6.840795, 14.549238, 15.742641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.259743, 15.032032, 16.126646>,  <6.430381, 14.387906, 16.286270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.259743, 15.032032, 16.126646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469806, 14.965470, 15.792814>,  <6.595843, 14.925533, 15.592516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469806, 14.965470, 15.792814>,  <6.259743, 15.032032, 16.126646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.469806, 14.965470, 15.792814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549953, 0.682043, -0.482047,
		0.649432, 0.712129, 0.266665,
		0.525156, -0.166404, -0.834578,
		6.627353, 14.915549, 15.542440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394995, 15.712917, 15.866082>,  <6.259743, 15.032032, 16.126646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394995, 15.712917, 15.866082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.393908, 15.442032, 15.571770>,  <6.393256, 15.279501, 15.395182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.393908, 15.442032, 15.571770>,  <6.394995, 15.712917, 15.866082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.393908, 15.442032, 15.571770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536770, 0.621789, -0.570312,
		0.843724, 0.393396, -0.365197,
		-0.002717, -0.677213, -0.735782,
		6.393093, 15.238868, 15.351035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.365060, 16.102747, 15.218210>,  <6.394995, 15.712917, 15.866082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.365060, 16.102747, 15.218210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.239624, 15.740891, 15.102772>,  <6.164362, 15.523778, 15.033508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.239624, 15.740891, 15.102772>,  <6.365060, 16.102747, 15.218210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.239624, 15.740891, 15.102772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624050, 0.425418, -0.655424,
		0.715697, -0.025436, -0.697948,
		-0.313591, -0.904639, -0.288597,
		6.145547, 15.469500, 15.016192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.593894, 16.435364, 15.844040>,  <6.365060, 16.102747, 15.218210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.593894, 16.435364, 15.844040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.772936, 16.785433, 15.917495>,  <6.880362, 16.995474, 15.961568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.772936, 16.785433, 15.917495>,  <6.593894, 16.435364, 15.844040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.772936, 16.785433, 15.917495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892093, -0.451211, -0.024052,
		0.061809, 0.174588, -0.982700,
		0.447604, 0.875173, 0.183638,
		6.907218, 17.047985, 15.972586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.071143, 16.581631, 15.307610>,  <6.593894, 16.435364, 15.844040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.071143, 16.581631, 15.307610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.209047, 16.789141, 15.620535>,  <7.291790, 16.913647, 15.808290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.209047, 16.789141, 15.620535>,  <7.071143, 16.581631, 15.307610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.209047, 16.789141, 15.620535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921802, -0.344486, -0.177794,
		0.177261, 0.782434, -0.596972,
		0.344760, 0.518774, 0.782313,
		7.312476, 16.944773, 15.855228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.700110, 16.782593, 15.183530>,  <7.071143, 16.581631, 15.307610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.700110, 16.782593, 15.183530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.722967, 16.853949, 15.576449>,  <7.736681, 16.896763, 15.812201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.722967, 16.853949, 15.576449>,  <7.700110, 16.782593, 15.183530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.722967, 16.853949, 15.576449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991880, -0.122116, -0.035522,
		0.113617, 0.976352, -0.183921,
		0.057142, 0.178392, 0.982299,
		7.740109, 16.907467, 15.871140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.206524, 17.294674, 15.251009>,  <7.700110, 16.782593, 15.183530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.206524, 17.294674, 15.251009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.157390, 17.105154, 15.599819>,  <8.127910, 16.991442, 15.809105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.157390, 17.105154, 15.599819>,  <8.206524, 17.294674, 15.251009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.157390, 17.105154, 15.599819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990323, -0.115705, 0.076632,
		0.064590, 0.872999, 0.483426,
		-0.122835, -0.473798, 0.872025,
		8.120540, 16.963015, 15.861426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.688581, 17.657957, 15.762569>,  <8.206524, 17.294674, 15.251009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.688581, 17.657957, 15.762569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.613031, 17.284239, 15.883511>,  <8.567701, 17.060007, 15.956075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.613031, 17.284239, 15.883511>,  <8.688581, 17.657957, 15.762569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.613031, 17.284239, 15.883511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976163, -0.145109, 0.161400,
		-0.106921, 0.325630, 0.939432,
		-0.188876, -0.934296, 0.302352,
		8.556369, 17.003950, 15.974216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.132051, 17.587343, 16.404524>,  <8.688581, 17.657957, 15.762569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.132051, 17.587343, 16.404524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.049523, 17.211704, 16.294596>,  <9.000006, 16.986320, 16.228640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.049523, 17.211704, 16.294596>,  <9.132051, 17.587343, 16.404524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.049523, 17.211704, 16.294596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949282, -0.260211, 0.176503,
		-0.237265, -0.224466, 0.945156,
		-0.206322, -0.939098, -0.274821,
		8.987627, 16.929976, 16.212149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357667, 17.223448, 16.938627>,  <9.132051, 17.587343, 16.404524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357667, 17.223448, 16.938627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.337356, 16.955639, 16.642206>,  <9.325169, 16.794954, 16.464354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.337356, 16.955639, 16.642206>,  <9.357667, 17.223448, 16.938627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337356, 16.955639, 16.642206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856562, -0.410740, 0.312400,
		-0.513539, -0.618896, 0.594344,
		-0.050777, -0.669522, -0.741054,
		9.322123, 16.754782, 16.419889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.642654, 16.693869, 17.171965>,  <9.357667, 17.223448, 16.938627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.642654, 16.693869, 17.171965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.605656, 16.565878, 16.794806>,  <9.583456, 16.489084, 16.568510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.605656, 16.565878, 16.794806>,  <9.642654, 16.693869, 17.171965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.605656, 16.565878, 16.794806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823493, -0.556912, 0.108205,
		-0.559735, -0.766463, 0.315010,
		-0.092498, -0.319975, -0.942900,
		9.577907, 16.469885, 16.511936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.500118, 15.958204, 17.136278>,  <9.642654, 16.693869, 17.171965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.500118, 15.958204, 17.136278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.689672, 16.052572, 16.796919>,  <9.803404, 16.109194, 16.593304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.689672, 16.052572, 16.796919>,  <9.500118, 15.958204, 17.136278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.689672, 16.052572, 16.796919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726573, -0.649086, 0.225341,
		-0.497519, -0.723208, -0.479004,
		0.473884, 0.235920, -0.848396,
		9.831837, 16.123348, 16.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701380, 15.326384, 16.835077>,  <9.500118, 15.958204, 17.136278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701380, 15.326384, 16.835077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.941747, 15.609902, 16.687292>,  <10.085967, 15.780014, 16.598621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.941747, 15.609902, 16.687292>,  <9.701380, 15.326384, 16.835077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.941747, 15.609902, 16.687292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798416, -0.510416, 0.319385,
		0.037799, -0.486910, -0.872634,
		0.600918, 0.708797, -0.369464,
		10.122023, 15.822541, 16.576452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113691, 14.951517, 16.322645>,  <9.701380, 15.326384, 16.835077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.113691, 14.951517, 16.322645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.303159, 15.290516, 16.418468>,  <10.416839, 15.493916, 16.475962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.303159, 15.290516, 16.418468>,  <10.113691, 14.951517, 16.322645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.303159, 15.290516, 16.418468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865082, -0.498727, 0.053884,
		0.165140, 0.181713, -0.969386,
		0.473668, 0.847497, 0.239556,
		10.445259, 15.544765, 16.490335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792074, 14.862014, 16.063011>,  <10.113691, 14.951517, 16.322645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792074, 14.862014, 16.063011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.851345, 15.163743, 16.318836>,  <10.886908, 15.344781, 16.472332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.851345, 15.163743, 16.318836>,  <10.792074, 14.862014, 16.063011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.851345, 15.163743, 16.318836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862754, -0.414718, 0.289247,
		0.483424, 0.508925, -0.712247,
		0.148177, 0.754323, 0.639562,
		10.895799, 15.390040, 16.510704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.440228, 15.029410, 16.049231>,  <10.792074, 14.862014, 16.063011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.440228, 15.029410, 16.049231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.324400, 15.156870, 16.410254>,  <11.254903, 15.233346, 16.626867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.324400, 15.156870, 16.410254>,  <11.440228, 15.029410, 16.049231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324400, 15.156870, 16.410254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781406, -0.465868, 0.415177,
		0.552768, 0.825488, -0.114092,
		-0.289572, 0.318649, 0.902558,
		11.237528, 15.252464, 16.681021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089923, 15.040181, 16.503313>,  <11.440228, 15.029410, 16.049231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089923, 15.040181, 16.503313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.779194, 15.033564, 16.755114>,  <11.592756, 15.029593, 16.906195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.779194, 15.033564, 16.755114>,  <12.089923, 15.040181, 16.503313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.779194, 15.033564, 16.755114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585987, -0.385020, 0.713007,
		0.230575, 0.922760, 0.308787,
		-0.776823, -0.016543, 0.629501,
		11.546147, 15.028601, 16.943964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422317, 15.219275, 17.142281>,  <12.089923, 15.040181, 16.503313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422317, 15.219275, 17.142281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.075761, 15.041343, 17.233049>,  <11.867827, 14.934584, 17.287512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.075761, 15.041343, 17.233049>,  <12.422317, 15.219275, 17.142281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075761, 15.041343, 17.233049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459031, -0.530506, 0.712639,
		-0.196619, 0.721588, 0.663816,
		-0.866390, -0.444830, 0.226923,
		11.815844, 14.907893, 17.301126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305185, 15.215734, 17.891079>,  <12.422317, 15.219275, 17.142281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305185, 15.215734, 17.891079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.077610, 14.915711, 17.756186>,  <11.941065, 14.735698, 17.675249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.077610, 14.915711, 17.756186>,  <12.305185, 15.215734, 17.891079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.077610, 14.915711, 17.756186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365077, -0.597802, 0.713688,
		-0.736905, 0.282928, 0.613940,
		-0.568938, -0.750056, -0.337233,
		11.906929, 14.690695, 17.655016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.935721, 14.989906, 18.477924>,  <12.305185, 15.215734, 17.891079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.935721, 14.989906, 18.477924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.931599, 14.680223, 18.224785>,  <11.929125, 14.494412, 18.072901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.931599, 14.680223, 18.224785>,  <11.935721, 14.989906, 18.477924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931599, 14.680223, 18.224785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472823, -0.561432, 0.679141,
		-0.881097, -0.292225, 0.371850,
		-0.010307, -0.774208, -0.632847,
		11.928507, 14.447960, 18.034931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683597, 14.413409, 18.833935>,  <11.935721, 14.989906, 18.477924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683597, 14.413409, 18.833935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.871938, 14.234018, 18.530048>,  <11.984942, 14.126384, 18.347717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.871938, 14.234018, 18.530048>,  <11.683597, 14.413409, 18.833935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.871938, 14.234018, 18.530048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255955, -0.754661, 0.604130,
		-0.844266, -0.478910, -0.240544,
		0.470853, -0.448478, -0.759714,
		12.013193, 14.099475, 18.302134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538544, 13.760987, 19.042412>,  <11.683597, 14.413409, 18.833935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538544, 13.760987, 19.042412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.853616, 13.773205, 18.796282>,  <12.042659, 13.780536, 18.648603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.853616, 13.773205, 18.796282>,  <11.538544, 13.760987, 19.042412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853616, 13.773205, 18.796282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441915, -0.723922, 0.529762,
		-0.429266, -0.689205, -0.583718,
		0.787681, 0.030545, -0.615325,
		12.089920, 13.782368, 18.611685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647755, 13.036790, 19.013000>,  <11.538544, 13.760987, 19.042412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647755, 13.036790, 19.013000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.982636, 13.229016, 18.908581>,  <12.183565, 13.344352, 18.845930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.982636, 13.229016, 18.908581>,  <11.647755, 13.036790, 19.013000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.982636, 13.229016, 18.908581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542887, -0.672632, 0.502833,
		0.066055, -0.562693, -0.824022,
		0.837204, 0.480565, -0.261048,
		12.233798, 13.373186, 18.830267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102484, 12.569179, 18.706902>,  <11.647755, 13.036790, 19.013000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102484, 12.569179, 18.706902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.357309, 12.859290, 18.811300>,  <12.510204, 13.033357, 18.873940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.357309, 12.859290, 18.811300>,  <12.102484, 12.569179, 18.706902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357309, 12.859290, 18.811300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624200, -0.684080, 0.377370,
		0.452243, -0.077494, -0.888522,
		0.637064, 0.725279, 0.260999,
		12.548429, 13.076874, 18.889601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.488022, 20.948915, 26.009876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.155634, 20.788246, 26.163836>,  <18.956202, 20.691845, 26.256210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.155634, 20.788246, 26.163836>,  <19.488022, 20.948915, 26.009876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155634, 20.788246, 26.163836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253851, 0.341864, 0.904814,
		-0.495024, 0.849580, -0.182113,
		-0.830970, -0.401675, 0.384898,
		18.906343, 20.667744, 26.279305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350960, 21.402534, 26.524467>,  <19.488022, 20.948915, 26.009876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350960, 21.402534, 26.524467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.117794, 21.096905, 26.635029>,  <18.977894, 20.913527, 26.701366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.117794, 21.096905, 26.635029>,  <19.350960, 21.402534, 26.524467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117794, 21.096905, 26.635029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015748, 0.329487, 0.944029,
		-0.812381, 0.554641, -0.180030,
		-0.582915, -0.764076, 0.276404,
		18.942919, 20.867682, 26.717951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622431, 21.644094, 26.803032>,  <19.350960, 21.402534, 26.524467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622431, 21.644094, 26.803032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.704914, 21.285877, 26.960758>,  <18.754404, 21.070948, 27.055393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.704914, 21.285877, 26.960758>,  <18.622431, 21.644094, 26.803032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704914, 21.285877, 26.960758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033427, 0.396293, 0.917515,
		-0.977937, -0.202379, 0.051783,
		0.206207, -0.895541, 0.394314,
		18.766777, 21.017214, 27.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122448, 21.536215, 27.177856>,  <18.622431, 21.644094, 26.803032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122448, 21.536215, 27.177856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.406349, 21.295946, 27.325066>,  <18.576691, 21.151785, 27.413391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.406349, 21.295946, 27.325066>,  <18.122448, 21.536215, 27.177856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406349, 21.295946, 27.325066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022693, 0.502660, 0.864186,
		-0.704083, -0.621712, 0.343135,
		0.709755, -0.600672, 0.368023,
		18.619276, 21.115744, 27.435472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939362, 21.557003, 27.882008>,  <18.122448, 21.536215, 27.177856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939362, 21.557003, 27.882008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.312151, 21.412109, 27.876146>,  <18.535824, 21.325172, 27.872629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.312151, 21.412109, 27.876146>,  <17.939362, 21.557003, 27.882008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312151, 21.412109, 27.876146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192061, 0.459056, 0.867399,
		-0.307475, -0.811206, 0.497398,
		0.931972, -0.362234, -0.014653,
		18.591743, 21.303440, 27.871750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008999, 21.318460, 28.524361>,  <17.939362, 21.557003, 27.882008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.008999, 21.318460, 28.524361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.390030, 21.363207, 28.411163>,  <18.618649, 21.390055, 28.343245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.390030, 21.363207, 28.411163>,  <18.008999, 21.318460, 28.524361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390030, 21.363207, 28.411163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207912, 0.439802, 0.873697,
		0.222196, -0.891101, 0.395687,
		0.952576, 0.111864, -0.282993,
		18.675802, 21.396767, 28.326265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485865, 21.122234, 29.125414>,  <18.008999, 21.318460, 28.524361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485865, 21.122234, 29.125414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.713232, 21.362549, 28.900572>,  <18.849651, 21.506737, 28.765667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.713232, 21.362549, 28.900572>,  <18.485865, 21.122234, 29.125414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713232, 21.362549, 28.900572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323574, 0.464910, 0.824111,
		0.756441, -0.650320, 0.069864,
		0.568416, 0.600785, -0.562104,
		18.883757, 21.542784, 28.731941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121307, 21.157307, 29.561304>,  <18.485865, 21.122234, 29.125414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121307, 21.157307, 29.561304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137779, 21.468637, 29.310701>,  <19.147663, 21.655436, 29.160339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.137779, 21.468637, 29.310701>,  <19.121307, 21.157307, 29.561304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137779, 21.468637, 29.310701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440594, 0.548637, 0.710546,
		0.896762, -0.305297, -0.320332,
		0.041182, 0.778326, -0.626508,
		19.150133, 21.702135, 29.122749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726049, 21.397257, 29.500681>,  <19.121307, 21.157307, 29.561304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.726049, 21.397257, 29.500681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.567699, 21.730404, 29.345961>,  <19.472689, 21.930292, 29.253128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.567699, 21.730404, 29.345961>,  <19.726049, 21.397257, 29.500681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567699, 21.730404, 29.345961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516153, 0.550190, 0.656412,
		0.759519, 0.060209, -0.647693,
		-0.395876, 0.832866, -0.386803,
		19.448936, 21.980263, 29.229919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314587, 21.901863, 29.387024>,  <19.726049, 21.397257, 29.500681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314587, 21.901863, 29.387024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.979870, 22.120028, 29.406229>,  <19.779039, 22.250927, 29.417753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.979870, 22.120028, 29.406229>,  <20.314587, 21.901863, 29.387024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979870, 22.120028, 29.406229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421834, 0.586312, 0.691588,
		0.349049, 0.598969, -0.720694,
		-0.836792, 0.545412, 0.048014,
		19.728832, 22.283651, 29.420633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545124, 22.562288, 29.426142>,  <20.314587, 21.901863, 29.387024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545124, 22.562288, 29.426142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.173948, 22.551071, 29.574814>,  <19.951242, 22.544342, 29.664017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.173948, 22.551071, 29.574814>,  <20.545124, 22.562288, 29.426142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173948, 22.551071, 29.574814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328633, 0.408967, 0.851320,
		-0.175877, 0.912118, -0.370280,
		-0.927937, -0.028042, 0.371680,
		19.895567, 22.542658, 29.686317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440571, 23.188406, 29.728539>,  <20.545124, 22.562288, 29.426142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440571, 23.188406, 29.728539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.154173, 22.973484, 29.906822>,  <19.982334, 22.844530, 30.013792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.154173, 22.973484, 29.906822>,  <20.440571, 23.188406, 29.728539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154173, 22.973484, 29.906822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204486, 0.449030, 0.869803,
		-0.667487, 0.713914, -0.211631,
		-0.715994, -0.537306, 0.445707,
		19.939375, 22.812292, 30.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.210255, 23.582533, 30.176302>,  <20.440571, 23.188406, 29.728539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.210255, 23.582533, 30.176302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.099276, 23.228643, 30.326122>,  <20.032688, 23.016310, 30.416014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.099276, 23.228643, 30.326122>,  <20.210255, 23.582533, 30.176302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099276, 23.228643, 30.326122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153357, 0.344074, 0.926334,
		-0.948423, 0.314448, 0.040216,
		-0.277446, -0.884724, 0.374550,
		20.016041, 22.963226, 30.438488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356745, 24.168718, 30.389557>,  <20.210255, 23.582533, 30.176302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356745, 24.168718, 30.389557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.634077, 23.881172, 30.409655>,  <20.800476, 23.708645, 30.421713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.634077, 23.881172, 30.409655>,  <20.356745, 24.168718, 30.389557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.634077, 23.881172, 30.409655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040102, -0.108102, -0.993331,
		0.719503, 0.686691, -0.103778,
		0.693330, -0.718867, 0.050242,
		20.842075, 23.665512, 30.424726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788963, 24.283649, 29.862473>,  <20.356745, 24.168718, 30.389557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788963, 24.283649, 29.862473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.833548, 24.658262, 29.995428>,  <19.860298, 24.883030, 30.075201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.833548, 24.658262, 29.995428>,  <19.788963, 24.283649, 29.862473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.833548, 24.658262, 29.995428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309954, 0.350551, -0.883766,
		-0.944196, -0.004522, 0.329354,
		0.111459, 0.936533, 0.332391,
		19.866985, 24.939222, 30.095146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025850, 24.617199, 29.900833>,  <19.788963, 24.283649, 29.862473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025850, 24.617199, 29.900833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.314009, 24.891590, 29.859909>,  <19.486904, 25.056225, 29.835356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.314009, 24.891590, 29.859909>,  <19.025850, 24.617199, 29.900833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314009, 24.891590, 29.859909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291163, 0.165235, -0.942296,
		-0.629488, 0.708614, 0.318765,
		0.720395, 0.685976, -0.102308,
		19.530127, 25.097383, 29.829216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651316, 25.192188, 29.661135>,  <19.025850, 24.617199, 29.900833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651316, 25.192188, 29.661135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.026836, 25.312065, 29.593212>,  <19.252150, 25.383991, 29.552458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.026836, 25.312065, 29.593212>,  <18.651316, 25.192188, 29.661135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026836, 25.312065, 29.593212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251859, 0.260932, -0.931924,
		-0.234983, 0.917660, 0.320444,
		0.938803, 0.299693, -0.169806,
		19.308477, 25.401974, 29.542271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593052, 25.861603, 29.372438>,  <18.651316, 25.192188, 29.661135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593052, 25.861603, 29.372438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.943480, 25.712057, 29.250633>,  <19.153736, 25.622330, 29.177549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.943480, 25.712057, 29.250633>,  <18.593052, 25.861603, 29.372438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.943480, 25.712057, 29.250633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191346, 0.310125, -0.931241,
		0.442597, 0.874098, 0.200152,
		0.876068, -0.373866, -0.304515,
		19.206301, 25.599897, 29.159279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879118, 26.332577, 28.851183>,  <18.593052, 25.861603, 29.372438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879118, 26.332577, 28.851183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.071644, 25.987999, 28.786373>,  <19.187159, 25.781252, 28.747488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.071644, 25.987999, 28.786373>,  <18.879118, 26.332577, 28.851183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071644, 25.987999, 28.786373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033236, 0.166775, -0.985435,
		0.875919, 0.479688, 0.051640,
		0.481313, -0.861444, -0.162024,
		19.216038, 25.729567, 28.737766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309515, 26.502876, 28.331263>,  <18.879118, 26.332577, 28.851183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309515, 26.502876, 28.331263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.258244, 26.106415, 28.345049>,  <19.227480, 25.868538, 28.353321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.258244, 26.106415, 28.345049>,  <19.309515, 26.502876, 28.331263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258244, 26.106415, 28.345049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121039, -0.018859, -0.992469,
		0.984337, -0.131385, -0.117551,
		-0.128178, -0.991152, 0.034466,
		19.219790, 25.809069, 28.355389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.697865, 26.292902, 27.754128>,  <19.309515, 26.502876, 28.331263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.697865, 26.292902, 27.754128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489824, 25.958103, 27.822170>,  <19.365000, 25.757225, 27.862997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489824, 25.958103, 27.822170>,  <19.697865, 26.292902, 27.754128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489824, 25.958103, 27.822170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135602, -0.115720, -0.983982,
		0.843273, -0.534834, -0.053313,
		-0.520098, -0.836995, 0.170108,
		19.333796, 25.707005, 27.873203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946468, 25.761913, 27.335150>,  <19.697865, 26.292902, 27.754128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946468, 25.761913, 27.335150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.581514, 25.622114, 27.420383>,  <19.362541, 25.538235, 27.471523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.581514, 25.622114, 27.420383>,  <19.946468, 25.761913, 27.335150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581514, 25.622114, 27.420383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152441, -0.192996, -0.969285,
		0.379888, -0.916844, 0.122809,
		-0.912385, -0.349498, 0.213082,
		19.307798, 25.517265, 27.484308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838011, 25.138397, 26.858652>,  <19.946468, 25.761913, 27.335150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838011, 25.138397, 26.858652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.465185, 25.247076, 26.954519>,  <19.241489, 25.312283, 27.012039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.465185, 25.247076, 26.954519>,  <19.838011, 25.138397, 26.858652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465185, 25.247076, 26.954519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301814, -0.216338, -0.928497,
		-0.200415, -0.937753, 0.283641,
		-0.932063, 0.271691, 0.239669,
		19.185566, 25.328585, 27.026419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436922, 24.689770, 26.561771>,  <19.838011, 25.138397, 26.858652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.436922, 24.689770, 26.561771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.189529, 24.996824, 26.628963>,  <19.041094, 25.181057, 26.669279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.189529, 24.996824, 26.628963>,  <19.436922, 24.689770, 26.561771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189529, 24.996824, 26.628963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527365, -0.247003, -0.812943,
		-0.582553, -0.591375, 0.557591,
		-0.618481, 0.767636, 0.167978,
		19.003984, 25.227116, 26.679358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796980, 24.383945, 26.546509>,  <19.436922, 24.689770, 26.561771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796980, 24.383945, 26.546509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.760654, 24.769590, 26.446720>,  <18.738859, 25.000978, 26.386847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.760654, 24.769590, 26.446720>,  <18.796980, 24.383945, 26.546509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.760654, 24.769590, 26.446720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514234, -0.259925, -0.817314,
		-0.852829, 0.054064, 0.519385,
		-0.090814, 0.964114, -0.249473,
		18.733410, 25.058825, 26.371878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179039, 24.317987, 26.267038>,  <18.796980, 24.383945, 26.546509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179039, 24.317987, 26.267038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.322609, 24.672256, 26.149221>,  <18.408751, 24.884817, 26.078531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.322609, 24.672256, 26.149221>,  <18.179039, 24.317987, 26.267038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322609, 24.672256, 26.149221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484739, -0.092795, -0.869722,
		-0.797622, 0.454942, 0.396014,
		0.358926, 0.885673, -0.294543,
		18.430286, 24.937958, 26.060858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703621, 24.541988, 25.889431>,  <18.179039, 24.317987, 26.267038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703621, 24.541988, 25.889431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.992329, 24.781786, 25.751064>,  <18.165552, 24.925665, 25.668045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.992329, 24.781786, 25.751064>,  <17.703621, 24.541988, 25.889431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992329, 24.781786, 25.751064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393527, -0.055688, -0.917625,
		-0.569375, 0.798439, 0.195724,
		0.721767, 0.599496, -0.345915,
		18.208858, 24.961636, 25.647289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362804, 25.053120, 25.345036>,  <17.703621, 24.541988, 25.889431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362804, 25.053120, 25.345036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.759314, 25.042999, 25.293283>,  <17.997219, 25.036928, 25.262232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.759314, 25.042999, 25.293283>,  <17.362804, 25.053120, 25.345036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759314, 25.042999, 25.293283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127099, 0.077131, -0.988887,
		0.034997, 0.996700, 0.073243,
		0.991273, -0.025299, -0.129379,
		18.056696, 25.035410, 25.254471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838240, 25.406406, 25.222614>,  <17.362804, 25.053120, 25.345036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838240, 25.406406, 25.222614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.467102, 25.280689, 25.302938>,  <16.244419, 25.205259, 25.351133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.467102, 25.280689, 25.302938>,  <16.838240, 25.406406, 25.222614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467102, 25.280689, 25.302938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091961, 0.329004, 0.939840,
		-0.361452, 0.890492, -0.276362,
		-0.927845, -0.314293, 0.200809,
		16.188749, 25.186401, 25.363182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650295, 25.912165, 25.582146>,  <16.838240, 25.406406, 25.222614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650295, 25.912165, 25.582146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.398932, 25.613155, 25.668226>,  <16.248114, 25.433750, 25.719875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.398932, 25.613155, 25.668226>,  <16.650295, 25.912165, 25.582146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.398932, 25.613155, 25.668226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025718, 0.256534, 0.966193,
		-0.777459, 0.612698, -0.141983,
		-0.628408, -0.747524, 0.215202,
		16.210409, 25.388899, 25.732786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175381, 26.217686, 26.041626>,  <16.650295, 25.912165, 25.582146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175381, 26.217686, 26.041626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.172794, 25.821796, 26.098759>,  <16.171242, 25.584263, 26.133039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.172794, 25.821796, 26.098759>,  <16.175381, 26.217686, 26.041626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.172794, 25.821796, 26.098759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063284, 0.142145, 0.987821,
		-0.997975, 0.015426, 0.061714,
		-0.006466, -0.989725, 0.142834,
		16.170855, 25.524879, 26.141609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597296, 26.141272, 26.471100>,  <16.175381, 26.217686, 26.041626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597296, 26.141272, 26.471100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.822003, 25.812731, 26.510695>,  <15.956827, 25.615606, 26.534451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.822003, 25.812731, 26.510695>,  <15.597296, 26.141272, 26.471100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822003, 25.812731, 26.510695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153704, 0.013946, 0.988018,
		-0.812891, -0.570251, -0.118411,
		0.561767, -0.821352, 0.098987,
		15.990534, 25.566326, 26.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337547, 25.902632, 27.023256>,  <15.597296, 26.141272, 26.471100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337547, 25.902632, 27.023256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.675010, 25.687971, 27.029594>,  <15.877487, 25.559175, 27.033398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.675010, 25.687971, 27.029594>,  <15.337547, 25.902632, 27.023256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675010, 25.687971, 27.029594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133009, 0.237507, 0.962236,
		-0.520148, -0.809689, 0.271753,
		0.843655, -0.536651, 0.015843,
		15.928106, 25.526976, 27.034348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310762, 25.358913, 27.582390>,  <15.337547, 25.902632, 27.023256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310762, 25.358913, 27.582390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.692438, 25.458899, 27.516613>,  <15.921444, 25.518888, 27.477146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.692438, 25.458899, 27.516613>,  <15.310762, 25.358913, 27.582390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692438, 25.458899, 27.516613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082484, 0.308547, 0.947626,
		0.287596, -0.917782, 0.273797,
		0.954193, 0.249949, -0.164439,
		15.978695, 25.533886, 27.467279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679361, 25.160904, 28.154091>,  <15.310762, 25.358913, 27.582390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679361, 25.160904, 28.154091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.935020, 25.428888, 28.003017>,  <16.088415, 25.589680, 27.912374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.935020, 25.428888, 28.003017>,  <15.679361, 25.160904, 28.154091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935020, 25.428888, 28.003017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153368, 0.370187, 0.916210,
		0.753637, -0.643518, 0.133853,
		0.639148, 0.669961, -0.377682,
		16.126764, 25.629877, 27.889713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859232, 24.492409, 28.428465>,  <15.679361, 25.160904, 28.154091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859232, 24.492409, 28.428465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.494329, 24.482981, 28.592041>,  <15.275388, 24.477324, 28.690187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.494329, 24.482981, 28.592041>,  <15.859232, 24.492409, 28.428465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494329, 24.482981, 28.592041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382078, -0.310921, -0.870255,
		0.147661, -0.950143, 0.274634,
		-0.912256, -0.023571, 0.408940,
		15.220653, 24.475910, 28.714724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602118, 23.916315, 28.107691>,  <15.859232, 24.492409, 28.428465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602118, 23.916315, 28.107691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.274848, 24.094770, 28.252768>,  <15.078485, 24.201843, 28.339813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.274848, 24.094770, 28.252768>,  <15.602118, 23.916315, 28.107691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274848, 24.094770, 28.252768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520920, -0.308176, -0.796034,
		-0.243370, -0.840230, 0.484546,
		-0.818177, 0.446141, 0.362691,
		15.029395, 24.228613, 28.361576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015964, 23.373184, 28.106104>,  <15.602118, 23.916315, 28.107691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015964, 23.373184, 28.106104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.870698, 23.745829, 28.100286>,  <14.783539, 23.969416, 28.096796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.870698, 23.745829, 28.100286>,  <15.015964, 23.373184, 28.106104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870698, 23.745829, 28.100286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581544, -0.238841, -0.777664,
		-0.727955, -0.273962, 0.628511,
		-0.363165, 0.931612, -0.014545,
		14.761748, 24.025312, 28.095922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335203, 23.253088, 27.962366>,  <15.015964, 23.373184, 28.106104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335203, 23.253088, 27.962366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.402697, 23.634869, 27.863935>,  <14.443192, 23.863937, 27.804876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.402697, 23.634869, 27.863935>,  <14.335203, 23.253088, 27.962366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402697, 23.634869, 27.863935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676851, -0.069287, -0.732852,
		-0.716521, 0.290213, 0.634330,
		0.168733, 0.954451, -0.246077,
		14.453317, 23.921204, 27.790113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632891, 23.383682, 27.836458>,  <14.335203, 23.253088, 27.962366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632891, 23.383682, 27.836458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.887781, 23.642126, 27.668419>,  <14.040715, 23.797194, 27.567595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.887781, 23.642126, 27.668419>,  <13.632891, 23.383682, 27.836458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887781, 23.642126, 27.668419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469015, -0.107419, -0.876634,
		-0.611530, 0.755646, 0.234586,
		0.637226, 0.646112, -0.420099,
		14.078949, 23.835960, 27.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181998, 23.687960, 27.396545>,  <13.632891, 23.383682, 27.836458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181998, 23.687960, 27.396545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.539314, 23.799795, 27.255768>,  <13.753704, 23.866896, 27.171301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.539314, 23.799795, 27.255768>,  <13.181998, 23.687960, 27.396545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539314, 23.799795, 27.255768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338689, -0.096085, -0.935979,
		-0.295505, 0.955300, 0.008862,
		0.893290, 0.279588, -0.351943,
		13.807302, 23.883671, 27.150185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225070, 24.326193, 26.837801>,  <13.181998, 23.687960, 27.396545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225070, 24.326193, 26.837801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.562421, 24.127653, 26.755480>,  <13.764832, 24.008530, 26.706087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.562421, 24.127653, 26.755480>,  <13.225070, 24.326193, 26.837801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562421, 24.127653, 26.755480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215365, 0.038647, -0.975769,
		0.492274, 0.867263, -0.074302,
		0.843377, -0.496348, -0.205803,
		13.815434, 23.978748, 26.693739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.707561, 17.113848, 30.148283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.362949, 17.216421, 30.323557>,  <20.156181, 17.277966, 30.428720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.362949, 17.216421, 30.323557>,  <20.707561, 17.113848, 30.148283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362949, 17.216421, 30.323557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266564, 0.506070, -0.820266,
		-0.432097, -0.823489, -0.367639,
		-0.861531, 0.256435, 0.438184,
		20.104490, 17.293352, 30.455011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120802, 17.031467, 29.587175>,  <20.707561, 17.113848, 30.148283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120802, 17.031467, 29.587175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.073441, 17.302980, 29.877068>,  <20.045023, 17.465889, 30.051003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.073441, 17.302980, 29.877068>,  <20.120802, 17.031467, 29.587175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073441, 17.302980, 29.877068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191702, 0.700507, -0.687416,
		-0.974285, -0.220325, 0.047181,
		-0.118404, 0.678783, 0.724730,
		20.037920, 17.506615, 30.094486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457846, 17.247889, 29.541088>,  <20.120802, 17.031467, 29.587175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457846, 17.247889, 29.541088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.704210, 17.527084, 29.687218>,  <19.852030, 17.694601, 29.774897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.704210, 17.527084, 29.687218>,  <19.457846, 17.247889, 29.541088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704210, 17.527084, 29.687218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269119, 0.622233, -0.735120,
		-0.740424, 0.354453, 0.571083,
		0.615912, 0.697990, 0.365326,
		19.888985, 17.736481, 29.796816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095436, 17.836346, 29.669344>,  <19.457846, 17.247889, 29.541088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095436, 17.836346, 29.669344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.468969, 17.940666, 29.571415>,  <19.693089, 18.003260, 29.512657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.468969, 17.940666, 29.571415>,  <19.095436, 17.836346, 29.669344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468969, 17.940666, 29.571415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347981, 0.503782, -0.790641,
		-0.082863, 0.823520, 0.561203,
		0.933833, 0.260802, -0.244825,
		19.749119, 18.018908, 29.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254333, 18.615911, 29.606745>,  <19.095436, 17.836346, 29.669344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254333, 18.615911, 29.606745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.471714, 18.370163, 29.377937>,  <19.602142, 18.222713, 29.240652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.471714, 18.370163, 29.377937>,  <19.254333, 18.615911, 29.606745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.471714, 18.370163, 29.377937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266689, 0.519764, -0.811617,
		0.795951, 0.593626, 0.118619,
		0.543451, -0.614373, -0.572020,
		19.634748, 18.185850, 29.206331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865070, 19.114645, 29.444393>,  <19.254333, 18.615911, 29.606745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.865070, 19.114645, 29.444393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.070395, 19.447199, 29.359253>,  <19.193590, 19.646732, 29.308168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.070395, 19.447199, 29.359253>,  <18.865070, 19.114645, 29.444393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070395, 19.447199, 29.359253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347956, -0.428340, -0.833937,
		-0.784497, 0.354007, -0.509159,
		0.513313, 0.831387, -0.212853,
		19.224388, 19.696615, 29.295397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752920, 19.241728, 28.693027>,  <18.865070, 19.114645, 29.444393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752920, 19.241728, 28.693027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.088444, 19.408199, 28.833426>,  <19.289759, 19.508081, 28.917664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.088444, 19.408199, 28.833426>,  <18.752920, 19.241728, 28.693027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088444, 19.408199, 28.833426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496171, -0.319018, -0.807491,
		-0.224086, 0.851483, -0.474090,
		0.838808, 0.416177, 0.350994,
		19.340086, 19.533052, 28.938725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048716, 18.897524, 29.003305>,  <18.752920, 19.241728, 28.693027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048716, 18.897524, 29.003305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.798410, 19.189512, 29.113256>,  <17.648228, 19.364706, 29.179228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.798410, 19.189512, 29.113256>,  <18.048716, 18.897524, 29.003305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798410, 19.189512, 29.113256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625952, -0.259688, -0.735354,
		-0.465406, -0.632220, 0.619432,
		-0.625765, 0.729973, 0.274879,
		17.610682, 19.408504, 29.195721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433245, 18.640846, 29.137114>,  <18.048716, 18.897524, 29.003305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433245, 18.640846, 29.137114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.358135, 19.019272, 29.031507>,  <17.313070, 19.246326, 28.968143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.358135, 19.019272, 29.031507>,  <17.433245, 18.640846, 29.137114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358135, 19.019272, 29.031507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657334, -0.320770, -0.681923,
		-0.729831, 0.045500, 0.682112,
		-0.187773, 0.946064, -0.264017,
		17.301804, 19.303091, 28.952303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760263, 18.638140, 28.953064>,  <17.433245, 18.640846, 29.137114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760263, 18.638140, 28.953064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.896318, 18.980499, 28.797245>,  <16.977951, 19.185915, 28.703754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.896318, 18.980499, 28.797245>,  <16.760263, 18.638140, 28.953064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896318, 18.980499, 28.797245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621137, -0.106536, -0.776427,
		-0.706043, 0.506053, 0.495393,
		0.340136, 0.855898, -0.389547,
		16.998360, 19.237268, 28.680382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230688, 18.899233, 28.553679>,  <16.760263, 18.638140, 28.953064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230688, 18.899233, 28.553679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.526295, 19.121607, 28.401472>,  <16.703659, 19.255032, 28.310148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.526295, 19.121607, 28.401472>,  <16.230688, 18.899233, 28.553679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526295, 19.121607, 28.401472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473434, 0.026734, -0.880424,
		-0.479284, 0.830797, 0.282954,
		0.739018, 0.555933, -0.380514,
		16.748001, 19.288387, 28.287317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932447, 19.425535, 28.255369>,  <16.230688, 18.899233, 28.553679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932447, 19.425535, 28.255369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.295925, 19.391283, 28.091934>,  <16.514011, 19.370731, 27.993874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.295925, 19.391283, 28.091934>,  <15.932447, 19.425535, 28.255369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295925, 19.391283, 28.091934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407349, 0.032253, -0.912703,
		0.091331, 0.995805, -0.005573,
		0.908694, -0.085628, -0.408586,
		16.568533, 19.365595, 27.969358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164619, 19.708490, 28.203365>,  <15.932447, 19.425535, 28.255369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164619, 19.708490, 28.203365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.807681, 19.823380, 28.342632>,  <14.593518, 19.892313, 28.426193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.807681, 19.823380, 28.342632>,  <15.164619, 19.708490, 28.203365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807681, 19.823380, 28.342632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444417, 0.424442, 0.788887,
		0.078810, 0.858691, -0.506397,
		-0.892347, 0.287224, 0.348167,
		14.539977, 19.909546, 28.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381845, 20.278519, 28.403051>,  <15.164619, 19.708490, 28.203365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381845, 20.278519, 28.403051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.028525, 20.243837, 28.587341>,  <14.816534, 20.223028, 28.697916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.028525, 20.243837, 28.587341>,  <15.381845, 20.278519, 28.403051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.028525, 20.243837, 28.587341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286922, 0.677221, 0.677531,
		-0.370756, 0.730654, -0.573311,
		-0.883298, -0.086704, 0.460724,
		14.763535, 20.217827, 28.725559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207792, 20.886116, 28.594782>,  <15.381845, 20.278519, 28.403051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207792, 20.886116, 28.594782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.984872, 20.660156, 28.838192>,  <14.851119, 20.524580, 28.984238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.984872, 20.660156, 28.838192>,  <15.207792, 20.886116, 28.594782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984872, 20.660156, 28.838192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306279, 0.541345, 0.783031,
		-0.771756, 0.622764, -0.128676,
		-0.557301, -0.564899, 0.608526,
		14.817681, 20.490686, 29.020750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854122, 21.384586, 28.933878>,  <15.207792, 20.886116, 28.594782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854122, 21.384586, 28.933878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.863807, 21.053356, 29.157915>,  <14.869617, 20.854618, 29.292337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.863807, 21.053356, 29.157915>,  <14.854122, 21.384586, 28.933878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863807, 21.053356, 29.157915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297513, 0.540841, 0.786751,
		-0.954411, 0.147587, 0.259458,
		0.024211, -0.828076, 0.560093,
		14.871070, 20.804934, 29.325943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592354, 21.548870, 29.605461>,  <14.854122, 21.384586, 28.933878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592354, 21.548870, 29.605461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.781909, 21.201488, 29.663729>,  <14.895642, 20.993059, 29.698689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.781909, 21.201488, 29.663729>,  <14.592354, 21.548870, 29.605461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781909, 21.201488, 29.663729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449755, 0.380920, 0.807849,
		-0.757068, -0.317315, 0.571104,
		0.473888, -0.868453, 0.145669,
		14.924075, 20.940952, 29.707430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420399, 21.288067, 30.234592>,  <14.592354, 21.548870, 29.605461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420399, 21.288067, 30.234592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.783663, 21.135523, 30.165531>,  <15.001621, 21.043997, 30.124094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.783663, 21.135523, 30.165531>,  <14.420399, 21.288067, 30.234592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783663, 21.135523, 30.165531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341873, 0.437623, 0.831630,
		-0.241594, -0.814279, 0.527809,
		0.908160, -0.381361, -0.172653,
		15.056110, 21.021114, 30.113735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.617845, 21.157877, 30.831959>,  <14.420399, 21.288067, 30.234592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.617845, 21.157877, 30.831959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.975748, 21.099148, 30.663269>,  <15.190490, 21.063911, 30.562056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.975748, 21.099148, 30.663269>,  <14.617845, 21.157877, 30.831959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975748, 21.099148, 30.663269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446528, 0.304022, 0.841537,
		0.004658, -0.941283, 0.337586,
		0.894758, -0.146822, -0.421725,
		15.244175, 21.055101, 30.536751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070304, 20.781868, 31.375334>,  <14.617845, 21.157877, 30.831959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070304, 20.781868, 31.375334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.313512, 20.946915, 31.104023>,  <15.459436, 21.045942, 30.941236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.313512, 20.946915, 31.104023>,  <15.070304, 20.781868, 31.375334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313512, 20.946915, 31.104023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569317, 0.368852, 0.734729,
		0.553345, -0.832884, -0.010640,
		0.608019, 0.412616, -0.678277,
		15.495918, 21.070700, 30.900539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810928, 20.676802, 31.681936>,  <15.070304, 20.781868, 31.375334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810928, 20.676802, 31.681936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.820179, 20.973637, 31.413975>,  <15.825729, 21.151737, 31.253199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.820179, 20.973637, 31.413975>,  <15.810928, 20.676802, 31.681936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820179, 20.973637, 31.413975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360611, 0.618780, 0.697905,
		0.932430, -0.257714, -0.253295,
		0.023126, 0.742088, -0.669904,
		15.827117, 21.196262, 31.213003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514664, 21.003721, 31.646322>,  <15.810928, 20.676802, 31.681936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514664, 21.003721, 31.646322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.277811, 21.288431, 31.495188>,  <16.135700, 21.459257, 31.404507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.277811, 21.288431, 31.495188>,  <16.514664, 21.003721, 31.646322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277811, 21.288431, 31.495188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479944, 0.688135, 0.544173,
		0.647329, 0.140883, -0.749078,
		-0.592131, 0.711774, -0.377834,
		16.100172, 21.501963, 31.381838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997177, 21.510853, 31.496668>,  <16.514664, 21.003721, 31.646322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997177, 21.510853, 31.496668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.636709, 21.684231, 31.498377>,  <16.420427, 21.788258, 31.499403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.636709, 21.684231, 31.498377>,  <16.997177, 21.510853, 31.496668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636709, 21.684231, 31.498377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327776, 0.674960, 0.661054,
		0.283645, 0.597123, -0.750326,
		-0.901171, 0.433443, 0.004274,
		16.366358, 21.814264, 31.499659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088154, 22.210468, 31.362293>,  <16.997177, 21.510853, 31.496668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088154, 22.210468, 31.362293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.724661, 22.188871, 31.527843>,  <16.506565, 22.175913, 31.627174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.724661, 22.188871, 31.527843>,  <17.088154, 22.210468, 31.362293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724661, 22.188871, 31.527843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284087, 0.646452, 0.708092,
		-0.305784, 0.761042, -0.572111,
		-0.908730, -0.053994, 0.413877,
		16.452042, 22.172674, 31.652006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943798, 22.967709, 31.570530>,  <17.088154, 22.210468, 31.362293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943798, 22.967709, 31.570530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.697271, 22.726902, 31.773600>,  <16.549356, 22.582418, 31.895441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.697271, 22.726902, 31.773600>,  <16.943798, 22.967709, 31.570530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697271, 22.726902, 31.773600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056531, 0.609181, 0.791014,
		-0.785468, 0.516212, -0.341415,
		-0.616315, -0.602016, 0.507674,
		16.512377, 22.546297, 31.925901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363420, 23.361992, 31.785540>,  <16.943798, 22.967709, 31.570530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363420, 23.361992, 31.785540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.493073, 23.082014, 32.040104>,  <16.570864, 22.914028, 32.192841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.493073, 23.082014, 32.040104>,  <16.363420, 23.361992, 31.785540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493073, 23.082014, 32.040104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243014, 0.711759, 0.659048,
		-0.914266, -0.058962, 0.400800,
		0.324131, -0.699945, 0.636409,
		16.590311, 22.872030, 32.231026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867583, 23.797123, 31.730995>,  <16.363420, 23.361992, 31.785540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867583, 23.797123, 31.730995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.808207, 24.168631, 31.595142>,  <15.772580, 24.391535, 31.513630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.808207, 24.168631, 31.595142>,  <15.867583, 23.797123, 31.730995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808207, 24.168631, 31.595142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222701, -0.366010, -0.903571,
		-0.963519, -0.058491, 0.261169,
		-0.148442, 0.928771, -0.339631,
		15.763674, 24.447262, 31.493254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066588, 23.973566, 31.456999>,  <15.867583, 23.797123, 31.730995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066588, 23.973566, 31.456999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.347813, 24.201065, 31.286245>,  <15.516547, 24.337564, 31.183792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.347813, 24.201065, 31.286245>,  <15.066588, 23.973566, 31.456999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347813, 24.201065, 31.286245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374469, -0.214228, -0.902153,
		-0.604547, 0.794125, 0.062363,
		0.703062, 0.568747, -0.426886,
		15.558731, 24.371689, 31.158180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678379, 24.550455, 30.975912>,  <15.066588, 23.973566, 31.456999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678379, 24.550455, 30.975912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.051394, 24.500162, 30.840523>,  <15.275203, 24.469986, 30.759289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.051394, 24.500162, 30.840523>,  <14.678379, 24.550455, 30.975912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.051394, 24.500162, 30.840523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333984, 0.055880, -0.940921,
		0.137219, 0.990489, 0.010117,
		0.932537, -0.125733, -0.338475,
		15.331155, 24.462442, 30.738979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857898, 25.163828, 30.524387>,  <14.678379, 24.550455, 30.975912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857898, 25.163828, 30.524387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.097122, 24.853098, 30.445532>,  <15.240657, 24.666660, 30.398218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.097122, 24.853098, 30.445532>,  <14.857898, 25.163828, 30.524387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.097122, 24.853098, 30.445532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170668, 0.116891, -0.978371,
		0.783068, 0.618770, -0.062672,
		0.598060, -0.776827, -0.197138,
		15.276541, 24.620050, 30.386391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407025, 25.467831, 30.182343>,  <14.857898, 25.163828, 30.524387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407025, 25.467831, 30.182343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.373207, 25.085321, 30.070349>,  <15.352916, 24.855816, 30.003153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.373207, 25.085321, 30.070349>,  <15.407025, 25.467831, 30.182343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373207, 25.085321, 30.070349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106434, 0.270714, -0.956758,
		0.990719, -0.110690, 0.078892,
		-0.084546, -0.956275, -0.279983,
		15.347843, 24.798439, 29.986355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574042, 25.516642, 29.471323>,  <15.407025, 25.467831, 30.182343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574042, 25.516642, 29.471323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.462951, 25.132568, 29.483398>,  <15.396296, 24.902124, 29.490644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.462951, 25.132568, 29.483398>,  <15.574042, 25.516642, 29.471323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462951, 25.132568, 29.483398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008826, -0.033975, -0.999384,
		0.960619, -0.277291, 0.017911,
		-0.277729, -0.960185, 0.030190,
		15.379632, 24.844513, 29.492455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854012, 25.096657, 28.859783>,  <15.574042, 25.516642, 29.471323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854012, 25.096657, 28.859783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.554411, 24.865717, 28.989803>,  <15.374650, 24.727152, 29.067816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.554411, 24.865717, 28.989803>,  <15.854012, 25.096657, 28.859783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554411, 24.865717, 28.989803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247439, -0.211352, -0.945571,
		0.614627, -0.788667, 0.015444,
		-0.749004, -0.577352, 0.325049,
		15.329709, 24.692511, 29.087318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466976, 25.092129, 28.464859>,  <15.854012, 25.096657, 28.859783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.466976, 25.092129, 28.464859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.470613, 25.465355, 28.321022>,  <16.472795, 25.689291, 28.234720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.470613, 25.465355, 28.321022>,  <16.466976, 25.092129, 28.464859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470613, 25.465355, 28.321022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332065, 0.336380, 0.881238,
		0.943212, -0.127423, -0.306779,
		0.009096, 0.933066, -0.359590,
		16.473343, 25.745275, 28.213144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047739, 25.362900, 28.677177>,  <16.466976, 25.092129, 28.464859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047739, 25.362900, 28.677177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.853397, 25.701071, 28.588453>,  <16.736792, 25.903973, 28.535219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.853397, 25.701071, 28.588453>,  <17.047739, 25.362900, 28.677177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853397, 25.701071, 28.588453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329269, 0.412121, 0.849552,
		0.809646, 0.339724, -0.478603,
		-0.485855, 0.845426, -0.221811,
		16.707642, 25.954699, 28.521910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543707, 25.895357, 28.673883>,  <17.047739, 25.362900, 28.677177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543707, 25.895357, 28.673883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.188049, 26.065500, 28.741407>,  <16.974655, 26.167585, 28.781921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.188049, 26.065500, 28.741407>,  <17.543707, 25.895357, 28.673883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188049, 26.065500, 28.741407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321592, 0.318330, 0.891765,
		0.325582, 0.847194, -0.419832,
		-0.889143, 0.425358, 0.168808,
		16.921307, 26.193108, 28.792049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676542, 26.410501, 29.115353>,  <17.543707, 25.895357, 28.673883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676542, 26.410501, 29.115353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.279238, 26.447662, 29.143078>,  <17.040855, 26.469959, 29.159712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.279238, 26.447662, 29.143078>,  <17.676542, 26.410501, 29.115353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279238, 26.447662, 29.143078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105462, 0.476255, 0.872960,
		0.048092, 0.874385, -0.482843,
		-0.993260, 0.092904, 0.069311,
		16.981260, 26.475533, 29.163872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511972, 27.063183, 29.258476>,  <17.676542, 26.410501, 29.115353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511972, 27.063183, 29.258476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.199282, 26.863491, 29.407967>,  <17.011667, 26.743675, 29.497660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.199282, 26.863491, 29.407967>,  <17.511972, 27.063183, 29.258476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.199282, 26.863491, 29.407967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239668, 0.312751, 0.919101,
		-0.575727, 0.808056, -0.124836,
		-0.781727, -0.499232, 0.373725,
		16.964764, 26.713722, 29.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317179, 27.360067, 29.816322>,  <17.511972, 27.063183, 29.258476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317179, 27.360067, 29.816322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120493, 27.020985, 29.895927>,  <17.002481, 26.817535, 29.943691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120493, 27.020985, 29.895927>,  <17.317179, 27.360067, 29.816322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120493, 27.020985, 29.895927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127099, 0.156233, 0.979509,
		-0.861430, 0.506934, 0.030921,
		-0.491715, -0.847709, 0.199015,
		16.972979, 26.766672, 29.955631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794882, 27.492060, 30.438757>,  <17.317179, 27.360067, 29.816322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794882, 27.492060, 30.438757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.848614, 27.095938, 30.424580>,  <16.880854, 26.858265, 30.416073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.848614, 27.095938, 30.424580>,  <16.794882, 27.492060, 30.438757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848614, 27.095938, 30.424580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062964, -0.044225, 0.997036,
		-0.988935, -0.131700, -0.068294,
		0.134330, -0.990303, -0.035443,
		16.888912, 26.798847, 30.413946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332991, 27.096745, 30.996016>,  <16.794882, 27.492060, 30.438757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332991, 27.096745, 30.996016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.629398, 26.845173, 30.901915>,  <16.807243, 26.694231, 30.845453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.629398, 26.845173, 30.901915>,  <16.332991, 27.096745, 30.996016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629398, 26.845173, 30.901915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329869, 0.035799, 0.943348,
		-0.584876, -0.776639, 0.233991,
		0.741017, -0.628928, -0.235252,
		16.851704, 26.656494, 30.831339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389345, 26.664375, 31.538324>,  <16.332991, 27.096745, 30.996016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389345, 26.664375, 31.538324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.750755, 26.648510, 31.367647>,  <16.967602, 26.638990, 31.265242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.750755, 26.648510, 31.367647>,  <16.389345, 26.664375, 31.538324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750755, 26.648510, 31.367647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427358, 0.009808, 0.904029,
		-0.031675, -0.999165, 0.025814,
		0.903527, -0.039667, -0.426691,
		17.021814, 26.636612, 31.239639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.554007, 20.177794, 16.612024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941269, 20.139662, 16.519430>,  <15.173626, 20.116783, 16.463873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941269, 20.139662, 16.519430>,  <14.554007, 20.177794, 16.612024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941269, 20.139662, 16.519430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248951, 0.464124, 0.850066,
		0.026403, -0.880625, 0.473077,
		0.968156, -0.095329, -0.231487,
		15.231716, 20.111063, 16.449984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937277, 19.813959, 17.121777>,  <14.554007, 20.177794, 16.612024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937277, 19.813959, 17.121777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.175455, 20.079065, 16.940145>,  <15.318362, 20.238129, 16.831167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.175455, 20.079065, 16.940145>,  <14.937277, 19.813959, 17.121777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.175455, 20.079065, 16.940145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276351, 0.361738, 0.890379,
		0.754370, -0.655657, 0.032239,
		0.595446, 0.662766, -0.454076,
		15.354089, 20.277895, 16.803923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558880, 19.844662, 17.472860>,  <14.937277, 19.813959, 17.121777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558880, 19.844662, 17.472860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561929, 20.193235, 17.276678>,  <15.563758, 20.402380, 17.158970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561929, 20.193235, 17.276678>,  <15.558880, 19.844662, 17.472860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561929, 20.193235, 17.276678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210615, 0.478067, 0.852698,
		0.977539, -0.109797, -0.179893,
		0.007623, 0.871434, -0.490454,
		15.564216, 20.454666, 17.129541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016020, 20.145769, 17.766605>,  <15.558880, 19.844662, 17.472860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016020, 20.145769, 17.766605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825670, 20.458130, 17.604748>,  <15.711461, 20.645546, 17.507633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825670, 20.458130, 17.604748>,  <16.016020, 20.145769, 17.766605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825670, 20.458130, 17.604748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253328, 0.562278, 0.787190,
		0.842241, 0.272095, -0.465398,
		-0.475874, 0.780901, -0.404644,
		15.682908, 20.692400, 17.483355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443508, 20.775896, 17.936771>,  <16.016020, 20.145769, 17.766605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443508, 20.775896, 17.936771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080889, 20.917416, 17.844688>,  <15.863317, 21.002327, 17.789438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080889, 20.917416, 17.844688>,  <16.443508, 20.775896, 17.936771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080889, 20.917416, 17.844688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062857, 0.652458, 0.755214,
		0.417394, 0.670169, -0.613724,
		-0.906549, 0.353799, -0.230207,
		15.808924, 21.023556, 17.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556379, 21.390713, 18.084639>,  <16.443508, 20.775896, 17.936771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556379, 21.390713, 18.084639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157564, 21.360596, 18.078304>,  <15.918276, 21.342525, 18.074503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157564, 21.360596, 18.078304>,  <16.556379, 21.390713, 18.084639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157564, 21.360596, 18.078304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061563, 0.657233, 0.751169,
		-0.046147, 0.749917, -0.659921,
		-0.997036, -0.075291, -0.015838,
		15.858454, 21.338009, 18.073553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435707, 22.063499, 18.296219>,  <16.556379, 21.390713, 18.084639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435707, 22.063499, 18.296219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094093, 21.860193, 18.340565>,  <15.889125, 21.738209, 18.367172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094093, 21.860193, 18.340565>,  <16.435707, 22.063499, 18.296219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094093, 21.860193, 18.340565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303032, 0.659277, 0.688133,
		-0.422844, 0.554094, -0.717066,
		-0.854035, -0.508266, 0.110863,
		15.837883, 21.707714, 18.373823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876323, 22.582788, 18.370312>,  <16.435707, 22.063499, 18.296219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876323, 22.582788, 18.370312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751924, 22.250628, 18.555229>,  <15.677284, 22.051331, 18.666180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751924, 22.250628, 18.555229>,  <15.876323, 22.582788, 18.370312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751924, 22.250628, 18.555229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322773, 0.549786, 0.770424,
		-0.893922, 0.090385, -0.439014,
		-0.310999, -0.830401, 0.462292,
		15.658624, 22.001507, 18.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144675, 22.697592, 18.543745>,  <15.876323, 22.582788, 18.370312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144675, 22.697592, 18.543745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303271, 22.436119, 18.801580>,  <15.398429, 22.279236, 18.956282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303271, 22.436119, 18.801580>,  <15.144675, 22.697592, 18.543745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303271, 22.436119, 18.801580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322102, 0.558446, 0.764453,
		-0.859678, -0.510721, 0.010865,
		0.396490, -0.653683, 0.644588,
		15.422218, 22.240013, 18.994957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.636094, 22.617783, 18.924271>,  <15.144675, 22.697592, 18.543745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.636094, 22.617783, 18.924271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.929003, 22.454233, 19.142115>,  <15.104748, 22.356104, 19.272821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.929003, 22.454233, 19.142115>,  <14.636094, 22.617783, 18.924271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929003, 22.454233, 19.142115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367558, 0.435935, 0.821499,
		-0.573305, -0.801737, 0.168938,
		0.732272, -0.408875, 0.544609,
		15.148685, 22.331570, 19.305498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321279, 22.269407, 19.544178>,  <14.636094, 22.617783, 18.924271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321279, 22.269407, 19.544178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693560, 22.386242, 19.632250>,  <14.916928, 22.456343, 19.685093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693560, 22.386242, 19.632250>,  <14.321279, 22.269407, 19.544178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693560, 22.386242, 19.632250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314120, 0.329824, 0.890250,
		0.187408, -0.897721, 0.398718,
		0.930702, 0.292085, 0.220180,
		14.972771, 22.473867, 19.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390675, 22.132853, 20.185698>,  <14.321279, 22.269407, 19.544178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390675, 22.132853, 20.185698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693989, 22.389622, 20.140196>,  <14.875977, 22.543684, 20.112896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693989, 22.389622, 20.140196>,  <14.390675, 22.132853, 20.185698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693989, 22.389622, 20.140196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275816, 0.473996, 0.836214,
		0.590703, -0.602713, 0.536476,
		0.758284, 0.641923, -0.113753,
		14.921474, 22.582199, 20.106070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110505, 21.659733, 20.702532>,  <14.390675, 22.132853, 20.185698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110505, 21.659733, 20.702532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763355, 21.687939, 20.899235>,  <13.555065, 21.704863, 21.017256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763355, 21.687939, 20.899235>,  <14.110505, 21.659733, 20.702532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763355, 21.687939, 20.899235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455083, -0.509839, -0.730044,
		0.199237, -0.857375, 0.474566,
		-0.867873, 0.070515, 0.491755,
		13.502994, 21.709093, 21.046761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733894, 21.023804, 20.663967>,  <14.110505, 21.659733, 20.702532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733894, 21.023804, 20.663967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451718, 21.300734, 20.724684>,  <13.282413, 21.466892, 20.761114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451718, 21.300734, 20.724684>,  <13.733894, 21.023804, 20.663967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451718, 21.300734, 20.724684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523409, -0.364461, -0.770202,
		-0.477908, -0.622780, 0.619475,
		-0.705441, 0.692324, 0.151790,
		13.240086, 21.508430, 20.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131046, 20.672503, 20.429876>,  <13.733894, 21.023804, 20.663967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131046, 20.672503, 20.429876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036225, 21.061047, 20.436401>,  <12.979333, 21.294172, 20.440317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036225, 21.061047, 20.436401>,  <13.131046, 20.672503, 20.429876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036225, 21.061047, 20.436401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735923, -0.168584, -0.655742,
		-0.634211, -0.167449, 0.754809,
		-0.237052, 0.971360, 0.016312,
		12.965110, 21.352455, 20.441296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.479758, 20.693295, 20.611916>,  <13.131046, 20.672503, 20.429876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.479758, 20.693295, 20.611916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540629, 21.053530, 20.449049>,  <12.577152, 21.269670, 20.351330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540629, 21.053530, 20.449049>,  <12.479758, 20.693295, 20.611916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540629, 21.053530, 20.449049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665492, -0.211215, -0.715898,
		-0.730728, 0.379909, 0.567191,
		0.152177, 0.900587, -0.407167,
		12.586283, 21.323706, 20.326899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918327, 21.090117, 20.534103>,  <12.479758, 20.693295, 20.611916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918327, 21.090117, 20.534103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165863, 21.227568, 20.251556>,  <12.314384, 21.310040, 20.082027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165863, 21.227568, 20.251556>,  <11.918327, 21.090117, 20.534103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165863, 21.227568, 20.251556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650958, -0.278956, -0.706001,
		-0.439649, 0.896717, 0.051060,
		0.618840, 0.343630, -0.706368,
		12.351515, 21.330656, 20.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.468863, 21.488811, 20.136488>,  <11.918327, 21.090117, 20.534103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.468863, 21.488811, 20.136488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787538, 21.453056, 19.897388>,  <11.978742, 21.431604, 19.753929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787538, 21.453056, 19.897388>,  <11.468863, 21.488811, 20.136488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787538, 21.453056, 19.897388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603989, -0.081495, -0.792815,
		0.022153, 0.992657, -0.118914,
		0.796684, -0.089386, -0.597749,
		12.026543, 21.426241, 19.718063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273705, 21.758835, 19.434023>,  <11.468863, 21.488811, 20.136488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273705, 21.758835, 19.434023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612819, 21.560476, 19.358818>,  <11.816287, 21.441462, 19.313696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.612819, 21.560476, 19.358818>,  <11.273705, 21.758835, 19.434023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.612819, 21.560476, 19.358818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331546, -0.218881, -0.917697,
		0.413932, 0.840343, -0.349977,
		0.847784, -0.495898, -0.188010,
		11.867154, 21.411707, 19.302416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392232, 22.015585, 18.771765>,  <11.273705, 21.758835, 19.434023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392232, 22.015585, 18.771765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603709, 21.679413, 18.819368>,  <11.730596, 21.477711, 18.847931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603709, 21.679413, 18.819368>,  <11.392232, 22.015585, 18.771765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.603709, 21.679413, 18.819368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390840, -0.365492, -0.844784,
		0.753477, 0.400118, -0.521707,
		0.528693, -0.840429, 0.119008,
		11.762317, 21.427284, 18.855070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647892, 21.901409, 18.018911>,  <11.392232, 22.015585, 18.771765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647892, 21.901409, 18.018911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.661331, 21.560944, 18.228441>,  <11.669394, 21.356665, 18.354160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.661331, 21.560944, 18.228441>,  <11.647892, 21.901409, 18.018911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661331, 21.560944, 18.228441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141585, -0.522890, -0.840559,
		0.989356, -0.045924, -0.138080,
		0.033599, -0.851162, 0.523826,
		11.671411, 21.305595, 18.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.958170, 21.378986, 17.632513>,  <11.647892, 21.901409, 18.018911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.958170, 21.378986, 17.632513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748792, 21.143433, 17.878836>,  <11.623165, 21.002100, 18.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748792, 21.143433, 17.878836>,  <11.958170, 21.378986, 17.632513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748792, 21.143433, 17.878836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187122, -0.625637, -0.757340,
		0.831259, -0.511657, 0.217294,
		-0.523445, -0.588885, 0.615809,
		11.591758, 20.966766, 18.063578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078301, 20.574291, 17.378672>,  <11.958170, 21.378986, 17.632513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078301, 20.574291, 17.378672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.755315, 20.592617, 17.613924>,  <11.561523, 20.603613, 17.755075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.755315, 20.592617, 17.613924>,  <12.078301, 20.574291, 17.378672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755315, 20.592617, 17.613924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318140, -0.873390, -0.368751,
		0.496775, -0.484863, 0.719807,
		-0.807466, 0.045813, 0.588133,
		11.513075, 20.606361, 17.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980516, 19.932623, 17.627481>,  <12.078301, 20.574291, 17.378672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980516, 19.932623, 17.627481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.615478, 20.083675, 17.690172>,  <11.396455, 20.174307, 17.727787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.615478, 20.083675, 17.690172>,  <11.980516, 19.932623, 17.627481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.615478, 20.083675, 17.690172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408640, -0.829800, -0.380060,
		-0.013470, -0.410886, 0.911587,
		-0.912596, 0.377630, 0.156726,
		11.341699, 20.196964, 17.737190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614022, 19.558304, 17.941525>,  <11.980516, 19.932623, 17.627481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614022, 19.558304, 17.941525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300116, 19.753363, 17.788504>,  <11.111772, 19.870398, 17.696692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300116, 19.753363, 17.788504>,  <11.614022, 19.558304, 17.941525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.300116, 19.753363, 17.788504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247931, -0.812679, -0.527335,
		-0.568043, -0.318989, 0.758665,
		-0.784766, 0.487646, -0.382550,
		11.064686, 19.899656, 17.673738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011863, 19.090790, 17.948416>,  <11.614022, 19.558304, 17.941525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011863, 19.090790, 17.948416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885781, 19.371061, 17.692387>,  <10.810133, 19.539225, 17.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885781, 19.371061, 17.692387>,  <11.011863, 19.090790, 17.948416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885781, 19.371061, 17.692387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244651, -0.711651, -0.658558,
		-0.916948, -0.050985, 0.395737,
		-0.315203, 0.700681, -0.640073,
		10.791221, 19.581266, 17.500364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717976, 18.739531, 17.914692>,  <11.011863, 19.090790, 17.948416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717976, 18.739531, 17.914692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676515, 18.361317, 18.038122>,  <11.651638, 18.134388, 18.112181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676515, 18.361317, 18.038122>,  <11.717976, 18.739531, 17.914692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676515, 18.361317, 18.038122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536747, 0.208016, 0.817699,
		-0.837352, 0.250383, 0.485952,
		-0.103653, -0.945536, 0.308575,
		11.645419, 18.077656, 18.130695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252263, 18.610552, 18.563120>,  <11.717976, 18.739531, 17.914692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252263, 18.610552, 18.563120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459752, 18.269279, 18.585066>,  <11.584246, 18.064516, 18.598234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459752, 18.269279, 18.585066>,  <11.252263, 18.610552, 18.563120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459752, 18.269279, 18.585066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309232, 0.247067, 0.918332,
		-0.797058, -0.459394, 0.391990,
		0.518724, -0.853180, 0.054867,
		11.615369, 18.013325, 18.601526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072549, 18.244007, 19.085726>,  <11.252263, 18.610552, 18.563120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072549, 18.244007, 19.085726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.445841, 18.120764, 19.011805>,  <11.669816, 18.046818, 18.967451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.445841, 18.120764, 19.011805>,  <11.072549, 18.244007, 19.085726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.445841, 18.120764, 19.011805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204617, 0.032986, 0.978286,
		-0.295321, -0.950779, 0.093828,
		0.933229, -0.308107, -0.184805,
		11.725810, 18.028332, 18.956364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.156911, 17.723051, 19.620092>,  <11.072549, 18.244007, 19.085726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.156911, 17.723051, 19.620092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510496, 17.861704, 19.494581>,  <11.722648, 17.944895, 19.419275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510496, 17.861704, 19.494581>,  <11.156911, 17.723051, 19.620092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.510496, 17.861704, 19.494581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343631, -0.026559, 0.938729,
		0.317061, -0.937625, -0.142591,
		0.883963, 0.346633, -0.313776,
		11.775685, 17.965694, 19.400448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665203, 17.226030, 19.912851>,  <11.156911, 17.723051, 19.620092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665203, 17.226030, 19.912851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.846985, 17.574356, 19.837856>,  <11.956054, 17.783352, 19.792858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.846985, 17.574356, 19.837856>,  <11.665203, 17.226030, 19.912851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.846985, 17.574356, 19.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316211, 0.039060, 0.947884,
		0.832755, -0.490057, -0.257610,
		0.454455, 0.870815, -0.187489,
		11.983321, 17.835600, 19.781610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163243, 17.182047, 20.340559>,  <11.665203, 17.226030, 19.912851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163243, 17.182047, 20.340559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165952, 17.571577, 20.249678>,  <12.167577, 17.805294, 20.195148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165952, 17.571577, 20.249678>,  <12.163243, 17.182047, 20.340559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165952, 17.571577, 20.249678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358717, 0.209723, 0.909581,
		0.933422, -0.087661, -0.347907,
		0.006771, 0.973823, -0.227205,
		12.167983, 17.863724, 20.181517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716344, 17.473845, 20.680309>,  <12.163243, 17.182047, 20.340559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716344, 17.473845, 20.680309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.483285, 17.788980, 20.600481>,  <12.343450, 17.978062, 20.552584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.483285, 17.788980, 20.600481>,  <12.716344, 17.473845, 20.680309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.483285, 17.788980, 20.600481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074471, 0.296277, 0.952194,
		0.809306, 0.539931, -0.231296,
		-0.582647, 0.787841, -0.199570,
		12.308491, 18.025333, 20.540609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008744, 18.031450, 20.985027>,  <12.716344, 17.473845, 20.680309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008744, 18.031450, 20.985027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635096, 18.163363, 20.930384>,  <12.410906, 18.242510, 20.897598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635096, 18.163363, 20.930384>,  <13.008744, 18.031450, 20.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635096, 18.163363, 20.930384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003969, 0.392274, 0.919840,
		0.356932, 0.858700, -0.367741,
		-0.934122, 0.329780, -0.136607,
		12.354859, 18.262297, 20.889402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966827, 18.769424, 21.139498>,  <13.008744, 18.031450, 20.985027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966827, 18.769424, 21.139498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593252, 18.629274, 21.167772>,  <12.369107, 18.545185, 21.184736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593252, 18.629274, 21.167772>,  <12.966827, 18.769424, 21.139498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593252, 18.629274, 21.167772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012653, 0.230040, 0.973099,
		-0.357208, 0.907921, -0.219277,
		-0.933939, -0.350373, 0.070684,
		12.313070, 18.524162, 21.188978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616537, 19.247658, 21.507103>,  <12.966827, 18.769424, 21.139498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616537, 19.247658, 21.507103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371390, 18.933725, 21.543839>,  <12.224302, 18.745365, 21.565880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371390, 18.933725, 21.543839>,  <12.616537, 19.247658, 21.507103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371390, 18.933725, 21.543839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145072, 0.226003, 0.963264,
		-0.776756, 0.577028, -0.252366,
		-0.612866, -0.784832, 0.091839,
		12.187531, 18.698277, 21.571390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034921, 19.473791, 21.772814>,  <12.616537, 19.247658, 21.507103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034921, 19.473791, 21.772814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040120, 19.087320, 21.875835>,  <12.043240, 18.855438, 21.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040120, 19.087320, 21.875835>,  <12.034921, 19.473791, 21.772814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040120, 19.087320, 21.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159710, 0.252262, 0.954388,
		-0.987078, -0.053539, -0.151029,
		0.012998, -0.966177, 0.257553,
		12.044020, 18.797468, 21.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379710, 19.357618, 22.320803>,  <12.034921, 19.473791, 21.772814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379710, 19.357618, 22.320803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637207, 19.060078, 22.392672>,  <11.791705, 18.881554, 22.435793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637207, 19.060078, 22.392672>,  <11.379710, 19.357618, 22.320803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637207, 19.060078, 22.392672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100913, 0.150221, 0.983489,
		-0.758559, -0.651245, 0.021640,
		0.643743, -0.743851, 0.179671,
		11.830330, 18.836922, 22.446573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056745, 18.952204, 22.786312>,  <11.379710, 19.357618, 22.320803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056745, 18.952204, 22.786312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434453, 18.823130, 22.812313>,  <11.661078, 18.745686, 22.827913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434453, 18.823130, 22.812313>,  <11.056745, 18.952204, 22.786312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.434453, 18.823130, 22.812313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027459, 0.119573, 0.992446,
		-0.328020, -0.938923, 0.104049,
		0.944272, -0.322685, 0.065004,
		11.717734, 18.726324, 22.831814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.994672, 18.578497, 23.414425>,  <11.056745, 18.952204, 22.786312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.994672, 18.578497, 23.414425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382461, 18.638357, 23.336731>,  <11.615134, 18.674274, 23.290115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382461, 18.638357, 23.336731>,  <10.994672, 18.578497, 23.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.382461, 18.638357, 23.336731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183901, 0.080168, 0.979670,
		0.162184, -0.985483, 0.050199,
		0.969472, 0.149655, -0.194234,
		11.673303, 18.683252, 23.278461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.442336, 18.141296, 23.832539>,  <10.994672, 18.578497, 23.414425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.442336, 18.141296, 23.832539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693427, 18.442982, 23.755474>,  <11.844082, 18.623993, 23.709234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693427, 18.442982, 23.755474>,  <11.442336, 18.141296, 23.832539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693427, 18.442982, 23.755474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295733, -0.002114, 0.955268,
		0.720070, -0.656625, -0.224373,
		0.627727, 0.754214, -0.192663,
		11.881745, 18.669247, 23.697676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.880407, 18.105827, 24.360146>,  <11.442336, 18.141296, 23.832539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.880407, 18.105827, 24.360146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.997756, 18.448677, 24.190784>,  <12.068165, 18.654387, 24.089169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.997756, 18.448677, 24.190784>,  <11.880407, 18.105827, 24.360146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.997756, 18.448677, 24.190784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599908, 0.179779, 0.779609,
		0.744342, -0.482718, -0.461454,
		0.293371, 0.857125, -0.423403,
		12.085768, 18.705814, 24.063763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.573439, 18.143297, 24.534075>,  <11.880407, 18.105827, 24.360146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.573439, 18.143297, 24.534075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.412998, 18.506493, 24.485611>,  <12.316734, 18.724409, 24.456533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.412998, 18.506493, 24.485611>,  <12.573439, 18.143297, 24.534075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.412998, 18.506493, 24.485611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375951, 0.283781, 0.882116,
		0.835332, 0.308268, -0.455183,
		-0.401100, 0.907986, -0.121158,
		12.292668, 18.778889, 24.449263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077250, 18.460527, 24.716541>,  <12.573439, 18.143297, 24.534075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077250, 18.460527, 24.716541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.783663, 18.731861, 24.730106>,  <12.607511, 18.894661, 24.738245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.783663, 18.731861, 24.730106>,  <13.077250, 18.460527, 24.716541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.783663, 18.731861, 24.730106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341634, 0.325579, 0.881638,
		0.587005, 0.658680, -0.470707,
		-0.733969, 0.678336, 0.033911,
		12.563472, 18.935362, 24.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341031, 19.045830, 24.807194>,  <13.077250, 18.460527, 24.716541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341031, 19.045830, 24.807194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967491, 19.122835, 24.927767>,  <12.743367, 19.169039, 25.000111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967491, 19.122835, 24.927767>,  <13.341031, 19.045830, 24.807194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967491, 19.122835, 24.927767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356914, 0.447108, 0.820187,
		0.023125, 0.873517, -0.486244,
		-0.933851, 0.192514, 0.301431,
		12.687336, 19.180590, 25.018196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356298, 19.697237, 25.080555>,  <13.341031, 19.045830, 24.807194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356298, 19.697237, 25.080555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036112, 19.523380, 25.245644>,  <12.844000, 19.419065, 25.344696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036112, 19.523380, 25.245644>,  <13.356298, 19.697237, 25.080555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036112, 19.523380, 25.245644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300528, 0.304725, 0.903784,
		-0.518589, 0.847483, -0.113300,
		-0.800467, -0.434643, 0.412720,
		12.795972, 19.392988, 25.369459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.172014, 20.123310, 25.520327>,  <13.356298, 19.697237, 25.080555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.172014, 20.123310, 25.520327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994249, 19.797552, 25.669596>,  <12.887590, 19.602097, 25.759157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994249, 19.797552, 25.669596>,  <13.172014, 20.123310, 25.520327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994249, 19.797552, 25.669596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219201, 0.305048, 0.926767,
		-0.868590, 0.493666, 0.042949,
		-0.444412, -0.814395, 0.373174,
		12.860926, 19.553234, 25.781548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815968, 20.352503, 26.152611>,  <13.172014, 20.123310, 25.520327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.815968, 20.352503, 26.152611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882426, 19.959177, 26.182245>,  <12.922301, 19.723181, 26.200026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882426, 19.959177, 26.182245>,  <12.815968, 20.352503, 26.152611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882426, 19.959177, 26.182245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339920, 0.127637, 0.931753,
		-0.925662, -0.129624, 0.355454,
		0.166147, -0.983314, 0.074087,
		12.932270, 19.664183, 26.204472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673017, 20.254627, 26.796772>,  <12.815968, 20.352503, 26.152611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673017, 20.254627, 26.796772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862355, 19.917458, 26.694462>,  <12.975959, 19.715157, 26.633076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862355, 19.917458, 26.694462>,  <12.673017, 20.254627, 26.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862355, 19.917458, 26.694462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422279, -0.037685, 0.905682,
		-0.773061, -0.536711, 0.338111,
		0.473348, -0.842924, -0.255775,
		13.004359, 19.664579, 26.617729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533978, 19.693907, 27.338675>,  <12.673017, 20.254627, 26.796772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533978, 19.693907, 27.338675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883060, 19.605843, 27.164356>,  <13.092508, 19.553005, 27.059765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883060, 19.605843, 27.164356>,  <12.533978, 19.693907, 27.338675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883060, 19.605843, 27.164356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427402, -0.087025, 0.899863,
		-0.236039, -0.971574, 0.018150,
		0.872705, -0.220160, -0.435794,
		13.144871, 19.539795, 27.033617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819702, 19.172337, 27.782379>,  <12.533978, 19.693907, 27.338675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819702, 19.172337, 27.782379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141443, 19.292686, 27.577444>,  <13.334488, 19.364897, 27.454483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141443, 19.292686, 27.577444>,  <12.819702, 19.172337, 27.782379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141443, 19.292686, 27.577444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574001, -0.170839, 0.800835,
		0.153423, -0.938237, -0.310117,
		0.804353, 0.300875, -0.512338,
		13.382750, 19.382948, 27.423742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314744, 18.722755, 27.940916>,  <12.819702, 19.172337, 27.782379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314744, 18.722755, 27.940916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512215, 19.035147, 27.787891>,  <13.630697, 19.222582, 27.696075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512215, 19.035147, 27.787891>,  <13.314744, 18.722755, 27.940916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512215, 19.035147, 27.787891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510049, 0.096279, 0.854740,
		0.704367, -0.617092, -0.350807,
		0.493678, 0.780979, -0.382563,
		13.660318, 19.269440, 27.673122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055670, 18.748775, 28.224522>,  <13.314744, 18.722755, 27.940916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055670, 18.748775, 28.224522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963331, 19.122322, 28.115267>,  <13.907928, 19.346451, 28.049715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963331, 19.122322, 28.115267>,  <14.055670, 18.748775, 28.224522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.963331, 19.122322, 28.115267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539466, 0.356465, 0.762830,
		0.809744, 0.028750, -0.586078,
		-0.230847, 0.933866, -0.273136,
		13.894077, 19.402481, 28.033325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666792, 19.159555, 28.235735>,  <14.055670, 18.748775, 28.224522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666792, 19.159555, 28.235735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376300, 19.432829, 28.266329>,  <14.202004, 19.596792, 28.284685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.376300, 19.432829, 28.266329>,  <14.666792, 19.159555, 28.235735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376300, 19.432829, 28.266329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527771, 0.482790, 0.698836,
		0.440509, 0.547881, -0.711181,
		-0.726230, 0.683184, 0.076483,
		14.158431, 19.637785, 28.289274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
