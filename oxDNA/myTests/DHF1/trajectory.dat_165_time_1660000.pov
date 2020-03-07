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
	<1.554091, 2.473750, 1.744751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690514, 2.161781, 1.534836>,  <1.772367, 1.974600, 1.408887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690514, 2.161781, 1.534836>,  <1.554091, 2.473750, 1.744751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690514, 2.161781, 1.534836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717191, 0.576784, -0.391097,
		0.607714, -0.242987, 0.756069,
		0.341057, -0.779921, -0.524788,
		1.792831, 1.927805, 1.377399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.281422, 2.318881, 1.827655>,  <1.554091, 2.473750, 1.744751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.281422, 2.318881, 1.827655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.193428, 2.170204, 1.466888>,  <2.140631, 2.080998, 1.250429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.193428, 2.170204, 1.466888>,  <2.281422, 2.318881, 1.827655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.193428, 2.170204, 1.466888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734711, 0.545081, -0.403839,
		0.641721, -0.751486, 0.153176,
		-0.219986, -0.371692, -0.901915,
		2.127432, 2.058697, 1.196314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909386, 2.169635, 1.606520>,  <2.281422, 2.318881, 1.827655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909386, 2.169635, 1.606520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.684921, 2.179886, 1.275597>,  <2.550242, 2.186037, 1.077043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.684921, 2.179886, 1.275597>,  <2.909386, 2.169635, 1.606520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684921, 2.179886, 1.275597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740281, 0.462638, -0.487801,
		0.370243, -0.886177, -0.278587,
		-0.561163, 0.025628, -0.827308,
		2.516572, 2.187574, 1.027404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.257048, 1.729364, 1.045171>,  <2.909386, 2.169635, 1.606520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.257048, 1.729364, 1.045171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.037071, 2.044571, 0.934471>,  <2.905085, 2.233695, 0.868051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.037071, 2.044571, 0.934471>,  <3.257048, 1.729364, 1.045171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.037071, 2.044571, 0.934471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825339, 0.461975, -0.324644,
		-0.127974, -0.406948, -0.904443,
		-0.549943, 0.788018, -0.276749,
		2.872088, 2.280976, 0.851446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.342246, 1.887624, 0.308263>,  <3.257048, 1.729364, 1.045171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.342246, 1.887624, 0.308263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.233833, 2.211372, 0.516670>,  <3.168786, 2.405622, 0.641714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.233833, 2.211372, 0.516670>,  <3.342246, 1.887624, 0.308263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.233833, 2.211372, 0.516670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781356, 0.501109, -0.371985,
		-0.562160, 0.306280, -0.768224,
		-0.271033, 0.809371, 0.521017,
		3.152524, 2.454184, 0.672975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.495052, 2.477197, -0.141125>,  <3.342246, 1.887624, 0.308263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.495052, 2.477197, -0.141125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.486923, 2.658699, 0.215233>,  <3.482046, 2.767600, 0.429048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.486923, 2.658699, 0.215233>,  <3.495052, 2.477197, -0.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.486923, 2.658699, 0.215233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685350, 0.655100, -0.318024,
		-0.727930, 0.604112, -0.324294,
		-0.020323, 0.453754, 0.890895,
		3.480826, 2.794825, 0.482501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.391669, 3.144743, -0.259284>,  <3.495052, 2.477197, -0.141125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.391669, 3.144743, -0.259284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.560646, 3.130432, 0.102989>,  <3.662032, 3.121845, 0.320353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.560646, 3.130432, 0.102989>,  <3.391669, 3.144743, -0.259284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.560646, 3.130432, 0.102989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717528, 0.623721, -0.310041,
		-0.553801, 0.780827, 0.289159,
		0.422443, -0.035779, 0.905683,
		3.687379, 3.119699, 0.374694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.692596, 3.842363, -0.258315>,  <3.391669, 3.144743, -0.259284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.692596, 3.842363, -0.258315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865509, 3.653038, 0.048698>,  <3.969257, 3.539443, 0.232906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865509, 3.653038, 0.048698>,  <3.692596, 3.842363, -0.258315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.865509, 3.653038, 0.048698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812333, 0.573919, -0.103598,
		-0.391467, 0.668277, 0.632582,
		0.432283, -0.473312, 0.767533,
		3.995194, 3.511045, 0.278958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.053689, 4.701738, -0.212633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.278168, 4.376419, -0.151176>,  <5.412855, 4.181228, -0.114302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.278168, 4.376419, -0.151176>,  <5.053689, 4.701738, -0.212633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.278168, 4.376419, -0.151176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700706, -0.368044, 0.611191,
		-0.440535, -0.450653, -0.776428,
		0.561195, -0.813299, 0.153640,
		5.446527, 4.132430, -0.105084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.726013, 4.032901, -0.358696>,  <5.053689, 4.701738, -0.212633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.726013, 4.032901, -0.358696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.982239, 3.959534, -0.060425>,  <5.135974, 3.915513, 0.118538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.982239, 3.959534, -0.060425>,  <4.726013, 4.032901, -0.358696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.982239, 3.959534, -0.060425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729033, -0.450296, 0.515504,
		0.241223, -0.873837, -0.422161,
		0.640564, -0.183417, 0.745677,
		5.174408, 3.904508, 0.163278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.802547, 3.321770, -0.263086>,  <4.726013, 4.032901, -0.358696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.802547, 3.321770, -0.263086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849236, 3.534737, 0.072273>,  <4.877248, 3.662516, 0.273489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849236, 3.534737, 0.072273>,  <4.802547, 3.321770, -0.263086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.849236, 3.534737, 0.072273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673154, -0.578271, 0.460941,
		0.730233, -0.618172, 0.290901,
		0.116721, 0.532415, 0.838398,
		4.884252, 3.694461, 0.323792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.930137, 2.852934, 0.356709>,  <4.802547, 3.321770, -0.263086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.930137, 2.852934, 0.356709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.733944, 3.187721, 0.453796>,  <4.616228, 3.388593, 0.512049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.733944, 3.187721, 0.453796>,  <4.930137, 2.852934, 0.356709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.733944, 3.187721, 0.453796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731655, -0.546808, 0.407041,
		0.473400, 0.022061, 0.880571,
		-0.490483, 0.836967, 0.242718,
		4.586799, 3.438811, 0.526612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.727806, 2.771339, 1.038032>,  <4.930137, 2.852934, 0.356709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.727806, 2.771339, 1.038032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.486423, 3.033424, 0.856247>,  <4.341594, 3.190676, 0.747176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.486423, 3.033424, 0.856247>,  <4.727806, 2.771339, 1.038032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.486423, 3.033424, 0.856247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796551, -0.469078, 0.381409,
		0.036726, 0.592166, 0.804978,
		-0.603455, 0.655214, -0.454463,
		4.305387, 3.229989, 0.719908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.264297, 3.155510, 1.516228>,  <4.727806, 2.771339, 1.038032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.264297, 3.155510, 1.516228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.082775, 3.144012, 1.159973>,  <3.973862, 3.137114, 0.946220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.082775, 3.144012, 1.159973>,  <4.264297, 3.155510, 1.516228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.082775, 3.144012, 1.159973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856951, -0.259967, 0.445030,
		-0.244328, 0.965190, 0.093342,
		-0.453804, -0.028744, -0.890638,
		3.946634, 3.135389, 0.892782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502275, 3.176633, 1.723428>,  <4.264297, 3.155510, 1.516228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502275, 3.176633, 1.723428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499081, 3.073921, 1.336853>,  <3.497164, 3.012294, 1.104908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499081, 3.073921, 1.336853>,  <3.502275, 3.176633, 1.723428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.499081, 3.073921, 1.336853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910196, -0.398362, 0.113365,
		-0.414102, 0.880552, -0.230538,
		-0.007986, -0.256779, -0.966437,
		3.496685, 2.996887, 1.046922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.963661, 3.471164, 1.511944>,  <3.502275, 3.176633, 1.723428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.963661, 3.471164, 1.511944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.027996, 3.146248, 1.287689>,  <3.066597, 2.951298, 1.153136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.027996, 3.146248, 1.287689>,  <2.963661, 3.471164, 1.511944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.027996, 3.146248, 1.287689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932200, -0.311635, 0.184083,
		-0.324244, 0.493020, -0.807340,
		0.160838, -0.812290, -0.560639,
		3.076248, 2.902561, 1.119498>
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
