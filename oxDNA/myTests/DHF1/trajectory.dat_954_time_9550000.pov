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
	<5.007344, 2.314865, 4.891815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855751, 2.675566, 4.808661>,  <4.764795, 2.891986, 4.758768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855751, 2.675566, 4.808661>,  <5.007344, 2.314865, 4.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.855751, 2.675566, 4.808661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550532, 0.039131, -0.833896,
		-0.743832, -0.430480, -0.511273,
		-0.378983, 0.901751, -0.207886,
		4.742056, 2.946091, 4.746294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.640829, 2.341964, 4.182428>,  <5.007344, 2.314865, 4.891815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.640829, 2.341964, 4.182428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816376, 2.673143, 4.322083>,  <4.921704, 2.871851, 4.405875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816376, 2.673143, 4.322083>,  <4.640829, 2.341964, 4.182428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816376, 2.673143, 4.322083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575938, 0.039047, -0.816560,
		-0.689703, 0.559443, -0.459711,
		0.438868, 0.827949, 0.349136,
		4.948036, 2.921528, 4.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.637910, 2.812845, 3.687156>,  <4.640829, 2.341964, 4.182428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.637910, 2.812845, 3.687156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.958786, 2.835735, 3.924885>,  <5.151311, 2.849470, 4.067522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.958786, 2.835735, 3.924885>,  <4.637910, 2.812845, 3.687156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.958786, 2.835735, 3.924885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594981, 0.006579, -0.803713,
		-0.049904, 0.998339, -0.028772,
		0.802189, 0.057227, 0.594321,
		5.199443, 2.852903, 4.103181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182039, 2.305314, 3.356278>,  <4.637910, 2.812845, 3.687156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182039, 2.305314, 3.356278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981133, 2.644005, 3.426456>,  <3.860589, 2.847219, 3.468564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981133, 2.644005, 3.426456>,  <4.182039, 2.305314, 3.356278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981133, 2.644005, 3.426456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334828, -0.003372, -0.942273,
		-0.797257, -0.532016, 0.285202,
		-0.502266, 0.846728, 0.175446,
		3.830453, 2.898023, 3.479090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405116, 2.223667, 3.313370>,  <4.182039, 2.305314, 3.356278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405116, 2.223667, 3.313370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543343, 2.583370, 3.206099>,  <3.626278, 2.799192, 3.141736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543343, 2.583370, 3.206099>,  <3.405116, 2.223667, 3.313370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.543343, 2.583370, 3.206099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189243, -0.213131, -0.958521,
		-0.919114, 0.381983, 0.096527,
		0.345566, 0.899257, -0.268179,
		3.647012, 2.853148, 3.125645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.910536, 2.539837, 2.929825>,  <3.405116, 2.223667, 3.313370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.910536, 2.539837, 2.929825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252586, 2.708687, 2.809444>,  <3.457816, 2.809997, 2.737216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252586, 2.708687, 2.809444>,  <2.910536, 2.539837, 2.929825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252586, 2.708687, 2.809444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241523, -0.189282, -0.951756,
		-0.458724, 0.886557, -0.059907,
		0.855125, 0.422125, -0.300952,
		3.509124, 2.835324, 2.719159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.719942, 2.902305, 2.321362>,  <2.910536, 2.539837, 2.929825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.719942, 2.902305, 2.321362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113884, 2.859093, 2.267120>,  <3.350249, 2.833165, 2.234575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113884, 2.859093, 2.267120>,  <2.719942, 2.902305, 2.321362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.113884, 2.859093, 2.267120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153815, -0.183516, -0.970908,
		0.080002, 0.977062, -0.197354,
		0.984856, -0.108030, -0.135605,
		3.409341, 2.826684, 2.226439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.941503, 3.357799, 1.793888>,  <2.719942, 2.902305, 2.321362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.941503, 3.357799, 1.793888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.192215, 3.047287, 1.820835>,  <3.342642, 2.860980, 1.837003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.192215, 3.047287, 1.820835>,  <2.941503, 3.357799, 1.793888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.192215, 3.047287, 1.820835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054339, -0.129793, -0.990051,
		0.777300, 0.616883, -0.123534,
		0.626780, -0.776279, 0.067367,
		3.380249, 2.814403, 1.841045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.808164, 2.002820, 0.992351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.183228, 1.979866, 0.855236>,  <3.408266, 1.966093, 0.772967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.183228, 1.979866, 0.855236>,  <2.808164, 2.002820, 0.992351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.183228, 1.979866, 0.855236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346104, 0.064038, 0.936008,
		-0.031764, -0.996296, 0.079908,
		0.937659, -0.057388, -0.342788,
		3.464525, 1.962650, 0.752400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.301406, 1.587733, 1.422534>,  <2.808164, 2.002820, 0.992351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.301406, 1.587733, 1.422534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511971, 1.874603, 1.239864>,  <3.638309, 2.046726, 1.130263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.511971, 1.874603, 1.239864>,  <3.301406, 1.587733, 1.422534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.511971, 1.874603, 1.239864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455975, 0.215211, 0.863580,
		0.717620, -0.662830, -0.213725,
		0.526411, 0.717176, -0.456674,
		3.669894, 2.089756, 1.102862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.870682, 1.563077, 1.772814>,  <3.301406, 1.587733, 1.422534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.870682, 1.563077, 1.772814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.835625, 1.932117, 1.622547>,  <3.814590, 2.153542, 1.532387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.835625, 1.932117, 1.622547>,  <3.870682, 1.563077, 1.772814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.835625, 1.932117, 1.622547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206522, 0.385753, 0.899190,
		0.974509, 0.001225, -0.224346,
		-0.087644, 0.922601, -0.375667,
		3.809332, 2.208898, 1.509847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.409055, 2.089981, 1.982770>,  <3.870682, 1.563077, 1.772814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.409055, 2.089981, 1.982770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081306, 2.310608, 1.920284>,  <3.884657, 2.442984, 1.882793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081306, 2.310608, 1.920284>,  <4.409055, 2.089981, 1.982770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.081306, 2.310608, 1.920284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134161, 0.449435, 0.883181,
		0.557343, 0.702696, -0.442253,
		-0.819372, 0.551568, -0.156215,
		3.835495, 2.476078, 1.873420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.672169, 2.677673, 2.125523>,  <4.409055, 2.089981, 1.982770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.672169, 2.677673, 2.125523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.276688, 2.721535, 2.166399>,  <4.039399, 2.747852, 2.190924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.276688, 2.721535, 2.166399>,  <4.672169, 2.677673, 2.125523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.276688, 2.721535, 2.166399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143391, 0.493392, 0.857907,
		0.043654, 0.862868, -0.503541,
		-0.988703, 0.109655, 0.102189,
		3.980077, 2.754431, 2.197056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.599044, 3.380141, 2.307452>,  <4.672169, 2.677673, 2.125523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.599044, 3.380141, 2.307452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.262100, 3.209034, 2.438568>,  <4.059934, 3.106370, 2.517238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.262100, 3.209034, 2.438568>,  <4.599044, 3.380141, 2.307452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.262100, 3.209034, 2.438568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043052, 0.552880, 0.832148,
		-0.537194, 0.715079, -0.447307,
		-0.842359, -0.427768, 0.327789,
		4.009393, 3.080703, 2.536905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.228607, 3.875369, 2.656195>,  <4.599044, 3.380141, 2.307452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.228607, 3.875369, 2.656195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.070534, 3.543201, 2.813286>,  <3.975690, 3.343901, 2.907540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.070534, 3.543201, 2.813286>,  <4.228607, 3.875369, 2.656195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.070534, 3.543201, 2.813286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073898, 0.397402, 0.914664,
		-0.915625, 0.390481, -0.095680,
		-0.395182, -0.830419, 0.392727,
		3.951979, 3.294076, 2.931104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695953, 4.095191, 3.077919>,  <4.228607, 3.875369, 2.656195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695953, 4.095191, 3.077919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.832626, 3.751663, 3.230593>,  <3.914630, 3.545547, 3.322197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.832626, 3.751663, 3.230593>,  <3.695953, 4.095191, 3.077919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.832626, 3.751663, 3.230593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066602, 0.382978, 0.921353,
		-0.937452, -0.340232, 0.073658,
		0.341684, -0.858819, 0.381684,
		3.935132, 3.494018, 3.345098>
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
