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
	<2.184910, -0.134505, 0.543430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.942829, -0.450912, 0.507607>,  <1.797581, -0.640757, 0.486112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.942829, -0.450912, 0.507607>,  <2.184910, -0.134505, 0.543430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.942829, -0.450912, 0.507607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693957, 0.469095, 0.546236,
		-0.390072, 0.392733, -0.832830,
		-0.605201, -0.791019, -0.089559,
		1.761269, -0.688218, 0.480739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.409238, -0.008933, 0.195122>,  <2.184910, -0.134505, 0.543430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.409238, -0.008933, 0.195122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.431408, -0.303879, 0.464409>,  <1.444710, -0.480846, 0.625981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.431408, -0.303879, 0.464409>,  <1.409238, -0.008933, 0.195122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.431408, -0.303879, 0.464409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591012, 0.519217, 0.617348,
		-0.804756, -0.432097, -0.407013,
		0.055426, -0.737364, 0.673217,
		1.448036, -0.525088, 0.666374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.772068, -0.215678, 0.275799>,  <1.409238, -0.008933, 0.195122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.772068, -0.215678, 0.275799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.020473, -0.245728, 0.587875>,  <1.169517, -0.263757, 0.775121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.020473, -0.245728, 0.587875>,  <0.772068, -0.215678, 0.275799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.020473, -0.245728, 0.587875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660576, 0.485605, 0.572563,
		-0.421877, -0.870945, 0.251942,
		0.621015, -0.075124, 0.780190,
		1.206778, -0.268265, 0.821932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.435139, -0.534975, 0.795613>,  <0.772068, -0.215678, 0.275799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.435139, -0.534975, 0.795613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.693981, -0.265625, 0.938622>,  <0.849286, -0.104015, 1.024427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.693981, -0.265625, 0.938622>,  <0.435139, -0.534975, 0.795613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.693981, -0.265625, 0.938622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742734, 0.450972, 0.494945,
		0.172051, -0.585825, 0.791964,
		0.647105, 0.673375, 0.357522,
		0.888113, -0.063612, 1.045878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.290826, -0.502688, 1.533345>,  <0.435139, -0.534975, 0.795613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.290826, -0.502688, 1.533345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.445408, -0.181564, 1.351730>,  <0.538157, 0.011110, 1.242761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.445408, -0.181564, 1.351730>,  <0.290826, -0.502688, 1.533345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.445408, -0.181564, 1.351730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726453, 0.568260, 0.386454,
		0.568260, 0.180490, 0.802810,
		-0.386454, -0.802810, 0.454037,
		0.561344, 0.059279, 1.215519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.320550, -0.056670, 2.007619>,  <0.290826, -0.502688, 1.533345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.320550, -0.056670, 2.007619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.319241, 0.154419, 1.667854>,  <0.318455, 0.281072, 1.463996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.319241, 0.154419, 1.667854>,  <0.320550, -0.056670, 2.007619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.319241, 0.154419, 1.667854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793852, 0.515162, 0.323121,
		0.608103, 0.675364, 0.417246,
		-0.003275, 0.527722, -0.849411,
		0.318258, 0.312736, 1.413031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.181721, 0.660980, 2.218697>,  <0.320550, -0.056670, 2.007619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.181721, 0.660980, 2.218697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.096889, 0.649506, 1.827965>,  <0.045990, 0.642621, 1.593525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.096889, 0.649506, 1.827965>,  <0.181721, 0.660980, 2.218697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.096889, 0.649506, 1.827965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780660, 0.606269, 0.151684,
		0.587871, 0.794742, -0.150972,
		-0.212079, -0.028687, -0.976831,
		0.033266, 0.640900, 1.534915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.001601, 1.287343, 2.125290>,  <0.181721, 0.660980, 2.218697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.001601, 1.287343, 2.125290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163849, 1.081909, 1.822845>,  <-0.261198, 0.958649, 1.641379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163849, 1.081909, 1.822845>,  <-0.001601, 1.287343, 2.125290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.163849, 1.081909, 1.822845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848137, 0.519893, 0.101852,
		0.340786, 0.682599, -0.646470,
		-0.405619, -0.513585, -0.756110,
		-0.285535, 0.927834, 1.596012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.089556, 1.901167, 1.956671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072636, 1.535995, 1.794304>,  <3.062483, 1.316892, 1.696883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.072636, 1.535995, 1.794304>,  <3.089556, 1.901167, 1.956671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072636, 1.535995, 1.794304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998446, -0.023880, -0.050343,
		0.036266, -0.407418, 0.912521,
		-0.042302, -0.912930, -0.405919,
		3.059945, 1.262117, 1.672528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.642889, 1.338034, 2.210040>,  <3.089556, 1.901167, 1.956671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.642889, 1.338034, 2.210040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.535492, 1.246170, 1.835838>,  <3.471054, 1.191052, 1.611317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.535492, 1.246170, 1.835838>,  <3.642889, 1.338034, 2.210040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.535492, 1.246170, 1.835838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931994, -0.307439, -0.192012,
		-0.243513, -0.923438, 0.296587,
		-0.268493, -0.229660, -0.935504,
		3.454944, 1.177272, 1.555187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578279, 0.644262, 1.904499>,  <3.642889, 1.338034, 2.210040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578279, 0.644262, 1.904499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656059, 0.898148, 1.605347>,  <3.702728, 1.050479, 1.425855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656059, 0.898148, 1.605347>,  <3.578279, 0.644262, 1.904499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656059, 0.898148, 1.605347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897968, -0.422025, -0.124692,
		-0.394769, -0.647327, -0.652017,
		0.194451, 0.634715, -0.747881,
		3.714395, 1.088562, 1.380982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.736438, 0.262283, 1.339815>,  <3.578279, 0.644262, 1.904499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.736438, 0.262283, 1.339815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924915, 0.614578, 1.320732>,  <4.038002, 0.825956, 1.309283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924915, 0.614578, 1.320732>,  <3.736438, 0.262283, 1.339815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924915, 0.614578, 1.320732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849517, -0.467709, -0.244067,
		-0.237272, 0.074475, -0.968584,
		0.471193, 0.880739, -0.047706,
		4.066273, 0.878800, 1.306420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.107503, 0.268275, 0.676083>,  <3.736438, 0.262283, 1.339815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.107503, 0.268275, 0.676083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.298290, 0.498566, 0.941727>,  <4.412763, 0.636740, 1.101113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.298290, 0.498566, 0.941727>,  <4.107503, 0.268275, 0.676083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.298290, 0.498566, 0.941727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877640, -0.352755, -0.324520,
		0.047433, 0.737634, -0.673532,
		0.476968, 0.575726, 0.664109,
		4.441381, 0.671283, 1.140960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.696445, 0.699679, 0.278082>,  <4.107503, 0.268275, 0.676083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.696445, 0.699679, 0.278082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.794342, 0.668442, 0.664658>,  <4.853080, 0.649699, 0.896603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.794342, 0.668442, 0.664658>,  <4.696445, 0.699679, 0.278082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.794342, 0.668442, 0.664658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920730, -0.293698, -0.256899,
		0.303903, 0.952703, 0.000023,
		0.244741, -0.078094, 0.966438,
		4.867764, 0.645014, 0.954589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.345934, 0.894280, 0.286758>,  <4.696445, 0.699679, 0.278082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.345934, 0.894280, 0.286758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.342674, 0.711411, 0.642494>,  <5.340718, 0.601689, 0.855936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.342674, 0.711411, 0.642494>,  <5.345934, 0.894280, 0.286758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.342674, 0.711411, 0.642494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954169, -0.269626, -0.129859,
		0.299157, 0.847522, 0.438419,
		-0.008151, -0.457174, 0.889340,
		5.340229, 0.574258, 0.909296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.960113, 1.060284, 0.474015>,  <5.345934, 0.894280, 0.286758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.960113, 1.060284, 0.474015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.819883, 0.729752, 0.650322>,  <5.735745, 0.531432, 0.756106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.819883, 0.729752, 0.650322>,  <5.960113, 1.060284, 0.474015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.819883, 0.729752, 0.650322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923645, -0.382880, 0.016838,
		0.154847, 0.413016, 0.897463,
		-0.350575, -0.826330, 0.440768,
		5.714711, 0.481853, 0.782552>
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
