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
	<3.016913, -0.027666, 3.911671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113808, 0.259180, 4.173073>,  <3.171944, 0.431288, 4.329914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113808, 0.259180, 4.173073>,  <3.016913, -0.027666, 3.911671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.113808, 0.259180, 4.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627851, 0.397652, -0.669086,
		-0.739678, 0.572380, -0.353916,
		0.242236, 0.717115, 0.653504,
		3.186479, 0.474315, 4.369124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.049387, 0.481242, 3.445468>,  <3.016913, -0.027666, 3.911671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.049387, 0.481242, 3.445468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246250, 0.570644, 3.781998>,  <3.364368, 0.624286, 3.983916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246250, 0.570644, 3.781998>,  <3.049387, 0.481242, 3.445468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.246250, 0.570644, 3.781998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753144, 0.375327, -0.540282,
		-0.436527, 0.899542, 0.016389,
		0.492157, 0.223505, 0.841324,
		3.393897, 0.637696, 4.034395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466956, 1.166149, 3.395013>,  <3.049387, 0.481242, 3.445468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466956, 1.166149, 3.395013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623508, 0.954584, 3.696230>,  <3.717440, 0.827645, 3.876960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623508, 0.954584, 3.696230>,  <3.466956, 1.166149, 3.395013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623508, 0.954584, 3.696230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914703, 0.313141, -0.255462,
		-0.100692, 0.788794, 0.606354,
		0.391381, -0.528911, 0.753043,
		3.740923, 0.795911, 3.922143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.815211, 1.541593, 3.918308>,  <3.466956, 1.166149, 3.395013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.815211, 1.541593, 3.918308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990101, 1.182804, 3.892149>,  <4.095035, 0.967531, 3.876454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990101, 1.182804, 3.892149>,  <3.815211, 1.541593, 3.918308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.990101, 1.182804, 3.892149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866084, 0.439530, -0.238143,
		0.242351, 0.047483, 0.969026,
		0.437224, -0.896972, -0.065397,
		4.121268, 0.913713, 3.872530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.476608, 1.596213, 4.328581>,  <3.815211, 1.541593, 3.918308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.476608, 1.596213, 4.328581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527212, 1.287210, 4.079670>,  <4.557574, 1.101809, 3.930324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527212, 1.287210, 4.079670>,  <4.476608, 1.596213, 4.328581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.527212, 1.287210, 4.079670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878273, 0.378841, -0.291747,
		0.461120, -0.509620, 0.726399,
		0.126509, -0.772507, -0.622277,
		4.565165, 1.055458, 3.892987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.165700, 1.392469, 4.438593>,  <4.476608, 1.596213, 4.328581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.165700, 1.392469, 4.438593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.051992, 1.258108, 4.079403>,  <4.983768, 1.177492, 3.863889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.051992, 1.258108, 4.079403>,  <5.165700, 1.392469, 4.438593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.051992, 1.258108, 4.079403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913066, 0.190805, -0.360421,
		0.292404, -0.922369, 0.252460,
		-0.284270, -0.335901, -0.897976,
		4.966711, 1.157338, 3.810010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.724607, 1.060047, 4.303387>,  <5.165700, 1.392469, 4.438593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.724607, 1.060047, 4.303387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538952, 1.109724, 3.952581>,  <5.427559, 1.139530, 3.742098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538952, 1.109724, 3.952581>,  <5.724607, 1.060047, 4.303387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538952, 1.109724, 3.952581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854095, 0.325135, -0.405967,
		0.234730, -0.937477, -0.256980,
		-0.464138, 0.124193, -0.877013,
		5.399711, 1.146982, 3.689477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.214692, 0.894856, 3.765408>,  <5.724607, 1.060047, 4.303387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.214692, 0.894856, 3.765408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.924894, 1.124590, 3.612961>,  <5.751016, 1.262430, 3.521493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.924894, 1.124590, 3.612961>,  <6.214692, 0.894856, 3.765408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.924894, 1.124590, 3.612961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689282, 0.602983, -0.401625,
		-0.000860, -0.553671, -0.832735,
		-0.724493, 0.574334, -0.381117,
		5.707546, 1.296890, 3.498626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.726129, 1.845111, 3.125897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.487198, 1.858654, 2.805384>,  <1.343839, 1.866780, 2.613076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.487198, 1.858654, 2.805384>,  <1.726129, 1.845111, 3.125897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.487198, 1.858654, 2.805384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801968, -0.033715, 0.596415,
		-0.006822, 0.998858, 0.047291,
		-0.597328, 0.033857, -0.801282,
		1.307999, 1.868811, 2.565000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235391, 2.286706, 3.318302>,  <1.726129, 1.845111, 3.125897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235391, 2.286706, 3.318302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.081474, 2.079426, 3.012779>,  <0.989124, 1.955058, 2.829465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.081474, 2.079426, 3.012779>,  <1.235391, 2.286706, 3.318302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.081474, 2.079426, 3.012779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766872, -0.281033, 0.577000,
		-0.513656, 0.807768, -0.289254,
		-0.384792, -0.518200, -0.763809,
		0.966037, 1.923966, 2.783636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.489415, 2.440989, 3.225073>,  <1.235391, 2.286706, 3.318302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.489415, 2.440989, 3.225073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.586868, 2.074242, 3.098584>,  <0.645340, 1.854193, 3.022690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.586868, 2.074242, 3.098584>,  <0.489415, 2.440989, 3.225073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.586868, 2.074242, 3.098584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786882, -0.377469, 0.488194,
		-0.566973, 0.129889, -0.813431,
		0.243634, -0.916867, -0.316223,
		0.659958, 1.799181, 3.003717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.098056, 2.029871, 2.889940>,  <0.489415, 2.440989, 3.225073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.098056, 2.029871, 2.889940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.165768, 1.767254, 3.036327>,  <0.324062, 1.609683, 3.124159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.165768, 1.767254, 3.036327>,  <-0.098056, 2.029871, 2.889940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.165768, 1.767254, 3.036327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748671, -0.530495, 0.397576,
		-0.066882, -0.536215, -0.841428,
		0.659559, -0.656543, 0.365968,
		0.363635, 1.570291, 3.146117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.283547, 1.374815, 2.598579>,  <-0.098056, 2.029871, 2.889940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.283547, 1.374815, 2.598579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.076569, 1.316280, 2.935823>,  <0.047619, 1.281160, 3.138170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.076569, 1.316280, 2.935823>,  <-0.283547, 1.374815, 2.598579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.076569, 1.316280, 2.935823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756575, -0.538571, 0.370859,
		0.399805, -0.829775, -0.389395,
		0.517447, -0.146335, 0.843110,
		0.078665, 1.272380, 3.188756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.186489, 0.569024, 2.684751>,  <-0.283547, 1.374815, 2.598579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.186489, 0.569024, 2.684751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.167625, 0.781147, 3.023348>,  <-0.156307, 0.908421, 3.226506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.167625, 0.781147, 3.023348>,  <-0.186489, 0.569024, 2.684751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.167625, 0.781147, 3.023348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721639, -0.567855, 0.395952,
		0.690662, -0.629534, 0.355911,
		0.047159, 0.530308, 0.846492,
		-0.153478, 0.940239, 3.277296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.184151, 0.045801, 3.178059>,  <-0.186489, 0.569024, 2.684751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.184151, 0.045801, 3.178059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.279716, 0.378460, 3.378571>,  <-0.337056, 0.578055, 3.498878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.279716, 0.378460, 3.378571>,  <-0.184151, 0.045801, 3.178059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.279716, 0.378460, 3.378571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766772, -0.478319, 0.428103,
		0.595803, -0.282088, 0.751961,
		-0.238915, 0.831647, 0.501281,
		-0.351391, 0.627954, 3.528955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.433993, -0.281635, 3.789639>,  <-0.184151, 0.045801, 3.178059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.433993, -0.281635, 3.789639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.562630, 0.095490, 3.824707>,  <-0.639812, 0.321764, 3.845747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.562630, 0.095490, 3.824707>,  <-0.433993, -0.281635, 3.789639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.562630, 0.095490, 3.824707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880328, -0.331802, 0.339014,
		0.348715, 0.031847, 0.936688,
		-0.321591, 0.942811, 0.087669,
		-0.659107, 0.378333, 3.851008>
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
