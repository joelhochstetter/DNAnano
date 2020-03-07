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
	<0.804811, 1.152764, -0.508284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.088435, 1.346294, -0.303093>,  <1.258609, 1.462413, -0.179978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.088435, 1.346294, -0.303093>,  <0.804811, 1.152764, -0.508284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.088435, 1.346294, -0.303093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410441, -0.308364, 0.858167,
		0.573388, -0.819038, -0.020066,
		0.709059, 0.483827, 0.512979,
		1.301153, 1.491442, -0.149199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.224528, 0.692879, -0.144363>,  <0.804811, 1.152764, -0.508284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.224528, 0.692879, -0.144363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.152250, 1.056885, 0.004887>,  <1.108884, 1.275288, 0.094436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.152250, 1.056885, 0.004887>,  <1.224528, 0.692879, -0.144363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.152250, 1.056885, 0.004887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510456, -0.411044, 0.755300,
		0.840705, -0.053985, 0.538796,
		-0.180694, 0.910015, 0.373124,
		1.098042, 1.329889, 0.116824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.448155, 0.738530, 0.604597>,  <1.224528, 0.692879, -0.144363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.448155, 0.738530, 0.604597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145763, 0.995255, 0.553097>,  <0.964329, 1.149289, 0.522197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145763, 0.995255, 0.553097>,  <1.448155, 0.738530, 0.604597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.145763, 0.995255, 0.553097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380872, -0.271303, 0.883929,
		0.532385, 0.717268, 0.449547,
		-0.755978, 0.641810, -0.128750,
		0.918970, 1.187798, 0.514472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.300929, 1.161091, 1.167173>,  <1.448155, 0.738530, 0.604597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.300929, 1.161091, 1.167173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942623, 1.110138, 0.996819>,  <0.727640, 1.079566, 0.894606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.942623, 1.110138, 0.996819>,  <1.300929, 1.161091, 1.167173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.942623, 1.110138, 0.996819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407557, -0.147197, 0.901238,
		-0.177491, 0.980870, 0.079938,
		-0.895764, -0.127383, -0.425887,
		0.673894, 1.071923, 0.869052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.808299, 1.416914, 1.616749>,  <1.300929, 1.161091, 1.167173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.808299, 1.416914, 1.616749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.600539, 1.173882, 1.376392>,  <0.475884, 1.028062, 1.232179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.600539, 1.173882, 1.376392>,  <0.808299, 1.416914, 1.616749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.600539, 1.173882, 1.376392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587409, -0.256846, 0.767451,
		-0.620626, 0.751581, -0.223494,
		-0.519398, -0.607582, -0.600891,
		0.444720, 0.991607, 1.196125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.083997, 1.486276, 1.772066>,  <0.808299, 1.416914, 1.616749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.083997, 1.486276, 1.772066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.063714, 1.133270, 1.585049>,  <0.051545, 0.921467, 1.472838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.063714, 1.133270, 1.585049>,  <0.083997, 1.486276, 1.772066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.063714, 1.133270, 1.585049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688527, -0.308220, 0.656453,
		-0.723436, 0.355204, -0.592006,
		-0.050706, -0.882514, -0.467545,
		0.048502, 0.868516, 1.444785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.606962, 1.368490, 1.606387>,  <0.083997, 1.486276, 1.772066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.606962, 1.368490, 1.606387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.427039, 1.011894, 1.627995>,  <-0.319085, 0.797936, 1.640959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.427039, 1.011894, 1.627995>,  <-0.606962, 1.368490, 1.606387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.427039, 1.011894, 1.627995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677968, -0.301449, 0.670439,
		-0.581406, -0.338191, -0.739996,
		0.449807, -0.891490, 0.054018,
		-0.292097, 0.744447, 1.644200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.146317, 0.782683, 1.535419>,  <-0.606962, 1.368490, 1.606387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.146317, 0.782683, 1.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.832652, 0.630569, 1.731571>,  <-0.644453, 0.539302, 1.849263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.832652, 0.630569, 1.731571>,  <-1.146317, 0.782683, 1.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.832652, 0.630569, 1.731571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598938, -0.257046, 0.758420,
		-0.162363, -0.888433, -0.429332,
		0.784163, -0.380282, 0.490381,
		-0.597403, 0.516485, 1.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.348078, 0.072728, 3.094053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.684563, -0.054024, 3.269302>,  <3.886453, -0.130075, 3.374452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.684563, -0.054024, 3.269302>,  <3.348078, 0.072728, 3.094053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.684563, -0.054024, 3.269302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521672, 0.262525, -0.811750,
		0.142208, 0.911410, 0.386146,
		0.841210, -0.316879, 0.438124,
		3.936926, -0.149088, 3.400740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.863163, 0.610894, 3.119691>,  <3.348078, 0.072728, 3.094053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.863163, 0.610894, 3.119691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999622, 0.236488, 3.085060>,  <4.081498, 0.011845, 3.064282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999622, 0.236488, 3.085060>,  <3.863163, 0.610894, 3.119691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999622, 0.236488, 3.085060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344477, 0.210180, -0.914964,
		0.874616, 0.282315, 0.394138,
		0.341149, -0.936014, -0.086576,
		4.101967, -0.044316, 3.059087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.491889, 0.676966, 2.843532>,  <3.863163, 0.610894, 3.119691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.491889, 0.676966, 2.843532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416304, 0.293091, 2.760303>,  <4.370953, 0.062766, 2.710366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416304, 0.293091, 2.760303>,  <4.491889, 0.676966, 2.843532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416304, 0.293091, 2.760303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439070, 0.106956, -0.892064,
		0.878357, -0.259924, 0.401159,
		-0.188963, -0.959687, -0.208071,
		4.359615, 0.005185, 2.697882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.137268, 0.322051, 2.765249>,  <4.491889, 0.676966, 2.843532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.137268, 0.322051, 2.765249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.838789, 0.164490, 2.550575>,  <4.659701, 0.069953, 2.421771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.838789, 0.164490, 2.550575>,  <5.137268, 0.322051, 2.765249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.838789, 0.164490, 2.550575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526484, 0.144214, -0.837864,
		0.407435, -0.907767, 0.099772,
		-0.746197, -0.393904, -0.536683,
		4.614930, 0.046319, 2.389570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.293978, -0.305100, 2.315238>,  <5.137268, 0.322051, 2.765249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.293978, -0.305100, 2.315238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.023516, -0.046089, 2.174656>,  <4.861238, 0.109317, 2.090307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.023516, -0.046089, 2.174656>,  <5.293978, -0.305100, 2.315238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.023516, -0.046089, 2.174656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512640, 0.070876, -0.855673,
		-0.529162, -0.758739, -0.379871,
		-0.676156, 0.647527, -0.351455,
		4.820669, 0.148169, 2.069219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.249288, -0.442082, 1.599473>,  <5.293978, -0.305100, 2.315238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.249288, -0.442082, 1.599473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.061501, -0.089424, 1.618668>,  <4.948828, 0.122171, 1.630185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.061501, -0.089424, 1.618668>,  <5.249288, -0.442082, 1.599473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.061501, -0.089424, 1.618668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513125, 0.316656, -0.797767,
		-0.718543, -0.349902, -0.601053,
		-0.469467, 0.881645, 0.047987,
		4.920660, 0.175069, 1.633064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.230709, -0.302398, 0.934292>,  <5.249288, -0.442082, 1.599473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.230709, -0.302398, 0.934292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.159206, 0.053452, 1.102394>,  <5.116305, 0.266961, 1.203255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.159206, 0.053452, 1.102394>,  <5.230709, -0.302398, 0.934292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.159206, 0.053452, 1.102394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455030, 0.453461, -0.766369,
		-0.872350, 0.054235, -0.485864,
		-0.178756, 0.889625, 0.420255,
		5.105579, 0.320339, 1.228471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.878315, 0.076417, 0.468220>,  <5.230709, -0.302398, 0.934292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.878315, 0.076417, 0.468220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.078999, 0.321754, 0.712219>,  <5.199409, 0.468957, 0.858619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.078999, 0.321754, 0.712219>,  <4.878315, 0.076417, 0.468220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.078999, 0.321754, 0.712219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394561, 0.465287, -0.792357,
		-0.769812, 0.638214, -0.008563,
		0.501709, 0.613344, 0.609997,
		5.229511, 0.505758, 0.895218>
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
