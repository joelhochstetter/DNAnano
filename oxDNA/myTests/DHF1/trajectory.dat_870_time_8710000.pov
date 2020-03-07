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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<-0.447522, 2.736864, 3.481551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.635132, 2.386208, 3.438626>,  <-0.747698, 2.175814, 3.412871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.635132, 2.386208, 3.438626>,  <-0.447522, 2.736864, 3.481551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.635132, 2.386208, 3.438626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757057, 0.461643, -0.462331,
		0.454830, -0.135618, -0.880191,
		-0.469034, -0.876638, -0.107299,
		-0.775839, 2.123215, 3.406433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.712469, 2.598974, 2.812401>,  <-0.447522, 2.736864, 3.481551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.712469, 2.598974, 2.812401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.947472, 2.439583, 3.094125>,  <-1.088473, 2.343948, 3.263159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.947472, 2.439583, 3.094125>,  <-0.712469, 2.598974, 2.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.947472, 2.439583, 3.094125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783741, 0.496874, -0.372648,
		-0.201461, -0.770929, -0.604220,
		-0.587506, -0.398478, 0.704309,
		-1.123724, 2.320039, 3.305417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.000519, 2.795933, 2.520608>,  <-0.712469, 2.598974, 2.812401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.000519, 2.795933, 2.520608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.185989, 3.120499, 2.662938>,  <0.297271, 3.315238, 2.748336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.185989, 3.120499, 2.662938>,  <0.000519, 2.795933, 2.520608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.185989, 3.120499, 2.662938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865048, -0.501428, 0.016204,
		0.191568, 0.300291, -0.934412,
		0.463675, 0.811415, 0.355824,
		0.325092, 3.363923, 2.769685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.559359, 2.915851, 2.174185>,  <0.000519, 2.795933, 2.520608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.559359, 2.915851, 2.174185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.640495, 3.057785, 2.539248>,  <0.689177, 3.142945, 2.758287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.640495, 3.057785, 2.539248>,  <0.559359, 2.915851, 2.174185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.640495, 3.057785, 2.539248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896322, -0.442572, -0.027141,
		0.394287, 0.823543, -0.407817,
		0.202840, 0.354835, 0.912660,
		0.701347, 3.164235, 2.813046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193630, 2.966586, 2.180941>,  <0.559359, 2.915851, 2.174185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193630, 2.966586, 2.180941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158386, 2.977135, 2.579246>,  <1.137240, 2.983464, 2.818228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.158386, 2.977135, 2.579246>,  <1.193630, 2.966586, 2.180941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158386, 2.977135, 2.579246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828047, -0.553720, 0.087935,
		0.553692, 0.832285, 0.026951,
		-0.088110, 0.026373, 0.995762,
		1.131953, 2.985046, 2.877974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.951961, 3.159508, 2.507669>,  <1.193630, 2.966586, 2.180941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.951961, 3.159508, 2.507669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725067, 2.973785, 2.779747>,  <1.588931, 2.862352, 2.942994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725067, 2.973785, 2.779747>,  <1.951961, 3.159508, 2.507669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.725067, 2.973785, 2.779747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785952, -0.551919, 0.278686,
		0.246017, 0.692681, 0.677989,
		-0.567235, -0.464305, 0.680195,
		1.554897, 2.834494, 2.983805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.448005, 3.121816, 3.154275>,  <1.951961, 3.159508, 2.507669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.448005, 3.121816, 3.154275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169296, 2.845932, 3.233077>,  <2.002071, 2.680402, 3.280358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169296, 2.845932, 3.233077>,  <2.448005, 3.121816, 3.154275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169296, 2.845932, 3.233077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701635, -0.598275, 0.387009,
		-0.149060, 0.407882, 0.900785,
		-0.696771, -0.689709, 0.197005,
		1.960265, 2.639019, 3.292179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.640734, 2.809240, 3.705238>,  <2.448005, 3.121816, 3.154275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.640734, 2.809240, 3.705238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.399406, 2.528809, 3.553187>,  <2.254610, 2.360550, 3.461957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.399406, 2.528809, 3.553187>,  <2.640734, 2.809240, 3.705238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.399406, 2.528809, 3.553187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543321, -0.710250, 0.447602,
		-0.583788, 0.063516, 0.809418,
		-0.603319, -0.701078, -0.380126,
		2.218411, 2.318485, 3.439150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.576108, 1.175491, 1.620666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974129, 1.147682, 1.592279>,  <2.212941, 1.130997, 1.575246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974129, 1.147682, 1.592279>,  <1.576108, 1.175491, 1.620666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974129, 1.147682, 1.592279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058132, 0.986740, -0.151540,
		0.080563, 0.146665, 0.985900,
		0.995053, -0.069521, -0.070969,
		2.272645, 1.126826, 1.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.985448, 1.541143, 2.062706>,  <1.576108, 1.175491, 1.620666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.985448, 1.541143, 2.062706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198036, 1.535255, 1.723926>,  <2.325589, 1.531723, 1.520658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198036, 1.535255, 1.723926>,  <1.985448, 1.541143, 2.062706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.198036, 1.535255, 1.723926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256223, 0.950219, -0.177296,
		0.807396, 0.311235, 0.501243,
		0.531472, -0.014718, -0.846948,
		2.357478, 1.530840, 1.469842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.958049, 1.205167, 2.816758>,  <1.985448, 1.541143, 2.062706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.958049, 1.205167, 2.816758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.029892, 1.432365, 3.138035>,  <2.072998, 1.568685, 3.330802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.029892, 1.432365, 3.138035>,  <1.958049, 1.205167, 2.816758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.029892, 1.432365, 3.138035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738181, 0.617507, -0.271614,
		-0.650254, -0.544118, 0.530194,
		0.179608, 0.567997, 0.803194,
		2.083774, 1.602765, 3.378994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427388, 1.564783, 2.791211>,  <1.958049, 1.205167, 2.816758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427388, 1.564783, 2.791211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.643143, 1.767075, 3.060522>,  <1.772595, 1.888450, 3.222108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.643143, 1.767075, 3.060522>,  <1.427388, 1.564783, 2.791211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.643143, 1.767075, 3.060522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673382, 0.739128, -0.015723,
		-0.505589, -0.444891, 0.739224,
		0.539386, 0.505729, 0.673277,
		1.804958, 1.918793, 3.262505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.010462, 1.803138, 3.359061>,  <1.427388, 1.564783, 2.791211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.010462, 1.803138, 3.359061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.313454, 2.064186, 3.352008>,  <1.495249, 2.220815, 3.347776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.313454, 2.064186, 3.352008>,  <1.010462, 1.803138, 3.359061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.313454, 2.064186, 3.352008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652550, 0.757676, 0.010256,
		0.020054, 0.003739, 0.999792,
		0.757480, 0.652620, -0.017634,
		1.540698, 2.259972, 3.346718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.819716, 2.272345, 3.867777>,  <1.010462, 1.803138, 3.359061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.819716, 2.272345, 3.867777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059425, 2.436691, 3.592950>,  <1.203251, 2.535299, 3.428054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059425, 2.436691, 3.592950>,  <0.819716, 2.272345, 3.867777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059425, 2.436691, 3.592950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653859, 0.746392, -0.123967,
		0.461887, 0.523535, 0.715941,
		0.599274, 0.410866, -0.687066,
		1.239208, 2.559951, 3.386830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.669892, 2.868388, 4.068863>,  <0.819716, 2.272345, 3.867777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.669892, 2.868388, 4.068863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.868790, 2.951080, 3.731815>,  <0.988128, 3.000696, 3.529586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.868790, 2.951080, 3.731815>,  <0.669892, 2.868388, 4.068863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.868790, 2.951080, 3.731815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606850, 0.776968, -0.167490,
		0.620065, 0.594628, 0.511798,
		0.497245, 0.206730, -0.842621,
		1.017963, 3.013099, 3.479028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984736, 3.649785, 3.992409>,  <0.669892, 2.868388, 4.068863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984736, 3.649785, 3.992409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.874680, 3.491348, 3.642001>,  <0.808646, 3.396286, 3.431757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.874680, 3.491348, 3.642001>,  <0.984736, 3.649785, 3.992409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.874680, 3.491348, 3.642001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727318, 0.681649, -0.079771,
		0.628734, 0.615195, -0.475635,
		-0.275141, -0.396093, -0.876018,
		0.792137, 3.372521, 3.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
