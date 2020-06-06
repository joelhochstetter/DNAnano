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
	<4.496714, 14.624776, 15.114354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178975, 14.848724, 15.020072>,  <3.988332, 14.983093, 14.963503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178975, 14.848724, 15.020072>,  <4.496714, 14.624776, 15.114354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.178975, 14.848724, 15.020072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595923, 0.793477, -0.123570,
		0.117843, -0.238619, -0.963937,
		-0.794348, 0.559870, -0.235704,
		3.940671, 15.016685, 14.949361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.672009, 15.008602, 14.567689>,  <4.496714, 14.624776, 15.114354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.672009, 15.008602, 14.567689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365705, 15.207164, 14.731247>,  <4.181922, 15.326301, 14.829382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365705, 15.207164, 14.731247>,  <4.672009, 15.008602, 14.567689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365705, 15.207164, 14.731247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494865, 0.860873, -0.118351,
		-0.410756, 0.111720, -0.904875,
		-0.765760, 0.496404, 0.408895,
		4.135977, 15.356085, 14.853915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.342985, 15.593345, 14.144061>,  <4.672009, 15.008602, 14.567689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.342985, 15.593345, 14.144061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.374434, 15.601397, 14.542742>,  <4.393304, 15.606228, 14.781950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.374434, 15.601397, 14.542742>,  <4.342985, 15.593345, 14.144061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.374434, 15.601397, 14.542742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579664, 0.812483, -0.062135,
		-0.811054, 0.582637, 0.052211,
		0.078623, 0.020130, 0.996701,
		4.398021, 15.607435, 14.841752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046725, 16.140917, 14.427234>,  <4.342985, 15.593345, 14.144061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046725, 16.140917, 14.427234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.400462, 16.027641, 14.575688>,  <4.612704, 15.959676, 14.664761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.400462, 16.027641, 14.575688>,  <4.046725, 16.140917, 14.427234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.400462, 16.027641, 14.575688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408736, 0.853787, -0.322463,
		-0.225552, 0.436864, 0.870790,
		0.884342, -0.283191, 0.371136,
		4.665764, 15.942684, 14.687029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.425576, 16.698725, 14.783360>,  <4.046725, 16.140917, 14.427234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.425576, 16.698725, 14.783360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693671, 16.429249, 14.658832>,  <4.854528, 16.267563, 14.584115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693671, 16.429249, 14.658832>,  <4.425576, 16.698725, 14.783360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693671, 16.429249, 14.658832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504805, 0.721340, -0.474174,
		0.544014, 0.160654, 0.823553,
		0.670239, -0.673691, -0.311320,
		4.894743, 16.227142, 14.565435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.116498, 16.897770, 14.998075>,  <4.425576, 16.698725, 14.783360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.116498, 16.897770, 14.998075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.124102, 16.681391, 14.661738>,  <5.128664, 16.551563, 14.459937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.124102, 16.681391, 14.661738>,  <5.116498, 16.897770, 14.998075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.124102, 16.681391, 14.661738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511379, 0.727925, -0.456745,
		0.859145, -0.421305, 0.290469,
		0.019011, -0.540950, -0.840840,
		5.129805, 16.519106, 14.409487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.859044, 17.032160, 14.761622>,  <5.116498, 16.897770, 14.998075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.859044, 17.032160, 14.761622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.653336, 16.873903, 14.457255>,  <5.529911, 16.778950, 14.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.653336, 16.873903, 14.457255>,  <5.859044, 17.032160, 14.761622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.653336, 16.873903, 14.457255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429845, 0.648844, -0.627882,
		0.742132, -0.649977, -0.163617,
		-0.514271, -0.395641, -0.760917,
		5.499054, 16.755211, 14.228980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.389362, 16.763266, 14.229253>,  <5.859044, 17.032160, 14.761622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.389362, 16.763266, 14.229253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.040933, 16.863892, 14.060516>,  <5.831876, 16.924267, 13.959274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.040933, 16.863892, 14.060516>,  <6.389362, 16.763266, 14.229253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.040933, 16.863892, 14.060516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444883, 0.768055, -0.460620,
		0.208120, -0.588902, -0.780949,
		-0.871071, 0.251567, -0.421840,
		5.779612, 16.939362, 13.933964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.594278, 16.902750, 13.606101>,  <6.389362, 16.763266, 14.229253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.594278, 16.902750, 13.606101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225197, 17.053249, 13.572494>,  <6.003749, 17.143549, 13.552329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225197, 17.053249, 13.572494>,  <6.594278, 16.902750, 13.606101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225197, 17.053249, 13.572494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319749, 0.625151, -0.712001,
		-0.215365, -0.683830, -0.697133,
		-0.922701, 0.376248, -0.084018,
		5.948387, 17.166124, 13.547288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.422983, 16.858276, 12.953463>,  <6.594278, 16.902750, 13.606101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.422983, 16.858276, 12.953463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.187880, 17.154108, 13.084649>,  <6.046817, 17.331608, 13.163361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.187880, 17.154108, 13.084649>,  <6.422983, 16.858276, 12.953463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.187880, 17.154108, 13.084649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297312, 0.574465, -0.762624,
		-0.752426, -0.350731, -0.557532,
		-0.587759, 0.739579, 0.327966,
		6.011552, 17.375982, 13.183039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.076326, 17.116369, 12.382462>,  <6.422983, 16.858276, 12.953463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.076326, 17.116369, 12.382462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.044899, 17.410023, 12.652238>,  <6.026042, 17.586216, 12.814104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.044899, 17.410023, 12.652238>,  <6.076326, 17.116369, 12.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.044899, 17.410023, 12.652238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244146, 0.670101, -0.700969,
		-0.966550, 0.109588, -0.231885,
		-0.078569, 0.734136, 0.674442,
		6.021328, 17.630264, 12.854570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.819009, 17.699886, 12.068197>,  <6.076326, 17.116369, 12.382462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.819009, 17.699886, 12.068197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.988012, 17.880190, 12.382727>,  <6.089414, 17.988371, 12.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.988012, 17.880190, 12.382727>,  <5.819009, 17.699886, 12.068197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.988012, 17.880190, 12.382727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386434, 0.695169, -0.606143,
		-0.819851, 0.559962, 0.119526,
		0.422507, 0.450758, 0.786324,
		6.114764, 18.015417, 12.618624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.707109, 18.390596, 11.898324>,  <5.819009, 17.699886, 12.068197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.707109, 18.390596, 11.898324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.017518, 18.376673, 12.150223>,  <6.203763, 18.368319, 12.301362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.017518, 18.376673, 12.150223>,  <5.707109, 18.390596, 11.898324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.017518, 18.376673, 12.150223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403920, 0.794279, -0.453839,
		-0.484398, 0.606555, 0.630436,
		0.776020, -0.034807, 0.629747,
		6.250324, 18.366230, 12.339147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.009108, 18.924339, 11.778158>,  <5.707109, 18.390596, 11.898324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.009108, 18.924339, 11.778158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.293103, 18.784351, 12.022596>,  <6.463500, 18.700359, 12.169259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.293103, 18.784351, 12.022596>,  <6.009108, 18.924339, 11.778158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.293103, 18.784351, 12.022596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681516, 0.560005, -0.471094,
		-0.177348, 0.750943, 0.636107,
		0.709988, -0.349970, 0.611095,
		6.506100, 18.679361, 12.205925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.452922, 19.466135, 11.814760>,  <6.009108, 18.924339, 11.778158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.452922, 19.466135, 11.814760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.674598, 19.155403, 11.934365>,  <6.807604, 18.968964, 12.006128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.674598, 19.155403, 11.934365>,  <6.452922, 19.466135, 11.814760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.674598, 19.155403, 11.934365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790000, 0.377688, -0.482961,
		0.262245, 0.503872, 0.823007,
		0.554190, -0.776830, 0.299012,
		6.840856, 18.922354, 12.024069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.126921, 19.723652, 12.055767>,  <6.452922, 19.466135, 11.814760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.126921, 19.723652, 12.055767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.206795, 19.355347, 11.921711>,  <7.254720, 19.134363, 11.841277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.206795, 19.355347, 11.921711>,  <7.126921, 19.723652, 12.055767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.206795, 19.355347, 11.921711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730232, 0.367901, -0.575682,
		0.653366, -0.129774, 0.745836,
		0.199685, -0.920765, -0.335139,
		7.266701, 19.079117, 11.821169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.931870, 19.706663, 12.125177>,  <7.126921, 19.723652, 12.055767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.931870, 19.706663, 12.125177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820332, 19.402409, 11.890682>,  <7.753408, 19.219856, 11.749985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820332, 19.402409, 11.890682>,  <7.931870, 19.706663, 12.125177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.820332, 19.402409, 11.890682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720643, 0.237759, -0.651264,
		0.634759, -0.604071, 0.481849,
		-0.278846, -0.760637, -0.586239,
		7.736678, 19.174217, 11.714810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.471336, 19.265467, 12.045627>,  <7.931870, 19.706663, 12.125177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.471336, 19.265467, 12.045627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235525, 19.216112, 11.726319>,  <8.094039, 19.186501, 11.534735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235525, 19.216112, 11.726319>,  <8.471336, 19.265467, 12.045627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.235525, 19.216112, 11.726319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789022, 0.123605, -0.601803,
		0.172923, -0.984631, 0.024484,
		-0.589528, -0.123384, -0.798269,
		8.058667, 19.179096, 11.486838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.952486, 18.996311, 11.574500>,  <8.471336, 19.265467, 12.045627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.952486, 18.996311, 11.574500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.655180, 19.070784, 11.317472>,  <8.476796, 19.115467, 11.163256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.655180, 19.070784, 11.317472>,  <8.952486, 18.996311, 11.574500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.655180, 19.070784, 11.317472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666583, 0.124568, -0.734949,
		-0.056788, -0.974587, -0.216691,
		-0.743264, 0.186179, -0.642569,
		8.432200, 19.126638, 11.124701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.917027, 18.496277, 11.108620>,  <8.952486, 18.996311, 11.574500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.917027, 18.496277, 11.108620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775222, 18.834345, 10.948616>,  <8.690139, 19.037186, 10.852613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775222, 18.834345, 10.948616>,  <8.917027, 18.496277, 11.108620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775222, 18.834345, 10.948616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683629, -0.057591, -0.727554,
		-0.637944, -0.531385, -0.557366,
		-0.354513, 0.845170, -0.400010,
		8.668868, 19.087896, 10.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.030676, 18.477938, 10.439960>,  <8.917027, 18.496277, 11.108620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.030676, 18.477938, 10.439960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.927125, 18.864283, 10.436093>,  <8.864994, 19.096090, 10.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.927125, 18.864283, 10.436093>,  <9.030676, 18.477938, 10.439960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.927125, 18.864283, 10.436093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459579, 0.114364, -0.880743,
		-0.849570, -0.232447, -0.473496,
		-0.258878, 0.965862, -0.009667,
		8.849462, 19.154041, 10.433193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739479, 18.634878, 9.869691>,  <9.030676, 18.477938, 10.439960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739479, 18.634878, 9.869691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.890260, 18.981297, 10.001064>,  <8.980728, 19.189148, 10.079888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.890260, 18.981297, 10.001064>,  <8.739479, 18.634878, 9.869691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.890260, 18.981297, 10.001064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639826, 0.012920, -0.768411,
		-0.669725, 0.499794, -0.549250,
		0.376951, 0.866048, 0.328434,
		9.003345, 19.241112, 10.099594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.847550, 18.982018, 9.213269>,  <8.739479, 18.634878, 9.869691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.847550, 18.982018, 9.213269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.059731, 19.204145, 9.469469>,  <9.187040, 19.337421, 9.623189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.059731, 19.204145, 9.469469>,  <8.847550, 18.982018, 9.213269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.059731, 19.204145, 9.469469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750795, 0.043060, -0.659131,
		-0.393608, 0.830521, -0.394090,
		0.530452, 0.555320, 0.640500,
		9.218867, 19.370741, 9.661619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.151934, 19.629265, 8.835795>,  <8.847550, 18.982018, 9.213269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.151934, 19.629265, 8.835795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.387953, 19.591824, 9.156565>,  <9.529564, 19.569359, 9.349027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.387953, 19.591824, 9.156565>,  <9.151934, 19.629265, 8.835795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.387953, 19.591824, 9.156565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807133, 0.044390, -0.588699,
		0.019505, 0.994620, 0.101741,
		0.590048, -0.093601, 0.801924,
		9.564967, 19.563744, 9.397142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.550519, 20.283108, 8.794677>,  <9.151934, 19.629265, 8.835795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.550519, 20.283108, 8.794677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744854, 20.018003, 9.022610>,  <9.861455, 19.858940, 9.159369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744854, 20.018003, 9.022610>,  <9.550519, 20.283108, 8.794677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.744854, 20.018003, 9.022610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827000, 0.137550, -0.545115,
		0.282901, 0.736089, 0.614931,
		0.485837, -0.662762, 0.569833,
		9.890605, 19.819176, 9.193560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152510, 20.707779, 9.175547>,  <9.550519, 20.283108, 8.794677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152510, 20.707779, 9.175547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184299, 20.314257, 9.111280>,  <10.203372, 20.078144, 9.072721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184299, 20.314257, 9.111280>,  <10.152510, 20.707779, 9.175547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.184299, 20.314257, 9.111280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907594, 0.138069, -0.396497,
		0.412259, -0.114309, 0.903867,
		0.079473, -0.983804, -0.160666,
		10.208140, 20.019115, 9.063081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.854161, 20.578630, 9.347846>,  <10.152510, 20.707779, 9.175547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.854161, 20.578630, 9.347846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.747754, 20.265465, 9.122890>,  <10.683909, 20.077566, 8.987917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.747754, 20.265465, 9.122890>,  <10.854161, 20.578630, 9.347846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.747754, 20.265465, 9.122890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924705, -0.042445, -0.378311,
		0.272315, -0.620680, 0.735256,
		-0.266018, -0.782914, -0.562387,
		10.667949, 20.030590, 8.954174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294635, 20.076233, 9.483720>,  <10.854161, 20.578630, 9.347846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294635, 20.076233, 9.483720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147276, 20.073774, 9.111860>,  <11.058861, 20.072298, 8.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147276, 20.073774, 9.111860>,  <11.294635, 20.076233, 9.483720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147276, 20.073774, 9.111860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921037, 0.133538, -0.365867,
		0.126393, -0.991025, -0.043530,
		-0.368396, -0.006150, -0.929649,
		11.036757, 20.071930, 8.832966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654748, 20.419708, 9.948823>,  <11.294635, 20.076233, 9.483720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654748, 20.419708, 9.948823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996708, 20.220177, 10.005842>,  <12.201883, 20.100458, 10.040053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996708, 20.220177, 10.005842>,  <11.654748, 20.419708, 9.948823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996708, 20.220177, 10.005842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349683, 0.757020, 0.551945,
		-0.383236, -0.422011, 0.821606,
		0.854899, -0.498827, 0.142548,
		12.253178, 20.070528, 10.048607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.815611, 20.367311, 10.645088>,  <11.654748, 20.419708, 9.948823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.815611, 20.367311, 10.645088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154840, 20.344959, 10.434318>,  <12.358377, 20.331549, 10.307856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154840, 20.344959, 10.434318>,  <11.815611, 20.367311, 10.645088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154840, 20.344959, 10.434318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412764, 0.693224, 0.590819,
		0.332263, -0.718553, 0.610969,
		0.848073, -0.055878, -0.526926,
		12.409262, 20.328196, 10.276240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468079, 20.063694, 11.067117>,  <11.815611, 20.367311, 10.645088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468079, 20.063694, 11.067117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588691, 20.296104, 10.764730>,  <12.661058, 20.435551, 10.583299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588691, 20.296104, 10.764730>,  <12.468079, 20.063694, 11.067117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588691, 20.296104, 10.764730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414988, 0.633853, 0.652699,
		0.858408, -0.510525, -0.049994,
		0.301530, 0.581029, -0.755966,
		12.679150, 20.470413, 10.537941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300091, 20.269691, 11.045275>,  <12.468079, 20.063694, 11.067117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300091, 20.269691, 11.045275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002558, 20.516188, 10.941766>,  <12.824038, 20.664085, 10.879661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002558, 20.516188, 10.941766>,  <13.300091, 20.269691, 11.045275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002558, 20.516188, 10.941766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270819, 0.631856, 0.726234,
		0.611040, 0.470116, -0.636884,
		-0.743833, 0.616238, -0.258772,
		12.779408, 20.701059, 10.864134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314652, 20.614016, 11.589326>,  <13.300091, 20.269691, 11.045275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314652, 20.614016, 11.589326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056719, 20.634521, 11.894366>,  <12.901958, 20.646826, 12.077391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056719, 20.634521, 11.894366>,  <13.314652, 20.614016, 11.589326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056719, 20.634521, 11.894366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007145, 0.997300, -0.073085,
		-0.764289, -0.052577, -0.642727,
		-0.644834, 0.051266, 0.762602,
		12.863269, 20.649900, 12.123147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775078, 21.026848, 11.290090>,  <13.314652, 20.614016, 11.589326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775078, 21.026848, 11.290090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.831769, 21.042442, 11.685744>,  <12.865784, 21.051798, 11.923138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.831769, 21.042442, 11.685744>,  <12.775078, 21.026848, 11.290090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.831769, 21.042442, 11.685744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074512, 0.996810, -0.028611,
		-0.987097, -0.069648, 0.144180,
		0.141727, 0.038985, 0.989138,
		12.874287, 21.054138, 11.982486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401808, 21.607891, 11.394521>,  <12.775078, 21.026848, 11.290090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401808, 21.607891, 11.394521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657539, 21.527098, 11.691294>,  <12.810978, 21.478622, 11.869357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657539, 21.527098, 11.691294>,  <12.401808, 21.607891, 11.394521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657539, 21.527098, 11.691294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007016, 0.963311, 0.268296,
		-0.768902, -0.176734, 0.614455,
		0.639328, -0.201983, 0.741932,
		12.849338, 21.466503, 11.913874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.690259, 21.391047, 11.654905>,  <12.401808, 21.607891, 11.394521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.690259, 21.391047, 11.654905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.365331, 21.416821, 11.886761>,  <11.170374, 21.432285, 12.025874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.365331, 21.416821, 11.886761>,  <11.690259, 21.391047, 11.654905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.365331, 21.416821, 11.886761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029071, -0.997116, 0.070106,
		0.582485, 0.040098, 0.811852,
		-0.812322, 0.064437, 0.579639,
		11.121634, 21.436152, 12.060653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762179, 20.996656, 12.269522>,  <11.690259, 21.391047, 11.654905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762179, 20.996656, 12.269522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366451, 21.017761, 12.215173>,  <11.129014, 21.030424, 12.182564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366451, 21.017761, 12.215173>,  <11.762179, 20.996656, 12.269522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.366451, 21.017761, 12.215173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076208, -0.981860, 0.173616,
		-0.124247, 0.182117, 0.975395,
		-0.989321, 0.052762, -0.135872,
		11.069655, 21.033590, 12.174411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532851, 20.508482, 12.855801>,  <11.762179, 20.996656, 12.269522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532851, 20.508482, 12.855801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.223651, 20.569139, 12.609395>,  <11.038131, 20.605534, 12.461552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.223651, 20.569139, 12.609395>,  <11.532851, 20.508482, 12.855801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223651, 20.569139, 12.609395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325738, -0.928114, 0.180277,
		-0.544392, 0.340013, 0.766830,
		-0.773002, 0.151645, -0.616013,
		10.991751, 20.614634, 12.424591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.986858, 20.347729, 13.253875>,  <11.532851, 20.508482, 12.855801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.986858, 20.347729, 13.253875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.882848, 20.311514, 12.869336>,  <10.820441, 20.289785, 12.638613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.882848, 20.311514, 12.869336>,  <10.986858, 20.347729, 13.253875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882848, 20.311514, 12.869336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306506, -0.936366, 0.171090,
		-0.915664, 0.339147, 0.215729,
		-0.260026, -0.090539, -0.961347,
		10.804840, 20.284351, 12.580932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.532756, 19.867725, 13.341309>,  <10.986858, 20.347729, 13.253875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.532756, 19.867725, 13.341309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605259, 19.855494, 12.948125>,  <10.648761, 19.848154, 12.712214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605259, 19.855494, 12.948125>,  <10.532756, 19.867725, 13.341309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605259, 19.855494, 12.948125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471124, -0.880058, -0.059499,
		-0.863243, 0.473880, -0.173924,
		0.181258, -0.030577, -0.982960,
		10.659636, 19.846321, 12.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.012464, 19.623188, 13.066193>,  <10.532756, 19.867725, 13.341309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.012464, 19.623188, 13.066193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.276739, 19.542044, 12.777101>,  <10.435305, 19.493357, 12.603645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.276739, 19.542044, 12.777101>,  <10.012464, 19.623188, 13.066193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.276739, 19.542044, 12.777101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346157, -0.936648, -0.053539,
		-0.666083, 0.285550, -0.689054,
		0.660688, -0.202860, -0.722730,
		10.474946, 19.481186, 12.560282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.687274, 19.448412, 12.557224>,  <10.012464, 19.623188, 13.066193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.687274, 19.448412, 12.557224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043475, 19.276054, 12.498800>,  <10.257196, 19.172640, 12.463746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043475, 19.276054, 12.498800>,  <9.687274, 19.448412, 12.557224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.043475, 19.276054, 12.498800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450206, -0.880892, -0.146094,
		-0.065713, 0.195855, -0.978429,
		0.890503, -0.430895, -0.146061,
		10.310626, 19.146786, 12.454982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540197, 19.022623, 11.997899>,  <9.687274, 19.448412, 12.557224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540197, 19.022623, 11.997899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903859, 18.903883, 12.114736>,  <10.122056, 18.832638, 12.184837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903859, 18.903883, 12.114736>,  <9.540197, 19.022623, 11.997899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.903859, 18.903883, 12.114736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275712, -0.954685, -0.112070,
		0.312122, 0.021356, -0.949802,
		0.909155, -0.296852, 0.292090,
		10.176605, 18.814827, 12.202363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.798937, 18.549385, 11.479001>,  <9.540197, 19.022623, 11.997899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.798937, 18.549385, 11.479001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.977571, 18.474106, 11.828891>,  <10.084751, 18.428938, 12.038825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.977571, 18.474106, 11.828891>,  <9.798937, 18.549385, 11.479001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.977571, 18.474106, 11.828891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289541, -0.955423, -0.057736,
		0.846598, -0.227485, -0.481168,
		0.446585, -0.188197, 0.874725,
		10.111547, 18.417646, 12.091309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.039865, 17.864464, 11.406188>,  <9.798937, 18.549385, 11.479001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.039865, 17.864464, 11.406188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987485, 17.956781, 11.791848>,  <9.956057, 18.012173, 12.023244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987485, 17.956781, 11.791848>,  <10.039865, 17.864464, 11.406188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.987485, 17.956781, 11.791848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542165, -0.830884, 0.125257,
		0.830005, -0.506327, 0.233933,
		-0.130950, 0.230794, 0.964151,
		9.948200, 18.026020, 12.081094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161516, 17.228483, 11.753973>,  <10.039865, 17.864464, 11.406188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161516, 17.228483, 11.753973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.974216, 17.460407, 12.020675>,  <9.861836, 17.599562, 12.180696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.974216, 17.460407, 12.020675>,  <10.161516, 17.228483, 11.753973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.974216, 17.460407, 12.020675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458581, -0.804476, 0.377521,
		0.755279, -0.128987, 0.642585,
		-0.468249, 0.579811, 0.666755,
		9.833742, 17.634350, 12.220701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.005696, 16.801590, 12.298038>,  <10.161516, 17.228483, 11.753973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.005696, 16.801590, 12.298038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746964, 17.100668, 12.358119>,  <9.591723, 17.280115, 12.394168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.746964, 17.100668, 12.358119>,  <10.005696, 16.801590, 12.298038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.746964, 17.100668, 12.358119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688358, -0.657182, 0.307044,
		0.328285, 0.095213, 0.939768,
		-0.646833, 0.747695, 0.150202,
		9.552914, 17.324976, 12.403179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.557677, 16.551363, 12.866614>,  <10.005696, 16.801590, 12.298038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.557677, 16.551363, 12.866614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336032, 16.854816, 12.729541>,  <9.203045, 17.036888, 12.647297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336032, 16.854816, 12.729541>,  <9.557677, 16.551363, 12.866614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.336032, 16.854816, 12.729541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820254, -0.427405, 0.380142,
		0.141925, 0.491728, 0.859105,
		-0.554113, 0.758636, -0.342683,
		9.169798, 17.082407, 12.626736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.112070, 16.649618, 13.329401>,  <9.557677, 16.551363, 12.866614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.112070, 16.649618, 13.329401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.956597, 16.822361, 13.003843>,  <8.863314, 16.926006, 12.808509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.956597, 16.822361, 13.003843>,  <9.112070, 16.649618, 13.329401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.956597, 16.822361, 13.003843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880999, -0.432820, 0.191071,
		-0.269754, 0.791306, 0.548696,
		-0.388682, 0.431858, -0.813894,
		8.839993, 16.951918, 12.759675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470820, 16.788473, 13.507924>,  <9.112070, 16.649618, 13.329401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470820, 16.788473, 13.507924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.453464, 16.862679, 13.115251>,  <8.443049, 16.907202, 12.879646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.453464, 16.862679, 13.115251>,  <8.470820, 16.788473, 13.507924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.453464, 16.862679, 13.115251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968720, -0.248123, -0.004070,
		-0.244333, 0.950799, 0.190479,
		-0.043392, 0.185515, -0.981683,
		8.440446, 16.918333, 12.820745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.910275, 17.250673, 13.328980>,  <8.470820, 16.788473, 13.507924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.910275, 17.250673, 13.328980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.978464, 17.022539, 13.007570>,  <8.019377, 16.885658, 12.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.978464, 17.022539, 13.007570>,  <7.910275, 17.250673, 13.328980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.978464, 17.022539, 13.007570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913864, -0.396473, 0.087531,
		-0.368499, 0.719391, -0.588799,
		0.170474, -0.570338, -0.803526,
		8.029606, 16.851439, 12.766512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.323215, 17.350317, 12.909437>,  <7.910275, 17.250673, 13.328980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.323215, 17.350317, 12.909437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507117, 17.028219, 12.759660>,  <7.617458, 16.834961, 12.669793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507117, 17.028219, 12.759660>,  <7.323215, 17.350317, 12.909437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507117, 17.028219, 12.759660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876494, -0.479253, -0.045553,
		-0.142772, 0.349141, -0.926130,
		0.459755, -0.805243, -0.374443,
		7.645043, 16.786646, 12.647326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.905686, 17.061180, 12.483799>,  <7.323215, 17.350317, 12.909437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.905686, 17.061180, 12.483799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.155383, 16.760988, 12.570615>,  <7.305201, 16.580873, 12.622705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.155383, 16.760988, 12.570615>,  <6.905686, 17.061180, 12.483799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.155383, 16.760988, 12.570615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756957, -0.649751, -0.069568,
		0.193231, -0.120862, -0.973681,
		0.624242, -0.750477, 0.217040,
		7.342656, 16.535845, 12.635727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.704060, 16.569847, 11.988106>,  <6.905686, 17.061180, 12.483799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.704060, 16.569847, 11.988106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.905704, 16.366196, 12.267150>,  <7.026690, 16.244005, 12.434576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.905704, 16.366196, 12.267150>,  <6.704060, 16.569847, 11.988106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.905704, 16.366196, 12.267150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722961, -0.690645, 0.018383,
		0.472441, -0.513611, -0.716242,
		0.504110, -0.509130, 0.697610,
		7.056937, 16.213457, 12.476433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.832050, 15.766603, 11.721685>,  <6.704060, 16.569847, 11.988106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.832050, 15.766603, 11.721685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.819067, 15.803750, 12.119745>,  <6.811276, 15.826038, 12.358582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.819067, 15.803750, 12.119745>,  <6.832050, 15.766603, 11.721685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.819067, 15.803750, 12.119745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600468, -0.797765, 0.054863,
		0.798990, -0.595774, 0.081658,
		-0.032458, 0.092868, 0.995149,
		6.809329, 15.831611, 12.418290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.906375, 15.108912, 11.901950>,  <6.832050, 15.766603, 11.721685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.906375, 15.108912, 11.901950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.748043, 15.297504, 12.217171>,  <6.653044, 15.410660, 12.406303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.748043, 15.297504, 12.217171>,  <6.906375, 15.108912, 11.901950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.748043, 15.297504, 12.217171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786767, -0.616693, -0.026225,
		0.473621, -0.630393, 0.615051,
		-0.395829, 0.471481, 0.788051,
		6.629294, 15.438949, 12.453586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.618522, 14.605129, 12.275290>,  <6.906375, 15.108912, 11.901950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.618522, 14.605129, 12.275290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.450965, 14.926386, 12.444757>,  <6.350431, 15.119140, 12.546438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.450965, 14.926386, 12.444757>,  <6.618522, 14.605129, 12.275290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.450965, 14.926386, 12.444757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822809, -0.533077, 0.197015,
		0.384079, -0.266070, 0.884133,
		-0.418891, 0.803141, 0.423668,
		6.325298, 15.167328, 12.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.614643, 14.604738, 13.096786>,  <6.618522, 14.605129, 12.275290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.614643, 14.604738, 13.096786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.333589, 14.773857, 12.867859>,  <6.164957, 14.875328, 12.730503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.333589, 14.773857, 12.867859>,  <6.614643, 14.604738, 13.096786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.333589, 14.773857, 12.867859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653872, -0.700882, 0.284985,
		-0.280636, 0.574463, 0.768919,
		-0.702635, 0.422797, -0.572317,
		6.122799, 14.900696, 12.696164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.890350, 14.274122, 13.670809>,  <6.614643, 14.604738, 13.096786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.890350, 14.274122, 13.670809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.214581, 14.060038, 13.765900>,  <7.409119, 13.931587, 13.822954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.214581, 14.060038, 13.765900>,  <6.890350, 14.274122, 13.670809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.214581, 14.060038, 13.765900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019749, 0.380719, 0.924480,
		-0.585300, -0.754056, 0.298032,
		0.810576, -0.535212, 0.237727,
		7.457754, 13.899474, 13.837217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.753980, 13.772270, 14.239464>,  <6.890350, 14.274122, 13.670809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.753980, 13.772270, 14.239464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.110198, 13.946866, 14.188234>,  <7.323929, 14.051623, 14.157496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.110198, 13.946866, 14.188234>,  <6.753980, 13.772270, 14.239464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.110198, 13.946866, 14.188234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075671, 0.419775, 0.904468,
		0.448561, -0.795776, 0.406858,
		0.890543, 0.436497, -0.128078,
		7.377362, 14.077813, 14.149812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.115016, 13.699409, 14.870019>,  <6.753980, 13.772270, 14.239464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.115016, 13.699409, 14.870019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.230520, 14.033077, 14.682073>,  <7.299822, 14.233278, 14.569304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.230520, 14.033077, 14.682073>,  <7.115016, 13.699409, 14.870019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.230520, 14.033077, 14.682073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073797, 0.469920, 0.879619,
		0.954553, -0.288673, 0.074134,
		0.288759, 0.834172, -0.469867,
		7.317148, 14.283329, 14.541113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.687698, 13.956172, 15.242634>,  <7.115016, 13.699409, 14.870019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.687698, 13.956172, 15.242634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513855, 14.263555, 15.054765>,  <7.409550, 14.447984, 14.942043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513855, 14.263555, 15.054765>,  <7.687698, 13.956172, 15.242634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.513855, 14.263555, 15.054765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091821, 0.556588, 0.825699,
		0.895928, 0.315728, -0.312457,
		-0.434606, 0.768457, -0.469672,
		7.383474, 14.494092, 14.913863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.082366, 14.491813, 15.058828>,  <7.687698, 13.956172, 15.242634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.082366, 14.491813, 15.058828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.705259, 14.568850, 15.167713>,  <7.478995, 14.615071, 15.233044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.705259, 14.568850, 15.167713>,  <8.082366, 14.491813, 15.058828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.705259, 14.568850, 15.167713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331927, 0.464006, 0.821293,
		0.031866, 0.864643, -0.501376,
		-0.942767, 0.192591, 0.272212,
		7.422429, 14.626627, 15.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.944626, 15.231902, 15.256227>,  <8.082366, 14.491813, 15.058828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.944626, 15.231902, 15.256227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675917, 15.008945, 15.451381>,  <7.514692, 14.875170, 15.568473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675917, 15.008945, 15.451381>,  <7.944626, 15.231902, 15.256227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.675917, 15.008945, 15.451381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369418, 0.318795, 0.872869,
		-0.642068, 0.766603, -0.008246,
		-0.671773, -0.557395, 0.487886,
		7.474385, 14.841726, 15.597747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.406287, 15.782972, 15.058846>,  <7.944626, 15.231902, 15.256227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.406287, 15.782972, 15.058846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723052, 15.539770, 15.036203>,  <8.913111, 15.393849, 15.022618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723052, 15.539770, 15.036203>,  <8.406287, 15.782972, 15.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.723052, 15.539770, 15.036203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283185, 0.283545, 0.916192,
		-0.540999, -0.741574, 0.396721,
		0.791913, -0.608005, -0.056605,
		8.960626, 15.357368, 15.019221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.483876, 15.412510, 15.701661>,  <8.406287, 15.782972, 15.058846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.483876, 15.412510, 15.701661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846623, 15.413529, 15.533098>,  <9.064272, 15.414141, 15.431960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846623, 15.413529, 15.533098>,  <8.483876, 15.412510, 15.701661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.846623, 15.413529, 15.533098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399068, 0.316123, 0.860704,
		0.135409, -0.948715, 0.285665,
		0.906868, 0.002548, -0.421407,
		9.118684, 15.414293, 15.406676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.911318, 14.960978, 16.077826>,  <8.483876, 15.412510, 15.701661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.911318, 14.960978, 16.077826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.153436, 15.215358, 15.886332>,  <9.298706, 15.367986, 15.771436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.153436, 15.215358, 15.886332>,  <8.911318, 14.960978, 16.077826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.153436, 15.215358, 15.886332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334393, 0.342629, 0.877945,
		0.722357, -0.691500, -0.005266,
		0.605295, 0.635950, -0.478733,
		9.335024, 15.406143, 15.742712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516481, 14.895410, 16.462030>,  <8.911318, 14.960978, 16.077826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516481, 14.895410, 16.462030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.555828, 15.242786, 16.267656>,  <9.579436, 15.451213, 16.151031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.555828, 15.242786, 16.267656>,  <9.516481, 14.895410, 16.462030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.555828, 15.242786, 16.267656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459983, 0.393330, 0.796057,
		0.882462, -0.301827, -0.360777,
		0.098367, 0.868442, -0.485935,
		9.585339, 15.503319, 16.121876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220900, 15.107094, 16.592846>,  <9.516481, 14.895410, 16.462030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220900, 15.107094, 16.592846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004243, 15.432985, 16.510054>,  <9.874249, 15.628520, 16.460379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004243, 15.432985, 16.510054>,  <10.220900, 15.107094, 16.592846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.004243, 15.432985, 16.510054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374687, 0.454410, 0.808159,
		0.752485, 0.360180, -0.551396,
		-0.541642, 0.814728, -0.206981,
		9.841750, 15.677403, 16.447960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618618, 15.618000, 16.687817>,  <10.220900, 15.107094, 16.592846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618618, 15.618000, 16.687817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.264644, 15.804266, 16.690502>,  <10.052259, 15.916025, 16.692114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.264644, 15.804266, 16.690502>,  <10.618618, 15.618000, 16.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.264644, 15.804266, 16.690502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230614, 0.425641, 0.875012,
		0.404606, 0.775878, -0.484054,
		-0.884936, 0.465665, 0.006712,
		9.999163, 15.943965, 16.692516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781672, 16.238661, 16.996941>,  <10.618618, 15.618000, 16.687817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781672, 16.238661, 16.996941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.385917, 16.192829, 17.032677>,  <10.148463, 16.165329, 17.054119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.385917, 16.192829, 17.032677>,  <10.781672, 16.238661, 16.996941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.385917, 16.192829, 17.032677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053411, 0.285014, 0.957034,
		-0.135120, 0.951650, -0.275870,
		-0.989389, -0.114580, 0.089340,
		10.089100, 16.158455, 17.059479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551586, 16.835098, 17.379383>,  <10.781672, 16.238661, 16.996941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551586, 16.835098, 17.379383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.265507, 16.557245, 17.410309>,  <10.093859, 16.390533, 17.428864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.265507, 16.557245, 17.410309>,  <10.551586, 16.835098, 17.379383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.265507, 16.557245, 17.410309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181113, 0.291034, 0.939413,
		-0.675047, 0.657865, -0.333954,
		-0.715199, -0.694631, 0.077314,
		10.050947, 16.348856, 17.433502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.941064, 17.154217, 17.712811>,  <10.551586, 16.835098, 17.379383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.941064, 17.154217, 17.712811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944060, 16.757174, 17.761269>,  <9.945858, 16.518948, 17.790344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944060, 16.757174, 17.761269>,  <9.941064, 17.154217, 17.712811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.944060, 16.757174, 17.761269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166714, 0.118213, 0.978893,
		-0.985977, -0.027528, -0.164596,
		0.007490, -0.992606, 0.121145,
		9.946307, 16.459391, 17.797611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.569747, 17.104565, 18.227736>,  <9.941064, 17.154217, 17.712811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.569747, 17.104565, 18.227736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.716763, 16.733013, 18.246054>,  <9.804972, 16.510082, 18.257044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.716763, 16.733013, 18.246054>,  <9.569747, 17.104565, 18.227736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.716763, 16.733013, 18.246054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206890, -0.033656, 0.977785,
		-0.906703, -0.368850, -0.204546,
		0.367540, -0.928880, 0.045795,
		9.827024, 16.454350, 18.259792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.107723, 16.876984, 18.826691>,  <9.569747, 17.104565, 18.227736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.107723, 16.876984, 18.826691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.378635, 16.590233, 18.760506>,  <9.541183, 16.418182, 18.720795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.378635, 16.590233, 18.760506>,  <9.107723, 16.876984, 18.826691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.378635, 16.590233, 18.760506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088307, -0.302481, 0.949056,
		-0.730406, -0.628166, -0.268169,
		0.677281, -0.716878, -0.165462,
		9.581820, 16.375170, 18.710867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.799486, 16.270493, 19.064333>,  <9.107723, 16.876984, 18.826691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.799486, 16.270493, 19.064333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188693, 16.178720, 19.074129>,  <9.422217, 16.123657, 19.080008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188693, 16.178720, 19.074129>,  <8.799486, 16.270493, 19.064333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.188693, 16.178720, 19.074129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107106, -0.355110, 0.928668,
		-0.204366, -0.906234, -0.370101,
		0.973018, -0.229429, 0.024490,
		9.480598, 16.109892, 19.081476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.767820, 15.673386, 19.434986>,  <8.799486, 16.270493, 19.064333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.767820, 15.673386, 19.434986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141479, 15.814951, 19.453381>,  <9.365675, 15.899890, 19.464417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141479, 15.814951, 19.453381>,  <8.767820, 15.673386, 19.434986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141479, 15.814951, 19.453381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033801, -0.216012, 0.975806,
		0.355284, -0.909992, -0.213749,
		0.934147, 0.353913, 0.045987,
		9.421723, 15.921124, 19.467176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.161512, 15.087510, 19.680204>,  <8.767820, 15.673386, 19.434986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.161512, 15.087510, 19.680204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316748, 15.448668, 19.754147>,  <9.409889, 15.665361, 19.798512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316748, 15.448668, 19.754147>,  <9.161512, 15.087510, 19.680204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.316748, 15.448668, 19.754147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030857, -0.187734, 0.981735,
		0.921106, -0.386704, -0.044997,
		0.388088, 0.902893, 0.184855,
		9.433174, 15.719536, 19.809603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.675303, 14.983130, 20.216417>,  <9.161512, 15.087510, 19.680204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.675303, 14.983130, 20.216417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579626, 15.371187, 20.232443>,  <9.522220, 15.604022, 20.242058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579626, 15.371187, 20.232443>,  <9.675303, 14.983130, 20.216417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.579626, 15.371187, 20.232443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170145, -0.082501, 0.981959,
		0.955948, 0.228061, 0.184799,
		-0.239193, 0.970145, 0.040063,
		9.507869, 15.662230, 20.244461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.024763, 15.260026, 20.776770>,  <9.675303, 14.983130, 20.216417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.024763, 15.260026, 20.776770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730525, 15.525401, 20.721998>,  <9.553982, 15.684627, 20.689135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730525, 15.525401, 20.721998>,  <10.024763, 15.260026, 20.776770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730525, 15.525401, 20.721998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268949, -0.100495, 0.957897,
		0.621744, 0.741452, 0.252354,
		-0.735595, 0.663438, -0.136931,
		9.509847, 15.724432, 20.680920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.092138, 15.714847, 21.354523>,  <10.024763, 15.260026, 20.776770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.092138, 15.714847, 21.354523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721422, 15.749372, 21.208311>,  <9.498993, 15.770086, 21.120584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.721422, 15.749372, 21.208311>,  <10.092138, 15.714847, 21.354523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.721422, 15.749372, 21.208311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375502, -0.192956, 0.906513,
		0.007713, 0.977404, 0.211240,
		-0.926790, 0.086313, -0.365529,
		9.443385, 15.775266, 21.098652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773883, 16.169456, 21.885914>,  <10.092138, 15.714847, 21.354523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773883, 16.169456, 21.885914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485825, 15.959682, 21.704210>,  <9.312989, 15.833817, 21.595188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485825, 15.959682, 21.704210>,  <9.773883, 16.169456, 21.885914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485825, 15.959682, 21.704210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492347, -0.075040, 0.867158,
		-0.488859, 0.848135, -0.204166,
		-0.720147, -0.524439, -0.454261,
		9.269780, 15.802350, 21.567932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.211788, 16.520042, 22.086338>,  <9.773883, 16.169456, 21.885914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.211788, 16.520042, 22.086338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.085829, 16.154211, 21.984838>,  <9.010253, 15.934712, 21.923939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.085829, 16.154211, 21.984838>,  <9.211788, 16.520042, 22.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.085829, 16.154211, 21.984838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516246, -0.059297, 0.854385,
		-0.796447, 0.400041, -0.453475,
		-0.314899, -0.914577, -0.253747,
		8.991359, 15.879838, 21.908714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.537881, 16.615536, 22.046459>,  <9.211788, 16.520042, 22.086338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.537881, 16.615536, 22.046459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.622771, 16.230192, 22.112059>,  <8.673706, 15.998985, 22.151419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.622771, 16.230192, 22.112059>,  <8.537881, 16.615536, 22.046459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.622771, 16.230192, 22.112059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564581, 0.016108, 0.825220,
		-0.797626, -0.267725, -0.540477,
		0.212226, -0.963361, 0.164001,
		8.686440, 15.941184, 22.161259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.938786, 16.425409, 22.202663>,  <8.537881, 16.615536, 22.046459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.938786, 16.425409, 22.202663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.194477, 16.141699, 22.321537>,  <8.347892, 15.971473, 22.392860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.194477, 16.141699, 22.321537>,  <7.938786, 16.425409, 22.202663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.194477, 16.141699, 22.321537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570018, -0.177605, 0.802207,
		-0.516204, -0.682192, -0.517829,
		0.639228, -0.709275, 0.297181,
		8.386246, 15.928917, 22.410692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.572890, 15.855334, 22.496141>,  <7.938786, 16.425409, 22.202663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.572890, 15.855334, 22.496141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.921934, 15.700025, 22.614662>,  <8.131360, 15.606839, 22.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.921934, 15.700025, 22.614662>,  <7.572890, 15.855334, 22.496141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.921934, 15.700025, 22.614662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432286, -0.331597, 0.838553,
		-0.227336, -0.859818, -0.457201,
		0.872609, -0.388274, 0.296304,
		8.183717, 15.583543, 22.703554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.473849, 15.186580, 22.695761>,  <7.572890, 15.855334, 22.496141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.473849, 15.186580, 22.695761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.791600, 15.305612, 22.907578>,  <7.982250, 15.377031, 23.034668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.791600, 15.305612, 22.907578>,  <7.473849, 15.186580, 22.695761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.791600, 15.305612, 22.907578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451137, -0.294724, 0.842385,
		0.406745, -0.908066, -0.099873,
		0.794377, 0.297580, 0.529540,
		8.029913, 15.394886, 23.066439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.588490, 14.617650, 23.241924>,  <7.473849, 15.186580, 22.695761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.588490, 14.617650, 23.241924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.817962, 14.917126, 23.374804>,  <7.955645, 15.096811, 23.454531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.817962, 14.917126, 23.374804>,  <7.588490, 14.617650, 23.241924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.817962, 14.917126, 23.374804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213693, -0.254720, 0.943108,
		0.790713, -0.612030, 0.013862,
		0.573680, 0.748690, 0.332197,
		7.990066, 15.141732, 23.474463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899003, 14.385036, 23.878811>,  <7.588490, 14.617650, 23.241924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899003, 14.385036, 23.878811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.918977, 14.782715, 23.916918>,  <7.930962, 15.021322, 23.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.918977, 14.782715, 23.916918>,  <7.899003, 14.385036, 23.878811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.918977, 14.782715, 23.916918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195160, -0.083834, 0.977182,
		0.979499, -0.067388, 0.189841,
		0.049936, 0.994198, 0.095267,
		7.933958, 15.080975, 23.945498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.413626, 14.478299, 24.459309>,  <7.899003, 14.385036, 23.878811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.413626, 14.478299, 24.459309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208674, 14.815910, 24.395954>,  <8.085704, 15.018477, 24.357943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.208674, 14.815910, 24.395954>,  <8.413626, 14.478299, 24.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.208674, 14.815910, 24.395954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147369, 0.095279, 0.984482,
		0.846021, 0.527768, 0.075564,
		-0.512378, 0.844028, -0.158385,
		8.054961, 15.069118, 24.348438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.623114, 14.910717, 24.936306>,  <8.413626, 14.478299, 24.459309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.623114, 14.910717, 24.936306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.266084, 15.065010, 24.842909>,  <8.051866, 15.157586, 24.786871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.266084, 15.065010, 24.842909>,  <8.623114, 14.910717, 24.936306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.266084, 15.065010, 24.842909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183676, 0.161883, 0.969565,
		0.411792, 0.908297, -0.073643,
		-0.892575, 0.385733, -0.233495,
		7.998311, 15.180730, 24.772860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.535078, 15.433157, 25.365099>,  <8.623114, 14.910717, 24.936306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.535078, 15.433157, 25.365099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.161281, 15.340466, 25.257006>,  <7.937002, 15.284852, 25.192150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.161281, 15.340466, 25.257006>,  <8.535078, 15.433157, 25.365099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.161281, 15.340466, 25.257006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320523, 0.217443, 0.921945,
		-0.154878, 0.948167, -0.277473,
		-0.934493, -0.231726, -0.270232,
		7.880933, 15.270948, 25.175936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.097712, 15.996131, 25.434101>,  <8.535078, 15.433157, 25.365099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.097712, 15.996131, 25.434101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.847335, 15.684207, 25.438013>,  <7.697110, 15.497053, 25.440361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.847335, 15.684207, 25.438013>,  <8.097712, 15.996131, 25.434101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.847335, 15.684207, 25.438013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219272, 0.188016, 0.957376,
		-0.748410, 0.597116, -0.288677,
		-0.625941, -0.779809, 0.009782,
		7.659553, 15.450264, 25.440948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.524865, 16.290047, 25.736130>,  <8.097712, 15.996131, 25.434101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.524865, 16.290047, 25.736130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.459133, 15.898106, 25.781527>,  <7.419694, 15.662940, 25.808765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.459133, 15.898106, 25.781527>,  <7.524865, 16.290047, 25.736130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459133, 15.898106, 25.781527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390381, 0.170265, 0.904772,
		-0.905869, 0.104376, -0.410496,
		-0.164329, -0.979855, 0.113492,
		7.409834, 15.604149, 25.815575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.827680, 16.206543, 25.913807>,  <7.524865, 16.290047, 25.736130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.827680, 16.206543, 25.913807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.019834, 15.873861, 26.025160>,  <7.135126, 15.674252, 26.091972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.019834, 15.873861, 26.025160>,  <6.827680, 16.206543, 25.913807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.019834, 15.873861, 26.025160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522749, -0.016651, 0.852324,
		-0.704247, -0.554967, -0.442773,
		0.480384, -0.831705, 0.278382,
		7.163949, 15.624350, 26.108675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.369259, 15.882522, 26.190426>,  <6.827680, 16.206543, 25.913807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.369259, 15.882522, 26.190426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.694605, 15.713264, 26.350119>,  <6.889813, 15.611711, 26.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.694605, 15.713264, 26.350119>,  <6.369259, 15.882522, 26.190426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.694605, 15.713264, 26.350119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454822, -0.034634, 0.889908,
		-0.362732, -0.905401, -0.220625,
		0.813365, -0.423143, 0.399234,
		6.938615, 15.586322, 26.469889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.112000, 15.393150, 26.684673>,  <6.369259, 15.882522, 26.190426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.112000, 15.393150, 26.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485593, 15.429003, 26.823030>,  <6.709749, 15.450514, 26.906044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485593, 15.429003, 26.823030>,  <6.112000, 15.393150, 26.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.485593, 15.429003, 26.823030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329080, -0.161400, 0.930407,
		0.139221, -0.982810, -0.121248,
		0.933983, 0.089632, 0.345894,
		6.765788, 15.455892, 26.926798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.158153, 14.946581, 27.243189>,  <6.112000, 15.393150, 26.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.158153, 14.946581, 27.243189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497981, 15.153370, 27.285080>,  <6.701878, 15.277444, 27.310215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497981, 15.153370, 27.285080>,  <6.158153, 14.946581, 27.243189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.497981, 15.153370, 27.285080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051049, -0.117033, 0.991815,
		0.524999, -0.847963, -0.073037,
		0.849571, 0.516974, 0.104730,
		6.752852, 15.308462, 27.316500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.657033, 14.456888, 27.595821>,  <6.158153, 14.946581, 27.243189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.657033, 14.456888, 27.595821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.756938, 14.839588, 27.655487>,  <6.816882, 15.069208, 27.691286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.756938, 14.839588, 27.655487>,  <6.657033, 14.456888, 27.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.756938, 14.839588, 27.655487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020807, -0.148706, 0.988663,
		0.968084, -0.250035, -0.017234,
		0.249763, 0.956749, 0.149162,
		6.831867, 15.126613, 27.700235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.200504, 14.472699, 28.010590>,  <6.657033, 14.456888, 27.595821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.200504, 14.472699, 28.010590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.995461, 14.811729, 28.065508>,  <6.872436, 15.015147, 28.098459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.995461, 14.811729, 28.065508>,  <7.200504, 14.472699, 28.010590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995461, 14.811729, 28.065508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101401, -0.218543, 0.970545,
		0.852615, 0.483585, 0.197972,
		-0.512606, 0.847576, 0.137297,
		6.841680, 15.066002, 28.106697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.512522, 14.785220, 28.590689>,  <7.200504, 14.472699, 28.010590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.512522, 14.785220, 28.590689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.142392, 14.929835, 28.544971>,  <6.920313, 15.016604, 28.517542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.142392, 14.929835, 28.544971>,  <7.512522, 14.785220, 28.590689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.142392, 14.929835, 28.544971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182102, -0.159338, 0.970284,
		0.332583, 0.918641, 0.213276,
		-0.925326, 0.361538, -0.114293,
		6.864794, 15.038297, 28.510683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.433713, 15.346348, 28.979311>,  <7.512522, 14.785220, 28.590689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.433713, 15.346348, 28.979311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.051019, 15.236707, 28.940281>,  <6.821402, 15.170922, 28.916862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.051019, 15.236707, 28.940281>,  <7.433713, 15.346348, 28.979311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.051019, 15.236707, 28.940281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107848, 0.022628, 0.993910,
		-0.270227, 0.961434, -0.051211,
		-0.956737, -0.274104, -0.097574,
		6.763998, 15.154475, 28.911009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.008672, 15.759291, 29.398779>,  <7.433713, 15.346348, 28.979311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.008672, 15.759291, 29.398779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.786714, 15.435729, 29.321047>,  <6.653539, 15.241591, 29.274408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.786714, 15.435729, 29.321047>,  <7.008672, 15.759291, 29.398779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.786714, 15.435729, 29.321047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314174, -0.012533, 0.949283,
		-0.770315, 0.587806, -0.247182,
		-0.554896, -0.808905, -0.194328,
		6.620245, 15.193058, 29.262749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.285886, 15.863338, 29.598667>,  <7.008672, 15.759291, 29.398779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.285886, 15.863338, 29.598667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.330574, 15.465860, 29.602434>,  <6.357387, 15.227373, 29.604694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.330574, 15.465860, 29.602434>,  <6.285886, 15.863338, 29.598667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.330574, 15.465860, 29.602434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207198, -0.014027, 0.978198,
		-0.971899, -0.111236, -0.207459,
		0.111721, -0.993695, 0.009415,
		6.364090, 15.167752, 29.605259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.726925, 15.612259, 30.091370>,  <6.285886, 15.863338, 29.598667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.726925, 15.612259, 30.091370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.974533, 15.301798, 30.043367>,  <6.123098, 15.115521, 30.014566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.974533, 15.301798, 30.043367>,  <5.726925, 15.612259, 30.091370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.974533, 15.301798, 30.043367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412496, -0.451330, 0.791295,
		-0.668329, -0.440325, -0.599542,
		0.619019, -0.776154, -0.120005,
		6.160239, 15.068952, 30.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.344395, 14.959751, 30.225111>,  <5.726925, 15.612259, 30.091370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.344395, 14.959751, 30.225111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.735583, 14.882668, 30.257215>,  <5.970295, 14.836419, 30.276478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.735583, 14.882668, 30.257215>,  <5.344395, 14.959751, 30.225111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.735583, 14.882668, 30.257215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181759, -0.596970, 0.781403,
		-0.102668, -0.778775, -0.618845,
		0.977969, -0.192706, 0.080260,
		6.028974, 14.824857, 30.281294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.517722, 14.141020, 30.082476>,  <5.344395, 14.959751, 30.225111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.517722, 14.141020, 30.082476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.773561, 14.317370, 30.334362>,  <5.927064, 14.423181, 30.485495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.773561, 14.317370, 30.334362>,  <5.517722, 14.141020, 30.082476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.773561, 14.317370, 30.334362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293819, -0.616777, 0.730245,
		0.710342, -0.652085, -0.264951,
		0.639597, 0.440876, 0.629717,
		5.965440, 14.449634, 30.523277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.967140, 13.669836, 30.143099>,  <5.517722, 14.141020, 30.082476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.967140, 13.669836, 30.143099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.772068, 13.618269, 30.488480>,  <4.655024, 13.587329, 30.695707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.772068, 13.618269, 30.488480>,  <4.967140, 13.669836, 30.143099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.772068, 13.618269, 30.488480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607505, -0.760412, 0.229588,
		0.626981, 0.636517, 0.449157,
		-0.487681, -0.128918, 0.863451,
		4.625763, 13.579594, 30.747515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.370440, 13.165511, 30.339130>,  <4.967140, 13.669836, 30.143099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.370440, 13.165511, 30.339130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.077276, 13.204685, 30.608425>,  <4.901378, 13.228189, 30.770002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.077276, 13.204685, 30.608425>,  <5.370440, 13.165511, 30.339130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.077276, 13.204685, 30.608425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215827, -0.904997, 0.366605,
		0.645182, 0.413992, 0.642145,
		-0.732911, 0.097935, 0.673239,
		4.857403, 13.234066, 30.810396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.965116, 13.203733, 30.665592>,  <5.370440, 13.165511, 30.339130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.965116, 13.203733, 30.665592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.098184, 13.446461, 30.954342>,  <6.178024, 13.592097, 31.127592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.098184, 13.446461, 30.954342>,  <5.965116, 13.203733, 30.665592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.098184, 13.446461, 30.954342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878701, 0.078444, -0.470883,
		-0.342367, 0.790961, -0.507116,
		0.332669, 0.606818, 0.721875,
		6.197985, 13.628506, 31.170904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.326090, 13.772460, 30.316820>,  <5.965116, 13.203733, 30.665592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.326090, 13.772460, 30.316820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488672, 13.722804, 30.678900>,  <6.586221, 13.693010, 30.896147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488672, 13.722804, 30.678900>,  <6.326090, 13.772460, 30.316820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488672, 13.722804, 30.678900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911764, -0.008874, -0.410619,
		0.059006, 0.992225, 0.109579,
		0.406454, -0.124139, 0.905199,
		6.610608, 13.685562, 30.950459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.859908, 14.359134, 30.542746>,  <6.326090, 13.772460, 30.316820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.859908, 14.359134, 30.542746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.903118, 13.970156, 30.625383>,  <6.929044, 13.736769, 30.674965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.903118, 13.970156, 30.625383>,  <6.859908, 14.359134, 30.542746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.903118, 13.970156, 30.625383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846657, -0.018928, -0.531803,
		0.521060, 0.232362, 0.821283,
		0.108025, -0.972445, 0.206593,
		6.935525, 13.678422, 30.687361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.496721, 14.239287, 30.756142>,  <6.859908, 14.359134, 30.542746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.496721, 14.239287, 30.756142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.351449, 13.908651, 30.584166>,  <7.264285, 13.710270, 30.480980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.351449, 13.908651, 30.584166>,  <7.496721, 14.239287, 30.756142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.351449, 13.908651, 30.584166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879158, -0.151231, -0.451896,
		0.308512, -0.542105, 0.781628,
		-0.363182, -0.826590, -0.429940,
		7.242494, 13.660674, 30.455183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.066803, 13.948538, 30.444214>,  <7.496721, 14.239287, 30.756142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.066803, 13.948538, 30.444214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802517, 13.667158, 30.339436>,  <7.643946, 13.498330, 30.276569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802517, 13.667158, 30.339436>,  <8.066803, 13.948538, 30.444214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802517, 13.667158, 30.339436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693962, -0.439407, -0.570384,
		0.286136, -0.558641, 0.778490,
		-0.660714, -0.703450, -0.261946,
		7.604303, 13.456123, 30.260853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.389984, 13.280085, 30.533703>,  <8.066803, 13.948538, 30.444214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.389984, 13.280085, 30.533703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.076771, 13.232648, 30.289474>,  <7.888843, 13.204185, 30.142939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.076771, 13.232648, 30.289474>,  <8.389984, 13.280085, 30.533703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.076771, 13.232648, 30.289474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588774, -0.457789, -0.666164,
		-0.200509, -0.881116, 0.428289,
		-0.783033, -0.118594, -0.610569,
		7.841861, 13.197070, 30.106304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.448689, 12.566960, 30.257650>,  <8.389984, 13.280085, 30.533703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.448689, 12.566960, 30.257650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257507, 12.847079, 30.045559>,  <8.142798, 13.015151, 29.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257507, 12.847079, 30.045559>,  <8.448689, 12.566960, 30.257650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257507, 12.847079, 30.045559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438194, -0.333072, -0.834895,
		-0.761279, -0.631384, -0.147674,
		-0.477953, 0.700298, -0.530230,
		8.114121, 13.057169, 29.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.177897, 12.256570, 29.652008>,  <8.448689, 12.566960, 30.257650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.177897, 12.256570, 29.652008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.181787, 12.646902, 29.564684>,  <8.184121, 12.881102, 29.512289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.181787, 12.646902, 29.564684>,  <8.177897, 12.256570, 29.652008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.181787, 12.646902, 29.564684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493201, -0.194598, -0.847870,
		-0.869861, -0.099426, -0.483174,
		0.009724, 0.975831, -0.218310,
		8.184705, 12.939651, 29.499191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.831529, 12.470794, 28.923603>,  <8.177897, 12.256570, 29.652008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.831529, 12.470794, 28.923603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.107739, 12.747089, 29.009443>,  <8.273466, 12.912867, 29.060947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.107739, 12.747089, 29.009443>,  <7.831529, 12.470794, 28.923603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.107739, 12.747089, 29.009443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397623, -0.114670, -0.910355,
		-0.604210, 0.713954, -0.353837,
		0.690526, 0.690739, 0.214600,
		8.314898, 12.954311, 29.073824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.916752, 12.792166, 28.297108>,  <7.831529, 12.470794, 28.923603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.916752, 12.792166, 28.297108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238651, 12.911250, 28.502533>,  <8.431791, 12.982700, 28.625788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238651, 12.911250, 28.502533>,  <7.916752, 12.792166, 28.297108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238651, 12.911250, 28.502533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527250, 0.039017, -0.848814,
		-0.272739, 0.953858, -0.125569,
		0.804749, 0.297711, 0.513563,
		8.480076, 13.000564, 28.656603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.234906, 13.121748, 27.763643>,  <7.916752, 12.792166, 28.297108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.234906, 13.121748, 27.763643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.505207, 13.077097, 28.055094>,  <8.667388, 13.050306, 28.229965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.505207, 13.077097, 28.055094>,  <8.234906, 13.121748, 27.763643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.505207, 13.077097, 28.055094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737126, 0.105284, -0.667503,
		-0.002201, 0.988157, 0.153429,
		0.675752, -0.111628, 0.728628,
		8.707932, 13.043609, 28.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.851695, 13.524402, 27.540922>,  <8.234906, 13.121748, 27.763643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.851695, 13.524402, 27.540922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989266, 13.285596, 27.830830>,  <9.071809, 13.142313, 28.004774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989266, 13.285596, 27.830830>,  <8.851695, 13.524402, 27.540922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989266, 13.285596, 27.830830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827708, -0.171730, -0.534236,
		0.443410, 0.783635, 0.435090,
		0.343928, -0.597013, 0.724768,
		9.092445, 13.106492, 28.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591952, 13.725993, 27.589231>,  <8.851695, 13.524402, 27.540922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591952, 13.725993, 27.589231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524405, 13.349864, 27.707401>,  <9.483877, 13.124187, 27.778303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524405, 13.349864, 27.707401>,  <9.591952, 13.725993, 27.589231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524405, 13.349864, 27.707401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853589, -0.289383, -0.433179,
		0.492819, 0.179021, 0.851517,
		-0.168866, -0.940324, 0.295423,
		9.473745, 13.067767, 27.796028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.248711, 13.475977, 27.743361>,  <9.591952, 13.725993, 27.589231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.248711, 13.475977, 27.743361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.024533, 13.150400, 27.682167>,  <9.890027, 12.955054, 27.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.024533, 13.150400, 27.682167>,  <10.248711, 13.475977, 27.743361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.024533, 13.150400, 27.682167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748630, -0.418886, -0.513894,
		0.354198, -0.402535, 0.844103,
		-0.560443, -0.813941, -0.152981,
		9.856400, 12.906218, 27.636272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670394, 12.902401, 27.812056>,  <10.248711, 13.475977, 27.743361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670394, 12.902401, 27.812056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356204, 12.778234, 27.597889>,  <10.167690, 12.703732, 27.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356204, 12.778234, 27.597889>,  <10.670394, 12.902401, 27.812056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.356204, 12.778234, 27.597889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615152, -0.486573, -0.620351,
		-0.067949, -0.816631, 0.573146,
		-0.785475, -0.310420, -0.535414,
		10.120562, 12.685108, 27.437265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.923940, 12.205300, 27.644814>,  <10.670394, 12.902401, 27.812056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.923940, 12.205300, 27.644814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605018, 12.258647, 27.409351>,  <10.413664, 12.290655, 27.268074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605018, 12.258647, 27.409351>,  <10.923940, 12.205300, 27.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605018, 12.258647, 27.409351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467811, -0.479718, -0.742310,
		-0.381389, -0.867228, 0.320092,
		-0.797305, 0.133366, -0.588657,
		10.365826, 12.298656, 27.232754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893601, 11.562188, 27.393932>,  <10.923940, 12.205300, 27.644814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893601, 11.562188, 27.393932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718545, 11.822180, 27.145416>,  <10.613511, 11.978175, 26.996307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.718545, 11.822180, 27.145416>,  <10.893601, 11.562188, 27.393932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.718545, 11.822180, 27.145416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476631, -0.418204, -0.773258,
		-0.762427, -0.634534, -0.126777,
		-0.437640, 0.649979, -0.621288,
		10.587253, 12.017174, 26.959030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.581029, 11.160662, 26.801413>,  <10.893601, 11.562188, 27.393932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.581029, 11.160662, 26.801413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622789, 11.540603, 26.683510>,  <10.647846, 11.768567, 26.612768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622789, 11.540603, 26.683510>,  <10.581029, 11.160662, 26.801413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.622789, 11.540603, 26.683510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575141, -0.299454, -0.761276,
		-0.811365, -0.090048, -0.577562,
		0.104402, 0.949852, -0.294757,
		10.654110, 11.825559, 26.595083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.372370, 11.130118, 26.040508>,  <10.581029, 11.160662, 26.801413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.372370, 11.130118, 26.040508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.594146, 11.459213, 26.090624>,  <10.727212, 11.656671, 26.120693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.594146, 11.459213, 26.090624>,  <10.372370, 11.130118, 26.040508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594146, 11.459213, 26.090624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511711, -0.218301, -0.830961,
		-0.656313, 0.524830, -0.542039,
		0.554441, 0.822738, 0.125288,
		10.760478, 11.706035, 26.128210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468537, 11.453547, 25.346455>,  <10.372370, 11.130118, 26.040508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468537, 11.453547, 25.346455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.769963, 11.589179, 25.571724>,  <10.950819, 11.670559, 25.706884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.769963, 11.589179, 25.571724>,  <10.468537, 11.453547, 25.346455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.769963, 11.589179, 25.571724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648042, -0.239348, -0.723018,
		-0.110368, 0.909800, -0.400103,
		0.753565, 0.339082, 0.563172,
		10.996033, 11.690904, 25.740675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.763904, 11.837666, 24.875666>,  <10.468537, 11.453547, 25.346455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.763904, 11.837666, 24.875666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047894, 11.762283, 25.147081>,  <11.218288, 11.717054, 25.309931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047894, 11.762283, 25.147081>,  <10.763904, 11.837666, 24.875666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047894, 11.762283, 25.147081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656731, -0.170675, -0.734558,
		0.254241, 0.967138, 0.002589,
		0.709976, -0.188455, 0.678541,
		11.260887, 11.705747, 25.350643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377520, 12.177320, 24.824770>,  <10.763904, 11.837666, 24.875666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377520, 12.177320, 24.824770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510189, 11.804890, 24.885551>,  <11.589790, 11.581431, 24.922020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.510189, 11.804890, 24.885551>,  <11.377520, 12.177320, 24.824770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.510189, 11.804890, 24.885551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311602, -0.043912, -0.949198,
		0.890448, 0.362173, 0.275560,
		0.331673, -0.931076, 0.151955,
		11.609691, 11.525567, 24.931139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946609, 12.212130, 24.454834>,  <11.377520, 12.177320, 24.824770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946609, 12.212130, 24.454834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856088, 11.824747, 24.496557>,  <11.801775, 11.592318, 24.521591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856088, 11.824747, 24.496557>,  <11.946609, 12.212130, 24.454834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.856088, 11.824747, 24.496557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360464, -0.182750, -0.914696,
		0.904905, -0.169397, 0.390451,
		-0.226302, -0.968456, 0.104310,
		11.788198, 11.534210, 24.527851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568768, 11.869880, 24.320236>,  <11.946609, 12.212130, 24.454834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568768, 11.869880, 24.320236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.255940, 11.630701, 24.250000>,  <12.068244, 11.487194, 24.207859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.255940, 11.630701, 24.250000>,  <12.568768, 11.869880, 24.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.255940, 11.630701, 24.250000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319149, -0.142278, -0.936963,
		0.535271, -0.788807, 0.302105,
		-0.782067, -0.597946, -0.175590,
		12.021320, 11.451317, 24.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.886763, 11.484494, 23.809940>,  <12.568768, 11.869880, 24.320236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.886763, 11.484494, 23.809940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497652, 11.391809, 23.808435>,  <12.264186, 11.336197, 23.807533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497652, 11.391809, 23.808435>,  <12.886763, 11.484494, 23.809940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497652, 11.391809, 23.808435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059189, -0.232726, -0.970740,
		0.224059, -0.944535, 0.240106,
		-0.972777, -0.231715, -0.003761,
		12.205819, 11.322294, 23.807306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859972, 10.886713, 23.367535>,  <12.886763, 11.484494, 23.809940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859972, 10.886713, 23.367535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477479, 11.001008, 23.392746>,  <12.247983, 11.069585, 23.407873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477479, 11.001008, 23.392746>,  <12.859972, 10.886713, 23.367535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.477479, 11.001008, 23.392746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146532, -0.281177, -0.948403,
		-0.253260, -0.916133, 0.310740,
		-0.956236, 0.285726, 0.063032,
		12.190609, 11.086729, 23.411655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.429492, 10.303319, 23.200138>,  <12.859972, 10.886713, 23.367535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.429492, 10.303319, 23.200138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220199, 10.635822, 23.125050>,  <12.094623, 10.835324, 23.079996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220199, 10.635822, 23.125050>,  <12.429492, 10.303319, 23.200138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220199, 10.635822, 23.125050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034608, -0.240825, -0.969952,
		-0.851487, -0.501013, 0.154776,
		-0.523232, 0.831258, -0.187720,
		12.063229, 10.885200, 23.068733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982945, 10.158007, 22.622936>,  <12.429492, 10.303319, 23.200138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982945, 10.158007, 22.622936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947513, 10.556429, 22.624983>,  <11.926253, 10.795483, 22.626211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947513, 10.556429, 22.624983>,  <11.982945, 10.158007, 22.622936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947513, 10.556429, 22.624983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017435, 0.006685, -0.999826,
		-0.995916, -0.088476, -0.017958,
		-0.088581, 0.996056, 0.005115,
		11.920938, 10.855246, 22.626518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.461400, 10.336989, 22.061186>,  <11.982945, 10.158007, 22.622936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.461400, 10.336989, 22.061186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633817, 10.687661, 22.146637>,  <11.737267, 10.898065, 22.197908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633817, 10.687661, 22.146637>,  <11.461400, 10.336989, 22.061186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633817, 10.687661, 22.146637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090346, 0.193630, -0.976906,
		-0.897798, 0.440387, 0.004258,
		0.431041, 0.876679, 0.213628,
		11.763129, 10.950665, 22.210726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186837, 10.829012, 21.591152>,  <11.461400, 10.336989, 22.061186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186837, 10.829012, 21.591152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.541911, 10.975693, 21.702541>,  <11.754955, 11.063701, 21.769375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.541911, 10.975693, 21.702541>,  <11.186837, 10.829012, 21.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.541911, 10.975693, 21.702541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233736, 0.162205, -0.958675,
		-0.396716, 0.916090, 0.058276,
		0.887684, 0.366701, 0.278472,
		11.808216, 11.085703, 21.786083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.130817, 11.537739, 21.476715>,  <11.186837, 10.829012, 21.591152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.130817, 11.537739, 21.476715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519757, 11.445122, 21.464554>,  <11.753121, 11.389551, 21.457256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519757, 11.445122, 21.464554>,  <11.130817, 11.537739, 21.476715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519757, 11.445122, 21.464554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055331, 0.354902, -0.933264,
		0.226880, 0.905777, 0.357901,
		0.972350, -0.231542, -0.030403,
		11.811462, 11.375659, 21.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.501282, 12.081950, 21.129877>,  <11.130817, 11.537739, 21.476715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.501282, 12.081950, 21.129877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804686, 11.824514, 21.088976>,  <11.986728, 11.670053, 21.064436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804686, 11.824514, 21.088976>,  <11.501282, 12.081950, 21.129877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.804686, 11.824514, 21.088976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334352, 0.519036, -0.786645,
		0.559348, 0.562490, 0.608880,
		0.758510, -0.643589, -0.102252,
		12.032239, 11.631437, 21.058300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083632, 12.382940, 20.975683>,  <11.501282, 12.081950, 21.129877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083632, 12.382940, 20.975683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181646, 12.024981, 20.826490>,  <12.240456, 11.810206, 20.736975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181646, 12.024981, 20.826490>,  <12.083632, 12.382940, 20.975683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181646, 12.024981, 20.826490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271969, 0.432710, -0.859532,
		0.930586, 0.109178, 0.349415,
		0.245038, -0.894898, -0.372981,
		12.255157, 11.756512, 20.714596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605020, 12.562090, 20.685463>,  <12.083632, 12.382940, 20.975683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605020, 12.562090, 20.685463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.475121, 12.225974, 20.511818>,  <12.397182, 12.024304, 20.407631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.475121, 12.225974, 20.511818>,  <12.605020, 12.562090, 20.685463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.475121, 12.225974, 20.511818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078408, 0.433492, -0.897739,
		0.942546, -0.325575, -0.074889,
		-0.324746, -0.840289, -0.434114,
		12.377698, 11.973887, 20.381584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860328, 12.551390, 20.037758>,  <12.605020, 12.562090, 20.685463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860328, 12.551390, 20.037758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614058, 12.250650, 19.943382>,  <12.466295, 12.070207, 19.886757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614058, 12.250650, 19.943382>,  <12.860328, 12.551390, 20.037758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614058, 12.250650, 19.943382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136493, 0.193137, -0.971632,
		0.776089, -0.630413, -0.016287,
		-0.615675, -0.751850, -0.235938,
		12.429355, 12.025096, 19.872601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265306, 12.077329, 19.598894>,  <12.860328, 12.551390, 20.037758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265306, 12.077329, 19.598894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883806, 11.976340, 19.533628>,  <12.654906, 11.915748, 19.494469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883806, 11.976340, 19.533628>,  <13.265306, 12.077329, 19.598894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883806, 11.976340, 19.533628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140888, 0.104048, -0.984543,
		0.265545, -0.961994, -0.063665,
		-0.953749, -0.252471, -0.163162,
		12.597682, 11.900599, 19.484680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263316, 11.429102, 19.135700>,  <13.265306, 12.077329, 19.598894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263316, 11.429102, 19.135700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911860, 11.618032, 19.107691>,  <12.700987, 11.731389, 19.090885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911860, 11.618032, 19.107691>,  <13.263316, 11.429102, 19.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911860, 11.618032, 19.107691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100339, 0.039269, -0.994178,
		-0.466825, -0.880550, -0.081896,
		-0.878639, 0.472324, -0.070022,
		12.648269, 11.759728, 19.086685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837796, 11.175219, 18.539087>,  <13.263316, 11.429102, 19.135700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837796, 11.175219, 18.539087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689812, 11.540982, 18.604795>,  <12.601021, 11.760441, 18.644220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689812, 11.540982, 18.604795>,  <12.837796, 11.175219, 18.539087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689812, 11.540982, 18.604795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029986, 0.164972, -0.985842,
		-0.928563, -0.369649, -0.033614,
		-0.369961, 0.914409, 0.164271,
		12.578823, 11.815305, 18.654078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359781, 11.230744, 17.958052>,  <12.837796, 11.175219, 18.539087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.359781, 11.230744, 17.958052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350188, 11.606464, 18.094954>,  <12.344433, 11.831897, 18.177095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350188, 11.606464, 18.094954>,  <12.359781, 11.230744, 17.958052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350188, 11.606464, 18.094954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177587, 0.332907, -0.926086,
		-0.983813, -0.082990, 0.158824,
		-0.023982, 0.939300, 0.342256,
		12.342994, 11.888254, 18.197630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770802, 11.574196, 17.717138>,  <12.359781, 11.230744, 17.958052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770802, 11.574196, 17.717138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020004, 11.873913, 17.806957>,  <12.169526, 12.053743, 17.860849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020004, 11.873913, 17.806957>,  <11.770802, 11.574196, 17.717138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020004, 11.873913, 17.806957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200125, 0.430198, -0.880273,
		-0.756182, 0.503479, 0.417969,
		0.623008, 0.749292, 0.224549,
		12.206906, 12.098701, 17.874323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359217, 12.219604, 17.669756>,  <11.770802, 11.574196, 17.717138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359217, 12.219604, 17.669756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746617, 12.305543, 17.619402>,  <11.979057, 12.357106, 17.589190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746617, 12.305543, 17.619402>,  <11.359217, 12.219604, 17.669756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.746617, 12.305543, 17.619402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212733, 0.451124, -0.866736,
		-0.129427, 0.866214, 0.482619,
		0.968500, 0.214848, -0.125885,
		12.037168, 12.369997, 17.581636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334797, 12.975508, 17.478752>,  <11.359217, 12.219604, 17.669756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334797, 12.975508, 17.478752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682933, 12.828940, 17.347149>,  <11.891814, 12.741000, 17.268187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682933, 12.828940, 17.347149>,  <11.334797, 12.975508, 17.478752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682933, 12.828940, 17.347149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158283, 0.424501, -0.891485,
		0.466321, 0.827971, 0.311462,
		0.870340, -0.366419, -0.329007,
		11.944035, 12.719015, 17.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.610504, 13.488072, 17.123917>,  <11.334797, 12.975508, 17.478752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.610504, 13.488072, 17.123917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.816825, 13.169140, 16.998562>,  <11.940618, 12.977780, 16.923349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.816825, 13.169140, 16.998562>,  <11.610504, 13.488072, 17.123917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.816825, 13.169140, 16.998562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049954, 0.393174, -0.918106,
		0.855250, 0.457905, 0.242630,
		0.515801, -0.797331, -0.313388,
		11.971565, 12.929940, 16.904545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146617, 13.665474, 16.543524>,  <11.610504, 13.488072, 17.123917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146617, 13.665474, 16.543524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119946, 13.267982, 16.507626>,  <12.103943, 13.029487, 16.486086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119946, 13.267982, 16.507626>,  <12.146617, 13.665474, 16.543524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119946, 13.267982, 16.507626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242945, 0.071069, -0.967433,
		0.967746, -0.086311, 0.236683,
		-0.066679, -0.993730, -0.089745,
		12.099941, 12.969862, 16.480701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.822864, 13.453121, 16.179426>,  <12.146617, 13.665474, 16.543524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.822864, 13.453121, 16.179426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531096, 13.186088, 16.119724>,  <12.356035, 13.025867, 16.083902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531096, 13.186088, 16.119724>,  <12.822864, 13.453121, 16.179426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531096, 13.186088, 16.119724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164829, 0.040237, -0.985501,
		0.663911, -0.743445, 0.080688,
		-0.729420, -0.667585, -0.149255,
		12.312269, 12.985812, 16.074947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022356, 12.965548, 15.729468>,  <12.822864, 13.453121, 16.179426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022356, 12.965548, 15.729468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624507, 12.956591, 15.689022>,  <12.385798, 12.951217, 15.664754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624507, 12.956591, 15.689022>,  <13.022356, 12.965548, 15.729468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.624507, 12.956591, 15.689022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099941, 0.048543, -0.993809,
		0.027152, -0.998570, -0.046045,
		-0.994623, -0.022382, -0.101116,
		12.326120, 12.949873, 15.658688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534555, 13.344053, 16.210835>,  <13.022356, 12.965548, 15.729468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534555, 13.344053, 16.210835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758276, 13.664002, 16.297909>,  <13.892509, 13.855971, 16.350153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758276, 13.664002, 16.297909>,  <13.534555, 13.344053, 16.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758276, 13.664002, 16.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462320, -0.518946, 0.718996,
		0.688071, -0.301497, -0.660044,
		0.559302, 0.799872, 0.217683,
		13.926066, 13.903964, 16.363214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091705, 13.037878, 16.488194>,  <13.534555, 13.344053, 16.210835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091705, 13.037878, 16.488194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.142623, 13.415584, 16.609625>,  <14.173173, 13.642207, 16.682484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.142623, 13.415584, 16.609625>,  <14.091705, 13.037878, 16.488194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142623, 13.415584, 16.609625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436403, -0.328171, 0.837769,
		0.890702, 0.025841, -0.453853,
		0.127293, 0.944265, 0.303579,
		14.180811, 13.698863, 16.700699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644782, 13.037066, 16.997395>,  <14.091705, 13.037878, 16.488194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644782, 13.037066, 16.997395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475221, 13.396001, 17.046537>,  <14.373484, 13.611362, 17.076023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475221, 13.396001, 17.046537>,  <14.644782, 13.037066, 16.997395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475221, 13.396001, 17.046537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411032, 0.069727, 0.908951,
		0.807068, 0.435806, -0.398391,
		-0.423905, 0.897336, 0.122856,
		14.348049, 13.665201, 17.083395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206642, 13.457046, 17.280987>,  <14.644782, 13.037066, 16.997395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206642, 13.457046, 17.280987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867578, 13.615123, 17.422573>,  <14.664139, 13.709969, 17.507524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867578, 13.615123, 17.422573>,  <15.206642, 13.457046, 17.280987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867578, 13.615123, 17.422573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398412, 0.033589, 0.916592,
		0.350341, 0.917984, -0.185921,
		-0.847661, 0.395193, 0.353968,
		14.613279, 13.733681, 17.528763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560127, 13.897216, 17.820148>,  <15.206642, 13.457046, 17.280987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560127, 13.897216, 17.820148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167747, 13.869189, 17.892618>,  <14.932318, 13.852373, 17.936100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167747, 13.869189, 17.892618>,  <15.560127, 13.897216, 17.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167747, 13.869189, 17.892618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180276, 0.019006, 0.983433,
		-0.072350, 0.997361, -0.006013,
		-0.980952, -0.070067, 0.181175,
		14.873461, 13.848169, 17.946970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358785, 14.471249, 18.229309>,  <15.560127, 13.897216, 17.820148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358785, 14.471249, 18.229309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084137, 14.185384, 18.282692>,  <14.919349, 14.013865, 18.314722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084137, 14.185384, 18.282692>,  <15.358785, 14.471249, 18.229309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084137, 14.185384, 18.282692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116890, 0.072660, 0.990483,
		-0.717559, 0.695685, 0.033647,
		-0.686620, -0.714663, 0.133457,
		14.878151, 13.970985, 18.322729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.855583, 14.775880, 18.685026>,  <15.358785, 14.471249, 18.229309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.855583, 14.775880, 18.685026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800256, 14.380139, 18.703142>,  <14.767059, 14.142694, 18.714012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800256, 14.380139, 18.703142>,  <14.855583, 14.775880, 18.685026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800256, 14.380139, 18.703142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047822, 0.052349, 0.997483,
		-0.989233, 0.135804, -0.054554,
		-0.138318, -0.989352, 0.045291,
		14.758760, 14.083334, 18.716730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299830, 14.682917, 19.152763>,  <14.855583, 14.775880, 18.685026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299830, 14.682917, 19.152763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550602, 14.371900, 19.133223>,  <14.701065, 14.185289, 19.121498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550602, 14.371900, 19.133223>,  <14.299830, 14.682917, 19.152763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550602, 14.371900, 19.133223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024521, -0.082370, 0.996300,
		-0.778690, -0.623412, -0.070706,
		0.626929, -0.777543, -0.048854,
		14.738681, 14.138637, 19.118567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950345, 14.109930, 19.414511>,  <14.299830, 14.682917, 19.152763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950345, 14.109930, 19.414511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335416, 14.012577, 19.461870>,  <14.566459, 13.954165, 19.490286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335416, 14.012577, 19.461870>,  <13.950345, 14.109930, 19.414511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335416, 14.012577, 19.461870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135152, -0.053266, 0.989392,
		-0.234495, -0.968467, -0.084171,
		0.962677, -0.243383, 0.118399,
		14.624219, 13.939563, 19.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941259, 13.677540, 20.043726>,  <13.950345, 14.109930, 19.414511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941259, 13.677540, 20.043726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332877, 13.719193, 19.973722>,  <14.567848, 13.744185, 19.931721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332877, 13.719193, 19.973722>,  <13.941259, 13.677540, 20.043726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332877, 13.719193, 19.973722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186735, -0.116201, 0.975514,
		0.081250, -0.987751, -0.133211,
		0.979045, 0.104136, -0.175007,
		14.626591, 13.750434, 19.921221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094675, 13.024958, 20.337606>,  <13.941259, 13.677540, 20.043726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094675, 13.024958, 20.337606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434299, 13.235915, 20.325256>,  <14.638073, 13.362490, 20.317846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434299, 13.235915, 20.325256>,  <14.094675, 13.024958, 20.337606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434299, 13.235915, 20.325256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014461, 0.035221, 0.999275,
		0.528099, -0.848890, 0.022279,
		0.849060, 0.527394, -0.030876,
		14.689016, 13.394134, 20.315994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573197, 12.572253, 20.599646>,  <14.094675, 13.024958, 20.337606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573197, 12.572253, 20.599646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701987, 12.947963, 20.647141>,  <14.779261, 13.173388, 20.675638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701987, 12.947963, 20.647141>,  <14.573197, 12.572253, 20.599646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701987, 12.947963, 20.647141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080880, -0.152246, 0.985028,
		0.943287, -0.307550, -0.124988,
		0.321974, 0.939273, 0.118738,
		14.798579, 13.229745, 20.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135818, 12.558997, 20.914524>,  <14.573197, 12.572253, 20.599646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135818, 12.558997, 20.914524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023201, 12.930674, 21.010307>,  <14.955631, 13.153679, 21.067778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023201, 12.930674, 21.010307>,  <15.135818, 12.558997, 20.914524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023201, 12.930674, 21.010307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149970, -0.203875, 0.967442,
		0.947757, 0.308287, -0.081951,
		-0.281542, 0.929190, 0.239458,
		14.938738, 13.209431, 21.082144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620943, 12.817600, 21.478582>,  <15.135818, 12.558997, 20.914524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620943, 12.817600, 21.478582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306931, 13.064480, 21.499706>,  <15.118523, 13.212607, 21.512381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306931, 13.064480, 21.499706>,  <15.620943, 12.817600, 21.478582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306931, 13.064480, 21.499706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086004, 0.024168, 0.996002,
		0.613456, 0.786435, -0.072054,
		-0.785032, 0.617200, 0.052811,
		15.071421, 13.249640, 21.515549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.789470, 13.273292, 21.958052>,  <15.620943, 12.817600, 21.478582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.789470, 13.273292, 21.958052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393047, 13.322464, 21.937279>,  <15.155194, 13.351968, 21.924816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393047, 13.322464, 21.937279>,  <15.789470, 13.273292, 21.958052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393047, 13.322464, 21.937279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060510, -0.067110, 0.995909,
		0.118943, 0.990143, 0.073949,
		-0.991055, 0.122932, -0.051931,
		15.095731, 13.359344, 21.921700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708872, 13.662907, 22.495884>,  <15.789470, 13.273292, 21.958052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708872, 13.662907, 22.495884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340839, 13.523715, 22.423927>,  <15.120020, 13.440200, 22.380754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340839, 13.523715, 22.423927>,  <15.708872, 13.662907, 22.495884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340839, 13.523715, 22.423927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165217, -0.071660, 0.983650,
		-0.355181, 0.934759, 0.008441,
		-0.920081, -0.347980, -0.179890,
		15.064815, 13.419321, 22.369961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153968, 14.101040, 22.879513>,  <15.708872, 13.662907, 22.495884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153968, 14.101040, 22.879513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.943128, 13.772795, 22.791183>,  <14.816624, 13.575848, 22.738186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.943128, 13.772795, 22.791183>,  <15.153968, 14.101040, 22.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.943128, 13.772795, 22.791183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344127, -0.031475, 0.938395,
		-0.777009, 0.570619, -0.265804,
		-0.527100, -0.820612, -0.220822,
		14.784998, 13.526611, 22.724937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431346, 14.241467, 23.060612>,  <15.153968, 14.101040, 22.879513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431346, 14.241467, 23.060612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.483916, 13.844991, 23.067144>,  <14.515458, 13.607105, 23.071064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.483916, 13.844991, 23.067144>,  <14.431346, 14.241467, 23.060612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.483916, 13.844991, 23.067144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362927, -0.032778, 0.931241,
		-0.922503, -0.128316, -0.364038,
		0.131426, -0.991191, 0.016331,
		14.523344, 13.547633, 23.072044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.807052, 13.963819, 23.307951>,  <14.431346, 14.241467, 23.060612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.807052, 13.963819, 23.307951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082849, 13.677055, 23.349216>,  <14.248326, 13.504997, 23.373976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082849, 13.677055, 23.349216>,  <13.807052, 13.963819, 23.307951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082849, 13.677055, 23.349216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292899, -0.145712, 0.944975,
		-0.662429, -0.681769, -0.310449,
		0.689491, -0.716909, 0.103166,
		14.289696, 13.461983, 23.380167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421268, 13.416114, 23.577234>,  <13.807052, 13.963819, 23.307951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421268, 13.416114, 23.577234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806161, 13.335519, 23.650459>,  <14.037097, 13.287162, 23.694395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806161, 13.335519, 23.650459>,  <13.421268, 13.416114, 23.577234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806161, 13.335519, 23.650459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236819, -0.287890, 0.927920,
		-0.134261, -0.936228, -0.324732,
		0.962232, -0.201486, 0.183065,
		14.094831, 13.275072, 23.705378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405819, 12.739388, 23.841566>,  <13.421268, 13.416114, 23.577234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405819, 12.739388, 23.841566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.732872, 12.919374, 23.985237>,  <13.929104, 13.027366, 24.071440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.732872, 12.919374, 23.985237>,  <13.405819, 12.739388, 23.841566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.732872, 12.919374, 23.985237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242404, -0.296822, 0.923654,
		0.522224, -0.842276, -0.133618,
		0.817632, 0.449965, 0.359179,
		13.978162, 13.054364, 24.092991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491624, 12.339441, 24.340246>,  <13.405819, 12.739388, 23.841566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491624, 12.339441, 24.340246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786250, 12.596258, 24.425337>,  <13.963026, 12.750348, 24.476391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786250, 12.596258, 24.425337>,  <13.491624, 12.339441, 24.340246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786250, 12.596258, 24.425337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017168, -0.332159, 0.943067,
		0.676147, -0.690979, -0.255680,
		0.736567, 0.642042, 0.212725,
		14.007220, 12.788871, 24.489155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987350, 11.997035, 24.725605>,  <13.491624, 12.339441, 24.340246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987350, 11.997035, 24.725605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991705, 12.389722, 24.801619>,  <13.994318, 12.625334, 24.847227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991705, 12.389722, 24.801619>,  <13.987350, 11.997035, 24.725605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.991705, 12.389722, 24.801619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244157, -0.181683, 0.952564,
		0.969675, -0.056769, 0.237715,
		0.010887, 0.981717, 0.190034,
		13.994971, 12.684237, 24.858629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374638, 12.031291, 25.387030>,  <13.987350, 11.997035, 24.725605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374638, 12.031291, 25.387030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.137458, 12.352630, 25.364960>,  <13.995151, 12.545433, 25.351717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.137458, 12.352630, 25.364960>,  <14.374638, 12.031291, 25.387030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.137458, 12.352630, 25.364960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222393, -0.097520, 0.970067,
		0.773921, 0.587471, 0.236483,
		-0.592948, 0.803348, -0.055177,
		13.959574, 12.593634, 25.348406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483633, 12.284252, 26.107082>,  <14.374638, 12.031291, 25.387030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483633, 12.284252, 26.107082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153955, 12.464310, 25.969637>,  <13.956147, 12.572344, 25.887169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153955, 12.464310, 25.969637>,  <14.483633, 12.284252, 26.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153955, 12.464310, 25.969637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396920, -0.026398, 0.917473,
		0.403924, 0.892566, 0.200428,
		-0.824196, 0.450144, -0.343615,
		13.906695, 12.599353, 25.866552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.319446, 12.909524, 26.580256>,  <14.483633, 12.284252, 26.107082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.319446, 12.909524, 26.580256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.973586, 12.846980, 26.389286>,  <13.766070, 12.809454, 26.274704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.973586, 12.846980, 26.389286>,  <14.319446, 12.909524, 26.580256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973586, 12.846980, 26.389286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500587, 0.187966, 0.845034,
		-0.042390, 0.969650, -0.240797,
		-0.864648, -0.156360, -0.477426,
		13.714191, 12.800072, 26.246058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817996, 13.430626, 26.753975>,  <14.319446, 12.909524, 26.580256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817996, 13.430626, 26.753975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580903, 13.141985, 26.610891>,  <13.438647, 12.968801, 26.525042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580903, 13.141985, 26.610891>,  <13.817996, 13.430626, 26.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580903, 13.141985, 26.610891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499552, -0.018992, 0.866076,
		-0.631757, 0.692046, -0.349221,
		-0.592732, -0.721603, -0.357711,
		13.403084, 12.925504, 26.503578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127009, 13.596945, 26.880119>,  <13.817996, 13.430626, 26.753975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127009, 13.596945, 26.880119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.126734, 13.199196, 26.837744>,  <13.126569, 12.960546, 26.812319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.126734, 13.199196, 26.837744>,  <13.127009, 13.596945, 26.880119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.126734, 13.199196, 26.837744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526613, -0.089698, 0.845360,
		-0.850105, 0.056370, -0.523588,
		-0.000689, -0.994372, -0.105938,
		13.126527, 12.900884, 26.805962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.507689, 13.517099, 27.138687>,  <13.127009, 13.596945, 26.880119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.507689, 13.517099, 27.138687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690865, 13.161570, 27.131952>,  <12.800770, 12.948252, 27.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690865, 13.161570, 27.131952>,  <12.507689, 13.517099, 27.138687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690865, 13.161570, 27.131952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514770, -0.280566, 0.810121,
		-0.724780, -0.362316, -0.586022,
		0.457937, -0.888825, -0.016839,
		12.828246, 12.894922, 27.126900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923262, 13.015003, 27.302711>,  <12.507689, 13.517099, 27.138687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923262, 13.015003, 27.302711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269489, 12.835456, 27.391531>,  <12.477226, 12.727728, 27.444822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269489, 12.835456, 27.391531>,  <11.923262, 13.015003, 27.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269489, 12.835456, 27.391531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373258, -0.282652, 0.883621,
		-0.333867, -0.847717, -0.412199,
		0.865569, -0.448869, 0.222049,
		12.529160, 12.700795, 27.458145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691381, 12.388148, 27.535864>,  <11.923262, 13.015003, 27.302711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691381, 12.388148, 27.535864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058932, 12.453782, 27.679384>,  <12.279463, 12.493162, 27.765497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058932, 12.453782, 27.679384>,  <11.691381, 12.388148, 27.535864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.058932, 12.453782, 27.679384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320915, -0.218181, 0.921634,
		0.229511, -0.962015, -0.147824,
		0.918879, 0.164086, 0.358800,
		12.334596, 12.503008, 27.787024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.807704, 11.914934, 28.029655>,  <11.691381, 12.388148, 27.535864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.807704, 11.914934, 28.029655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075417, 12.194404, 28.130781>,  <12.236044, 12.362085, 28.191458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075417, 12.194404, 28.130781>,  <11.807704, 11.914934, 28.029655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075417, 12.194404, 28.130781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262007, -0.096475, 0.960232,
		0.695280, -0.708905, 0.118488,
		0.669282, 0.698675, 0.252815,
		12.276201, 12.404006, 28.206625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905925, 11.675655, 28.748327>,  <11.807704, 11.914934, 28.029655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905925, 11.675655, 28.748327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.081739, 12.032123, 28.703377>,  <12.187228, 12.246003, 28.676407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.081739, 12.032123, 28.703377>,  <11.905925, 11.675655, 28.748327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.081739, 12.032123, 28.703377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188390, 0.213789, 0.958542,
		0.878247, -0.400144, 0.261855,
		0.439536, 0.891167, -0.112377,
		12.213600, 12.299473, 28.669664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453309, 11.809297, 29.347008>,  <11.905925, 11.675655, 28.748327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453309, 11.809297, 29.347008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348242, 12.173698, 29.219837>,  <12.285201, 12.392340, 29.143536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348242, 12.173698, 29.219837>,  <12.453309, 11.809297, 29.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348242, 12.173698, 29.219837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162173, 0.283125, 0.945273,
		0.951160, 0.299852, 0.073373,
		-0.262668, 0.911004, -0.317925,
		12.269442, 12.447000, 29.124460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764170, 12.233604, 29.748129>,  <12.453309, 11.809297, 29.347008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764170, 12.233604, 29.748129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.449533, 12.440739, 29.613596>,  <12.260751, 12.565020, 29.532877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.449533, 12.440739, 29.613596>,  <12.764170, 12.233604, 29.748129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449533, 12.440739, 29.613596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263101, 0.211690, 0.941257,
		0.558615, 0.828874, -0.030270,
		-0.786592, 0.517837, -0.336331,
		12.213555, 12.596089, 29.512697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681496, 12.817039, 30.147688>,  <12.764170, 12.233604, 29.748129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681496, 12.817039, 30.147688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315919, 12.767178, 29.993195>,  <12.096573, 12.737261, 29.900499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315919, 12.767178, 29.993195>,  <12.681496, 12.817039, 30.147688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315919, 12.767178, 29.993195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396636, 0.072721, 0.915091,
		-0.085981, 0.989532, -0.115904,
		-0.913941, -0.124652, -0.386231,
		12.041737, 12.729782, 29.877325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.230977, 13.311971, 30.427813>,  <12.681496, 12.817039, 30.147688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.230977, 13.311971, 30.427813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992743, 13.016591, 30.301338>,  <11.849802, 12.839363, 30.225454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992743, 13.016591, 30.301338>,  <12.230977, 13.311971, 30.427813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.992743, 13.016591, 30.301338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565573, 0.105969, 0.817862,
		-0.570443, 0.665932, -0.480760,
		-0.595586, -0.738448, -0.316184,
		11.814067, 12.795056, 30.206484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.944447, 13.934112, 30.296877>,  <12.230977, 13.311971, 30.427813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.944447, 13.934112, 30.296877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640390, 14.181661, 30.217697>,  <11.457956, 14.330190, 30.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.640390, 14.181661, 30.217697>,  <11.944447, 13.934112, 30.296877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.640390, 14.181661, 30.217697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503483, 0.368445, -0.781507,
		-0.410721, -0.693718, -0.591662,
		-0.760140, 0.618873, -0.197947,
		11.412348, 14.367322, 30.158314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.535151, 13.887783, 29.574711>,  <11.944447, 13.934112, 30.296877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.535151, 13.887783, 29.574711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577855, 14.243394, 29.752806>,  <11.603477, 14.456760, 29.859663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577855, 14.243394, 29.752806>,  <11.535151, 13.887783, 29.574711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577855, 14.243394, 29.752806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631001, 0.285484, -0.721343,
		-0.768401, 0.357954, -0.530499,
		0.106759, 0.889026, 0.445236,
		11.609882, 14.510101, 29.886377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368108, 14.391650, 29.157171>,  <11.535151, 13.887783, 29.574711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368108, 14.391650, 29.157171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634732, 14.534698, 29.418798>,  <11.794706, 14.620527, 29.575775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634732, 14.534698, 29.418798>,  <11.368108, 14.391650, 29.157171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634732, 14.534698, 29.418798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474741, 0.472826, -0.742331,
		-0.574733, 0.805322, 0.145390,
		0.666560, 0.357620, 0.654069,
		11.834701, 14.641984, 29.615019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.583073, 15.043137, 28.862690>,  <11.368108, 14.391650, 29.157171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.583073, 15.043137, 28.862690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859192, 14.990479, 29.147270>,  <12.024863, 14.958883, 29.318018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.859192, 14.990479, 29.147270>,  <11.583073, 15.043137, 28.862690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.859192, 14.990479, 29.147270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663412, 0.507586, -0.549765,
		-0.288748, 0.851484, 0.437720,
		0.690297, -0.131646, 0.711449,
		12.066281, 14.950985, 29.360704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744187, 15.763759, 29.118505>,  <11.583073, 15.043137, 28.862690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744187, 15.763759, 29.118505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044496, 15.510717, 29.194567>,  <12.224681, 15.358892, 29.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044496, 15.510717, 29.194567>,  <11.744187, 15.763759, 29.118505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044496, 15.510717, 29.194567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587981, 0.508804, -0.628806,
		0.301034, 0.583895, 0.753953,
		0.750771, -0.632602, 0.190152,
		12.269727, 15.320937, 29.251612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337345, 16.074610, 28.808973>,  <11.744187, 15.763759, 29.118505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337345, 16.074610, 28.808973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536260, 15.746721, 28.922651>,  <12.655608, 15.549989, 28.990858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536260, 15.746721, 28.922651>,  <12.337345, 16.074610, 28.808973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.536260, 15.746721, 28.922651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785433, 0.286220, -0.548793,
		0.368513, 0.496124, 0.786167,
		0.497286, -0.819719, 0.284196,
		12.685446, 15.500806, 29.007910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060758, 16.250631, 29.150024>,  <12.337345, 16.074610, 28.808973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060758, 16.250631, 29.150024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053573, 15.879596, 29.000753>,  <13.049262, 15.656975, 28.911192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053573, 15.879596, 29.000753>,  <13.060758, 16.250631, 29.150024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053573, 15.879596, 29.000753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792784, 0.214212, -0.570620,
		0.609238, -0.306097, 0.731528,
		-0.017963, -0.927587, -0.373175,
		13.048183, 15.601319, 28.888802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741223, 15.988501, 29.221674>,  <13.060758, 16.250631, 29.150024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741223, 15.988501, 29.221674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607915, 15.769338, 28.914759>,  <13.527930, 15.637840, 28.730610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607915, 15.769338, 28.914759>,  <13.741223, 15.988501, 29.221674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607915, 15.769338, 28.914759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745955, 0.344474, -0.569989,
		0.576612, -0.762322, 0.293911,
		-0.333271, -0.547907, -0.767286,
		13.507934, 15.604965, 28.684572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357675, 15.687761, 28.902222>,  <13.741223, 15.988501, 29.221674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357675, 15.687761, 28.902222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069473, 15.675588, 28.625109>,  <13.896552, 15.668283, 28.458841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069473, 15.675588, 28.625109>,  <14.357675, 15.687761, 28.902222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069473, 15.675588, 28.625109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669013, 0.232374, -0.705991,
		0.182470, -0.972150, -0.147067,
		-0.720504, -0.030433, -0.692783,
		13.853322, 15.666457, 28.417274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642262, 15.375263, 28.348810>,  <14.357675, 15.687761, 28.902222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642262, 15.375263, 28.348810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343706, 15.582810, 28.182110>,  <14.164573, 15.707338, 28.082090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343706, 15.582810, 28.182110>,  <14.642262, 15.375263, 28.348810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343706, 15.582810, 28.182110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604434, 0.266464, -0.750770,
		-0.278502, -0.812264, -0.512507,
		-0.746389, 0.518867, -0.416750,
		14.119789, 15.738471, 28.057085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686237, 15.215874, 27.553545>,  <14.642262, 15.375263, 28.348810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.686237, 15.215874, 27.553545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457756, 15.543240, 27.578594>,  <14.320667, 15.739659, 27.593624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457756, 15.543240, 27.578594>,  <14.686237, 15.215874, 27.553545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.457756, 15.543240, 27.578594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414092, 0.353204, -0.838913,
		-0.708699, -0.453258, -0.540651,
		-0.571204, 0.818416, 0.062625,
		14.286395, 15.788764, 27.597382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109632, 15.283416, 26.967592>,  <14.686237, 15.215874, 27.553545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109632, 15.283416, 26.967592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182324, 15.648677, 27.113537>,  <14.225940, 15.867834, 27.201103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182324, 15.648677, 27.113537>,  <14.109632, 15.283416, 26.967592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182324, 15.648677, 27.113537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075193, 0.357050, -0.931054,
		-0.980470, 0.196635, -0.003776,
		0.181729, 0.913154, 0.364862,
		14.236843, 15.922623, 27.222996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733529, 15.765987, 26.565695>,  <14.109632, 15.283416, 26.967592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733529, 15.765987, 26.565695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045469, 15.951413, 26.733952>,  <14.232634, 16.062668, 26.834906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045469, 15.951413, 26.733952>,  <13.733529, 15.765987, 26.565695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045469, 15.951413, 26.733952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167081, 0.493461, -0.853569,
		-0.603255, 0.735938, 0.307374,
		0.779851, 0.463564, 0.420644,
		14.279425, 16.090483, 26.860146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784614, 16.588287, 26.610653>,  <13.733529, 15.765987, 26.565695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784614, 16.588287, 26.610653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153509, 16.433851, 26.602528>,  <14.374846, 16.341190, 26.597652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153509, 16.433851, 26.602528>,  <13.784614, 16.588287, 26.610653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153509, 16.433851, 26.602528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167069, 0.445354, -0.879629,
		0.348662, 0.807834, 0.475226,
		0.922238, -0.386089, -0.020313,
		14.430181, 16.318024, 26.596434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333921, 17.157583, 26.359844>,  <13.784614, 16.588287, 26.610653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333921, 17.157583, 26.359844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477678, 16.789001, 26.300842>,  <14.563932, 16.567852, 26.265442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477678, 16.789001, 26.300842>,  <14.333921, 17.157583, 26.359844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477678, 16.789001, 26.300842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235031, 0.242347, -0.941291,
		0.903105, 0.303624, 0.303668,
		0.359391, -0.921456, -0.147504,
		14.585496, 16.512566, 26.256592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.913174, 17.245192, 25.960207>,  <14.333921, 17.157583, 26.359844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.913174, 17.245192, 25.960207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.816714, 16.862608, 25.894444>,  <14.758839, 16.633057, 25.854986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.816714, 16.862608, 25.894444>,  <14.913174, 17.245192, 25.960207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816714, 16.862608, 25.894444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105232, 0.142638, -0.984165,
		0.964766, -0.254630, 0.066254,
		-0.241147, -0.956461, -0.164407,
		14.744370, 16.575670, 25.845121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485417, 16.906944, 25.515127>,  <14.913174, 17.245192, 25.960207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485417, 16.906944, 25.515127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.149861, 16.695871, 25.461737>,  <14.948527, 16.569227, 25.429703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.149861, 16.695871, 25.461737>,  <15.485417, 16.906944, 25.515127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.149861, 16.695871, 25.461737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238076, -0.135204, -0.961790,
		0.489473, -0.838613, 0.239050,
		-0.838890, -0.527682, -0.133475,
		14.898194, 16.537567, 25.421694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670231, 16.415815, 24.990763>,  <15.485417, 16.906944, 25.515127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670231, 16.415815, 24.990763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277811, 16.345150, 25.022587>,  <15.042359, 16.302750, 25.041681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277811, 16.345150, 25.022587>,  <15.670231, 16.415815, 24.990763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277811, 16.345150, 25.022587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015619, -0.337170, -0.941314,
		0.193123, -0.924719, 0.328022,
		-0.981050, -0.176666, 0.079558,
		14.983496, 16.292150, 25.046453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563466, 15.760421, 24.831657>,  <15.670231, 16.415815, 24.990763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563466, 15.760421, 24.831657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211535, 15.938505, 24.765093>,  <15.000377, 16.045355, 24.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211535, 15.938505, 24.765093>,  <15.563466, 15.760421, 24.831657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211535, 15.938505, 24.765093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037161, -0.413482, -0.909754,
		-0.473842, -0.794241, 0.380336,
		-0.879825, 0.445213, -0.166410,
		14.947587, 16.072069, 24.715170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979283, 15.249999, 24.636660>,  <15.563466, 15.760421, 24.831657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979283, 15.249999, 24.636660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896235, 15.613295, 24.491335>,  <14.846407, 15.831272, 24.404140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896235, 15.613295, 24.491335>,  <14.979283, 15.249999, 24.636660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896235, 15.613295, 24.491335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033501, -0.377789, -0.925285,
		-0.977636, -0.179935, 0.108863,
		-0.207619, 0.908239, -0.363312,
		14.833950, 15.885766, 24.382341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494107, 15.221864, 24.152573>,  <14.979283, 15.249999, 24.636660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494107, 15.221864, 24.152573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650674, 15.580365, 24.069122>,  <14.744614, 15.795465, 24.019053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650674, 15.580365, 24.069122>,  <14.494107, 15.221864, 24.152573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650674, 15.580365, 24.069122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040000, -0.209929, -0.976898,
		-0.919344, 0.390719, -0.046319,
		0.391416, 0.896252, -0.208626,
		14.768099, 15.849241, 24.006535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056930, 15.346848, 23.680138>,  <14.494107, 15.221864, 24.152573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056930, 15.346848, 23.680138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.389086, 15.564944, 23.634241>,  <14.588380, 15.695802, 23.606703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.389086, 15.564944, 23.634241>,  <14.056930, 15.346848, 23.680138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.389086, 15.564944, 23.634241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045938, -0.138238, -0.989333,
		-0.555285, 0.826804, -0.089745,
		0.830391, 0.545239, -0.114744,
		14.638203, 15.728516, 23.599817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926722, 15.699568, 23.067198>,  <14.056930, 15.346848, 23.680138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926722, 15.699568, 23.067198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322124, 15.730594, 23.119102>,  <14.559366, 15.749209, 23.150246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322124, 15.730594, 23.119102>,  <13.926722, 15.699568, 23.067198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322124, 15.730594, 23.119102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132110, -0.025939, -0.990896,
		-0.073493, 0.996650, -0.035888,
		0.988507, 0.077565, 0.129762,
		14.618676, 15.753863, 23.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185781, 16.032564, 22.458796>,  <13.926722, 15.699568, 23.067198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185781, 16.032564, 22.458796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546603, 15.920119, 22.589806>,  <14.763097, 15.852653, 22.668411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546603, 15.920119, 22.589806>,  <14.185781, 16.032564, 22.458796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.546603, 15.920119, 22.589806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332437, -0.031475, -0.942600,
		0.275286, 0.959159, 0.065060,
		0.902055, -0.281112, 0.327525,
		14.817220, 15.835786, 22.688063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644385, 16.276798, 21.958433>,  <14.185781, 16.032564, 22.458796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644385, 16.276798, 21.958433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871799, 16.003426, 22.141602>,  <15.008247, 15.839402, 22.251503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871799, 16.003426, 22.141602>,  <14.644385, 16.276798, 21.958433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871799, 16.003426, 22.141602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542835, -0.106592, -0.833048,
		0.618141, 0.722191, 0.310389,
		0.568535, -0.683431, 0.457919,
		15.042360, 15.798396, 22.278976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269814, 16.642824, 21.986044>,  <14.644385, 16.276798, 21.958433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269814, 16.642824, 21.986044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317241, 16.245741, 21.994736>,  <15.345696, 16.007490, 21.999950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317241, 16.245741, 21.994736>,  <15.269814, 16.642824, 21.986044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317241, 16.245741, 21.994736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617367, 0.056561, -0.784639,
		0.777689, 0.106448, 0.619572,
		0.118567, -0.992708, 0.021730,
		15.352811, 15.947928, 22.001255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925730, 16.608021, 21.767445>,  <15.269814, 16.642824, 21.986044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925730, 16.608021, 21.767445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823343, 16.225979, 21.707771>,  <15.761911, 15.996754, 21.671967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823343, 16.225979, 21.707771>,  <15.925730, 16.608021, 21.767445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823343, 16.225979, 21.707771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411321, 0.032052, -0.910927,
		0.874812, -0.294528, 0.384650,
		-0.255965, -0.955105, -0.149186,
		15.746553, 15.939447, 21.663015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547094, 16.179600, 21.640461>,  <15.925730, 16.608021, 21.767445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547094, 16.179600, 21.640461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220469, 16.009315, 21.484514>,  <16.024494, 15.907145, 21.390947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220469, 16.009315, 21.484514>,  <16.547094, 16.179600, 21.640461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220469, 16.009315, 21.484514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482763, -0.133334, -0.865541,
		0.316490, -0.894980, 0.314394,
		-0.816562, -0.425714, -0.389864,
		15.975500, 15.881601, 21.367556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842161, 15.699677, 21.305540>,  <16.547094, 16.179600, 21.640461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842161, 15.699677, 21.305540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475451, 15.725943, 21.147953>,  <16.255424, 15.741702, 21.053400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475451, 15.725943, 21.147953>,  <16.842161, 15.699677, 21.305540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475451, 15.725943, 21.147953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372592, -0.214690, -0.902819,
		-0.143862, -0.974473, 0.172358,
		-0.916776, 0.065662, -0.393967,
		16.200418, 15.745642, 21.029762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827065, 15.234128, 20.770731>,  <16.842161, 15.699677, 21.305540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827065, 15.234128, 20.770731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516455, 15.467235, 20.674904>,  <16.330090, 15.607099, 20.617409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516455, 15.467235, 20.674904>,  <16.827065, 15.234128, 20.770731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516455, 15.467235, 20.674904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306975, 0.017870, -0.951550,
		-0.550252, -0.812442, -0.192771,
		-0.776524, 0.582768, -0.239566,
		16.283497, 15.642065, 20.603033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601913, 15.015288, 20.175724>,  <16.827065, 15.234128, 20.770731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601913, 15.015288, 20.175724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419382, 15.370112, 20.147757>,  <16.309864, 15.583007, 20.130976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419382, 15.370112, 20.147757>,  <16.601913, 15.015288, 20.175724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419382, 15.370112, 20.147757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242392, 0.048319, -0.968974,
		-0.856161, -0.459116, -0.237066,
		-0.456326, 0.887062, -0.069917,
		16.282484, 15.636230, 20.126781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122276, 14.954843, 19.505438>,  <16.601913, 15.015288, 20.175724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122276, 14.954843, 19.505438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158075, 15.341970, 19.599516>,  <16.179554, 15.574247, 19.655962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158075, 15.341970, 19.599516>,  <16.122276, 14.954843, 19.505438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158075, 15.341970, 19.599516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104602, 0.225702, -0.968564,
		-0.990479, 0.111285, -0.081036,
		0.089497, 0.967819, 0.235193,
		16.184925, 15.632317, 19.670074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791073, 15.286669, 18.995371>,  <16.122276, 14.954843, 19.505438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791073, 15.286669, 18.995371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.048182, 15.558962, 19.135910>,  <16.202446, 15.722338, 19.220234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.048182, 15.558962, 19.135910>,  <15.791073, 15.286669, 18.995371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048182, 15.558962, 19.135910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309680, 0.188600, -0.931949,
		-0.700673, 0.707836, -0.089583,
		0.642771, 0.680733, 0.351350,
		16.241013, 15.763182, 19.241316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702858, 15.847587, 18.513792>,  <15.791073, 15.286669, 18.995371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702858, 15.847587, 18.513792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055353, 15.899224, 18.695673>,  <16.266850, 15.930206, 18.804802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055353, 15.899224, 18.695673>,  <15.702858, 15.847587, 18.513792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055353, 15.899224, 18.695673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428134, 0.189646, -0.883592,
		-0.200298, 0.973329, 0.111854,
		0.881239, 0.129094, 0.454701,
		16.319725, 15.937952, 18.832083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989769, 16.405502, 18.090687>,  <15.702858, 15.847587, 18.513792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989769, 16.405502, 18.090687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300907, 16.266520, 18.300156>,  <16.487591, 16.183130, 18.425837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300907, 16.266520, 18.300156>,  <15.989769, 16.405502, 18.090687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300907, 16.266520, 18.300156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586337, 0.101315, -0.803706,
		0.226198, 0.932206, 0.282534,
		0.777845, -0.347457, 0.523670,
		16.534260, 16.162283, 18.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630194, 16.839724, 18.037218>,  <15.989769, 16.405502, 18.090687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630194, 16.839724, 18.037218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788702, 16.493027, 18.158363>,  <16.883808, 16.285009, 18.231050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788702, 16.493027, 18.158363>,  <16.630194, 16.839724, 18.037218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788702, 16.493027, 18.158363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681875, 0.056931, -0.729250,
		0.614829, 0.495496, 0.613570,
		0.396272, -0.866743, 0.302863,
		16.907583, 16.233004, 18.249222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334869, 16.915375, 17.950989>,  <16.630194, 16.839724, 18.037218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334869, 16.915375, 17.950989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253229, 16.523834, 17.945461>,  <17.204245, 16.288910, 17.942144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253229, 16.523834, 17.945461>,  <17.334869, 16.915375, 17.950989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253229, 16.523834, 17.945461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644338, -0.123699, -0.754670,
		0.737001, -0.162932, 0.655959,
		-0.204101, -0.978852, -0.013817,
		17.191999, 16.230179, 17.941317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994108, 16.554310, 17.749861>,  <17.334869, 16.915375, 17.950989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994108, 16.554310, 17.749861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713518, 16.278961, 17.676022>,  <17.545164, 16.113752, 17.631718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713518, 16.278961, 17.676022>,  <17.994108, 16.554310, 17.749861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713518, 16.278961, 17.676022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490275, -0.278095, -0.826010,
		0.517268, -0.669929, 0.532569,
		-0.701473, -0.688374, -0.184600,
		17.503077, 16.072449, 17.620642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341866, 15.905688, 17.705828>,  <17.994108, 16.554310, 17.749861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341866, 15.905688, 17.705828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004854, 15.896567, 17.490561>,  <17.802647, 15.891095, 17.361401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004854, 15.896567, 17.490561>,  <18.341866, 15.905688, 17.705828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004854, 15.896567, 17.490561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524643, -0.261088, -0.810298,
		-0.122033, -0.965046, 0.231937,
		-0.842530, -0.022801, -0.538166,
		17.752094, 15.889727, 17.329111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453724, 15.382661, 17.276329>,  <18.341866, 15.905688, 17.705828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453724, 15.382661, 17.276329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137129, 15.561137, 17.109255>,  <17.947172, 15.668223, 17.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137129, 15.561137, 17.109255>,  <18.453724, 15.382661, 17.276329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137129, 15.561137, 17.109255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382862, -0.170743, -0.907890,
		-0.476409, -0.878499, -0.035689,
		-0.791487, 0.446191, -0.417687,
		17.899683, 15.694994, 16.983950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164942, 14.884207, 16.727869>,  <18.453724, 15.382661, 17.276329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164942, 14.884207, 16.727869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058237, 15.260410, 16.643696>,  <17.994215, 15.486133, 16.593191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058237, 15.260410, 16.643696>,  <18.164942, 14.884207, 16.727869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058237, 15.260410, 16.643696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317247, -0.120484, -0.940658,
		-0.910051, -0.317689, -0.266233,
		-0.266760, 0.940509, -0.210432,
		17.978209, 15.542563, 16.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714138, 14.857295, 16.033104>,  <18.164942, 14.884207, 16.727869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714138, 14.857295, 16.033104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906565, 15.191302, 16.139927>,  <18.022020, 15.391706, 16.204020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906565, 15.191302, 16.139927>,  <17.714138, 14.857295, 16.033104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906565, 15.191302, 16.139927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720309, -0.202833, -0.663336,
		-0.499730, 0.511472, -0.699047,
		0.481067, 0.835019, 0.267056,
		18.050884, 15.441808, 16.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060671, 15.118142, 15.473969>,  <17.714138, 14.857295, 16.033104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060671, 15.118142, 15.473969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247911, 15.248993, 15.802327>,  <18.360256, 15.327503, 15.999342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247911, 15.248993, 15.802327>,  <18.060671, 15.118142, 15.473969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247911, 15.248993, 15.802327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882919, -0.134724, -0.449781,
		-0.036541, 0.935327, -0.351891,
		0.468101, 0.327127, 0.820896,
		18.388342, 15.347131, 16.048595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763399, 15.123356, 15.264185>,  <18.060671, 15.118142, 15.473969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763399, 15.123356, 15.264185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746605, 15.173491, 15.660675>,  <18.736528, 15.203572, 15.898569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746605, 15.173491, 15.660675>,  <18.763399, 15.123356, 15.264185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746605, 15.173491, 15.660675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997487, -0.051409, 0.048753,
		0.057068, 0.990781, -0.122865,
		-0.041987, 0.125339, 0.991225,
		18.734009, 15.211093, 15.958042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473215, 15.290878, 15.327652>,  <18.763399, 15.123356, 15.264185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473215, 15.290878, 15.327652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327744, 15.292198, 15.700259>,  <19.240459, 15.292991, 15.923823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327744, 15.292198, 15.700259>,  <19.473215, 15.290878, 15.327652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327744, 15.292198, 15.700259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926511, 0.104884, 0.361355,
		-0.096509, 0.994479, -0.041202,
		-0.363681, 0.003301, 0.931518,
		19.218639, 15.293188, 15.979714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.487869, 16.047733, 15.405335>,  <19.473215, 15.290878, 15.327652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.487869, 16.047733, 15.405335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761087, 15.794825, 15.551584>,  <19.925018, 15.643080, 15.639334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761087, 15.794825, 15.551584>,  <19.487869, 16.047733, 15.405335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761087, 15.794825, 15.551584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433654, 0.753888, 0.493556,
		-0.587700, -0.178568, 0.789128,
		0.683047, -0.632271, 0.365623,
		19.966002, 15.605144, 15.661271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582516, 15.900312, 16.167725>,  <19.487869, 16.047733, 15.405335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582516, 15.900312, 16.167725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935579, 15.842198, 15.988926>,  <20.147417, 15.807330, 15.881646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935579, 15.842198, 15.988926>,  <19.582516, 15.900312, 16.167725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935579, 15.842198, 15.988926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377228, 0.786299, 0.489319,
		0.280383, -0.600522, 0.748838,
		0.882658, -0.145286, -0.446998,
		20.200377, 15.798613, 15.854826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199924, 16.192936, 16.657660>,  <19.582516, 15.900312, 16.167725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199924, 16.192936, 16.657660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351076, 16.216873, 16.288092>,  <20.441767, 16.231236, 16.066351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351076, 16.216873, 16.288092>,  <20.199924, 16.192936, 16.657660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351076, 16.216873, 16.288092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437963, 0.867647, 0.235322,
		0.815717, -0.493565, 0.301659,
		0.377881, 0.059841, -0.923918,
		20.464441, 16.234825, 16.010916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898932, 16.398954, 16.617352>,  <20.199924, 16.192936, 16.657660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.898932, 16.398954, 16.617352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756426, 16.498087, 16.256983>,  <20.670923, 16.557568, 16.040762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756426, 16.498087, 16.256983>,  <20.898932, 16.398954, 16.617352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756426, 16.498087, 16.256983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195392, 0.962627, 0.187541,
		0.913728, -0.109218, -0.391372,
		-0.356262, 0.247833, -0.900920,
		20.649548, 16.572437, 15.986707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311974, 16.923103, 16.330585>,  <20.898932, 16.398954, 16.617352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311974, 16.923103, 16.330585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969625, 16.986456, 16.133648>,  <20.764217, 17.024467, 16.015486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969625, 16.986456, 16.133648>,  <21.311974, 16.923103, 16.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969625, 16.986456, 16.133648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198195, 0.979723, -0.029365,
		0.477711, -0.122713, -0.869904,
		-0.855868, 0.158383, -0.492346,
		20.712866, 17.033970, 15.985944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616831, 17.452585, 15.856616>,  <21.311974, 16.923103, 16.330585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616831, 17.452585, 15.856616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217829, 17.477701, 15.843728>,  <20.978428, 17.492771, 15.835996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217829, 17.477701, 15.843728>,  <21.616831, 17.452585, 15.856616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217829, 17.477701, 15.843728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068712, 0.968242, -0.240387,
		0.016103, -0.242001, -0.970142,
		-0.997507, 0.062789, -0.032219,
		20.918577, 17.496538, 15.834063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308500, 17.654728, 15.174445>,  <21.616831, 17.452585, 15.856616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308500, 17.654728, 15.174445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049158, 17.790649, 15.446965>,  <20.893553, 17.872202, 15.610477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049158, 17.790649, 15.446965>,  <21.308500, 17.654728, 15.174445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049158, 17.790649, 15.446965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073121, 0.918528, -0.388537,
		-0.757820, -0.202092, -0.620378,
		-0.648354, 0.339803, 0.681301,
		20.854652, 17.892590, 15.651356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.873968, 17.937485, 14.834201>,  <21.308500, 17.654728, 15.174445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.873968, 17.937485, 14.834201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802700, 18.140373, 15.171479>,  <20.759939, 18.262106, 15.373846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.802700, 18.140373, 15.171479>,  <20.873968, 17.937485, 14.834201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802700, 18.140373, 15.171479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116839, 0.861750, -0.493696,
		-0.977039, 0.010558, -0.212800,
		-0.178168, 0.507223, 0.843197,
		20.749250, 18.292540, 15.424438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718288, 18.639997, 14.624116>,  <20.873968, 17.937485, 14.834201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718288, 18.639997, 14.624116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732151, 18.697037, 15.019786>,  <20.740469, 18.731260, 15.257188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732151, 18.697037, 15.019786>,  <20.718288, 18.639997, 14.624116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732151, 18.697037, 15.019786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119414, 0.982087, -0.145759,
		-0.992240, 0.123172, 0.017006,
		0.034655, 0.142597, 0.989174,
		20.742548, 18.739817, 15.316538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450342, 19.258635, 14.800219>,  <20.718288, 18.639997, 14.624116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450342, 19.258635, 14.800219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655159, 19.192303, 15.137339>,  <20.778049, 19.152504, 15.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655159, 19.192303, 15.137339>,  <20.450342, 19.258635, 14.800219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655159, 19.192303, 15.137339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142459, 0.983993, 0.107062,
		-0.847065, 0.065245, 0.527469,
		0.512041, -0.165831, 0.842801,
		20.808771, 19.142553, 15.390179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320158, 19.829275, 15.392945>,  <20.450342, 19.258635, 14.800219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320158, 19.829275, 15.392945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678572, 19.661657, 15.451625>,  <20.893620, 19.561087, 15.486833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.678572, 19.661657, 15.451625>,  <20.320158, 19.829275, 15.392945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678572, 19.661657, 15.451625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421763, 0.906604, 0.013595,
		-0.138696, 0.049691, 0.989088,
		0.896035, -0.419046, 0.146700,
		20.947382, 19.535944, 15.495635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605928, 20.238228, 15.858434>,  <20.320158, 19.829275, 15.392945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605928, 20.238228, 15.858434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940399, 20.048456, 15.748363>,  <21.141083, 19.934593, 15.682320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940399, 20.048456, 15.748363>,  <20.605928, 20.238228, 15.858434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940399, 20.048456, 15.748363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500096, 0.865537, 0.027377,
		0.225187, -0.160507, 0.961004,
		0.836179, -0.474429, -0.275177,
		21.191254, 19.906128, 15.665810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262774, 20.457912, 16.303556>,  <20.605928, 20.238228, 15.858434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262774, 20.457912, 16.303556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371172, 20.333439, 15.939199>,  <21.436211, 20.258755, 15.720585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371172, 20.333439, 15.939199>,  <21.262774, 20.457912, 16.303556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371172, 20.333439, 15.939199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617555, 0.782088, -0.083455,
		0.738369, -0.539911, 0.404114,
		0.270994, -0.311183, -0.910894,
		21.452471, 20.240084, 15.665932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017694, 20.611074, 16.422258>,  <21.262774, 20.457912, 16.303556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017694, 20.611074, 16.422258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956720, 20.564219, 16.029720>,  <21.920135, 20.536104, 15.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956720, 20.564219, 16.029720>,  <22.017694, 20.611074, 16.422258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956720, 20.564219, 16.029720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547575, 0.816606, -0.182531,
		0.822755, -0.565185, -0.060336,
		-0.152435, -0.117140, -0.981347,
		21.910990, 20.529076, 15.735316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.472168, 21.138144, 16.132309>,  <22.017694, 20.611074, 16.422258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.472168, 21.138144, 16.132309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221796, 21.075027, 15.826810>,  <22.071573, 21.037157, 15.643510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221796, 21.075027, 15.826810>,  <22.472168, 21.138144, 16.132309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221796, 21.075027, 15.826810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228143, 0.899430, -0.372797,
		0.745764, -0.407588, -0.526981,
		-0.625930, -0.157791, -0.763750,
		22.034018, 21.027691, 15.597685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.874025, 21.238148, 15.597131>,  <22.472168, 21.138144, 16.132309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.874025, 21.238148, 15.597131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.506731, 21.280859, 15.444582>,  <22.286354, 21.306486, 15.353053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.506731, 21.280859, 15.444582>,  <22.874025, 21.238148, 15.597131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.506731, 21.280859, 15.444582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293730, 0.829541, -0.474957,
		0.265648, -0.548142, -0.793077,
		-0.918234, 0.106779, -0.381371,
		22.231260, 21.312893, 15.330171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970007, 21.407080, 14.890841>,  <22.874025, 21.238148, 15.597131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970007, 21.407080, 14.890841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588558, 21.507860, 14.956717>,  <22.359688, 21.568329, 14.996242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588558, 21.507860, 14.956717>,  <22.970007, 21.407080, 14.890841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588558, 21.507860, 14.956717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101136, 0.783529, -0.613069,
		-0.283500, -0.567981, -0.772674,
		-0.953624, 0.251950, 0.164687,
		22.302471, 21.583445, 15.006123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735157, 21.426928, 14.304271>,  <22.970007, 21.407080, 14.890841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735157, 21.426928, 14.304271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497160, 21.666731, 14.518402>,  <22.354362, 21.810612, 14.646881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497160, 21.666731, 14.518402>,  <22.735157, 21.426928, 14.304271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497160, 21.666731, 14.518402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002646, 0.664588, -0.747205,
		-0.803727, -0.445998, -0.393839,
		-0.594993, 0.599507, 0.535328,
		22.318663, 21.846582, 14.679000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167847, 21.524654, 13.828203>,  <22.735157, 21.426928, 14.304271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167847, 21.524654, 13.828203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160921, 21.812763, 14.105594>,  <22.156765, 21.985628, 14.272028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160921, 21.812763, 14.105594>,  <22.167847, 21.524654, 13.828203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160921, 21.812763, 14.105594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142816, 0.684687, -0.714708,
		-0.989598, -0.111413, 0.091013,
		-0.017313, 0.720272, 0.693476,
		22.155727, 22.028845, 14.313637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635321, 21.841568, 13.637443>,  <22.167847, 21.524654, 13.828203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635321, 21.841568, 13.637443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802736, 22.096680, 13.896072>,  <21.903185, 22.249746, 14.051250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802736, 22.096680, 13.896072>,  <21.635321, 21.841568, 13.637443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802736, 22.096680, 13.896072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148147, 0.750340, -0.644237,
		-0.896034, 0.173850, 0.408533,
		0.418539, 0.637781, 0.646575,
		21.928299, 22.288013, 14.090045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154762, 22.377256, 13.735867>,  <21.635321, 21.841568, 13.637443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154762, 22.377256, 13.735867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535397, 22.488077, 13.789126>,  <21.763777, 22.554569, 13.821082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535397, 22.488077, 13.789126>,  <21.154762, 22.377256, 13.735867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535397, 22.488077, 13.789126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145055, 0.786639, -0.600131,
		-0.271008, 0.551762, 0.788742,
		0.951585, 0.277051, 0.133150,
		21.820871, 22.571192, 13.829071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088884, 23.196890, 13.703293>,  <21.154762, 22.377256, 13.735867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088884, 23.196890, 13.703293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480873, 23.123320, 13.672759>,  <21.716066, 23.079178, 13.654439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480873, 23.123320, 13.672759>,  <21.088884, 23.196890, 13.703293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480873, 23.123320, 13.672759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122968, 0.860425, -0.494518,
		0.156635, 0.475227, 0.865809,
		0.979972, -0.183925, -0.076335,
		21.774864, 23.068142, 13.649858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.366796, 23.767864, 13.901073>,  <21.088884, 23.196890, 13.703293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.366796, 23.767864, 13.901073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617382, 23.567547, 13.662158>,  <21.767733, 23.447357, 13.518809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617382, 23.567547, 13.662158>,  <21.366796, 23.767864, 13.901073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617382, 23.567547, 13.662158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312817, 0.863406, -0.395823,
		0.713925, 0.061128, 0.697549,
		0.626463, -0.500794, -0.597285,
		21.805321, 23.417309, 13.482972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.910772, 24.197811, 13.803747>,  <21.366796, 23.767864, 13.901073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.910772, 24.197811, 13.803747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964552, 23.929686, 13.511828>,  <21.996820, 23.768810, 13.336678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964552, 23.929686, 13.511828>,  <21.910772, 24.197811, 13.803747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964552, 23.929686, 13.511828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472083, 0.690863, -0.547581,
		0.871241, -0.270903, 0.409330,
		0.134450, -0.670313, -0.729797,
		22.004887, 23.728592, 13.292890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591494, 24.249552, 13.631568>,  <21.910772, 24.197811, 13.803747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591494, 24.249552, 13.631568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404650, 24.094486, 13.313693>,  <22.292543, 24.001446, 13.122969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.404650, 24.094486, 13.313693>,  <22.591494, 24.249552, 13.631568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.404650, 24.094486, 13.313693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470678, 0.651824, -0.594633,
		0.748514, -0.651799, -0.122006,
		-0.467107, -0.387665, -0.794686,
		22.264517, 23.978188, 13.075287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085897, 24.318945, 13.175877>,  <22.591494, 24.249552, 13.631568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085897, 24.318945, 13.175877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734425, 24.270288, 12.991215>,  <22.523540, 24.241095, 12.880418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734425, 24.270288, 12.991215>,  <23.085897, 24.318945, 13.175877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734425, 24.270288, 12.991215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337091, 0.526678, -0.780371,
		0.338069, -0.841317, -0.421777,
		-0.878680, -0.121642, -0.461654,
		22.470821, 24.233795, 12.852718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622723, 23.968195, 12.778618>,  <23.085897, 24.318945, 13.175877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622723, 23.968195, 12.778618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810144, 23.647291, 12.926583>,  <23.922598, 23.454748, 13.015363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810144, 23.647291, 12.926583>,  <23.622723, 23.968195, 12.778618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810144, 23.647291, 12.926583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368148, -0.557947, -0.743749,
		0.803072, 0.212303, -0.556778,
		0.468553, -0.802261, 0.369912,
		23.950710, 23.406612, 13.037557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898054, 23.586828, 12.207831>,  <23.622723, 23.968195, 12.778618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898054, 23.586828, 12.207831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.839348, 23.353859, 12.527642>,  <23.804125, 23.214077, 12.719529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.839348, 23.353859, 12.527642>,  <23.898054, 23.586828, 12.207831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.839348, 23.353859, 12.527642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492276, -0.658072, -0.569742,
		0.857977, -0.477207, -0.190129,
		-0.146766, -0.582422, 0.799528,
		23.795319, 23.179132, 12.767501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285303, 22.886721, 12.149906>,  <23.898054, 23.586828, 12.207831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285303, 22.886721, 12.149906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961569, 22.857134, 12.382975>,  <23.767328, 22.839382, 12.522816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961569, 22.857134, 12.382975>,  <24.285303, 22.886721, 12.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961569, 22.857134, 12.382975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251819, -0.852538, -0.458002,
		0.530627, -0.517405, 0.671363,
		-0.809335, -0.073967, 0.582672,
		23.718769, 22.834944, 12.557776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.273823, 22.201996, 12.540816>,  <24.285303, 22.886721, 12.149906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.273823, 22.201996, 12.540816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.921427, 22.361279, 12.438610>,  <23.709990, 22.456848, 12.377286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.921427, 22.361279, 12.438610>,  <24.273823, 22.201996, 12.540816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.921427, 22.361279, 12.438610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274010, -0.869676, -0.410587,
		-0.385714, -0.291709, 0.875289,
		-0.880990, 0.398207, -0.255515,
		23.657129, 22.480742, 12.361956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062435, 21.607979, 12.411957>,  <24.273823, 22.201996, 12.540816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062435, 21.607979, 12.411957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.772974, 21.864283, 12.309387>,  <23.599297, 22.018064, 12.247846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.772974, 21.864283, 12.309387>,  <24.062435, 21.607979, 12.411957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772974, 21.864283, 12.309387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428985, -0.708651, -0.560166,
		-0.540647, -0.295364, 0.787694,
		-0.723652, 0.640760, -0.256423,
		23.555878, 22.056511, 12.232460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.401115, 21.326157, 12.558523>,  <24.062435, 21.607979, 12.411957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.401115, 21.326157, 12.558523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382271, 21.579565, 12.249606>,  <23.370964, 21.731609, 12.064256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382271, 21.579565, 12.249606>,  <23.401115, 21.326157, 12.558523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382271, 21.579565, 12.249606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354674, -0.733381, -0.579965,
		-0.933803, 0.246589, 0.259242,
		-0.047110, 0.633519, -0.772292,
		23.368137, 21.769621, 12.017919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645967, 21.259758, 12.193413>,  <23.401115, 21.326157, 12.558523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645967, 21.259758, 12.193413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952477, 21.349873, 11.952723>,  <23.136381, 21.403942, 11.808309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952477, 21.349873, 11.952723>,  <22.645967, 21.259758, 12.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952477, 21.349873, 11.952723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334120, -0.660209, -0.672672,
		-0.548810, 0.716497, -0.430626,
		0.766271, 0.225289, -0.601726,
		23.182358, 21.417459, 11.772204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417923, 21.450264, 11.460621>,  <22.645967, 21.259758, 12.193413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417923, 21.450264, 11.460621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.766058, 21.253485, 11.451664>,  <22.974939, 21.135418, 11.446290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.766058, 21.253485, 11.451664>,  <22.417923, 21.450264, 11.460621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.766058, 21.253485, 11.451664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443434, -0.763110, -0.470138,
		0.214196, 0.419108, -0.882309,
		0.870337, -0.491947, -0.022392,
		23.027159, 21.105900, 11.444946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827709, 21.077572, 11.559011>,  <22.417923, 21.450264, 11.460621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827709, 21.077572, 11.559011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678623, 20.920475, 11.222716>,  <21.589172, 20.826218, 11.020940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678623, 20.920475, 11.222716>,  <21.827709, 21.077572, 11.559011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678623, 20.920475, 11.222716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485702, -0.854565, 0.183881,
		-0.790681, -0.339812, 0.509264,
		-0.372715, -0.392742, -0.840736,
		21.566809, 20.802652, 10.970495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429556, 20.553890, 11.778672>,  <21.827709, 21.077572, 11.559011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429556, 20.553890, 11.778672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560261, 20.492767, 11.405603>,  <21.638683, 20.456093, 11.181762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560261, 20.492767, 11.405603>,  <21.429556, 20.553890, 11.778672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560261, 20.492767, 11.405603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331488, -0.905620, 0.264513,
		-0.885066, -0.395603, -0.245269,
		0.326763, -0.152807, -0.932671,
		21.658289, 20.446924, 11.125802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.125864, 19.884592, 11.614294>,  <21.429556, 20.553890, 11.778672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.125864, 19.884592, 11.614294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413019, 19.943615, 11.342158>,  <21.585312, 19.979029, 11.178877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413019, 19.943615, 11.342158>,  <21.125864, 19.884592, 11.614294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.413019, 19.943615, 11.342158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392935, -0.892609, 0.221026,
		-0.574662, -0.426001, -0.698775,
		0.717890, 0.147558, -0.680339,
		21.628386, 19.987883, 11.138057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157875, 19.228960, 11.193279>,  <21.125864, 19.884592, 11.614294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157875, 19.228960, 11.193279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503548, 19.413473, 11.112871>,  <21.710951, 19.524181, 11.064627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503548, 19.413473, 11.112871>,  <21.157875, 19.228960, 11.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503548, 19.413473, 11.112871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492196, -0.857945, 0.147218,
		-0.104556, -0.226165, -0.968461,
		0.864182, 0.461281, -0.201020,
		21.762802, 19.551857, 11.052565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529921, 18.754856, 10.716706>,  <21.157875, 19.228960, 11.193279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529921, 18.754856, 10.716706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783260, 19.002863, 10.901939>,  <21.935265, 19.151667, 11.013080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783260, 19.002863, 10.901939>,  <21.529921, 18.754856, 10.716706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783260, 19.002863, 10.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422114, -0.778331, 0.464781,
		0.648604, -0.098895, -0.754674,
		0.633351, 0.620017, 0.463084,
		21.973265, 19.188868, 11.040864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287804, 18.740738, 10.450708>,  <21.529921, 18.754856, 10.716706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287804, 18.740738, 10.450708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262232, 18.851448, 10.834230>,  <22.246889, 18.917875, 11.064343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262232, 18.851448, 10.834230>,  <22.287804, 18.740738, 10.450708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262232, 18.851448, 10.834230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568756, -0.779359, 0.262899,
		0.820018, 0.562134, -0.107594,
		-0.063930, 0.276776, 0.958805,
		22.243053, 18.934481, 11.121872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.903812, 18.355410, 10.814234>,  <22.287804, 18.740738, 10.450708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.903812, 18.355410, 10.814234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711306, 18.509459, 11.129210>,  <22.595802, 18.601887, 11.318196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711306, 18.509459, 11.129210>,  <22.903812, 18.355410, 10.814234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.711306, 18.509459, 11.129210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294540, -0.775040, 0.559070,
		0.825609, 0.500994, 0.259566,
		-0.481265, 0.385121, 0.787443,
		22.566927, 18.624994, 11.365443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373005, 18.272919, 11.326542>,  <22.903812, 18.355410, 10.814234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373005, 18.272919, 11.326542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023367, 18.329424, 11.512445>,  <22.813583, 18.363327, 11.623987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023367, 18.329424, 11.512445>,  <23.373005, 18.272919, 11.326542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023367, 18.329424, 11.512445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295539, -0.604658, 0.739625,
		0.385503, 0.783857, 0.486780,
		-0.874096, 0.141265, 0.464758,
		22.761139, 18.371803, 11.651873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473923, 18.377396, 12.062790>,  <23.373005, 18.272919, 11.326542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473923, 18.377396, 12.062790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083820, 18.293417, 12.090498>,  <22.849758, 18.243031, 12.107122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083820, 18.293417, 12.090498>,  <23.473923, 18.377396, 12.062790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083820, 18.293417, 12.090498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181396, -0.580799, 0.793580,
		-0.126378, 0.786508, 0.604511,
		-0.975256, -0.209947, 0.069269,
		22.791245, 18.230433, 12.111279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319418, 18.457893, 12.761333>,  <23.473923, 18.377396, 12.062790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319418, 18.457893, 12.761333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048750, 18.213541, 12.596924>,  <22.886349, 18.066929, 12.498278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048750, 18.213541, 12.596924>,  <23.319418, 18.457893, 12.761333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048750, 18.213541, 12.596924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103309, -0.631491, 0.768470,
		-0.729001, 0.477540, 0.490421,
		-0.676672, -0.610880, -0.411024,
		22.845749, 18.030277, 12.473617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033350, 18.176289, 13.374812>,  <23.319418, 18.457893, 12.761333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033350, 18.176289, 13.374812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915096, 17.927502, 13.084776>,  <22.844145, 17.778229, 12.910754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915096, 17.927502, 13.084776>,  <23.033350, 18.176289, 13.374812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.915096, 17.927502, 13.084776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044142, -0.749312, 0.660744,
		-0.954282, 0.227345, 0.194065,
		-0.295632, -0.621970, -0.725090,
		22.826406, 17.740911, 12.867249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.348125, 17.930199, 13.489037>,  <23.033350, 18.176289, 13.374812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.348125, 17.930199, 13.489037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546137, 17.651855, 13.280910>,  <22.664944, 17.484850, 13.156034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546137, 17.651855, 13.280910>,  <22.348125, 17.930199, 13.489037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546137, 17.651855, 13.280910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194523, -0.672395, 0.714175,
		-0.846822, -0.252325, -0.468215,
		0.495030, -0.695857, -0.520316,
		22.694645, 17.443098, 13.124816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.917294, 17.380909, 13.547696>,  <22.348125, 17.930199, 13.489037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.917294, 17.380909, 13.547696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.243992, 17.200775, 13.403406>,  <22.440010, 17.092695, 13.316832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.243992, 17.200775, 13.403406>,  <21.917294, 17.380909, 13.547696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.243992, 17.200775, 13.403406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133268, -0.755506, 0.641444,
		-0.561396, -0.475824, -0.677072,
		0.816746, -0.450336, -0.360725,
		22.489016, 17.065674, 13.295188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659132, 16.691185, 13.531170>,  <21.917294, 17.380909, 13.547696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659132, 16.691185, 13.531170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059044, 16.687851, 13.523422>,  <22.298990, 16.685850, 13.518774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059044, 16.687851, 13.523422>,  <21.659132, 16.691185, 13.531170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059044, 16.687851, 13.523422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005979, -0.768750, 0.639521,
		-0.020222, -0.639494, -0.768530,
		0.999778, -0.008337, -0.019369,
		22.358976, 16.685350, 13.517612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909502, 16.047529, 13.356041>,  <21.659132, 16.691185, 13.531170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909502, 16.047529, 13.356041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223465, 16.201754, 13.550057>,  <22.411842, 16.294289, 13.666468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.223465, 16.201754, 13.550057>,  <21.909502, 16.047529, 13.356041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.223465, 16.201754, 13.550057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080771, -0.839799, 0.536854,
		0.614328, -0.382203, -0.690306,
		0.784906, 0.385561, 0.485042,
		22.458937, 16.317423, 13.695570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.307955, 15.463434, 13.497796>,  <21.909502, 16.047529, 13.356041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.307955, 15.463434, 13.497796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458920, 15.745471, 13.737931>,  <22.549500, 15.914693, 13.882012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458920, 15.745471, 13.737931>,  <22.307955, 15.463434, 13.497796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458920, 15.745471, 13.737931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264655, -0.703369, 0.659719,
		0.887422, -0.090104, -0.452066,
		0.377413, 0.705091, 0.600339,
		22.572144, 15.956998, 13.918033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.032274, 15.298427, 13.627638>,  <22.307955, 15.463434, 13.497796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.032274, 15.298427, 13.627638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890430, 15.521695, 13.927691>,  <22.805325, 15.655657, 14.107722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890430, 15.521695, 13.927691>,  <23.032274, 15.298427, 13.627638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.890430, 15.521695, 13.927691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149323, -0.758162, 0.634738,
		0.923014, 0.337096, 0.185503,
		-0.354610, 0.558172, 0.750131,
		22.784048, 15.689147, 14.152730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.455555, 15.171172, 14.266870>,  <23.032274, 15.298427, 13.627638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.455555, 15.171172, 14.266870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191719, 15.389306, 14.473772>,  <23.033417, 15.520186, 14.597913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191719, 15.389306, 14.473772>,  <23.455555, 15.171172, 14.266870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.191719, 15.389306, 14.473772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090566, -0.625504, 0.774947,
		0.746149, 0.557993, 0.363187,
		-0.659590, 0.545334, 0.517254,
		22.993841, 15.552906, 14.628948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.741680, 15.429217, 14.953194>,  <23.455555, 15.171172, 14.266870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.741680, 15.429217, 14.953194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345482, 15.404745, 15.002465>,  <23.107763, 15.390061, 15.032028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345482, 15.404745, 15.002465>,  <23.741680, 15.429217, 14.953194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.345482, 15.404745, 15.002465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133459, -0.643991, 0.753303,
		0.033238, 0.762583, 0.646036,
		-0.990497, -0.061181, 0.123179,
		23.048332, 15.386391, 15.039419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314341, 15.734698, 14.605141>,  <23.741680, 15.429217, 14.953194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314341, 15.734698, 14.605141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443596, 15.602662, 14.959908>,  <24.521149, 15.523440, 15.172768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443596, 15.602662, 14.959908>,  <24.314341, 15.734698, 14.605141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443596, 15.602662, 14.959908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277621, -0.929027, -0.244614,
		0.904714, -0.167182, -0.391846,
		0.323140, -0.330090, 0.886916,
		24.540539, 15.503635, 15.225983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870392, 15.154513, 14.633693>,  <24.314341, 15.734698, 14.605141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870392, 15.154513, 14.633693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635420, 15.101946, 14.953106>,  <24.494436, 15.070405, 15.144753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635420, 15.101946, 14.953106>,  <24.870392, 15.154513, 14.633693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635420, 15.101946, 14.953106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115293, -0.963071, -0.243313,
		0.801019, -0.234995, 0.550587,
		-0.587431, -0.131419, 0.798532,
		24.459190, 15.062520, 15.192665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151537, 14.667850, 15.114446>,  <24.870392, 15.154513, 14.633693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151537, 14.667850, 15.114446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751909, 14.659886, 15.129747>,  <24.512133, 14.655107, 15.138928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751909, 14.659886, 15.129747>,  <25.151537, 14.667850, 15.114446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751909, 14.659886, 15.129747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009800, -0.968654, -0.248220,
		0.041998, -0.247615, 0.967948,
		-0.999070, -0.019911, 0.038255,
		24.452188, 14.653913, 15.141224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655483, 14.694992, 15.701640>,  <25.151537, 14.667850, 15.114446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655483, 14.694992, 15.701640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009607, 14.516581, 15.754225>,  <26.222082, 14.409534, 15.785775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009607, 14.516581, 15.754225>,  <25.655483, 14.694992, 15.701640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009607, 14.516581, 15.754225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285310, 0.297802, -0.910995,
		0.367181, 0.844021, 0.390904,
		0.885311, -0.446029, 0.131461,
		26.275200, 14.382771, 15.793663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268482, 15.206831, 15.562885>,  <25.655483, 14.694992, 15.701640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268482, 15.206831, 15.562885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328074, 14.823014, 15.467316>,  <26.363829, 14.592724, 15.409974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328074, 14.823014, 15.467316>,  <26.268482, 15.206831, 15.562885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328074, 14.823014, 15.467316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223339, 0.268027, -0.937167,
		0.963289, 0.086258, 0.254234,
		0.148980, -0.959542, -0.238923,
		26.372768, 14.535151, 15.395638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014746, 15.114792, 15.279943>,  <26.268482, 15.206831, 15.562885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014746, 15.114792, 15.279943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785606, 14.824906, 15.126771>,  <26.648123, 14.650975, 15.034867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785606, 14.824906, 15.126771>,  <27.014746, 15.114792, 15.279943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785606, 14.824906, 15.126771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321693, 0.230916, -0.918255,
		0.753896, -0.649206, 0.100856,
		-0.572848, -0.724713, -0.382932,
		26.613752, 14.607492, 15.011891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.181513, 17.822239, 24.142231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.794400, 17.822634, 24.041513>,  <10.562133, 17.822870, 23.981083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.794400, 17.822634, 24.041513>,  <11.181513, 17.822239, 24.142231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.794400, 17.822634, 24.041513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246653, -0.197343, -0.948798,
		-0.050624, -0.980334, 0.190741,
		-0.967781, 0.000985, -0.251793,
		10.504066, 17.822929, 23.965975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.120424, 17.304321, 23.707066>,  <11.181513, 17.822239, 24.142231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.120424, 17.304321, 23.707066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.783691, 17.510498, 23.643013>,  <10.581652, 17.634203, 23.604582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.783691, 17.510498, 23.643013>,  <11.120424, 17.304321, 23.707066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.783691, 17.510498, 23.643013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074071, -0.183549, -0.980216,
		-0.534634, -0.837037, 0.116338,
		-0.841831, 0.515440, -0.160132,
		10.531142, 17.665131, 23.594973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683970, 16.923096, 23.231176>,  <11.120424, 17.304321, 23.707066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683970, 16.923096, 23.231176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.545068, 17.294430, 23.178104>,  <10.461726, 17.517231, 23.146261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.545068, 17.294430, 23.178104>,  <10.683970, 16.923096, 23.231176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.545068, 17.294430, 23.178104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052529, -0.122006, -0.991138,
		-0.936298, -0.351149, -0.006398,
		-0.347256, 0.928337, -0.132680,
		10.440891, 17.572931, 23.138300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305649, 16.913042, 22.625967>,  <10.683970, 16.923096, 23.231176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305649, 16.913042, 22.625967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.380666, 17.304064, 22.664364>,  <10.425676, 17.538677, 22.687403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.380666, 17.304064, 22.664364>,  <10.305649, 16.913042, 22.625967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.380666, 17.304064, 22.664364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119741, 0.074245, -0.990025,
		-0.974931, 0.197166, -0.103129,
		0.187543, 0.977555, 0.095993,
		10.436929, 17.597330, 22.693161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.876872, 17.236792, 22.144073>,  <10.305649, 16.913042, 22.625967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.876872, 17.236792, 22.144073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.168200, 17.506189, 22.194603>,  <10.342997, 17.667828, 22.224920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.168200, 17.506189, 22.194603>,  <9.876872, 17.236792, 22.144073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.168200, 17.506189, 22.194603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130343, 0.044819, -0.990455,
		-0.672727, 0.737833, -0.055143,
		0.728320, 0.673493, 0.126323,
		10.386696, 17.708237, 22.232500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.750908, 17.763130, 21.673552>,  <9.876872, 17.236792, 22.144073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.750908, 17.763130, 21.673552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.131487, 17.861811, 21.747181>,  <10.359835, 17.921019, 21.791359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.131487, 17.861811, 21.747181>,  <9.750908, 17.763130, 21.673552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.131487, 17.861811, 21.747181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173233, 0.065143, -0.982724,
		-0.254432, 0.966899, 0.019243,
		0.951449, 0.246703, 0.184073,
		10.416922, 17.935822, 21.802402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.940997, 18.273220, 21.170038>,  <9.750908, 17.763130, 21.673552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.940997, 18.273220, 21.170038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.304716, 18.149780, 21.281712>,  <10.522947, 18.075716, 21.348715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.304716, 18.149780, 21.281712>,  <9.940997, 18.273220, 21.170038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.304716, 18.149780, 21.281712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321499, 0.094975, -0.942135,
		0.264229, 0.946438, 0.185576,
		0.909297, -0.308602, 0.279184,
		10.577505, 18.057199, 21.365467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.399510, 18.567619, 20.582954>,  <9.940997, 18.273220, 21.170038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.399510, 18.567619, 20.582954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.622525, 18.308710, 20.790874>,  <10.756334, 18.153364, 20.915627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.622525, 18.308710, 20.790874>,  <10.399510, 18.567619, 20.582954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.622525, 18.308710, 20.790874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545389, -0.186468, -0.817178,
		0.625862, 0.739100, 0.249052,
		0.557537, -0.647271, 0.519800,
		10.789786, 18.114529, 20.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084967, 18.741302, 20.572565>,  <10.399510, 18.567619, 20.582954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084967, 18.741302, 20.572565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.087007, 18.346992, 20.639765>,  <11.088230, 18.110407, 20.680084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.087007, 18.346992, 20.639765>,  <11.084967, 18.741302, 20.572565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087007, 18.346992, 20.639765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647391, -0.124788, -0.751873,
		0.762141, 0.112595, 0.637545,
		0.005099, -0.985774, 0.167999,
		11.088536, 18.051260, 20.690165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729581, 18.541195, 20.531172>,  <11.084967, 18.741302, 20.572565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729581, 18.541195, 20.531172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.534533, 18.199333, 20.459845>,  <11.417503, 17.994217, 20.417049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.534533, 18.199333, 20.459845>,  <11.729581, 18.541195, 20.531172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534533, 18.199333, 20.459845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676398, -0.240681, -0.696103,
		0.552008, -0.460046, 0.695446,
		-0.487620, -0.854652, -0.178316,
		11.388247, 17.942938, 20.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282905, 18.056936, 20.221571>,  <11.729581, 18.541195, 20.531172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282905, 18.056936, 20.221571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.931049, 17.884245, 20.141722>,  <11.719936, 17.780630, 20.093811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.931049, 17.884245, 20.141722>,  <12.282905, 18.056936, 20.221571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931049, 17.884245, 20.141722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396689, -0.434312, -0.808709,
		0.262443, -0.790559, 0.553298,
		-0.879637, -0.431727, -0.199624,
		11.667158, 17.754726, 20.081835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468742, 17.359608, 20.127972>,  <12.282905, 18.056936, 20.221571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468742, 17.359608, 20.127972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.113533, 17.417997, 19.953568>,  <11.900407, 17.453032, 19.848925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.113533, 17.417997, 19.953568>,  <12.468742, 17.359608, 20.127972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.113533, 17.417997, 19.953568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316448, -0.493932, -0.809871,
		-0.333578, -0.857160, 0.392431,
		-0.888024, 0.145971, -0.436011,
		11.847126, 17.461788, 19.822763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370482, 16.736731, 19.775183>,  <12.468742, 17.359608, 20.127972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370482, 16.736731, 19.775183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.126657, 17.006895, 19.609171>,  <11.980362, 17.168995, 19.509563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.126657, 17.006895, 19.609171>,  <12.370482, 16.736731, 19.775183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.126657, 17.006895, 19.609171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318838, -0.270447, -0.908405,
		-0.725793, -0.686058, -0.050493,
		-0.609563, 0.675413, -0.415029,
		11.943789, 17.209518, 19.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.904059, 16.475977, 19.296051>,  <12.370482, 16.736731, 19.775183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.904059, 16.475977, 19.296051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.940936, 16.858980, 19.186741>,  <11.963062, 17.088781, 19.121155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.940936, 16.858980, 19.186741>,  <11.904059, 16.475977, 19.296051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940936, 16.858980, 19.186741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335010, -0.288270, -0.897033,
		-0.937694, -0.008851, -0.347351,
		0.092191, 0.957508, -0.273274,
		11.968594, 17.146233, 19.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.477067, 16.549429, 18.705261>,  <11.904059, 16.475977, 19.296051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.477067, 16.549429, 18.705261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.727047, 16.861109, 18.686131>,  <11.877035, 17.048117, 18.674652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.727047, 16.861109, 18.686131>,  <11.477067, 16.549429, 18.705261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.727047, 16.861109, 18.686131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218810, -0.233643, -0.947382,
		-0.749373, 0.581602, -0.316512,
		0.624950, 0.779199, -0.047825,
		11.914532, 17.094868, 18.671783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294925, 16.962713, 18.045591>,  <11.477067, 16.549429, 18.705261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294925, 16.962713, 18.045591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.671238, 17.017328, 18.169710>,  <11.897026, 17.050097, 18.244181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.671238, 17.017328, 18.169710>,  <11.294925, 16.962713, 18.045591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.671238, 17.017328, 18.169710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326422, -0.117753, -0.937861,
		-0.091515, 0.983611, -0.155349,
		0.940784, 0.136538, 0.310296,
		11.953473, 17.058290, 18.262798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588381, 17.032484, 17.427248>,  <11.294925, 16.962713, 18.045591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588381, 17.032484, 17.427248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.919456, 17.009405, 17.650534>,  <12.118102, 16.995558, 17.784506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.919456, 17.009405, 17.650534>,  <11.588381, 17.032484, 17.427248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.919456, 17.009405, 17.650534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518270, -0.302921, -0.799772,
		0.215240, 0.951268, -0.220821,
		0.827688, -0.057699, 0.558214,
		12.167763, 16.992096, 17.817997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.136970, 17.488544, 17.109657>,  <11.588381, 17.032484, 17.427248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.136970, 17.488544, 17.109657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.292198, 17.191807, 17.328407>,  <12.385336, 17.013765, 17.459656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.292198, 17.191807, 17.328407>,  <12.136970, 17.488544, 17.109657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292198, 17.191807, 17.328407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456876, -0.360484, -0.813213,
		0.800415, 0.565439, 0.199036,
		0.388073, -0.741842, 0.546873,
		12.408620, 16.969254, 17.492470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748742, 17.299450, 16.673731>,  <12.136970, 17.488544, 17.109657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748742, 17.299450, 16.673731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.733048, 17.005690, 16.944763>,  <12.723632, 16.829433, 17.107384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.733048, 17.005690, 16.944763>,  <12.748742, 17.299450, 16.673731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733048, 17.005690, 16.944763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556891, -0.579099, -0.595413,
		0.829659, 0.353978, 0.431701,
		-0.039235, -0.734400, 0.677582,
		12.721278, 16.785370, 17.148037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405028, 17.025522, 16.636877>,  <12.748742, 17.299450, 16.673731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405028, 17.025522, 16.636877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.188977, 16.735283, 16.807413>,  <13.059346, 16.561138, 16.909735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.188977, 16.735283, 16.807413>,  <13.405028, 17.025522, 16.636877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188977, 16.735283, 16.807413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590215, -0.687722, -0.422711,
		0.599923, 0.023314, 0.799718,
		-0.540128, -0.725600, 0.426340,
		13.026938, 16.517603, 16.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852551, 16.539145, 16.911726>,  <13.405028, 17.025522, 16.636877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852551, 16.539145, 16.911726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516084, 16.332609, 16.847435>,  <13.314203, 16.208689, 16.808861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516084, 16.332609, 16.847435>,  <13.852551, 16.539145, 16.911726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516084, 16.332609, 16.847435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530030, -0.728243, -0.434431,
		0.107263, -0.450621, 0.886248,
		-0.841167, -0.516337, -0.160729,
		13.263734, 16.177708, 16.799215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066364, 15.951722, 17.298904>,  <13.852551, 16.539145, 16.911726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066364, 15.951722, 17.298904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.813467, 15.872112, 16.999395>,  <13.661729, 15.824347, 16.819691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.813467, 15.872112, 16.999395>,  <14.066364, 15.951722, 17.298904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813467, 15.872112, 16.999395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325481, -0.945255, -0.023578,
		-0.703086, -0.258618, 0.662410,
		-0.632244, -0.199024, -0.748771,
		13.623794, 15.812405, 16.774765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416511, 16.462233, 17.656761>,  <14.066364, 15.951722, 17.298904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416511, 16.462233, 17.656761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.692303, 16.729860, 17.545792>,  <14.857779, 16.890436, 17.479210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.692303, 16.729860, 17.545792>,  <14.416511, 16.462233, 17.656761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692303, 16.729860, 17.545792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326073, 0.628740, 0.705948,
		0.646763, -0.396270, 0.651666,
		0.689474, 0.669071, -0.277433,
		14.899147, 16.930580, 17.462564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828351, 16.627237, 18.189806>,  <14.416511, 16.462233, 17.656761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828351, 16.627237, 18.189806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830353, 16.946848, 17.949295>,  <14.831553, 17.138615, 17.804989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830353, 16.946848, 17.949295>,  <14.828351, 16.627237, 18.189806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830353, 16.946848, 17.949295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254796, 0.582458, 0.771895,
		0.966982, 0.149340, 0.206503,
		0.005004, 0.799025, -0.601278,
		14.831854, 17.186556, 17.768911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228456, 17.144205, 18.565151>,  <14.828351, 16.627237, 18.189806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228456, 17.144205, 18.565151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.033095, 17.370323, 18.299248>,  <14.915878, 17.505995, 18.139706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.033095, 17.370323, 18.299248>,  <15.228456, 17.144205, 18.565151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033095, 17.370323, 18.299248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098676, 0.721133, 0.685733,
		0.867021, 0.400510, -0.296422,
		-0.488403, 0.565296, -0.664758,
		14.886575, 17.539911, 18.099821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699675, 17.696238, 18.524431>,  <15.228456, 17.144205, 18.565151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699675, 17.696238, 18.524431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.314036, 17.748884, 18.432173>,  <15.082654, 17.780472, 18.376818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.314036, 17.748884, 18.432173>,  <15.699675, 17.696238, 18.524431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314036, 17.748884, 18.432173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048079, 0.767679, 0.639028,
		0.261169, 0.627173, -0.733788,
		-0.964095, 0.131615, -0.230647,
		15.024808, 17.788368, 18.362978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449965, 18.264740, 18.914446>,  <15.699675, 17.696238, 18.524431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449965, 18.264740, 18.914446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.090951, 18.191513, 18.753986>,  <14.875543, 18.147577, 18.657711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.090951, 18.191513, 18.753986>,  <15.449965, 18.264740, 18.914446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.090951, 18.191513, 18.753986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418224, 0.641693, 0.642899,
		0.139720, 0.744793, -0.652504,
		-0.897534, -0.183067, -0.401148,
		14.821691, 18.136593, 18.633642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141862, 18.893950, 18.897947>,  <15.449965, 18.264740, 18.914446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141862, 18.893950, 18.897947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.850968, 18.619394, 18.897598>,  <14.676432, 18.454660, 18.897388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.850968, 18.619394, 18.897598>,  <15.141862, 18.893950, 18.897947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850968, 18.619394, 18.897598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469444, 0.496450, 0.730178,
		-0.500751, 0.531422, -0.683256,
		-0.727235, -0.686388, -0.000875,
		14.632798, 18.413477, 18.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497089, 19.307135, 18.982307>,  <15.141862, 18.893950, 18.897947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497089, 19.307135, 18.982307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.425559, 18.929117, 19.091787>,  <14.382641, 18.702307, 19.157475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.425559, 18.929117, 19.091787>,  <14.497089, 19.307135, 18.982307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.425559, 18.929117, 19.091787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524247, 0.326927, 0.786310,
		-0.832578, -0.002874, -0.553900,
		-0.178825, -0.945045, 0.273699,
		14.371911, 18.645603, 19.173897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756833, 19.292873, 19.219782>,  <14.497089, 19.307135, 18.982307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756833, 19.292873, 19.219782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.962892, 18.992912, 19.385803>,  <14.086527, 18.812935, 19.485416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.962892, 18.992912, 19.385803>,  <13.756833, 19.292873, 19.219782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962892, 18.992912, 19.385803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393493, 0.223279, 0.891801,
		-0.761438, -0.622727, -0.180061,
		0.515145, -0.749905, 0.415052,
		14.117435, 18.767941, 19.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.274022, 19.020172, 19.741648>,  <13.756833, 19.292873, 19.219782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.274022, 19.020172, 19.741648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.642110, 18.897879, 19.839399>,  <13.862963, 18.824503, 19.898050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.642110, 18.897879, 19.839399>,  <13.274022, 19.020172, 19.741648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642110, 18.897879, 19.839399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214717, 0.127708, 0.968291,
		-0.327249, -0.943513, 0.051873,
		0.920220, -0.305734, 0.244381,
		13.918176, 18.806158, 19.912714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113204, 18.637651, 20.197716>,  <13.274022, 19.020172, 19.741648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113204, 18.637651, 20.197716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501595, 18.703325, 20.267279>,  <13.734631, 18.742729, 20.309015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501595, 18.703325, 20.267279>,  <13.113204, 18.637651, 20.197716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501595, 18.703325, 20.267279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185142, 0.055694, 0.981132,
		0.151404, -0.984856, 0.084476,
		0.970978, 0.164187, 0.173906,
		13.792889, 18.752581, 20.319450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419714, 18.114815, 20.664721>,  <13.113204, 18.637651, 20.197716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419714, 18.114815, 20.664721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714334, 18.381470, 20.710480>,  <13.891107, 18.541462, 20.737936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714334, 18.381470, 20.710480>,  <13.419714, 18.114815, 20.664721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714334, 18.381470, 20.710480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122028, -0.035391, 0.991896,
		0.665283, -0.744541, 0.055281,
		0.736551, 0.666638, 0.114400,
		13.935300, 18.581461, 20.744799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884803, 17.831249, 21.090054>,  <13.419714, 18.114815, 20.664721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884803, 17.831249, 21.090054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.888221, 18.229774, 21.124193>,  <13.890272, 18.468889, 21.144676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.888221, 18.229774, 21.124193>,  <13.884803, 17.831249, 21.090054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.888221, 18.229774, 21.124193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123035, -0.083655, 0.988870,
		0.992365, -0.018951, 0.121867,
		0.008545, 0.996314, 0.085348,
		13.890784, 18.528669, 21.149797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239695, 17.963331, 21.666357>,  <13.884803, 17.831249, 21.090054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239695, 17.963331, 21.666357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.071197, 18.325727, 21.649683>,  <13.970098, 18.543165, 21.639679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.071197, 18.325727, 21.649683>,  <14.239695, 17.963331, 21.666357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.071197, 18.325727, 21.649683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223476, -0.059142, 0.972914,
		0.878983, 0.419150, 0.227380,
		-0.421245, 0.905988, -0.041685,
		13.944823, 18.597525, 21.637178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505273, 18.309734, 22.237841>,  <14.239695, 17.963331, 21.666357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505273, 18.309734, 22.237841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.175881, 18.510050, 22.131189>,  <13.978247, 18.630239, 22.067200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.175881, 18.510050, 22.131189>,  <14.505273, 18.309734, 22.237841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175881, 18.510050, 22.131189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229308, 0.136073, 0.963796,
		0.518940, 0.854806, 0.002782,
		-0.823480, 0.500790, -0.266627,
		13.928838, 18.660286, 22.051201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517609, 18.747953, 22.828608>,  <14.505273, 18.309734, 22.237841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517609, 18.747953, 22.828608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.149154, 18.766035, 22.673967>,  <13.928081, 18.776884, 22.581182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.149154, 18.766035, 22.673967>,  <14.517609, 18.747953, 22.828608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149154, 18.766035, 22.673967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365289, 0.242601, 0.898726,
		0.134416, 0.969072, -0.206956,
		-0.921138, 0.045204, -0.386601,
		13.872812, 18.779596, 22.557987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123559, 19.322727, 23.199799>,  <14.517609, 18.747953, 22.828608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123559, 19.322727, 23.199799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.842851, 19.119520, 23.000025>,  <13.674426, 18.997597, 22.880161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.842851, 19.119520, 23.000025>,  <14.123559, 19.322727, 23.199799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842851, 19.119520, 23.000025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603100, 0.050499, 0.796066,
		-0.379195, 0.859865, -0.341824,
		-0.701771, -0.508018, -0.499435,
		13.632319, 18.967115, 22.850195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500259, 19.589830, 23.381079>,  <14.123559, 19.322727, 23.199799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500259, 19.589830, 23.381079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.388260, 19.226040, 23.258146>,  <13.321060, 19.007765, 23.184387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.388260, 19.226040, 23.258146>,  <13.500259, 19.589830, 23.381079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388260, 19.226040, 23.258146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531435, -0.119764, 0.838590,
		-0.799486, 0.398129, -0.449795,
		-0.279998, -0.909478, -0.307329,
		13.304260, 18.953197, 23.165947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800212, 19.480549, 23.622425>,  <13.500259, 19.589830, 23.381079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800212, 19.480549, 23.622425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.916716, 19.107855, 23.535675>,  <12.986618, 18.884237, 23.483625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.916716, 19.107855, 23.535675>,  <12.800212, 19.480549, 23.622425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916716, 19.107855, 23.535675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579748, -0.352245, 0.734721,
		-0.760960, -0.088260, -0.642767,
		0.291258, -0.931737, -0.216876,
		13.004093, 18.828333, 23.470612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.184439, 19.056122, 23.603523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.484474, 18.794111, 23.639980>,  <12.664495, 18.636906, 23.661854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.484474, 18.794111, 23.639980>,  <12.184439, 19.056122, 23.603523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484474, 18.794111, 23.639980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470835, -0.432148, 0.769130,
		-0.464419, -0.619825, -0.632560,
		0.750086, -0.655030, 0.091138,
		12.709501, 18.597603, 23.667324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.879373, 18.406883, 23.554609>,  <12.184439, 19.056122, 23.603523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.879373, 18.406883, 23.554609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.216960, 18.380470, 23.767534>,  <12.419513, 18.364622, 23.895288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.216960, 18.380470, 23.767534>,  <11.879373, 18.406883, 23.554609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.216960, 18.380470, 23.767534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516312, -0.368999, 0.772827,
		0.145391, -0.927081, -0.345517,
		0.843969, -0.066033, 0.532313,
		12.470151, 18.360661, 23.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863434, 17.743896, 23.745279>,  <11.879373, 18.406883, 23.554609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863434, 17.743896, 23.745279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.117279, 17.946062, 23.979143>,  <12.269586, 18.067362, 24.119461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.117279, 17.946062, 23.979143>,  <11.863434, 17.743896, 23.745279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117279, 17.946062, 23.979143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380032, -0.454646, 0.805526,
		0.672936, -0.733385, -0.096451,
		0.634612, 0.505413, 0.584658,
		12.307663, 18.097687, 24.154541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887571, 17.361811, 24.248919>,  <11.863434, 17.743896, 23.745279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887571, 17.361811, 24.248919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.044043, 17.689779, 24.416111>,  <12.137925, 17.886560, 24.516426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.044043, 17.689779, 24.416111>,  <11.887571, 17.361811, 24.248919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044043, 17.689779, 24.416111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378956, -0.270376, 0.885036,
		0.838673, -0.504603, 0.204949,
		0.391178, 0.819922, 0.417979,
		12.161396, 17.935757, 24.541506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.105813, 17.155201, 24.939922>,  <11.887571, 17.361811, 24.248919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.105813, 17.155201, 24.939922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104927, 17.551994, 24.990469>,  <12.104396, 17.790070, 25.020796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104927, 17.551994, 24.990469>,  <12.105813, 17.155201, 24.939922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104927, 17.551994, 24.990469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260456, -0.122576, 0.957673,
		0.965483, -0.030792, 0.258638,
		-0.002214, 0.991981, 0.126365,
		12.104263, 17.849588, 25.028378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.650565, 17.357214, 25.499166>,  <12.105813, 17.155201, 24.939922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.650565, 17.357214, 25.499166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.363982, 17.635225, 25.475082>,  <12.192032, 17.802032, 25.460632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.363982, 17.635225, 25.475082>,  <12.650565, 17.357214, 25.499166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363982, 17.635225, 25.475082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137970, -0.056560, 0.988820,
		0.683851, 0.716756, 0.136416,
		-0.716458, 0.695027, -0.060212,
		12.149045, 17.843733, 25.457018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685584, 17.789993, 26.098400>,  <12.650565, 17.357214, 25.499166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685584, 17.789993, 26.098400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.311630, 17.833973, 25.963404>,  <12.087257, 17.860361, 25.882406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.311630, 17.833973, 25.963404>,  <12.685584, 17.789993, 26.098400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311630, 17.833973, 25.963404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333228, 0.055633, 0.941203,
		0.122260, 0.992379, -0.015373,
		-0.934886, 0.109949, -0.337491,
		12.031164, 17.866957, 25.862156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376698, 18.201920, 26.633486>,  <12.685584, 17.789993, 26.098400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376698, 18.201920, 26.633486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.042792, 18.072586, 26.455215>,  <11.842449, 17.994986, 26.348253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.042792, 18.072586, 26.455215>,  <12.376698, 18.201920, 26.633486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042792, 18.072586, 26.455215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428200, -0.127638, 0.894625,
		-0.346147, 0.937638, -0.031903,
		-0.834762, -0.323332, -0.445678,
		11.792364, 17.975586, 26.321512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860820, 18.695280, 26.785988>,  <12.376698, 18.201920, 26.633486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860820, 18.695280, 26.785988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.702070, 18.339863, 26.693918>,  <11.606820, 18.126612, 26.638678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.702070, 18.339863, 26.693918>,  <11.860820, 18.695280, 26.785988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702070, 18.339863, 26.693918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493740, -0.004732, 0.869597,
		-0.773765, 0.458766, -0.436831,
		-0.396875, -0.888544, -0.230173,
		11.583008, 18.073299, 26.624866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.100446, 18.714882, 26.910246>,  <11.860820, 18.695280, 26.785988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.100446, 18.714882, 26.910246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.175806, 18.322258, 26.923172>,  <11.221023, 18.086683, 26.930927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.175806, 18.322258, 26.923172>,  <11.100446, 18.714882, 26.910246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175806, 18.322258, 26.923172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413047, -0.049343, 0.909372,
		-0.891009, -0.184673, -0.414726,
		0.188401, -0.981560, 0.032313,
		11.232327, 18.027790, 26.932865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915740, 18.521816, 27.547886>,  <11.100446, 18.714882, 26.910246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915740, 18.521816, 27.547886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.063916, 18.161261, 27.458199>,  <11.152822, 17.944927, 27.404387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.063916, 18.161261, 27.458199>,  <10.915740, 18.521816, 27.547886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063916, 18.161261, 27.458199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280436, -0.338663, 0.898144,
		-0.885511, -0.269830, -0.378236,
		0.370441, -0.901387, -0.224220,
		11.175049, 17.890844, 27.390932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.317149, 18.068628, 27.634016>,  <10.915740, 18.521816, 27.547886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.317149, 18.068628, 27.634016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.673218, 17.895069, 27.689625>,  <10.886859, 17.790934, 27.722990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.673218, 17.895069, 27.689625>,  <10.317149, 18.068628, 27.634016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673218, 17.895069, 27.689625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335370, -0.417436, 0.844555,
		-0.308418, -0.798423, -0.517106,
		0.890171, -0.433898, 0.139022,
		10.940269, 17.764900, 27.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.233946, 17.230827, 27.791697>,  <10.317149, 18.068628, 27.634016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.233946, 17.230827, 27.791697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.589569, 17.326385, 27.947903>,  <10.802943, 17.383720, 28.041626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.589569, 17.326385, 27.947903>,  <10.233946, 17.230827, 27.791697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589569, 17.326385, 27.947903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238238, -0.486986, 0.840290,
		0.390919, -0.840103, -0.376045,
		0.889058, 0.238897, 0.390516,
		10.856287, 17.398054, 28.065058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404862, 16.630421, 28.059599>,  <10.233946, 17.230827, 27.791697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404862, 16.630421, 28.059599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.595278, 16.932434, 28.239958>,  <10.709527, 17.113642, 28.348173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.595278, 16.932434, 28.239958>,  <10.404862, 16.630421, 28.059599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.595278, 16.932434, 28.239958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413639, -0.260230, 0.872458,
		0.776074, -0.601832, 0.188433,
		0.476038, 0.755035, 0.450899,
		10.738090, 17.158945, 28.375227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.437243, 16.424103, 28.726471>,  <10.404862, 16.630421, 28.059599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.437243, 16.424103, 28.726471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.557109, 16.803244, 28.769875>,  <10.629028, 17.030729, 28.795916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.557109, 16.803244, 28.769875>,  <10.437243, 16.424103, 28.726471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557109, 16.803244, 28.769875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119671, -0.075492, 0.989939,
		0.946510, -0.309635, 0.090808,
		0.299665, 0.947854, 0.108508,
		10.647008, 17.087601, 28.802427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.964286, 16.331726, 29.210083>,  <10.437243, 16.424103, 28.726471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.964286, 16.331726, 29.210083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.818194, 16.704046, 29.204111>,  <10.730539, 16.927439, 29.200529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.818194, 16.704046, 29.204111>,  <10.964286, 16.331726, 29.210083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.818194, 16.704046, 29.204111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174191, -0.052578, 0.983307,
		0.914476, 0.361733, 0.181339,
		-0.365229, 0.930798, -0.014929,
		10.708626, 16.983286, 29.199633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238629, 16.726099, 29.776384>,  <10.964286, 16.331726, 29.210083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238629, 16.726099, 29.776384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.923277, 16.948118, 29.670267>,  <10.734066, 17.081329, 29.606596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.923277, 16.948118, 29.670267>,  <11.238629, 16.726099, 29.776384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.923277, 16.948118, 29.670267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330435, -0.018312, 0.943651,
		0.518911, 0.831618, 0.197844,
		-0.788380, 0.555046, -0.265293,
		10.686763, 17.114632, 29.590679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190353, 17.203829, 30.309542>,  <11.238629, 16.726099, 29.776384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190353, 17.203829, 30.309542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.827913, 17.169718, 30.143791>,  <10.610449, 17.149250, 30.044340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.827913, 17.169718, 30.143791>,  <11.190353, 17.203829, 30.309542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.827913, 17.169718, 30.143791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401957, -0.131948, 0.906102,
		-0.131948, 0.987581, 0.085279,
		-0.906102, -0.085279, -0.414376,
		10.556083, 17.144135, 30.019478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.737472, 17.328423, 30.847164>,  <11.190353, 17.203829, 30.309542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.737472, 17.328423, 30.847164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.477541, 17.165363, 30.590555>,  <10.321583, 17.067528, 30.436590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.477541, 17.165363, 30.590555>,  <10.737472, 17.328423, 30.847164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.477541, 17.165363, 30.590555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519290, -0.378222, 0.766346,
		-0.555036, 0.831127, 0.034092,
		-0.649825, -0.407646, -0.641523,
		10.282594, 17.043070, 30.398098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.132552, 17.680622, 30.901936>,  <10.737472, 17.328423, 30.847164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.132552, 17.680622, 30.901936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.072737, 17.307892, 30.769670>,  <10.036848, 17.084253, 30.690311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.072737, 17.307892, 30.769670>,  <10.132552, 17.680622, 30.901936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072737, 17.307892, 30.769670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547276, -0.200522, 0.812576,
		-0.823485, 0.302476, -0.479981,
		-0.149538, -0.931826, -0.330664,
		10.027875, 17.028343, 30.670471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.545500, 17.415880, 31.346275>,  <10.132552, 17.680622, 30.901936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.545500, 17.415880, 31.346275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.641542, 17.090633, 31.134167>,  <9.699168, 16.895485, 31.006903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.641542, 17.090633, 31.134167>,  <9.545500, 17.415880, 31.346275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641542, 17.090633, 31.134167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545616, -0.564842, 0.619077,
		-0.802902, 0.140680, -0.579273,
		0.240106, -0.813119, -0.530270,
		9.713574, 16.846697, 30.975086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.909157, 17.047167, 31.058430>,  <9.545500, 17.415880, 31.346275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.909157, 17.047167, 31.058430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.215304, 16.796358, 31.116470>,  <9.398993, 16.645872, 31.151295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.215304, 16.796358, 31.116470>,  <8.909157, 17.047167, 31.058430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.215304, 16.796358, 31.116470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560149, -0.537966, 0.629941,
		-0.316928, -0.563415, -0.762968,
		0.765369, -0.627021, 0.145100,
		9.444915, 16.608252, 31.160000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.878405, 17.224424, 31.773535>,  <8.909157, 17.047167, 31.058430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.878405, 17.224424, 31.773535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.926277, 17.450737, 32.099865>,  <8.955001, 17.586525, 32.295662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.926277, 17.450737, 32.099865>,  <8.878405, 17.224424, 31.773535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.926277, 17.450737, 32.099865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783619, 0.450724, -0.427538,
		-0.609604, 0.690463, -0.389414,
		0.119681, 0.565781, 0.815823,
		8.962181, 17.620472, 32.344612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.062788, 17.257545, 31.746555>,  <8.878405, 17.224424, 31.773535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.062788, 17.257545, 31.746555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.668005, 17.197254, 31.769159>,  <7.431134, 17.161079, 31.782721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.668005, 17.197254, 31.769159>,  <8.062788, 17.257545, 31.746555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.668005, 17.197254, 31.769159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001889, -0.361860, -0.932231,
		0.160964, -0.919966, 0.357425,
		-0.986958, -0.150731, 0.056508,
		7.371917, 17.152035, 31.786112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.898249, 16.565977, 31.534428>,  <8.062788, 17.257545, 31.746555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.898249, 16.565977, 31.534428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.605043, 16.826799, 31.456957>,  <7.429120, 16.983294, 31.410475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.605043, 16.826799, 31.456957>,  <7.898249, 16.565977, 31.534428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.605043, 16.826799, 31.456957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087674, -0.191788, -0.977512,
		-0.674540, -0.733511, 0.083415,
		-0.733014, 0.652058, -0.193678,
		7.385139, 17.022417, 31.398853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.428273, 16.230122, 31.097439>,  <7.898249, 16.565977, 31.534428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.428273, 16.230122, 31.097439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.356475, 16.618410, 31.033583>,  <7.313396, 16.851383, 30.995268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.356475, 16.618410, 31.033583>,  <7.428273, 16.230122, 31.097439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.356475, 16.618410, 31.033583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158544, -0.131612, -0.978541,
		-0.970899, -0.200953, -0.130278,
		-0.179494, 0.970720, -0.159641,
		7.302627, 16.909626, 30.985691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.266954, 16.179094, 30.421734>,  <7.428273, 16.230122, 31.097439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.266954, 16.179094, 30.421734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.307800, 16.571873, 30.485424>,  <7.332307, 16.807541, 30.523638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.307800, 16.571873, 30.485424>,  <7.266954, 16.179094, 30.421734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.307800, 16.571873, 30.485424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278049, 0.125507, -0.952332,
		-0.955124, 0.141519, -0.260213,
		0.102115, 0.981947, 0.159224,
		7.338434, 16.866457, 30.533192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.934711, 16.494524, 29.958651>,  <7.266954, 16.179094, 30.421734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.934711, 16.494524, 29.958651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.183671, 16.789925, 30.062366>,  <7.333048, 16.967165, 30.124596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.183671, 16.789925, 30.062366>,  <6.934711, 16.494524, 29.958651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.183671, 16.789925, 30.062366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222907, 0.150312, -0.963182,
		-0.750284, 0.657285, -0.071062,
		0.622403, 0.738500, 0.259290,
		7.370392, 17.011475, 30.140154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.733373, 17.061323, 29.531517>,  <6.934711, 16.494524, 29.958651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.733373, 17.061323, 29.531517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.098838, 17.167627, 29.654539>,  <7.318118, 17.231409, 29.728352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.098838, 17.167627, 29.654539>,  <6.733373, 17.061323, 29.531517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.098838, 17.167627, 29.654539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262329, 0.192433, -0.945597,
		-0.310485, 0.944638, 0.106103,
		0.913664, 0.265760, 0.307553,
		7.372938, 17.247355, 29.746805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.825649, 17.719103, 29.311422>,  <6.733373, 17.061323, 29.531517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.825649, 17.719103, 29.311422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.197537, 17.589102, 29.380695>,  <7.420671, 17.511101, 29.422258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.197537, 17.589102, 29.380695>,  <6.825649, 17.719103, 29.311422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.197537, 17.589102, 29.380695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250509, 0.213442, -0.944292,
		0.269931, 0.921313, 0.279857,
		0.929722, -0.325001, 0.173183,
		7.476454, 17.491602, 29.432650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.275259, 18.182117, 28.968676>,  <6.825649, 17.719103, 29.311422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.275259, 18.182117, 28.968676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.521951, 17.870638, 29.014753>,  <7.669966, 17.683750, 29.042400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.521951, 17.870638, 29.014753>,  <7.275259, 18.182117, 28.968676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.521951, 17.870638, 29.014753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472021, 0.248722, -0.845774,
		0.629953, 0.575989, 0.520957,
		0.616730, -0.778700, 0.115196,
		7.706970, 17.637028, 29.049313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.849804, 18.394192, 28.535219>,  <7.275259, 18.182117, 28.968676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.849804, 18.394192, 28.535219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.923263, 18.008348, 28.610910>,  <7.967339, 17.776842, 28.656326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.923263, 18.008348, 28.610910>,  <7.849804, 18.394192, 28.535219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.923263, 18.008348, 28.610910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576549, -0.050216, -0.815518,
		0.796156, 0.258868, 0.546921,
		0.183647, -0.964606, 0.189230,
		7.978357, 17.718967, 28.667679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.545518, 18.351974, 28.546320>,  <7.849804, 18.394192, 28.535219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.545518, 18.351974, 28.546320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.365993, 18.009087, 28.445330>,  <8.258277, 17.803354, 28.384735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.365993, 18.009087, 28.445330>,  <8.545518, 18.351974, 28.546320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.365993, 18.009087, 28.445330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512984, -0.015801, -0.858253,
		0.731720, -0.514712, 0.446831,
		-0.448813, -0.857218, -0.252477,
		8.231349, 17.751921, 28.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116523, 17.919142, 28.485365>,  <8.545518, 18.351974, 28.546320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116523, 17.919142, 28.485365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.812777, 17.775869, 28.268082>,  <8.630529, 17.689907, 28.137712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.812777, 17.775869, 28.268082>,  <9.116523, 17.919142, 28.485365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.812777, 17.775869, 28.268082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593411, -0.038798, -0.803964,
		0.266888, -0.932846, 0.242010,
		-0.759364, -0.358180, -0.543206,
		8.584968, 17.668415, 28.105120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409698, 17.403139, 27.991421>,  <9.116523, 17.919142, 28.485365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409698, 17.403139, 27.991421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.059244, 17.504433, 27.827341>,  <8.848972, 17.565208, 27.728893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.059244, 17.504433, 27.827341>,  <9.409698, 17.403139, 27.991421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.059244, 17.504433, 27.827341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411334, -0.051017, -0.910056,
		-0.251386, -0.966058, -0.059467,
		-0.876133, 0.253236, -0.410198,
		8.796404, 17.580404, 27.704281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249275, 16.804298, 27.535522>,  <9.409698, 17.403139, 27.991421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249275, 16.804298, 27.535522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.024442, 17.113525, 27.417925>,  <8.889542, 17.299061, 27.347366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.024442, 17.113525, 27.417925>,  <9.249275, 16.804298, 27.535522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.024442, 17.113525, 27.417925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202556, -0.215967, -0.955160,
		-0.801894, -0.596429, -0.035198,
		-0.562083, 0.773066, -0.293992,
		8.855817, 17.345446, 27.329727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.149626, 16.595098, 26.862320>,  <9.249275, 16.804298, 27.535522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.149626, 16.595098, 26.862320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.020752, 16.973713, 26.855764>,  <8.943427, 17.200882, 26.851831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.020752, 16.973713, 26.855764>,  <9.149626, 16.595098, 26.862320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.020752, 16.973713, 26.855764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248758, 0.067946, -0.966180,
		-0.913409, -0.315365, -0.257349,
		-0.322185, 0.946535, -0.016387,
		8.924096, 17.257673, 26.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.746233, 16.597675, 26.273705>,  <9.149626, 16.595098, 26.862320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.746233, 16.597675, 26.273705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.861629, 16.971859, 26.355379>,  <8.930866, 17.196369, 26.404385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.861629, 16.971859, 26.355379>,  <8.746233, 16.597675, 26.273705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.861629, 16.971859, 26.355379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109438, 0.179640, -0.977626,
		-0.951208, 0.304380, -0.050550,
		0.288489, 0.935458, 0.204186,
		8.948175, 17.252497, 26.416636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.385264, 17.161270, 25.841602>,  <8.746233, 16.597675, 26.273705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.385264, 17.161270, 25.841602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.733961, 17.324541, 25.950012>,  <8.943179, 17.422504, 26.015059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.733961, 17.324541, 25.950012>,  <8.385264, 17.161270, 25.841602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.733961, 17.324541, 25.950012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270615, 0.060021, -0.960815,
		-0.408451, 0.910927, -0.058136,
		0.871743, 0.408178, 0.271026,
		8.995484, 17.446995, 26.031321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.490002, 17.675037, 25.366056>,  <8.385264, 17.161270, 25.841602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.490002, 17.675037, 25.366056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.864416, 17.652349, 25.504978>,  <9.089065, 17.638737, 25.588331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.864416, 17.652349, 25.504978>,  <8.490002, 17.675037, 25.366056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.864416, 17.652349, 25.504978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350801, 0.072223, -0.933661,
		0.027875, 0.995774, 0.087501,
		0.936035, -0.056722, 0.347306,
		9.145226, 17.635332, 25.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.913218, 18.229956, 25.048489>,  <8.490002, 17.675037, 25.366056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.913218, 18.229956, 25.048489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.169631, 17.948355, 25.170773>,  <9.323480, 17.779394, 25.244143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.169631, 17.948355, 25.170773>,  <8.913218, 18.229956, 25.048489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.169631, 17.948355, 25.170773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525010, 0.111663, -0.843739,
		0.559856, 0.701366, 0.441187,
		0.641035, -0.704000, 0.305709,
		9.361941, 17.737154, 25.262486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.477067, 18.565214, 24.964281>,  <8.913218, 18.229956, 25.048489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.477067, 18.565214, 24.964281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.596422, 18.183441, 24.966394>,  <9.668036, 17.954378, 24.967663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.596422, 18.183441, 24.966394>,  <9.477067, 18.565214, 24.964281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596422, 18.183441, 24.966394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614636, 0.187914, -0.766101,
		0.730197, 0.231842, 0.642699,
		0.298387, -0.954430, 0.005284,
		9.685938, 17.897112, 24.967979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.095184, 18.662943, 24.763504>,  <9.477067, 18.565214, 24.964281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.095184, 18.662943, 24.763504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.993897, 18.281412, 24.698887>,  <9.933125, 18.052494, 24.660116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.993897, 18.281412, 24.698887>,  <10.095184, 18.662943, 24.763504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993897, 18.281412, 24.698887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597408, -0.022834, -0.801612,
		0.760911, -0.299487, 0.575606,
		-0.253216, -0.953827, -0.161541,
		9.917933, 17.995264, 24.650425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.748003, 18.407831, 24.575792>,  <10.095184, 18.662943, 24.763504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.748003, 18.407831, 24.575792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.488115, 18.142197, 24.427816>,  <10.332183, 17.982817, 24.339031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.488115, 18.142197, 24.427816>,  <10.748003, 18.407831, 24.575792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.488115, 18.142197, 24.427816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562491, -0.092640, -0.821597,
		0.511340, -0.741894, 0.433733,
		-0.649719, -0.664087, -0.369938,
		10.293200, 17.942970, 24.316835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.676414, 26.289087, 11.100502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.030533, 26.426559, 10.975194>,  <24.243004, 26.509043, 10.900009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.030533, 26.426559, 10.975194>,  <23.676414, 26.289087, 11.100502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.030533, 26.426559, 10.975194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112928, 0.812373, 0.572100,
		0.451110, -0.471100, 0.758000,
		0.885295, 0.343679, -0.313269,
		24.296122, 26.529663, 10.881213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.636387, 26.800182, 11.675395>,  <23.676414, 26.289087, 11.100502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.636387, 26.800182, 11.675395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596891, 26.705353, 12.061979>,  <23.573195, 26.648455, 12.293930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596891, 26.705353, 12.061979>,  <23.636387, 26.800182, 11.675395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596891, 26.705353, 12.061979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342620, -0.903727, -0.256689,
		0.934271, -0.356474, 0.008006,
		-0.098738, -0.237074, 0.966461,
		23.567270, 26.634230, 12.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.124857, 26.167686, 11.821362>,  <23.636387, 26.800182, 11.675395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.124857, 26.167686, 11.821362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801163, 26.178450, 12.056110>,  <23.606947, 26.184908, 12.196959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801163, 26.178450, 12.056110>,  <24.124857, 26.167686, 11.821362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801163, 26.178450, 12.056110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270080, -0.904172, -0.330954,
		0.521724, -0.426321, 0.738955,
		-0.809235, 0.026910, 0.586869,
		23.558392, 26.186523, 12.232171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084930, 25.469227, 12.180885>,  <24.124857, 26.167686, 11.821362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084930, 25.469227, 12.180885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.730732, 25.652872, 12.152287>,  <23.518213, 25.763060, 12.135129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.730732, 25.652872, 12.152287>,  <24.084930, 25.469227, 12.180885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730732, 25.652872, 12.152287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415599, -0.851399, -0.319996,
		-0.207786, -0.253642, 0.944717,
		-0.885496, 0.459114, -0.071495,
		23.465084, 25.790606, 12.130838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619040, 25.136936, 12.712282>,  <24.084930, 25.469227, 12.180885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619040, 25.136936, 12.712282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.423010, 25.295549, 12.401776>,  <23.305391, 25.390717, 12.215472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.423010, 25.295549, 12.401776>,  <23.619040, 25.136936, 12.712282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.423010, 25.295549, 12.401776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517406, -0.849018, -0.107046,
		-0.701511, 0.349184, 0.621251,
		-0.490075, 0.396533, -0.776265,
		23.275988, 25.414509, 12.168897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917480, 25.216288, 12.821629>,  <23.619040, 25.136936, 12.712282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917480, 25.216288, 12.821629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001614, 25.113827, 12.444238>,  <23.052094, 25.052351, 12.217803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001614, 25.113827, 12.444238>,  <22.917480, 25.216288, 12.821629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.001614, 25.113827, 12.444238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618698, -0.782098, 0.074408,
		-0.756950, 0.568076, -0.322980,
		0.210333, -0.256150, -0.943476,
		23.064713, 25.036982, 12.161195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.238482, 25.129290, 12.458375>,  <22.917480, 25.216288, 12.821629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.238482, 25.129290, 12.458375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534433, 24.910156, 12.302191>,  <22.712004, 24.778677, 12.208481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534433, 24.910156, 12.302191>,  <22.238482, 25.129290, 12.458375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534433, 24.910156, 12.302191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542079, -0.829210, 0.136240,
		-0.398410, 0.110859, -0.910483,
		0.739878, -0.547833, -0.390459,
		22.756397, 24.745806, 12.185053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848345, 24.691078, 12.208087>,  <22.238482, 25.129290, 12.458375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848345, 24.691078, 12.208087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.211138, 24.522614, 12.207398>,  <22.428814, 24.421535, 12.206985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.211138, 24.522614, 12.207398>,  <21.848345, 24.691078, 12.208087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.211138, 24.522614, 12.207398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410532, -0.884992, 0.219666,
		-0.094039, -0.198527, -0.975574,
		0.906984, -0.421161, -0.001722,
		22.483232, 24.396265, 12.206882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838938, 24.076992, 11.708358>,  <21.848345, 24.691078, 12.208087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838938, 24.076992, 11.708358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.069036, 24.061714, 12.035192>,  <22.207096, 24.052547, 12.231293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.069036, 24.061714, 12.035192>,  <21.838938, 24.076992, 11.708358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069036, 24.061714, 12.035192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414337, -0.874883, 0.250807,
		0.705276, -0.482825, -0.519101,
		0.575249, -0.038195, 0.817086,
		22.241611, 24.050255, 12.280318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.724554, 23.458622, 11.983019>,  <21.838938, 24.076992, 11.708358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.724554, 23.458622, 11.983019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935936, 23.590977, 12.295749>,  <22.062765, 23.670389, 12.483387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935936, 23.590977, 12.295749>,  <21.724554, 23.458622, 11.983019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935936, 23.590977, 12.295749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231779, -0.829701, 0.507814,
		0.816710, -0.449566, -0.361765,
		0.528453, 0.330887, 0.781825,
		22.094471, 23.690243, 12.530296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117367, 22.888769, 12.279554>,  <21.724554, 23.458622, 11.983019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117367, 22.888769, 12.279554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093971, 23.152248, 12.579606>,  <22.079933, 23.310335, 12.759637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093971, 23.152248, 12.579606>,  <22.117367, 22.888769, 12.279554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093971, 23.152248, 12.579606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066959, -0.752313, 0.655395,
		0.996040, -0.011895, 0.088108,
		-0.058489, 0.658699, 0.750130,
		22.076426, 23.349857, 12.804646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634216, 22.740509, 12.770506>,  <22.117367, 22.888769, 12.279554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634216, 22.740509, 12.770506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.396368, 22.970369, 12.995434>,  <22.253658, 23.108286, 13.130390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.396368, 22.970369, 12.995434>,  <22.634216, 22.740509, 12.770506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.396368, 22.970369, 12.995434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165686, -0.596804, 0.785095,
		0.786749, 0.560003, 0.259661,
		-0.594621, 0.574650, 0.562319,
		22.217981, 23.142765, 13.164129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.996157, 22.821093, 13.433108>,  <22.634216, 22.740509, 12.770506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.996157, 22.821093, 13.433108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610846, 22.893921, 13.512049>,  <22.379660, 22.937618, 13.559413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610846, 22.893921, 13.512049>,  <22.996157, 22.821093, 13.433108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610846, 22.893921, 13.512049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050586, -0.598770, 0.799322,
		0.263702, 0.779951, 0.567571,
		-0.963277, 0.182071, 0.197352,
		22.321863, 22.948542, 13.571255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999529, 22.997103, 14.152581>,  <22.996157, 22.821093, 13.433108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999529, 22.997103, 14.152581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636238, 22.878757, 14.034202>,  <22.418262, 22.807751, 13.963174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636238, 22.878757, 14.034202>,  <22.999529, 22.997103, 14.152581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636238, 22.878757, 14.034202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047900, -0.629062, 0.775878,
		-0.415724, 0.718851, 0.557160,
		-0.908229, -0.295863, -0.295949,
		22.363770, 22.789999, 13.945416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.695147, 23.050014, 14.829992>,  <22.999529, 22.997103, 14.152581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.695147, 23.050014, 14.829992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422918, 22.848093, 14.617577>,  <22.259583, 22.726940, 14.490128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.422918, 22.848093, 14.617577>,  <22.695147, 23.050014, 14.829992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422918, 22.848093, 14.617577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104282, -0.650669, 0.752167,
		-0.725225, 0.567279, 0.390184,
		-0.680569, -0.504801, -0.531038,
		22.218748, 22.696653, 14.458265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120459, 22.948677, 15.294665>,  <22.695147, 23.050014, 14.829992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120459, 22.948677, 15.294665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.146446, 22.680813, 14.998737>,  <22.162039, 22.520094, 14.821180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.146446, 22.680813, 14.998737>,  <22.120459, 22.948677, 15.294665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.146446, 22.680813, 14.998737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128804, -0.740813, 0.659247,
		-0.989540, 0.052461, -0.134384,
		0.064969, -0.669660, -0.739820,
		22.165937, 22.479916, 14.776792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604628, 22.558910, 15.451960>,  <22.120459, 22.948677, 15.294665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604628, 22.558910, 15.451960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.842461, 22.356659, 15.201900>,  <21.985161, 22.235308, 15.051865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.842461, 22.356659, 15.201900>,  <21.604628, 22.558910, 15.451960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842461, 22.356659, 15.201900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281673, -0.859232, 0.427060,
		-0.753080, -0.077836, -0.653308,
		0.594584, -0.505630, -0.625146,
		22.020836, 22.204969, 15.014357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201082, 22.048042, 15.334065>,  <21.604628, 22.558910, 15.451960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201082, 22.048042, 15.334065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.543516, 21.898525, 15.191294>,  <21.748976, 21.808815, 15.105631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.543516, 21.898525, 15.191294>,  <21.201082, 22.048042, 15.334065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543516, 21.898525, 15.191294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244741, -0.901457, 0.357040,
		-0.455215, -0.218301, -0.863206,
		0.856085, -0.373792, -0.356929,
		21.800341, 21.786388, 15.084215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.989386, 21.531235, 14.942803>,  <21.201082, 22.048042, 15.334065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.989386, 21.531235, 14.942803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367674, 21.466166, 15.055336>,  <21.594646, 21.427124, 15.122855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367674, 21.466166, 15.055336>,  <20.989386, 21.531235, 14.942803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367674, 21.466166, 15.055336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238146, -0.935960, 0.259357,
		0.221124, -0.312277, -0.923898,
		0.945722, -0.162672, 0.281331,
		21.651390, 21.417364, 15.139735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285398, 20.947042, 14.589083>,  <20.989386, 21.531235, 14.942803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285398, 20.947042, 14.589083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535007, 20.941959, 14.901605>,  <21.684772, 20.938910, 15.089118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535007, 20.941959, 14.901605>,  <21.285398, 20.947042, 14.589083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535007, 20.941959, 14.901605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200595, -0.968966, 0.144452,
		0.755222, -0.246867, -0.607204,
		0.624020, -0.012709, 0.781305,
		21.722214, 20.938147, 15.135996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796877, 20.470711, 14.404124>,  <21.285398, 20.947042, 14.589083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796877, 20.470711, 14.404124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816679, 20.475344, 14.803607>,  <21.828560, 20.478125, 15.043297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816679, 20.475344, 14.803607>,  <21.796877, 20.470711, 14.404124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816679, 20.475344, 14.803607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182426, -0.983007, 0.020445,
		0.981973, -0.183202, -0.046549,
		0.049503, 0.011584, 0.998707,
		21.831532, 20.478819, 15.103219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.226151, 19.903393, 14.747540>,  <21.796877, 20.470711, 14.404124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.226151, 19.903393, 14.747540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.952095, 19.991850, 15.025151>,  <21.787661, 20.044924, 15.191718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.952095, 19.991850, 15.025151>,  <22.226151, 19.903393, 14.747540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.952095, 19.991850, 15.025151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177947, -0.974746, 0.134924,
		0.706341, -0.031059, 0.707190,
		-0.685140, 0.221145, 0.694030,
		21.746553, 20.058193, 15.233360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.207674, 19.335295, 15.106529>,  <22.226151, 19.903393, 14.747540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.207674, 19.335295, 15.106529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.880888, 19.497643, 15.270400>,  <21.684816, 19.595051, 15.368723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.880888, 19.497643, 15.270400>,  <22.207674, 19.335295, 15.106529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880888, 19.497643, 15.270400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429289, -0.902372, 0.037907,
		0.385066, -0.144901, 0.911443,
		-0.816967, 0.405869, 0.409677,
		21.635798, 19.619404, 15.393303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132179, 19.142002, 15.730453>,  <22.207674, 19.335295, 15.106529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132179, 19.142002, 15.730453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752159, 19.244970, 15.659870>,  <21.524147, 19.306751, 15.617521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752159, 19.244970, 15.659870>,  <22.132179, 19.142002, 15.730453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752159, 19.244970, 15.659870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300046, -0.908945, 0.289468,
		-0.085873, 0.327954, 0.940783,
		-0.950052, 0.257421, -0.176455,
		21.467144, 19.322197, 15.606934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.692596, 18.770153, 16.241684>,  <22.132179, 19.142002, 15.730453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.692596, 18.770153, 16.241684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.418362, 18.888597, 15.975664>,  <21.253820, 18.959663, 15.816052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.418362, 18.888597, 15.975664>,  <21.692596, 18.770153, 16.241684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418362, 18.888597, 15.975664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551762, -0.807298, 0.209354,
		-0.474900, 0.510479, 0.716855,
		-0.685586, 0.296111, -0.665048,
		21.212687, 18.977430, 15.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034008, 18.752562, 16.584242>,  <21.692596, 18.770153, 16.241684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034008, 18.752562, 16.584242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.950697, 18.745281, 16.193081>,  <20.900711, 18.740913, 15.958385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.950697, 18.745281, 16.193081>,  <21.034008, 18.752562, 16.584242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950697, 18.745281, 16.193081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544843, -0.828170, 0.131456,
		-0.812260, 0.560181, 0.162574,
		-0.208278, -0.018199, -0.977900,
		20.888214, 18.739822, 15.899711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424740, 18.504354, 16.605259>,  <21.034008, 18.752562, 16.584242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424740, 18.504354, 16.605259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508059, 18.458876, 16.216684>,  <20.558050, 18.431589, 15.983540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508059, 18.458876, 16.216684>,  <20.424740, 18.504354, 16.605259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508059, 18.458876, 16.216684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321518, -0.945981, 0.041778,
		-0.923709, 0.303632, -0.233600,
		0.208296, -0.113697, -0.971435,
		20.570547, 18.424767, 15.925254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855181, 18.142923, 16.370159>,  <20.424740, 18.504354, 16.605259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855181, 18.142923, 16.370159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.154690, 18.068119, 16.115801>,  <20.334396, 18.023235, 15.963186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.154690, 18.068119, 16.115801>,  <19.855181, 18.142923, 16.370159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154690, 18.068119, 16.115801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279159, -0.959111, -0.046644,
		-0.601171, 0.212442, -0.770365,
		0.748775, -0.187013, -0.635895,
		20.379322, 18.012014, 15.925033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624273, 17.623791, 16.016851>,  <19.855181, 18.142923, 16.370159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624273, 17.623791, 16.016851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.010494, 17.581364, 15.921803>,  <20.242226, 17.555908, 15.864775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.010494, 17.581364, 15.921803>,  <19.624273, 17.623791, 16.016851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010494, 17.581364, 15.921803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149838, -0.973198, -0.174453,
		-0.212747, 0.204048, -0.955564,
		0.965550, -0.106066, -0.237619,
		20.300159, 17.549543, 15.850517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652554, 17.246542, 15.312382>,  <19.624273, 17.623791, 16.016851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652554, 17.246542, 15.312382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.979433, 17.182280, 15.533788>,  <20.175560, 17.143723, 15.666631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.979433, 17.182280, 15.533788>,  <19.652554, 17.246542, 15.312382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979433, 17.182280, 15.533788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025645, -0.969550, -0.243547,
		0.575787, 0.184831, -0.796434,
		0.817197, -0.160656, 0.553514,
		20.224592, 17.134083, 15.699842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195457, 16.924849, 14.882113>,  <19.652554, 17.246542, 15.312382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195457, 16.924849, 14.882113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292091, 16.805395, 15.251428>,  <20.350071, 16.733723, 15.473016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292091, 16.805395, 15.251428>,  <20.195457, 16.924849, 14.882113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292091, 16.805395, 15.251428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099535, -0.938824, -0.329701,
		0.965261, 0.171550, -0.197080,
		0.241584, -0.298631, 0.923286,
		20.364567, 16.715805, 15.528414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.715202, 16.330187, 14.771541>,  <20.195457, 16.924849, 14.882113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.715202, 16.330187, 14.771541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.576027, 16.282446, 15.143497>,  <20.492521, 16.253801, 15.366670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.576027, 16.282446, 15.143497>,  <20.715202, 16.330187, 14.771541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576027, 16.282446, 15.143497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063940, -0.986533, -0.150549,
		0.935335, -0.111838, 0.335620,
		-0.347937, -0.119354, 0.929889,
		20.471645, 16.246639, 15.422463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.105585, 15.746555, 15.043611>,  <20.715202, 16.330187, 14.771541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.105585, 15.746555, 15.043611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.739145, 15.842752, 15.171937>,  <20.519281, 15.900471, 15.248933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.739145, 15.842752, 15.171937>,  <21.105585, 15.746555, 15.043611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739145, 15.842752, 15.171937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325997, -0.912590, -0.246789,
		0.233422, -0.330669, 0.914425,
		-0.916101, 0.240494, 0.320816,
		20.464315, 15.914901, 15.268182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780081, 15.458401, 15.104608>,  <21.105585, 15.746555, 15.043611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780081, 15.458401, 15.104608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180037, 15.463240, 15.101189>,  <22.420010, 15.466144, 15.099137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180037, 15.463240, 15.101189>,  <21.780081, 15.458401, 15.104608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180037, 15.463240, 15.101189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014665, 0.726859, -0.686630,
		-0.002094, 0.686680, 0.726957,
		0.999890, 0.012098, -0.008548,
		22.480003, 15.466869, 15.098624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932055, 16.084751, 15.178036>,  <21.780081, 15.458401, 15.104608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932055, 16.084751, 15.178036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257204, 15.919385, 15.013926>,  <22.452293, 15.820166, 14.915460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257204, 15.919385, 15.013926>,  <21.932055, 16.084751, 15.178036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257204, 15.919385, 15.013926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007096, 0.697324, -0.716721,
		0.582398, 0.585515, 0.563902,
		0.812873, -0.413415, -0.410275,
		22.501066, 15.795361, 14.890843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405918, 16.559752, 15.066017>,  <21.932055, 16.084751, 15.178036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405918, 16.559752, 15.066017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.524263, 16.294968, 14.790546>,  <22.595270, 16.136097, 14.625264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.524263, 16.294968, 14.790546>,  <22.405918, 16.559752, 15.066017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.524263, 16.294968, 14.790546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048812, 0.709535, -0.702977,
		0.953982, 0.241602, 0.177615,
		0.295864, -0.661958, -0.688677,
		22.613022, 16.096380, 14.583943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.946772, 16.917887, 14.675230>,  <22.405918, 16.559752, 15.066017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.946772, 16.917887, 14.675230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856308, 16.608988, 14.437748>,  <22.802031, 16.423649, 14.295259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856308, 16.608988, 14.437748>,  <22.946772, 16.917887, 14.675230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856308, 16.608988, 14.437748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103151, 0.587083, -0.802928,
		0.968614, -0.242829, -0.053115,
		-0.226157, -0.772248, -0.593705,
		22.788460, 16.377314, 14.259637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516348, 16.873621, 14.148692>,  <22.946772, 16.917887, 14.675230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516348, 16.873621, 14.148692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193739, 16.681351, 14.011012>,  <23.000174, 16.565989, 13.928404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193739, 16.681351, 14.011012>,  <23.516348, 16.873621, 14.148692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193739, 16.681351, 14.011012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125071, 0.430302, -0.893978,
		0.577825, -0.764061, -0.286929,
		-0.806520, -0.480677, -0.344201,
		22.951782, 16.537148, 13.907752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.678444, 16.596170, 13.491595>,  <23.516348, 16.873621, 14.148692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.678444, 16.596170, 13.491595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.281961, 16.645666, 13.510372>,  <23.044073, 16.675364, 13.521638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.281961, 16.645666, 13.510372>,  <23.678444, 16.596170, 13.491595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.281961, 16.645666, 13.510372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013908, 0.450131, -0.892854,
		-0.131609, -0.884348, -0.447893,
		-0.991204, 0.123737, 0.046942,
		22.984600, 16.682787, 13.524455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.577082, 16.618597, 12.788033>,  <23.678444, 16.596170, 13.491595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.577082, 16.618597, 12.788033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.228954, 16.743200, 12.940615>,  <23.020079, 16.817963, 13.032165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.228954, 16.743200, 12.940615>,  <23.577082, 16.618597, 12.788033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.228954, 16.743200, 12.940615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090088, 0.660778, -0.745155,
		-0.484181, -0.682886, -0.547023,
		-0.870318, 0.311510, 0.381456,
		22.967859, 16.836653, 13.055052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117836, 16.619558, 12.248660>,  <23.577082, 16.618597, 12.788033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117836, 16.619558, 12.248660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985035, 16.885195, 12.516618>,  <22.905354, 17.044577, 12.677393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985035, 16.885195, 12.516618>,  <23.117836, 16.619558, 12.248660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985035, 16.885195, 12.516618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292196, 0.602841, -0.742431,
		-0.896881, -0.442230, -0.006101,
		-0.332003, 0.664089, 0.669895,
		22.885433, 17.084421, 12.717587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.515881, 16.904154, 11.923768>,  <23.117836, 16.619558, 12.248660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.515881, 16.904154, 11.923768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.624300, 17.158802, 12.212558>,  <22.689352, 17.311592, 12.385832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.624300, 17.158802, 12.212558>,  <22.515881, 16.904154, 11.923768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.624300, 17.158802, 12.212558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336948, 0.765347, -0.548370,
		-0.901665, -0.094634, 0.421953,
		0.271046, 0.636622, 0.721974,
		22.705614, 17.349789, 12.429150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959377, 17.227867, 12.014388>,  <22.515881, 16.904154, 11.923768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959377, 17.227867, 12.014388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220476, 17.488554, 12.168887>,  <22.377134, 17.644966, 12.261586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220476, 17.488554, 12.168887>,  <21.959377, 17.227867, 12.014388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220476, 17.488554, 12.168887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320874, 0.699695, -0.638331,
		-0.686267, 0.292731, 0.665842,
		0.652746, 0.651717, 0.386248,
		22.416300, 17.684069, 12.284761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.558722, 17.871479, 12.163690>,  <21.959377, 17.227867, 12.014388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.558722, 17.871479, 12.163690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945847, 17.970957, 12.148272>,  <22.178122, 18.030643, 12.139021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945847, 17.970957, 12.148272>,  <21.558722, 17.871479, 12.163690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945847, 17.970957, 12.148272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230819, 0.816143, -0.529748,
		-0.100287, 0.521595, 0.847278,
		0.967815, 0.248694, -0.038546,
		22.236191, 18.045565, 12.136708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662836, 18.560545, 12.295755>,  <21.558722, 17.871479, 12.163690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662836, 18.560545, 12.295755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.025824, 18.508249, 12.136053>,  <22.243616, 18.476871, 12.040232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.025824, 18.508249, 12.136053>,  <21.662836, 18.560545, 12.295755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025824, 18.508249, 12.136053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097606, 0.858732, -0.503043,
		0.408620, 0.495467, 0.766513,
		0.907471, -0.130737, -0.399255,
		22.298065, 18.469028, 12.016276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007013, 19.203297, 12.403270>,  <21.662836, 18.560545, 12.295755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007013, 19.203297, 12.403270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168488, 19.019587, 12.086762>,  <22.265371, 18.909361, 11.896858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168488, 19.019587, 12.086762>,  <22.007013, 19.203297, 12.403270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168488, 19.019587, 12.086762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277621, 0.762598, -0.584270,
		0.871759, 0.455534, 0.180346,
		0.403686, -0.459275, -0.791268,
		22.289593, 18.881804, 11.849382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668039, 19.567148, 12.113828>,  <22.007013, 19.203297, 12.403270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668039, 19.567148, 12.113828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492634, 19.387753, 11.802299>,  <22.387390, 19.280115, 11.615382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492634, 19.387753, 11.802299>,  <22.668039, 19.567148, 12.113828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492634, 19.387753, 11.802299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050490, 0.877510, -0.476893,
		0.897306, -0.169801, -0.407444,
		-0.438513, -0.448490, -0.778821,
		22.361080, 19.253206, 11.568653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811325, 20.018579, 11.574452>,  <22.668039, 19.567148, 12.113828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811325, 20.018579, 11.574452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.557150, 19.776142, 11.383090>,  <22.404644, 19.630680, 11.268272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.557150, 19.776142, 11.383090>,  <22.811325, 20.018579, 11.574452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557150, 19.776142, 11.383090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132322, 0.695883, -0.705860,
		0.760732, -0.385224, -0.522388,
		-0.635435, -0.606094, -0.478406,
		22.366518, 19.594315, 11.239569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876499, 20.173933, 10.801976>,  <22.811325, 20.018579, 11.574452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876499, 20.173933, 10.801976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545492, 19.956419, 10.857856>,  <22.346888, 19.825911, 10.891383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545492, 19.956419, 10.857856>,  <22.876499, 20.173933, 10.801976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545492, 19.956419, 10.857856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460280, 0.514594, -0.723419,
		0.321494, -0.662943, -0.676128,
		-0.827517, -0.543783, 0.139700,
		22.297237, 19.793283, 10.899765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531969, 20.046053, 10.209774>,  <22.876499, 20.173933, 10.801976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531969, 20.046053, 10.209774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238390, 20.019207, 10.480127>,  <22.062243, 20.003099, 10.642340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238390, 20.019207, 10.480127>,  <22.531969, 20.046053, 10.209774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238390, 20.019207, 10.480127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447634, 0.796212, -0.407026,
		-0.510830, -0.601283, -0.614419,
		-0.733946, -0.067114, 0.675884,
		22.018206, 19.999073, 10.682893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.989851, 20.189131, 9.853090>,  <22.531969, 20.046053, 10.209774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.989851, 20.189131, 9.853090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885029, 20.263041, 10.231970>,  <21.822136, 20.307386, 10.459297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885029, 20.263041, 10.231970>,  <21.989851, 20.189131, 9.853090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885029, 20.263041, 10.231970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561177, 0.769320, -0.305331,
		-0.785116, -0.611560, -0.097913,
		-0.262055, 0.184774, 0.947199,
		21.806412, 20.318472, 10.516129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217403, 20.433874, 9.819091>,  <21.989851, 20.189131, 9.853090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217403, 20.433874, 9.819091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.311205, 20.542767, 10.192379>,  <21.367485, 20.608101, 10.416351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.311205, 20.542767, 10.192379>,  <21.217403, 20.433874, 9.819091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311205, 20.542767, 10.192379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502303, 0.855836, -0.123435,
		-0.832286, -0.439813, 0.337439,
		0.234504, 0.272230, 0.933220,
		21.381556, 20.624435, 10.472345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.996248, 19.881472, 21.083370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959467, 19.483442, 21.098188>,  <13.937398, 19.244625, 21.107080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959467, 19.483442, 21.098188>,  <13.996248, 19.881472, 21.083370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959467, 19.483442, 21.098188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595127, -0.084749, -0.799151,
		0.798354, -0.051437, 0.599988,
		-0.091954, -0.995074, 0.037048,
		13.931881, 19.184919, 21.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668528, 19.590380, 20.877787>,  <13.996248, 19.881472, 21.083370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668528, 19.590380, 20.877787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405666, 19.295202, 20.816357>,  <14.247950, 19.118095, 20.779499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405666, 19.295202, 20.816357>,  <14.668528, 19.590380, 20.877787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405666, 19.295202, 20.816357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433228, -0.203050, -0.878114,
		0.616817, -0.643589, 0.453134,
		-0.657154, -0.737946, -0.153576,
		14.208520, 19.073818, 20.770285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061234, 18.974417, 20.660854>,  <14.668528, 19.590380, 20.877787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061234, 18.974417, 20.660854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684099, 18.894239, 20.554358>,  <14.457819, 18.846132, 20.490459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684099, 18.894239, 20.554358>,  <15.061234, 18.974417, 20.660854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684099, 18.894239, 20.554358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325729, -0.385381, -0.863355,
		0.070450, -0.900724, 0.428641,
		-0.942835, -0.200444, -0.266242,
		14.401249, 18.834106, 20.474485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017159, 18.271698, 20.341150>,  <15.061234, 18.974417, 20.660854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017159, 18.271698, 20.341150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667520, 18.414206, 20.209074>,  <14.457736, 18.499710, 20.129827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667520, 18.414206, 20.209074>,  <15.017159, 18.271698, 20.341150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667520, 18.414206, 20.209074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177779, -0.397960, -0.900013,
		-0.452052, -0.845399, 0.284517,
		-0.874096, 0.356271, -0.330193,
		14.405291, 18.521086, 20.110016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759072, 17.708624, 19.877399>,  <15.017159, 18.271698, 20.341150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759072, 17.708624, 19.877399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550114, 18.035471, 19.779896>,  <14.424739, 18.231579, 19.721394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550114, 18.035471, 19.779896>,  <14.759072, 17.708624, 19.877399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550114, 18.035471, 19.779896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075612, -0.240351, -0.967737,
		-0.849344, -0.523972, 0.063774,
		-0.522395, 0.817120, -0.243760,
		14.393395, 18.280607, 19.706768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151061, 17.412964, 19.505428>,  <14.759072, 17.708624, 19.877399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151061, 17.412964, 19.505428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244685, 17.791878, 19.417915>,  <14.300859, 18.019226, 19.365408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244685, 17.791878, 19.417915>,  <14.151061, 17.412964, 19.505428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244685, 17.791878, 19.417915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174027, -0.262223, -0.949186,
		-0.956520, 0.184091, -0.226229,
		0.234059, 0.947285, -0.218784,
		14.314903, 18.076063, 19.352280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787664, 17.501408, 18.863508>,  <14.151061, 17.412964, 19.505428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787664, 17.501408, 18.863508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040506, 17.811272, 18.870983>,  <14.192211, 17.997190, 18.875467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040506, 17.811272, 18.870983>,  <13.787664, 17.501408, 18.863508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040506, 17.811272, 18.870983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340798, -0.256263, -0.904536,
		-0.695917, 0.578130, -0.425986,
		0.632104, 0.774658, 0.018688,
		14.230138, 18.043669, 18.876589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587133, 17.908056, 18.270197>,  <13.787664, 17.501408, 18.863508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587133, 17.908056, 18.270197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967743, 17.975170, 18.373308>,  <14.196109, 18.015438, 18.435175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967743, 17.975170, 18.373308>,  <13.587133, 17.908056, 18.270197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967743, 17.975170, 18.373308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298846, -0.306100, -0.903877,
		-0.072750, 0.937097, -0.341403,
		0.951524, 0.167784, 0.257779,
		14.253201, 18.025505, 18.450642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781885, 18.060429, 17.610476>,  <13.587133, 17.908056, 18.270197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781885, 18.060429, 17.610476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125934, 18.014833, 17.809351>,  <14.332363, 17.987476, 17.928677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125934, 18.014833, 17.809351>,  <13.781885, 18.060429, 17.610476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.125934, 18.014833, 17.809351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437403, -0.336649, -0.833874,
		0.262431, 0.934705, -0.239699,
		0.860121, -0.113990, 0.497190,
		14.383970, 17.980637, 17.958508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350576, 18.305086, 17.160429>,  <13.781885, 18.060429, 17.610476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350576, 18.305086, 17.160429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516833, 18.064672, 17.433485>,  <14.616588, 17.920424, 17.597319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516833, 18.064672, 17.433485>,  <14.350576, 18.305086, 17.160429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.516833, 18.064672, 17.433485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569533, -0.413190, -0.710567,
		0.709136, 0.684129, 0.170569,
		0.415642, -0.601034, 0.682642,
		14.641526, 17.884363, 17.638277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.131592, 18.292295, 17.076012>,  <14.350576, 18.305086, 17.160429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.131592, 18.292295, 17.076012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023255, 17.958294, 17.267599>,  <14.958254, 17.757893, 17.382551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023255, 17.958294, 17.267599>,  <15.131592, 18.292295, 17.076012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023255, 17.958294, 17.267599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584960, -0.537924, -0.607009,
		0.764504, 0.115775, 0.634137,
		-0.270841, -0.835006, 0.478969,
		14.942003, 17.707792, 17.411289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782581, 17.807674, 17.070402>,  <15.131592, 18.292295, 17.076012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782581, 17.807674, 17.070402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477947, 17.557611, 17.138714>,  <15.295167, 17.407574, 17.179701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477947, 17.557611, 17.138714>,  <15.782581, 17.807674, 17.070402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477947, 17.557611, 17.138714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396650, -0.658051, -0.640029,
		0.512500, -0.419697, 0.749131,
		-0.761585, -0.625158, 0.170779,
		15.249472, 17.370064, 17.189947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087835, 17.108217, 17.054504>,  <15.782581, 17.807674, 17.070402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087835, 17.108217, 17.054504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696290, 17.038977, 17.010931>,  <15.461364, 16.997433, 16.984787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696290, 17.038977, 17.010931>,  <16.087835, 17.108217, 17.054504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696290, 17.038977, 17.010931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204450, -0.813689, -0.544160,
		0.005559, -0.554928, 0.831880,
		-0.978861, -0.173103, -0.108932,
		15.402632, 16.987045, 16.978251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817635, 16.715178, 16.961988>,  <16.087835, 17.108217, 17.054504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817635, 16.715178, 16.961988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489790, 16.486834, 16.942581>,  <16.293083, 16.349827, 16.930937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489790, 16.486834, 16.942581>,  <16.817635, 16.715178, 16.961988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489790, 16.486834, 16.942581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515550, 0.697955, 0.497058,
		-0.249885, 0.432409, -0.866360,
		-0.819613, -0.570860, -0.048520,
		16.243906, 16.315577, 16.928026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302242, 16.688478, 16.329489>,  <16.817635, 16.715178, 16.961988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302242, 16.688478, 16.329489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486723, 16.339445, 16.393852>,  <17.597412, 16.130026, 16.432470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486723, 16.339445, 16.393852>,  <17.302242, 16.688478, 16.329489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486723, 16.339445, 16.393852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357475, -0.016749, 0.933773,
		-0.812099, -0.488178, -0.319651,
		0.461201, -0.872583, 0.160910,
		17.625084, 16.077671, 16.442125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827227, 16.182142, 16.427410>,  <17.302242, 16.688478, 16.329489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827227, 16.182142, 16.427410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151119, 16.029617, 16.605818>,  <17.345455, 15.938102, 16.712862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151119, 16.029617, 16.605818>,  <16.827227, 16.182142, 16.427410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151119, 16.029617, 16.605818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491976, -0.026866, 0.870194,
		-0.319834, -0.924056, -0.209351,
		0.809732, -0.381313, 0.446020,
		17.394039, 15.915223, 16.739624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628277, 15.639117, 16.814798>,  <16.827227, 16.182142, 16.427410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628277, 15.639117, 16.814798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989635, 15.685201, 16.980017>,  <17.206450, 15.712851, 17.079147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989635, 15.685201, 16.980017>,  <16.628277, 15.639117, 16.814798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989635, 15.685201, 16.980017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405931, -0.080668, 0.910337,
		0.138199, -0.990060, -0.026107,
		0.903394, 0.115210, 0.413044,
		17.260654, 15.719764, 17.103930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570597, 15.106026, 17.407530>,  <16.628277, 15.639117, 16.814798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570597, 15.106026, 17.407530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848854, 15.384743, 17.477457>,  <17.015808, 15.551972, 17.519413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848854, 15.384743, 17.477457>,  <16.570597, 15.106026, 17.407530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848854, 15.384743, 17.477457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258907, 0.016176, 0.965767,
		0.670111, -0.717091, 0.191657,
		0.695643, 0.696792, 0.174820,
		17.057547, 15.593781, 17.529903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890423, 14.914194, 17.986727>,  <16.570597, 15.106026, 17.407530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890423, 14.914194, 17.986727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985201, 15.302327, 17.967499>,  <17.042068, 15.535207, 17.955963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985201, 15.302327, 17.967499>,  <16.890423, 14.914194, 17.986727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985201, 15.302327, 17.967499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272075, 0.113773, 0.955527,
		0.932648, -0.213329, 0.290961,
		0.236945, 0.970333, -0.048069,
		17.056284, 15.593427, 17.953077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202482, 15.031408, 18.654808>,  <16.890423, 14.914194, 17.986727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202482, 15.031408, 18.654808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102098, 15.383512, 18.493729>,  <17.041868, 15.594773, 18.397081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102098, 15.383512, 18.493729>,  <17.202482, 15.031408, 18.654808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102098, 15.383512, 18.493729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427452, 0.272482, 0.861997,
		0.868507, 0.388460, 0.307886,
		-0.250958, 0.880257, -0.402700,
		17.026812, 15.647589, 18.372919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578295, 15.575556, 19.064697>,  <17.202482, 15.031408, 18.654808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578295, 15.575556, 19.064697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253536, 15.719614, 18.880909>,  <17.058681, 15.806049, 18.770636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253536, 15.719614, 18.880909>,  <17.578295, 15.575556, 19.064697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253536, 15.719614, 18.880909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372878, 0.285680, 0.882807,
		0.449203, 0.888077, -0.097653,
		-0.811898, 0.360147, -0.459473,
		17.009966, 15.827658, 18.743067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471010, 16.254435, 19.399694>,  <17.578295, 15.575556, 19.064697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471010, 16.254435, 19.399694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120794, 16.148573, 19.238008>,  <16.910666, 16.085056, 19.140997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120794, 16.148573, 19.238008>,  <17.471010, 16.254435, 19.399694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120794, 16.148573, 19.238008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441201, 0.096973, 0.892154,
		-0.196915, 0.959455, -0.201670,
		-0.875538, -0.264656, -0.404217,
		16.858133, 16.069176, 19.116743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957680, 16.767460, 19.671398>,  <17.471010, 16.254435, 19.399694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957680, 16.767460, 19.671398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768496, 16.433767, 19.558001>,  <16.654985, 16.233553, 19.489962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768496, 16.433767, 19.558001>,  <16.957680, 16.767460, 19.671398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768496, 16.433767, 19.558001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623998, 0.089987, 0.776227,
		-0.622041, 0.544025, -0.563118,
		-0.472960, -0.834230, -0.283495,
		16.626608, 16.183498, 19.472952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268854, 16.930477, 19.876158>,  <16.957680, 16.767460, 19.671398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268854, 16.930477, 19.876158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256620, 16.534803, 19.818781>,  <16.249281, 16.297400, 19.784355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256620, 16.534803, 19.818781>,  <16.268854, 16.930477, 19.876158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.256620, 16.534803, 19.818781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518255, -0.107018, 0.848504,
		-0.854679, 0.100290, -0.509378,
		-0.030584, -0.989186, -0.143442,
		16.247446, 16.238047, 19.775747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648760, 16.756481, 20.137272>,  <16.268854, 16.930477, 19.876158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648760, 16.756481, 20.137272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838560, 16.404499, 20.128048>,  <15.952440, 16.193310, 20.122515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838560, 16.404499, 20.128048>,  <15.648760, 16.756481, 20.137272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838560, 16.404499, 20.128048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461641, -0.271064, 0.844637,
		-0.749491, -0.390135, -0.534843,
		0.474500, -0.879954, -0.023058,
		15.980910, 16.140512, 20.121130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189642, 16.330954, 20.364618>,  <15.648760, 16.756481, 20.137272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189642, 16.330954, 20.364618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503193, 16.086823, 20.410284>,  <15.691323, 15.940343, 20.437683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503193, 16.086823, 20.410284>,  <15.189642, 16.330954, 20.364618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503193, 16.086823, 20.410284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285140, -0.190512, 0.939362,
		-0.551572, -0.768897, -0.323367,
		0.783878, -0.610331, 0.114162,
		15.738357, 15.903724, 20.444532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971963, 15.696757, 20.557558>,  <15.189642, 16.330954, 20.364618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971963, 15.696757, 20.557558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339572, 15.726801, 20.712351>,  <15.560138, 15.744827, 20.805227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339572, 15.726801, 20.712351>,  <14.971963, 15.696757, 20.557558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.339572, 15.726801, 20.712351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350222, -0.295045, 0.888984,
		0.180950, -0.952527, -0.244847,
		0.919022, 0.075111, 0.386984,
		15.615278, 15.749334, 20.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979070, 15.199076, 20.882734>,  <14.971963, 15.696757, 20.557558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979070, 15.199076, 20.882734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281940, 15.410482, 21.036282>,  <15.463663, 15.537326, 21.128410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281940, 15.410482, 21.036282>,  <14.979070, 15.199076, 20.882734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281940, 15.410482, 21.036282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336837, -0.187592, 0.922686,
		0.559666, -0.827937, 0.035984,
		0.757176, 0.528517, 0.383869,
		15.509093, 15.569037, 21.151442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091349, 14.516418, 20.777208>,  <14.979070, 15.199076, 20.882734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091349, 14.516418, 20.777208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008120, 14.125598, 20.758965>,  <14.958182, 13.891106, 20.748018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008120, 14.125598, 20.758965>,  <15.091349, 14.516418, 20.777208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008120, 14.125598, 20.758965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274274, -0.013525, -0.961557,
		0.938872, -0.212582, 0.270793,
		-0.208072, -0.977050, -0.045608,
		14.945698, 13.832483, 20.745281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672259, 14.261414, 20.468195>,  <15.091349, 14.516418, 20.777208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672259, 14.261414, 20.468195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381684, 13.992072, 20.413231>,  <15.207339, 13.830467, 20.380253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381684, 13.992072, 20.413231>,  <15.672259, 14.261414, 20.468195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381684, 13.992072, 20.413231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173606, 0.013661, -0.984721,
		0.664943, -0.739194, 0.106974,
		-0.726438, -0.673354, -0.137412,
		15.163753, 13.790066, 20.372007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881425, 13.864191, 19.969090>,  <15.672259, 14.261414, 20.468195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881425, 13.864191, 19.969090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494340, 13.766090, 19.945827>,  <15.262089, 13.707230, 19.931870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494340, 13.766090, 19.945827>,  <15.881425, 13.864191, 19.969090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494340, 13.766090, 19.945827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036110, 0.093457, -0.994968,
		0.249455, -0.964944, -0.081583,
		-0.967713, -0.245253, -0.058157,
		15.204026, 13.692514, 19.928381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745667, 13.345389, 19.524994>,  <15.881425, 13.864191, 19.969090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745667, 13.345389, 19.524994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395581, 13.538775, 19.518511>,  <15.185530, 13.654807, 19.514622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395581, 13.538775, 19.518511>,  <15.745667, 13.345389, 19.524994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395581, 13.538775, 19.518511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078683, -0.175336, -0.981359,
		-0.477295, -0.857624, 0.191497,
		-0.875213, 0.483465, -0.016207,
		15.133018, 13.683815, 19.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344750, 12.968625, 19.146318>,  <15.745667, 13.345389, 19.524994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344750, 12.968625, 19.146318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142965, 13.313962, 19.151329>,  <15.021894, 13.521164, 19.154335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142965, 13.313962, 19.151329>,  <15.344750, 12.968625, 19.146318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142965, 13.313962, 19.151329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233430, -0.122403, -0.964639,
		-0.831281, -0.489548, 0.263278,
		-0.504463, 0.863342, 0.012524,
		14.991627, 13.572965, 19.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706221, 12.808857, 18.768135>,  <15.344750, 12.968625, 19.146318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706221, 12.808857, 18.768135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728302, 13.208241, 18.770428>,  <14.741550, 13.447870, 18.771803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728302, 13.208241, 18.770428>,  <14.706221, 12.808857, 18.768135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728302, 13.208241, 18.770428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229267, 0.018261, -0.973192,
		-0.971797, 0.052409, 0.229922,
		0.055202, 0.998459, 0.005731,
		14.744863, 13.507778, 18.772146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019821, 13.032366, 18.596914>,  <14.706221, 12.808857, 18.768135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019821, 13.032366, 18.596914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278692, 13.327899, 18.521772>,  <14.434014, 13.505219, 18.476686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278692, 13.327899, 18.521772>,  <14.019821, 13.032366, 18.596914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278692, 13.327899, 18.521772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420077, 0.139989, -0.896626,
		-0.636159, 0.659189, 0.400964,
		0.647177, 0.738832, -0.187855,
		14.472845, 13.549548, 18.465416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.596925, 13.566665, 18.300676>,  <14.019821, 13.032366, 18.596914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.596925, 13.566665, 18.300676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964932, 13.665770, 18.179232>,  <14.185737, 13.725232, 18.106365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964932, 13.665770, 18.179232>,  <13.596925, 13.566665, 18.300676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964932, 13.665770, 18.179232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360564, 0.231749, -0.903486,
		-0.153488, 0.940695, 0.302547,
		0.920019, 0.247762, -0.303610,
		14.240938, 13.740098, 18.088148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489427, 14.230316, 17.916819>,  <13.596925, 13.566665, 18.300676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489427, 14.230316, 17.916819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843098, 14.092655, 17.790462>,  <14.055301, 14.010058, 17.714649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843098, 14.092655, 17.790462>,  <13.489427, 14.230316, 17.916819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843098, 14.092655, 17.790462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265250, 0.186770, -0.945917,
		0.384539, 0.920150, 0.073852,
		0.884179, -0.344153, -0.315890,
		14.108352, 13.989409, 17.695696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733763, 14.723552, 17.386784>,  <13.489427, 14.230316, 17.916819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733763, 14.723552, 17.386784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929127, 14.381658, 17.316490>,  <14.046345, 14.176521, 17.274313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929127, 14.381658, 17.316490>,  <13.733763, 14.723552, 17.386784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929127, 14.381658, 17.316490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007436, 0.197305, -0.980314,
		0.872583, 0.480101, 0.090010,
		0.488409, -0.854736, -0.175735,
		14.075649, 14.125237, 17.263769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383488, 14.943609, 17.046587>,  <13.733763, 14.723552, 17.386784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383488, 14.943609, 17.046587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284760, 14.570528, 16.941402>,  <14.225524, 14.346680, 16.878292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284760, 14.570528, 16.941402>,  <14.383488, 14.943609, 17.046587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284760, 14.570528, 16.941402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191289, 0.219123, -0.956762,
		0.949995, -0.286446, 0.124332,
		-0.246817, -0.932702, -0.262960,
		14.210715, 14.290717, 16.862514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804707, 14.807430, 16.540989>,  <14.383488, 14.943609, 17.046587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804707, 14.807430, 16.540989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501999, 14.548457, 16.504919>,  <14.320374, 14.393073, 16.483276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501999, 14.548457, 16.504919>,  <14.804707, 14.807430, 16.540989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.501999, 14.548457, 16.504919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052709, 0.077060, -0.995632,
		0.651555, -0.758215, -0.024191,
		-0.756768, -0.647434, -0.090174,
		14.274968, 14.354227, 16.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.707251, 12.493691, 25.510849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.015086, 12.602887, 25.741747>,  <13.199787, 12.668405, 25.880285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.015086, 12.602887, 25.741747>,  <12.707251, 12.493691, 25.510849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015086, 12.602887, 25.741747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489476, 0.328327, -0.807846,
		-0.410057, 0.904256, 0.119055,
		0.769588, 0.272988, 0.577245,
		13.245962, 12.684784, 25.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866790, 13.211957, 25.332340>,  <12.707251, 12.493691, 25.510849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866790, 13.211957, 25.332340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.187128, 13.028284, 25.486118>,  <13.379331, 12.918080, 25.578386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.187128, 13.028284, 25.486118>,  <12.866790, 13.211957, 25.332340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187128, 13.028284, 25.486118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587306, 0.476635, -0.654133,
		0.117125, 0.749648, 0.651391,
		0.800845, -0.459182, 0.384447,
		13.427382, 12.890530, 25.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339925, 13.706102, 25.261530>,  <12.866790, 13.211957, 25.332340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339925, 13.706102, 25.261530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.532471, 13.356203, 25.283806>,  <13.647998, 13.146263, 25.297173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.532471, 13.356203, 25.283806>,  <13.339925, 13.706102, 25.261530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.532471, 13.356203, 25.283806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650560, 0.313970, -0.691516,
		0.587417, 0.369102, 0.720211,
		0.481365, -0.874749, 0.055692,
		13.676880, 13.093779, 25.300514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971216, 13.955980, 24.997522>,  <13.339925, 13.706102, 25.261530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971216, 13.955980, 24.997522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.009905, 13.558550, 24.974022>,  <14.033118, 13.320091, 24.959921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.009905, 13.558550, 24.974022>,  <13.971216, 13.955980, 24.997522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.009905, 13.558550, 24.974022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545786, 0.102307, -0.831655,
		0.832323, 0.048373, 0.552175,
		0.096721, -0.993576, -0.058751,
		14.038921, 13.260477, 24.956396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.625791, 13.887325, 24.841774>,  <13.971216, 13.955980, 24.997522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.625791, 13.887325, 24.841774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.448420, 13.548258, 24.725273>,  <14.341997, 13.344817, 24.655373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.448420, 13.548258, 24.725273>,  <14.625791, 13.887325, 24.841774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448420, 13.548258, 24.725273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468872, 0.057566, -0.881388,
		0.763892, -0.527392, 0.371923,
		-0.443427, -0.847670, -0.291254,
		14.315392, 13.293957, 24.637897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139824, 13.631944, 24.397722>,  <14.625791, 13.887325, 24.841774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139824, 13.631944, 24.397722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.809334, 13.422286, 24.315140>,  <14.611040, 13.296492, 24.265591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.809334, 13.422286, 24.315140>,  <15.139824, 13.631944, 24.397722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809334, 13.422286, 24.315140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314524, -0.125159, -0.940962,
		0.467361, -0.842381, 0.268266,
		-0.826225, -0.524145, -0.206455,
		14.561466, 13.265042, 24.253202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373629, 13.103619, 24.033531>,  <15.139824, 13.631944, 24.397722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373629, 13.103619, 24.033531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.992145, 13.155966, 23.925228>,  <14.763254, 13.187374, 23.860247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.992145, 13.155966, 23.925228>,  <15.373629, 13.103619, 24.033531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992145, 13.155966, 23.925228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267329, -0.043434, -0.962626,
		-0.137738, -0.990448, 0.006439,
		-0.953710, 0.130869, -0.270758,
		14.706032, 13.195226, 23.844000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159338, 12.485103, 23.631832>,  <15.373629, 13.103619, 24.033531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159338, 12.485103, 23.631832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.895935, 12.767325, 23.527098>,  <14.737893, 12.936659, 23.464258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.895935, 12.767325, 23.527098>,  <15.159338, 12.485103, 23.631832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895935, 12.767325, 23.527098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334627, -0.037126, -0.941619,
		-0.674087, -0.707679, -0.211651,
		-0.658507, 0.705558, -0.261835,
		14.698383, 12.978992, 23.448547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979460, 12.318281, 22.952810>,  <15.159338, 12.485103, 23.631832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979460, 12.318281, 22.952810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.796962, 12.671163, 22.999382>,  <14.687463, 12.882892, 23.027325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.796962, 12.671163, 22.999382>,  <14.979460, 12.318281, 22.952810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796962, 12.671163, 22.999382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025666, 0.143835, -0.989269,
		-0.889484, -0.448360, -0.088267,
		-0.456245, 0.882204, 0.116431,
		14.660089, 12.935823, 23.034311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353810, 12.383481, 22.471216>,  <14.979460, 12.318281, 22.952810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353810, 12.383481, 22.471216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.435716, 12.763115, 22.566975>,  <14.484859, 12.990895, 22.624430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.435716, 12.763115, 22.566975>,  <14.353810, 12.383481, 22.471216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435716, 12.763115, 22.566975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030112, 0.250570, -0.967630,
		-0.978348, 0.190926, 0.079886,
		0.204763, 0.949085, 0.239395,
		14.497145, 13.047840, 22.638794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877521, 12.902284, 22.169552>,  <14.353810, 12.383481, 22.471216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877521, 12.902284, 22.169552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.219274, 13.099672, 22.234688>,  <14.424325, 13.218105, 22.273769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.219274, 13.099672, 22.234688>,  <13.877521, 12.902284, 22.169552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219274, 13.099672, 22.234688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021370, 0.346469, -0.937818,
		-0.519207, 0.797774, 0.306563,
		0.854382, 0.493473, 0.162841,
		14.475588, 13.247714, 22.283541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815641, 13.594714, 22.013611>,  <13.877521, 12.902284, 22.169552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815641, 13.594714, 22.013611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.200324, 13.503836, 21.952291>,  <14.431134, 13.449308, 21.915499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.200324, 13.503836, 21.952291>,  <13.815641, 13.594714, 22.013611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200324, 13.503836, 21.952291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062436, 0.363019, -0.929688,
		0.266872, 0.903659, 0.334933,
		0.961708, -0.227196, -0.153300,
		14.488836, 13.435677, 21.906301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903955, 13.879083, 21.402615>,  <13.815641, 13.594714, 22.013611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903955, 13.879083, 21.402615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.262440, 13.712679, 21.464245>,  <14.477530, 13.612837, 21.501223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.262440, 13.712679, 21.464245>,  <13.903955, 13.879083, 21.402615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262440, 13.712679, 21.464245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242101, 0.167615, -0.955663,
		0.371740, 0.893779, 0.250935,
		0.896212, -0.416010, 0.154075,
		14.531303, 13.587876, 21.510468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536953, 14.377333, 21.223719>,  <13.903955, 13.879083, 21.402615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536953, 14.377333, 21.223719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.653816, 13.996806, 21.184441>,  <14.723934, 13.768491, 21.160873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.653816, 13.996806, 21.184441>,  <14.536953, 14.377333, 21.223719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653816, 13.996806, 21.184441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275588, 0.182061, -0.943877,
		0.915803, 0.248701, 0.315362,
		0.292158, -0.951316, -0.098193,
		14.741464, 13.711411, 21.154984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274638, 14.754029, 21.462919>,  <14.536953, 14.377333, 21.223719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274638, 14.754029, 21.462919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.408281, 15.124838, 21.531044>,  <15.488467, 15.347322, 21.571918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.408281, 15.124838, 21.531044>,  <15.274638, 14.754029, 21.462919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408281, 15.124838, 21.531044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352111, -0.044850, 0.934883,
		0.874294, -0.372319, 0.311430,
		0.334107, 0.927020, 0.170310,
		15.508513, 15.402944, 21.582136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628344, 14.664077, 22.086756>,  <15.274638, 14.754029, 21.462919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628344, 14.664077, 22.086756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.572811, 15.058967, 22.055481>,  <15.539492, 15.295900, 22.036716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.572811, 15.058967, 22.055481>,  <15.628344, 14.664077, 22.086756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572811, 15.058967, 22.055481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280406, 0.036535, 0.959186,
		0.949789, 0.155089, 0.271751,
		-0.138831, 0.987225, -0.078189,
		15.531162, 15.355134, 22.032024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422738, 14.841369, 22.790524>,  <15.628344, 14.664077, 22.086756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422738, 14.841369, 22.790524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.431067, 15.208152, 22.631149>,  <15.436066, 15.428222, 22.535524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.431067, 15.208152, 22.631149>,  <15.422738, 14.841369, 22.790524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431067, 15.208152, 22.631149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052682, 0.396964, 0.916321,
		0.998394, -0.040072, -0.040041,
		0.020824, 0.916959, -0.398438,
		15.437315, 15.483239, 22.511618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994707, 15.281479, 23.087645>,  <15.422738, 14.841369, 22.790524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994707, 15.281479, 23.087645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.663025, 15.471779, 22.970287>,  <15.464016, 15.585959, 22.899872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.663025, 15.471779, 22.970287>,  <15.994707, 15.281479, 23.087645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663025, 15.471779, 22.970287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119453, 0.361946, 0.924514,
		0.546031, 0.801658, -0.243298,
		-0.829205, 0.475751, -0.293395,
		15.414264, 15.614504, 22.882269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867495, 15.925178, 23.421690>,  <15.994707, 15.281479, 23.087645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867495, 15.925178, 23.421690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.485919, 15.845495, 23.331963>,  <15.256974, 15.797686, 23.278126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.485919, 15.845495, 23.331963>,  <15.867495, 15.925178, 23.421690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485919, 15.845495, 23.331963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288417, 0.403168, 0.868488,
		-0.082569, 0.893182, -0.442051,
		-0.953938, -0.199205, -0.224320,
		15.199738, 15.785734, 23.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625360, 16.512611, 23.530296>,  <15.867495, 15.925178, 23.421690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625360, 16.512611, 23.530296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.316537, 16.259565, 23.554728>,  <15.131244, 16.107738, 23.569386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.316537, 16.259565, 23.554728>,  <15.625360, 16.512611, 23.530296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316537, 16.259565, 23.554728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340288, 0.492626, 0.800952,
		-0.536781, 0.597595, -0.595605,
		-0.772056, -0.632614, 0.061078,
		15.084920, 16.069782, 23.573051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.171943, 17.035618, 23.709761>,  <15.625360, 16.512611, 23.530296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.171943, 17.035618, 23.709761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.052452, 16.666975, 23.808878>,  <14.980758, 16.445789, 23.868349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.052452, 16.666975, 23.808878>,  <15.171943, 17.035618, 23.709761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.052452, 16.666975, 23.808878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452134, 0.365334, 0.813699,
		-0.840439, 0.131036, -0.525825,
		-0.298726, -0.921608, 0.247795,
		14.962834, 16.390493, 23.883217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474644, 17.104919, 24.053556>,  <15.171943, 17.035618, 23.709761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474644, 17.104919, 24.053556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.548331, 16.724771, 24.153845>,  <14.592544, 16.496683, 24.214018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.548331, 16.724771, 24.153845>,  <14.474644, 17.104919, 24.053556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548331, 16.724771, 24.153845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214496, 0.210068, 0.953867,
		-0.959195, -0.229500, -0.165152,
		0.184220, -0.950369, 0.250723,
		14.603597, 16.439661, 24.229061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881120, 16.772827, 24.467506>,  <14.474644, 17.104919, 24.053556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881120, 16.772827, 24.467506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.205198, 16.553902, 24.551441>,  <14.399645, 16.422546, 24.601801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.205198, 16.553902, 24.551441>,  <13.881120, 16.772827, 24.467506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205198, 16.553902, 24.551441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241022, 0.015255, 0.970400,
		-0.534314, -0.836789, -0.119555,
		0.810196, -0.547313, 0.209836,
		14.448257, 16.389708, 24.614391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706291, 16.367054, 25.061880>,  <13.881120, 16.772827, 24.467506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706291, 16.367054, 25.061880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.104895, 16.347137, 25.035067>,  <14.344056, 16.335188, 25.018978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.104895, 16.347137, 25.035067>,  <13.706291, 16.367054, 25.061880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.104895, 16.347137, 25.035067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066491, -0.012453, 0.997709,
		-0.050520, -0.998681, -0.009099,
		0.996507, -0.049800, -0.067032,
		14.403847, 16.332199, 25.014957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849123, 15.797709, 25.338631>,  <13.706291, 16.367054, 25.061880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849123, 15.797709, 25.338631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.156679, 16.052441, 25.361462>,  <14.341213, 16.205280, 25.375160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.156679, 16.052441, 25.361462>,  <13.849123, 15.797709, 25.338631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156679, 16.052441, 25.361462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088269, -0.194139, 0.976995,
		0.633259, -0.746163, -0.205484,
		0.768890, 0.636828, 0.057077,
		14.387346, 16.243488, 25.378584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346982, 15.357478, 25.619789>,  <13.849123, 15.797709, 25.338631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346982, 15.357478, 25.619789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.452700, 15.735464, 25.696928>,  <14.516130, 15.962255, 25.743212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.452700, 15.735464, 25.696928>,  <14.346982, 15.357478, 25.619789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452700, 15.735464, 25.696928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325147, -0.275557, 0.904626,
		0.907980, -0.176383, -0.380080,
		0.264294, 0.944964, 0.192850,
		14.531988, 16.018953, 25.754784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102912, 15.476024, 25.672770>,  <14.346982, 15.357478, 25.619789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102912, 15.476024, 25.672770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.896503, 15.739205, 25.892159>,  <14.772658, 15.897114, 26.023792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.896503, 15.739205, 25.892159>,  <15.102912, 15.476024, 25.672770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896503, 15.739205, 25.892159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495820, -0.292700, 0.817612,
		0.698488, 0.693847, -0.175188,
		-0.516020, 0.657954, 0.548471,
		14.741697, 15.936591, 26.056700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741690, 15.845320, 25.797001>,  <15.102912, 15.476024, 25.672770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741690, 15.845320, 25.797001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119097, 15.741594, 25.714510>,  <16.345541, 15.679359, 25.665014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119097, 15.741594, 25.714510>,  <15.741690, 15.845320, 25.797001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119097, 15.741594, 25.714510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330035, -0.790385, -0.516109,
		-0.029166, 0.555021, -0.831325,
		0.943518, -0.259313, -0.206228,
		16.402153, 15.663800, 25.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<6.847936, 15.728992, 24.455555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.198135, 15.561753, 24.552462>,  <7.408256, 15.461410, 24.610605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.198135, 15.561753, 24.552462>,  <6.847936, 15.728992, 24.455555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.198135, 15.561753, 24.552462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330094, 0.151321, -0.931740,
		0.352899, 0.895709, 0.270494,
		0.875500, -0.418099, 0.242268,
		7.460785, 15.436324, 24.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.330909, 16.215235, 24.213413>,  <6.847936, 15.728992, 24.455555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.330909, 16.215235, 24.213413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.509791, 15.860618, 24.260822>,  <7.617121, 15.647847, 24.289268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.509791, 15.860618, 24.260822>,  <7.330909, 16.215235, 24.213413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.509791, 15.860618, 24.260822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432360, 0.098268, -0.896330,
		0.782989, 0.452088, 0.427252,
		0.447205, -0.886544, 0.118522,
		7.643953, 15.594654, 24.296379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.955280, 16.377312, 24.119432>,  <7.330909, 16.215235, 24.213413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.955280, 16.377312, 24.119432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.976379, 15.981286, 24.067295>,  <7.989038, 15.743670, 24.036013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.976379, 15.981286, 24.067295>,  <7.955280, 16.377312, 24.119432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.976379, 15.981286, 24.067295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440796, 0.140203, -0.886590,
		0.896056, -0.010689, 0.443812,
		0.052747, -0.990065, -0.130341,
		7.992203, 15.684266, 24.028193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.622053, 16.079144, 24.116100>,  <7.955280, 16.377312, 24.119432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.622053, 16.079144, 24.116100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.405536, 15.822351, 23.898895>,  <8.275625, 15.668275, 23.768572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.405536, 15.822351, 23.898895>,  <8.622053, 16.079144, 24.116100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.405536, 15.822351, 23.898895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669008, 0.062372, -0.740633,
		0.509341, -0.764180, 0.395728,
		-0.541295, -0.641981, -0.543011,
		8.243147, 15.629756, 23.735992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.068709, 15.635698, 23.787601>,  <8.622053, 16.079144, 24.116100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.068709, 15.635698, 23.787601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.750628, 15.587418, 23.549919>,  <8.559778, 15.558449, 23.407310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.750628, 15.587418, 23.549919>,  <9.068709, 15.635698, 23.787601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.750628, 15.587418, 23.549919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603116, -0.056508, -0.795649,
		0.062461, -0.991079, 0.117734,
		-0.795204, -0.120704, -0.594206,
		8.512066, 15.551207, 23.371656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.307856, 15.188531, 23.279177>,  <9.068709, 15.635698, 23.787601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.307856, 15.188531, 23.279177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.963076, 15.333055, 23.136911>,  <8.756207, 15.419770, 23.051552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.963076, 15.333055, 23.136911>,  <9.307856, 15.188531, 23.279177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.963076, 15.333055, 23.136911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381098, -0.000928, -0.924534,
		-0.334375, -0.932445, -0.136895,
		-0.861950, 0.361311, -0.355663,
		8.704491, 15.441449, 23.030212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.155372, 14.857562, 22.699907>,  <9.307856, 15.188531, 23.279177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.155372, 14.857562, 22.699907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.909738, 15.168440, 22.644958>,  <8.762358, 15.354966, 22.611990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.909738, 15.168440, 22.644958>,  <9.155372, 14.857562, 22.699907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.909738, 15.168440, 22.644958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207790, -0.008706, -0.978135,
		-0.761396, -0.629201, -0.156147,
		-0.614084, 0.777194, -0.137370,
		8.725513, 15.401598, 22.603748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965717, 14.708505, 22.124844>,  <9.155372, 14.857562, 22.699907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965717, 14.708505, 22.124844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.853578, 15.091703, 22.148991>,  <8.786293, 15.321623, 22.163479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.853578, 15.091703, 22.148991>,  <8.965717, 14.708505, 22.124844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.853578, 15.091703, 22.148991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007886, 0.060590, -0.998131,
		-0.959865, -0.280303, -0.009432,
		-0.280350, 0.957997, 0.060369,
		8.769472, 15.379103, 22.167101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.605686, 14.725030, 21.533655>,  <8.965717, 14.708505, 22.124844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.605686, 14.725030, 21.533655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.671529, 15.107925, 21.628815>,  <8.711035, 15.337663, 21.685911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.671529, 15.107925, 21.628815>,  <8.605686, 14.725030, 21.533655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.671529, 15.107925, 21.628815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209057, 0.201852, -0.956844,
		-0.963950, 0.207238, -0.166891,
		0.164608, 0.957240, 0.237900,
		8.720911, 15.395098, 21.700184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.254096, 15.217724, 21.057402>,  <8.605686, 14.725030, 21.533655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.254096, 15.217724, 21.057402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.564127, 15.408339, 21.223373>,  <8.750146, 15.522708, 21.322956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.564127, 15.408339, 21.223373>,  <8.254096, 15.217724, 21.057402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.564127, 15.408339, 21.223373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293136, 0.310552, -0.904228,
		-0.559756, 0.822478, 0.101012,
		0.775077, 0.476537, 0.414931,
		8.796650, 15.551300, 21.347853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.189795, 15.860738, 20.713327>,  <8.254096, 15.217724, 21.057402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.189795, 15.860738, 20.713327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.566906, 15.822934, 20.841228>,  <8.793172, 15.800252, 20.917969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.566906, 15.822934, 20.841228>,  <8.189795, 15.860738, 20.713327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.566906, 15.822934, 20.841228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329542, 0.410053, -0.850446,
		-0.050739, 0.907152, 0.417733,
		0.942776, -0.094510, 0.319751,
		8.849739, 15.794581, 20.937153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.562462, 16.537155, 20.425667>,  <8.189795, 15.860738, 20.713327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.562462, 16.537155, 20.425667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.862302, 16.287571, 20.514006>,  <9.042206, 16.137821, 20.567009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.862302, 16.287571, 20.514006>,  <8.562462, 16.537155, 20.425667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.862302, 16.287571, 20.514006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496913, 0.310098, -0.810504,
		0.437237, 0.717297, 0.542503,
		0.749601, -0.623959, 0.220848,
		9.087182, 16.100384, 20.580259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.242515, 16.947203, 20.329622>,  <8.562462, 16.537155, 20.425667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.242515, 16.947203, 20.329622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.349617, 16.561811, 20.328049>,  <9.413878, 16.330576, 20.327105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.349617, 16.561811, 20.328049>,  <9.242515, 16.947203, 20.329622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.349617, 16.561811, 20.328049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535361, 0.152171, -0.830802,
		0.801059, 0.220346, 0.556554,
		0.267755, -0.963479, -0.003933,
		9.429943, 16.272768, 20.326868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.978913, 16.920406, 20.168474>,  <9.242515, 16.947203, 20.329622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.978913, 16.920406, 20.168474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.817229, 16.573315, 20.052778>,  <9.720219, 16.365059, 19.983360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.817229, 16.573315, 20.052778>,  <9.978913, 16.920406, 20.168474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.817229, 16.573315, 20.052778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415201, 0.107697, -0.903333,
		0.814999, -0.485228, 0.316750,
		-0.404209, -0.867730, -0.289240,
		9.695967, 16.312996, 19.966007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.727668, 16.823170, 20.247541>,  <9.978913, 16.920406, 20.168474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.727668, 16.823170, 20.247541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.943893, 17.155985, 20.297354>,  <11.073628, 17.355673, 20.327242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.943893, 17.155985, 20.297354>,  <10.727668, 16.823170, 20.247541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.943893, 17.155985, 20.297354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344253, 0.083695, 0.935139,
		0.767646, -0.548372, 0.331673,
		0.540563, 0.832036, 0.124530,
		11.106063, 17.405596, 20.334713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085817, 16.794611, 20.883646>,  <10.727668, 16.823170, 20.247541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085817, 16.794611, 20.883646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.075943, 17.188183, 20.812914>,  <11.070019, 17.424326, 20.770475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.075943, 17.188183, 20.812914>,  <11.085817, 16.794611, 20.883646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.075943, 17.188183, 20.812914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345141, 0.157620, 0.925221,
		0.938226, 0.083871, 0.335704,
		-0.024686, 0.983932, -0.176831,
		11.068538, 17.483362, 20.759865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.419623, 17.107977, 21.521950>,  <11.085817, 16.794611, 20.883646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.419623, 17.107977, 21.521950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.243415, 17.429989, 21.363020>,  <11.137690, 17.623196, 21.267662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.243415, 17.429989, 21.363020>,  <11.419623, 17.107977, 21.521950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.243415, 17.429989, 21.363020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102285, 0.394694, 0.913102,
		0.891897, 0.442881, -0.091529,
		-0.440521, 0.805030, -0.397326,
		11.111259, 17.671497, 21.243822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.737737, 17.602449, 21.810219>,  <11.419623, 17.107977, 21.521950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.737737, 17.602449, 21.810219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.378726, 17.732597, 21.691168>,  <11.163320, 17.810686, 21.619738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.378726, 17.732597, 21.691168>,  <11.737737, 17.602449, 21.810219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378726, 17.732597, 21.691168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153210, 0.402802, 0.902373,
		0.413489, 0.855503, -0.311676,
		-0.897527, 0.325369, -0.297625,
		11.109468, 17.830208, 21.601881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652894, 18.173681, 22.152048>,  <11.737737, 17.602449, 21.810219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652894, 18.173681, 22.152048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.280511, 18.092310, 22.030764>,  <11.057081, 18.043488, 21.957993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.280511, 18.092310, 22.030764>,  <11.652894, 18.173681, 22.152048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280511, 18.092310, 22.030764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355086, 0.310981, 0.881592,
		-0.085049, 0.928390, -0.361744,
		-0.930957, -0.203429, -0.303210,
		11.001224, 18.031281, 21.939800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.215516, 18.719292, 22.306223>,  <11.652894, 18.173681, 22.152048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.215516, 18.719292, 22.306223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.969978, 18.403677, 22.296307>,  <10.822656, 18.214308, 22.290358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.969978, 18.403677, 22.296307>,  <11.215516, 18.719292, 22.306223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969978, 18.403677, 22.296307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332878, 0.230238, 0.914430,
		-0.715813, 0.569569, -0.403984,
		-0.613844, -0.789038, -0.024790,
		10.785825, 18.166965, 22.288870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618461, 18.896544, 22.694639>,  <11.215516, 18.719292, 22.306223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618461, 18.896544, 22.694639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574781, 18.499031, 22.703373>,  <10.548573, 18.260525, 22.708612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574781, 18.499031, 22.703373>,  <10.618461, 18.896544, 22.694639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574781, 18.499031, 22.703373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330504, 0.057012, 0.942081,
		-0.937466, 0.095658, -0.334674,
		-0.109198, -0.993780, 0.021832,
		10.542022, 18.200897, 22.709923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.884600, 18.706320, 22.883066>,  <10.618461, 18.896544, 22.694639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.884600, 18.706320, 22.883066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.063479, 18.362345, 22.981472>,  <10.170807, 18.155960, 23.040516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.063479, 18.362345, 22.981472>,  <9.884600, 18.706320, 22.883066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.063479, 18.362345, 22.981472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546266, -0.044795, 0.836413,
		-0.708242, -0.508431, -0.489787,
		0.447198, -0.859937, 0.246013,
		10.197639, 18.104364, 23.055275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.401423, 18.340555, 23.178925>,  <9.884600, 18.706320, 22.883066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.401423, 18.340555, 23.178925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.737159, 18.151714, 23.286724>,  <9.938601, 18.038410, 23.351404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.737159, 18.151714, 23.286724>,  <9.401423, 18.340555, 23.178925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737159, 18.151714, 23.286724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423427, -0.256880, 0.868747,
		-0.340913, -0.843284, -0.415512,
		0.839337, -0.472107, 0.269496,
		9.988960, 18.010084, 23.367573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.187395, 17.761873, 23.653917>,  <9.401423, 18.340555, 23.178925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.187395, 17.761873, 23.653917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.576813, 17.796995, 23.738300>,  <9.810463, 17.818068, 23.788931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.576813, 17.796995, 23.738300>,  <9.187395, 17.761873, 23.653917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.576813, 17.796995, 23.738300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200213, -0.117162, 0.972722,
		0.110126, -0.989224, -0.096483,
		0.973543, 0.087805, 0.210958,
		9.868876, 17.823338, 23.801588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.297488, 17.189831, 23.965990>,  <9.187395, 17.761873, 23.653917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.297488, 17.189831, 23.965990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.613674, 17.407532, 24.078384>,  <9.803386, 17.538153, 24.145821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.613674, 17.407532, 24.078384>,  <9.297488, 17.189831, 23.965990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.613674, 17.407532, 24.078384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161328, -0.257550, 0.952702,
		0.590880, -0.798409, -0.115780,
		0.790465, 0.544254, 0.280987,
		9.850814, 17.570808, 24.162680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.680185, 16.729542, 24.407877>,  <9.297488, 17.189831, 23.965990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.680185, 16.729542, 24.407877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.781968, 17.108685, 24.484629>,  <9.843038, 17.336170, 24.530680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.781968, 17.108685, 24.484629>,  <9.680185, 16.729542, 24.407877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.781968, 17.108685, 24.484629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174754, -0.150076, 0.973107,
		0.951164, -0.281144, 0.127454,
		0.254456, 0.947858, 0.191878,
		9.858305, 17.393042, 24.542192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.053506, 16.669615, 24.956642>,  <9.680185, 16.729542, 24.407877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.053506, 16.669615, 24.956642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.946479, 17.055010, 24.960600>,  <9.882263, 17.286247, 24.962975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.946479, 17.055010, 24.960600>,  <10.053506, 16.669615, 24.956642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946479, 17.055010, 24.960600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338622, -0.103643, 0.935197,
		0.902077, 0.246877, 0.353990,
		-0.267567, 0.963489, 0.009896,
		9.866209, 17.344057, 24.963568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.272222, 16.922636, 25.532352>,  <10.053506, 16.669615, 24.956642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.272222, 16.922636, 25.532352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.976645, 17.174025, 25.435198>,  <9.799300, 17.324858, 25.376905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.976645, 17.174025, 25.435198>,  <10.272222, 16.922636, 25.532352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976645, 17.174025, 25.435198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217212, 0.119035, 0.968839,
		0.637798, 0.768672, 0.048552,
		-0.738940, 0.628470, -0.242885,
		9.754964, 17.362566, 25.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794290, 17.553085, 25.666254>,  <10.272222, 16.922636, 25.532352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794290, 17.553085, 25.666254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.103287, 17.711176, 25.865070>,  <11.288685, 17.806030, 25.984360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.103287, 17.711176, 25.865070>,  <10.794290, 17.553085, 25.666254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.103287, 17.711176, 25.865070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400377, 0.304407, -0.864312,
		-0.492901, 0.866679, 0.076913,
		0.772494, 0.395226, 0.497041,
		11.335035, 17.829744, 26.014183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.859499, 18.186359, 25.388512>,  <10.794290, 17.553085, 25.666254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.859499, 18.186359, 25.388512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.211874, 18.094507, 25.554026>,  <11.423299, 18.039396, 25.653334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.211874, 18.094507, 25.554026>,  <10.859499, 18.186359, 25.388512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.211874, 18.094507, 25.554026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472951, 0.457388, -0.753069,
		-0.016332, 0.859107, 0.511535,
		0.880937, -0.229632, 0.413786,
		11.476155, 18.025618, 25.678162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264870, 18.734407, 25.144882>,  <10.859499, 18.186359, 25.388512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264870, 18.734407, 25.144882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542873, 18.474752, 25.268549>,  <11.709676, 18.318960, 25.342749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542873, 18.474752, 25.268549>,  <11.264870, 18.734407, 25.144882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542873, 18.474752, 25.268549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537902, 0.184105, -0.822658,
		0.477098, 0.738057, 0.477127,
		0.695010, -0.649136, 0.309166,
		11.751376, 18.280012, 25.361300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.935243, 19.087847, 25.222525>,  <11.264870, 18.734407, 25.144882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.935243, 19.087847, 25.222525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.985326, 18.698856, 25.143927>,  <12.015375, 18.465462, 25.096767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.985326, 18.698856, 25.143927>,  <11.935243, 19.087847, 25.222525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985326, 18.698856, 25.143927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400177, 0.230732, -0.886917,
		0.907845, 0.032415, 0.418052,
		0.125207, -0.972477, -0.196497,
		12.022888, 18.407114, 25.084978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.717306, 18.955177, 25.133293>,  <11.935243, 19.087847, 25.222525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.717306, 18.955177, 25.133293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.508400, 18.677761, 24.934803>,  <12.383057, 18.511311, 24.815710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.508400, 18.677761, 24.934803>,  <12.717306, 18.955177, 25.133293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508400, 18.677761, 24.934803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564055, 0.155483, -0.810967,
		0.639594, -0.703437, 0.309993,
		-0.522265, -0.693543, -0.496223,
		12.351721, 18.469698, 24.785936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246651, 18.509844, 24.926914>,  <12.717306, 18.955177, 25.133293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246651, 18.509844, 24.926914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.933314, 18.398481, 24.704611>,  <12.745313, 18.331663, 24.571228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.933314, 18.398481, 24.704611>,  <13.246651, 18.509844, 24.926914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933314, 18.398481, 24.704611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602304, -0.118963, -0.789353,
		0.153646, -0.953067, 0.260874,
		-0.783341, -0.278407, -0.555758,
		12.698312, 18.314960, 24.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559730, 17.979811, 24.555326>,  <13.246651, 18.509844, 24.926914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559730, 17.979811, 24.555326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.237986, 18.125124, 24.367271>,  <13.044939, 18.212313, 24.254438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.237986, 18.125124, 24.367271>,  <13.559730, 17.979811, 24.555326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237986, 18.125124, 24.367271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520235, 0.048429, -0.852649,
		-0.286986, -0.930419, -0.227947,
		-0.804360, 0.363284, -0.470138,
		12.996677, 18.234110, 24.226231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704210, 17.793205, 23.916836>,  <13.559730, 17.979811, 24.555326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704210, 17.793205, 23.916836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.389371, 18.021862, 23.824142>,  <13.200467, 18.159056, 23.768526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.389371, 18.021862, 23.824142>,  <13.704210, 17.793205, 23.916836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389371, 18.021862, 23.824142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409853, 0.203916, -0.889066,
		-0.460973, -0.794760, -0.394791,
		-0.787099, 0.571642, -0.231735,
		13.153241, 18.193354, 23.754622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.376530, 17.612379, 23.352333>,  <13.704210, 17.793205, 23.916836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.376530, 17.612379, 23.352333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.274127, 17.998405, 23.374641>,  <13.212686, 18.230021, 23.388025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.274127, 17.998405, 23.374641>,  <13.376530, 17.612379, 23.352333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274127, 17.998405, 23.374641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204104, 0.110354, -0.972709,
		-0.944882, -0.237637, -0.225225,
		-0.256007, 0.965065, 0.055769,
		13.197325, 18.287926, 23.391373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965015, 17.759714, 22.744457>,  <13.376530, 17.612379, 23.352333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965015, 17.759714, 22.744457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.055987, 18.126574, 22.875368>,  <13.110571, 18.346689, 22.953915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.055987, 18.126574, 22.875368>,  <12.965015, 17.759714, 22.744457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055987, 18.126574, 22.875368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051532, 0.346950, -0.936467,
		-0.972430, 0.196115, 0.126170,
		0.227430, 0.917150, 0.327278,
		13.124216, 18.401718, 22.973551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770810, 18.173433, 22.263874>,  <12.965015, 17.759714, 22.744457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770810, 18.173433, 22.263874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995589, 18.442486, 22.456448>,  <13.130457, 18.603918, 22.571991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995589, 18.442486, 22.456448>,  <12.770810, 18.173433, 22.263874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995589, 18.442486, 22.456448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211060, 0.446161, -0.869709,
		-0.799792, 0.590344, 0.108754,
		0.561949, 0.672633, 0.481434,
		13.164174, 18.644276, 22.600878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.652719, 18.809332, 22.041164>,  <12.770810, 18.173433, 22.263874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.652719, 18.809332, 22.041164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.025017, 18.830694, 22.185865>,  <13.248395, 18.843512, 22.272686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.025017, 18.830694, 22.185865>,  <12.652719, 18.809332, 22.041164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.025017, 18.830694, 22.185865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339184, 0.243590, -0.908635,
		-0.136645, 0.968407, 0.208606,
		0.930743, 0.053405, 0.361753,
		13.304239, 18.846716, 22.294392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879596, 19.397949, 21.809458>,  <12.652719, 18.809332, 22.041164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879596, 19.397949, 21.809458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.200026, 19.173277, 21.892206>,  <13.392283, 19.038473, 21.941854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.200026, 19.173277, 21.892206>,  <12.879596, 19.397949, 21.809458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200026, 19.173277, 21.892206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333489, 0.131814, -0.933494,
		0.497055, 0.816788, 0.292906,
		0.801075, -0.561679, 0.206871,
		13.440348, 19.004774, 21.954268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301628, 19.718285, 21.405174>,  <12.879596, 19.397949, 21.809458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301628, 19.718285, 21.405174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.523113, 19.392538, 21.474701>,  <13.656005, 19.197090, 21.516417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.523113, 19.392538, 21.474701>,  <13.301628, 19.718285, 21.405174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523113, 19.392538, 21.474701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468743, 0.132303, -0.873371,
		0.688245, 0.565073, 0.454985,
		0.553714, -0.814364, 0.173817,
		13.689227, 19.148230, 21.526846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.633558, 20.288609, 6.265420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.572000, 19.991613, 6.004643>,  <7.535065, 19.813416, 5.848177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.572000, 19.991613, 6.004643>,  <7.633558, 20.288609, 6.265420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.572000, 19.991613, 6.004643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860002, 0.425537, -0.281629,
		0.486532, 0.517331, -0.704028,
		-0.153894, -0.742487, -0.651943,
		7.525832, 19.768867, 5.809061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942160, 19.530279, 6.264041>,  <7.633558, 20.288609, 6.265420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942160, 19.530279, 6.264041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.006161, 19.603437, 6.652051>,  <8.044561, 19.647333, 6.884857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.006161, 19.603437, 6.652051>,  <7.942160, 19.530279, 6.264041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.006161, 19.603437, 6.652051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855870, -0.515315, -0.044011,
		0.491819, 0.837256, -0.238989,
		0.160003, 0.182898, 0.970024,
		8.054162, 19.658306, 6.943058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475132, 19.095140, 6.370731>,  <7.942160, 19.530279, 6.264041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475132, 19.095140, 6.370731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459726, 19.263126, 6.733421>,  <8.450483, 19.363918, 6.951035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459726, 19.263126, 6.733421>,  <8.475132, 19.095140, 6.370731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.459726, 19.263126, 6.733421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643930, -0.683440, 0.343896,
		0.764115, 0.597111, -0.244105,
		-0.038514, 0.419963, 0.906724,
		8.448173, 19.389114, 7.005438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.142591, 19.223053, 6.652729>,  <8.475132, 19.095140, 6.370731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.142591, 19.223053, 6.652729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923283, 19.115116, 6.969357>,  <8.791698, 19.050354, 7.159335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923283, 19.115116, 6.969357>,  <9.142591, 19.223053, 6.652729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923283, 19.115116, 6.969357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666676, -0.712485, 0.218881,
		0.504919, 0.647727, 0.570532,
		-0.548270, -0.269843, 0.791571,
		8.758801, 19.034163, 7.206829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.723210, 18.942793, 6.540127>,  <9.142591, 19.223053, 6.652729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.723210, 18.942793, 6.540127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.100184, 18.874458, 6.655109>,  <10.326369, 18.833458, 6.724098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.100184, 18.874458, 6.655109>,  <9.723210, 18.942793, 6.540127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100184, 18.874458, 6.655109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313723, -0.154208, 0.936909,
		-0.115719, -0.973159, -0.198923,
		0.942437, -0.170825, 0.287458,
		10.382915, 18.823208, 6.741345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.859867, 18.217337, 6.856679>,  <9.723210, 18.942793, 6.540127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.859867, 18.217337, 6.856679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.116623, 18.491549, 6.994098>,  <10.270677, 18.656076, 7.076549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.116623, 18.491549, 6.994098>,  <9.859867, 18.217337, 6.856679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.116623, 18.491549, 6.994098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322545, -0.165075, 0.932049,
		0.695660, -0.709081, 0.115155,
		0.641889, 0.685532, 0.343547,
		10.309190, 18.697208, 7.097162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.108856, 17.929485, 7.455073>,  <9.859867, 18.217337, 6.856679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.108856, 17.929485, 7.455073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158252, 18.325756, 7.478073>,  <10.187889, 18.563519, 7.491872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158252, 18.325756, 7.478073>,  <10.108856, 17.929485, 7.455073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.158252, 18.325756, 7.478073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376739, -0.006800, 0.926295,
		0.918051, -0.136048, 0.372387,
		0.123488, 0.990679, 0.057498,
		10.195298, 18.622959, 7.495322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.228611, 18.131840, 8.111917>,  <10.108856, 17.929485, 7.455073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.228611, 18.131840, 8.111917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.059402, 18.459196, 7.956334>,  <9.957876, 18.655609, 7.862984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.059402, 18.459196, 7.956334>,  <10.228611, 18.131840, 8.111917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.059402, 18.459196, 7.956334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543567, 0.114247, 0.831554,
		0.724973, 0.563192, 0.396521,
		-0.423023, 0.818390, -0.388959,
		9.932494, 18.704714, 7.839646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170575, 18.628922, 8.668089>,  <10.228611, 18.131840, 8.111917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170575, 18.628922, 8.668089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908157, 18.744152, 8.389057>,  <9.750707, 18.813290, 8.221638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908157, 18.744152, 8.389057>,  <10.170575, 18.628922, 8.668089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908157, 18.744152, 8.389057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713395, 0.064959, 0.697745,
		0.246318, 0.955402, 0.162896,
		-0.656045, 0.288076, -0.697579,
		9.711344, 18.830574, 8.179784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.321259, 18.646549, 9.313350>,  <10.170575, 18.628922, 8.668089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.321259, 18.646549, 9.313350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.394690, 19.037554, 9.271841>,  <10.438747, 19.272158, 9.246936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.394690, 19.037554, 9.271841>,  <10.321259, 18.646549, 9.313350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.394690, 19.037554, 9.271841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640451, 0.199020, 0.741764,
		0.745737, -0.069708, 0.662584,
		0.183574, 0.977513, -0.103772,
		10.449761, 19.330809, 9.240709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.564848, 18.963284, 9.978518>,  <10.321259, 18.646549, 9.313350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.564848, 18.963284, 9.978518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.367781, 19.227070, 9.751402>,  <10.249540, 19.385342, 9.615132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.367781, 19.227070, 9.751402>,  <10.564848, 18.963284, 9.978518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.367781, 19.227070, 9.751402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715530, 0.064359, 0.695612,
		0.495274, 0.748976, 0.440158,
		-0.492668, 0.659464, -0.567790,
		10.219980, 19.424910, 9.581065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.379962, 19.515965, 10.438762>,  <10.564848, 18.963284, 9.978518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.379962, 19.515965, 10.438762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.137972, 19.523386, 10.120351>,  <9.992778, 19.527838, 9.929304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.137972, 19.523386, 10.120351>,  <10.379962, 19.515965, 10.438762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.137972, 19.523386, 10.120351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796180, -0.026711, 0.604470,
		-0.010049, 0.999471, 0.030930,
		-0.604976, 0.018552, -0.796027,
		9.956479, 19.528952, 9.881542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.902296, 20.022665, 10.551847>,  <10.379962, 19.515965, 10.438762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.902296, 20.022665, 10.551847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686824, 19.798416, 10.300284>,  <9.557540, 19.663868, 10.149346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686824, 19.798416, 10.300284>,  <9.902296, 20.022665, 10.551847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686824, 19.798416, 10.300284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826636, 0.207477, 0.523093,
		-0.162772, 0.801659, -0.575194,
		-0.538682, -0.560621, -0.628908,
		9.525219, 19.630230, 10.111612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.376947, 20.471838, 10.460566>,  <9.902296, 20.022665, 10.551847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.376947, 20.471838, 10.460566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.244177, 20.108408, 10.359119>,  <9.164515, 19.890350, 10.298252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.244177, 20.108408, 10.359119>,  <9.376947, 20.471838, 10.460566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.244177, 20.108408, 10.359119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880817, 0.202298, 0.428061,
		-0.337619, 0.365473, -0.867435,
		-0.331925, -0.908573, -0.253615,
		9.144599, 19.835836, 10.283035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.559963, 20.456533, 10.467022>,  <9.376947, 20.471838, 10.460566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.559963, 20.456533, 10.467022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.646448, 20.066156, 10.478285>,  <8.698339, 19.831930, 10.485043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.646448, 20.066156, 10.478285>,  <8.559963, 20.456533, 10.467022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.646448, 20.066156, 10.478285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791045, -0.158200, 0.590948,
		-0.572276, -0.150044, -0.806218,
		0.216212, -0.975940, 0.028157,
		8.711311, 19.773375, 10.486732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.897800, 20.130352, 10.472878>,  <8.559963, 20.456533, 10.467022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.897800, 20.130352, 10.472878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.134247, 19.817804, 10.552925>,  <8.276114, 19.630276, 10.600954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.134247, 19.817804, 10.552925>,  <7.897800, 20.130352, 10.472878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.134247, 19.817804, 10.552925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706657, -0.382082, 0.595524,
		-0.388878, -0.493417, -0.778019,
		0.591109, -0.781379, 0.200094,
		8.311582, 19.583395, 10.612961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.510411, 19.432636, 10.331932>,  <7.897800, 20.130352, 10.472878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.510411, 19.432636, 10.331932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802603, 19.343885, 10.590286>,  <7.977919, 19.290634, 10.745299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802603, 19.343885, 10.590286>,  <7.510411, 19.432636, 10.331932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802603, 19.343885, 10.590286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654365, -0.498080, 0.568966,
		0.195462, -0.838264, -0.509027,
		0.730480, -0.221878, 0.645887,
		8.021748, 19.277323, 10.784052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.373538, 18.806984, 10.502974>,  <7.510411, 19.432636, 10.331932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.373538, 18.806984, 10.502974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.602652, 18.918758, 10.811216>,  <7.740120, 18.985823, 10.996161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.602652, 18.918758, 10.811216>,  <7.373538, 18.806984, 10.502974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.602652, 18.918758, 10.811216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641737, -0.432029, 0.633659,
		0.509991, -0.857477, -0.068136,
		0.572785, 0.279435, 0.770606,
		7.774487, 19.002588, 11.042398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.329506, 18.259602, 10.816789>,  <7.373538, 18.806984, 10.502974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.329506, 18.259602, 10.816789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.448062, 18.528143, 11.088505>,  <7.519196, 18.689268, 11.251534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.448062, 18.528143, 11.088505>,  <7.329506, 18.259602, 10.816789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.448062, 18.528143, 11.088505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532011, -0.474626, 0.701209,
		0.793169, -0.569221, 0.216494,
		0.296389, 0.671355, 0.679291,
		7.536979, 18.729549, 11.292292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.527107, 17.904066, 11.394178>,  <7.329506, 18.259602, 10.816789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.527107, 17.904066, 11.394178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.441414, 18.269907, 11.531352>,  <7.389998, 18.489412, 11.613656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.441414, 18.269907, 11.531352>,  <7.527107, 17.904066, 11.394178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.441414, 18.269907, 11.531352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419443, -0.403207, 0.813321,
		0.882141, 0.030399, 0.470004,
		-0.214233, 0.914604, 0.342935,
		7.377144, 18.544289, 11.634233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.517282, 17.855946, 12.199770>,  <7.527107, 17.904066, 11.394178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.517282, 17.855946, 12.199770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.314412, 18.195585, 12.140703>,  <7.192690, 18.399368, 12.105264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.314412, 18.195585, 12.140703>,  <7.517282, 17.855946, 12.199770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.314412, 18.195585, 12.140703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543399, -0.182060, 0.819495,
		0.668948, 0.495869, 0.553735,
		-0.507175, 0.849099, -0.147666,
		7.162260, 18.450315, 12.096403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.548087, 18.269070, 12.787742>,  <7.517282, 17.855946, 12.199770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.548087, 18.269070, 12.787742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.206803, 18.376389, 12.608832>,  <7.002033, 18.440779, 12.501487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.206803, 18.376389, 12.608832>,  <7.548087, 18.269070, 12.787742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.206803, 18.376389, 12.608832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519611, -0.362989, 0.773462,
		0.045161, 0.892332, 0.449115,
		-0.853208, 0.268295, -0.447273,
		6.950841, 18.456877, 12.474650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.192409, 18.482098, 13.268154>,  <7.548087, 18.269070, 12.787742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.192409, 18.482098, 13.268154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.894932, 18.437782, 13.004443>,  <6.716445, 18.411194, 12.846216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.894932, 18.437782, 13.004443>,  <7.192409, 18.482098, 13.268154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.894932, 18.437782, 13.004443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535553, -0.491523, 0.686723,
		-0.400130, 0.863789, 0.306210,
		-0.743693, -0.110787, -0.659278,
		6.671824, 18.404547, 12.806660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.586274, 18.573376, 13.687001>,  <7.192409, 18.482098, 13.268154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.586274, 18.573376, 13.687001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.427103, 18.408611, 13.359103>,  <6.331600, 18.309752, 13.162364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.427103, 18.408611, 13.359103>,  <6.586274, 18.573376, 13.687001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.427103, 18.408611, 13.359103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588767, -0.570591, 0.572520,
		-0.703567, 0.710461, -0.015466,
		-0.397928, -0.411912, -0.819745,
		6.307724, 18.285038, 13.113180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.808081, 18.487579, 13.787791>,  <6.586274, 18.573376, 13.687001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.808081, 18.487579, 13.787791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.880871, 18.230686, 13.489954>,  <5.924546, 18.076550, 13.311252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.880871, 18.230686, 13.489954>,  <5.808081, 18.487579, 13.787791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.880871, 18.230686, 13.489954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675264, -0.632067, 0.380144,
		-0.714775, 0.433620, -0.548699,
		0.181977, -0.642234, -0.744594,
		5.935464, 18.038015, 13.266576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.128157, 18.275320, 13.545101>,  <5.808081, 18.487579, 13.787791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.128157, 18.275320, 13.545101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.401182, 18.002863, 13.439156>,  <5.564996, 17.839388, 13.375588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.401182, 18.002863, 13.439156>,  <5.128157, 18.275320, 13.545101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.401182, 18.002863, 13.439156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569142, -0.722767, 0.392028,
		-0.458462, -0.116838, -0.881000,
		0.682561, -0.681144, -0.264864,
		5.605950, 17.798519, 13.359696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.747792, 17.736876, 13.592332>,  <5.128157, 18.275320, 13.545101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.747792, 17.736876, 13.592332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.106143, 17.563478, 13.553364>,  <5.321153, 17.459440, 13.529983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.106143, 17.563478, 13.553364>,  <4.747792, 17.736876, 13.592332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.106143, 17.563478, 13.553364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380676, -0.861968, 0.334810,
		-0.229110, -0.262863, -0.937236,
		0.895876, -0.433491, -0.097420,
		5.374906, 17.433432, 13.524137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.700043, 17.122814, 13.167860>,  <4.747792, 17.736876, 13.592332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.700043, 17.122814, 13.167860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033857, 17.064817, 13.380473>,  <5.234146, 17.030020, 13.508040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.033857, 17.064817, 13.380473>,  <4.700043, 17.122814, 13.167860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.033857, 17.064817, 13.380473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391696, -0.834597, 0.387327,
		0.387457, -0.531437, -0.753294,
		0.834537, -0.144990, 0.531532,
		5.284218, 17.021320, 13.539933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.848923, 16.371893, 13.209036>,  <4.700043, 17.122814, 13.167860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.848923, 16.371893, 13.209036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.070238, 16.480486, 13.524039>,  <5.203026, 16.545643, 13.713041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.070238, 16.480486, 13.524039>,  <4.848923, 16.371893, 13.209036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.070238, 16.480486, 13.524039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244912, -0.850595, 0.465303,
		0.796173, -0.450316, -0.404133,
		0.553287, 0.271484, 0.787509,
		5.236224, 16.561932, 13.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.255120, 15.778233, 13.370624>,  <4.848923, 16.371893, 13.209036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.255120, 15.778233, 13.370624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238029, 15.991344, 13.708694>,  <5.227775, 16.119211, 13.911535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238029, 15.991344, 13.708694>,  <5.255120, 15.778233, 13.370624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.238029, 15.991344, 13.708694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084715, -0.844833, 0.528280,
		0.995489, -0.049028, 0.081232,
		-0.042727, 0.532779, 0.845175,
		5.225212, 16.151178, 13.962246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.696706, 15.478091, 13.898168>,  <5.255120, 15.778233, 13.370624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.696706, 15.478091, 13.898168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.435430, 15.700353, 14.103922>,  <5.278665, 15.833710, 14.227374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.435430, 15.700353, 14.103922>,  <5.696706, 15.478091, 13.898168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.435430, 15.700353, 14.103922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123016, -0.748179, 0.651993,
		0.747135, 0.362597, 0.557057,
		-0.653189, 0.555654, 0.514385,
		5.239473, 15.867049, 14.258238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.243203, 15.895188, 13.552711>,  <5.696706, 15.478091, 13.898168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.243203, 15.895188, 13.552711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405092, 15.756398, 13.214289>,  <6.502226, 15.673124, 13.011236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405092, 15.756398, 13.214289>,  <6.243203, 15.895188, 13.552711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405092, 15.756398, 13.214289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767771, 0.631507, 0.108289,
		0.496715, -0.693402, 0.521984,
		0.404725, -0.346975, -0.846053,
		6.526510, 15.652306, 12.960473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.979400, 15.831578, 13.710675>,  <6.243203, 15.895188, 13.552711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.979400, 15.831578, 13.710675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.919061, 15.854233, 13.315902>,  <6.882857, 15.867826, 13.079038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.919061, 15.854233, 13.315902>,  <6.979400, 15.831578, 13.710675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.919061, 15.854233, 13.315902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764790, 0.639267, -0.080210,
		0.626371, -0.766896, -0.139747,
		-0.150849, 0.056636, -0.986933,
		6.873806, 15.871223, 13.019822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.630309, 15.613183, 13.481348>,  <6.979400, 15.831578, 13.710675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.630309, 15.613183, 13.481348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450633, 15.798254, 13.175628>,  <7.342827, 15.909297, 12.992195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450633, 15.798254, 13.175628>,  <7.630309, 15.613183, 13.481348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450633, 15.798254, 13.175628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847450, 0.491562, -0.200486,
		0.282941, -0.737764, -0.612902,
		-0.449191, 0.462678, -0.764301,
		7.315876, 15.937057, 12.946338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.165818, 15.664533, 13.077599>,  <7.630309, 15.613183, 13.481348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.165818, 15.664533, 13.077599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.909077, 15.927703, 12.920037>,  <7.755033, 16.085606, 12.825500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.909077, 15.927703, 12.920037>,  <8.165818, 15.664533, 13.077599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.909077, 15.927703, 12.920037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765166, 0.583306, -0.272535,
		0.050459, -0.476328, -0.877818,
		-0.641853, 0.657925, -0.393903,
		7.716521, 16.125080, 12.801867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.354349, 15.747442, 12.357897>,  <8.165818, 15.664533, 13.077599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.354349, 15.747442, 12.357897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113968, 16.057463, 12.436028>,  <7.969739, 16.243475, 12.482905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113968, 16.057463, 12.436028>,  <8.354349, 15.747442, 12.357897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113968, 16.057463, 12.436028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644096, 0.614292, -0.455835,
		-0.473283, -0.148127, -0.868367,
		-0.600952, 0.775051, 0.195326,
		7.933682, 16.289978, 12.494625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.379554, 16.128895, 11.705724>,  <8.354349, 15.747442, 12.357897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.379554, 16.128895, 11.705724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.262253, 16.350842, 12.017140>,  <8.191873, 16.484009, 12.203990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.262253, 16.350842, 12.017140>,  <8.379554, 16.128895, 11.705724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.262253, 16.350842, 12.017140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726359, 0.658798, -0.195930,
		-0.621616, 0.508043, -0.596227,
		-0.293252, 0.554867, 0.778541,
		8.174277, 16.517302, 12.250703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.486448, 16.890013, 11.524886>,  <8.379554, 16.128895, 11.705724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.486448, 16.890013, 11.524886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449210, 16.920408, 11.921988>,  <8.426867, 16.938644, 12.160249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449210, 16.920408, 11.921988>,  <8.486448, 16.890013, 11.524886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.449210, 16.920408, 11.921988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785197, 0.618688, 0.026276,
		-0.612208, 0.781953, -0.117261,
		-0.093094, 0.075986, 0.992754,
		8.421282, 16.943205, 12.219813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.262750, 17.526861, 11.728639>,  <8.486448, 16.890013, 11.524886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.262750, 17.526861, 11.728639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.441363, 17.387079, 12.058121>,  <8.548532, 17.303211, 12.255810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.441363, 17.387079, 12.058121>,  <8.262750, 17.526861, 11.728639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.441363, 17.387079, 12.058121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593279, 0.804753, 0.019794,
		-0.669797, 0.479848, 0.566673,
		0.446534, -0.349453, 0.823705,
		8.575323, 17.282244, 12.305232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.471907, 18.069321, 12.183850>,  <8.262750, 17.526861, 11.728639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.471907, 18.069321, 12.183850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691941, 17.767702, 12.327416>,  <8.823962, 17.586731, 12.413556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691941, 17.767702, 12.327416>,  <8.471907, 18.069321, 12.183850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691941, 17.767702, 12.327416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801237, 0.597705, 0.027718,
		-0.235426, 0.272329, 0.932959,
		0.550086, -0.754046, 0.358915,
		8.856967, 17.541489, 12.435091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812047, 18.344412, 12.700807>,  <8.471907, 18.069321, 12.183850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812047, 18.344412, 12.700807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020185, 18.014997, 12.610451>,  <9.145068, 17.817348, 12.556237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020185, 18.014997, 12.610451>,  <8.812047, 18.344412, 12.700807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.020185, 18.014997, 12.610451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847146, 0.531148, 0.015002,
		0.107627, -0.199169, 0.974037,
		0.520346, -0.823537, -0.225891,
		9.176290, 17.767937, 12.542684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276890, 18.326822, 13.211870>,  <8.812047, 18.344412, 12.700807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276890, 18.326822, 13.211870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.431104, 18.107944, 12.914700>,  <9.523632, 17.976618, 12.736397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.431104, 18.107944, 12.914700>,  <9.276890, 18.326822, 13.211870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.431104, 18.107944, 12.914700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824738, 0.565398, 0.011553,
		0.413728, -0.617174, 0.669273,
		0.385536, -0.547194, -0.742927,
		9.546764, 17.943787, 12.691821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.963378, 18.442741, 13.315637>,  <9.276890, 18.326822, 13.211870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.963378, 18.442741, 13.315637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.956052, 18.291162, 12.945542>,  <9.951656, 18.200214, 12.723486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.956052, 18.291162, 12.945542>,  <9.963378, 18.442741, 13.315637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.956052, 18.291162, 12.945542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888845, 0.417583, -0.188625,
		0.457842, -0.825846, 0.329179,
		-0.018316, -0.378949, -0.925236,
		9.950557, 18.177479, 12.667972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.630481, 18.292543, 13.242541>,  <9.963378, 18.442741, 13.315637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.630481, 18.292543, 13.242541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.492047, 18.335438, 12.869720>,  <10.408987, 18.361174, 12.646027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.492047, 18.335438, 12.869720>,  <10.630481, 18.292543, 13.242541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.492047, 18.335438, 12.869720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791097, 0.567425, -0.228461,
		0.504371, -0.816412, -0.281212,
		-0.346085, 0.107237, -0.932055,
		10.388222, 18.367609, 12.590103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190961, 18.251759, 12.724451>,  <10.630481, 18.292543, 13.242541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190961, 18.251759, 12.724451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.881258, 18.422655, 12.537692>,  <10.695436, 18.525192, 12.425637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.881258, 18.422655, 12.537692>,  <11.190961, 18.251759, 12.724451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.881258, 18.422655, 12.537692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465728, 0.884165, 0.036750,
		0.428514, -0.188992, -0.883548,
		-0.774257, 0.427241, -0.466896,
		10.648981, 18.550827, 12.397623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.505389, 18.751028, 12.284966>,  <11.190961, 18.251759, 12.724451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.505389, 18.751028, 12.284966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.127538, 18.878254, 12.317245>,  <10.900826, 18.954590, 12.336612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.127538, 18.878254, 12.317245>,  <11.505389, 18.751028, 12.284966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.127538, 18.878254, 12.317245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299349, 0.936014, -0.185117,
		-0.134413, -0.150710, -0.979398,
		-0.944629, 0.318064, 0.080697,
		10.844149, 18.973673, 12.341454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.344081, 19.125074, 11.666047>,  <11.505389, 18.751028, 12.284966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.344081, 19.125074, 11.666047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.078553, 19.243856, 11.940612>,  <10.919236, 19.315126, 12.105350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.078553, 19.243856, 11.940612>,  <11.344081, 19.125074, 11.666047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.078553, 19.243856, 11.940612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186070, 0.954511, -0.232996,
		-0.724377, -0.026947, -0.688877,
		-0.663819, 0.296956, 0.686412,
		10.879408, 19.332943, 12.146535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050722, 19.707115, 11.384394>,  <11.344081, 19.125074, 11.666047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050722, 19.707115, 11.384394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.931504, 19.745495, 11.764280>,  <10.859974, 19.768522, 11.992212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.931504, 19.745495, 11.764280>,  <11.050722, 19.707115, 11.384394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.931504, 19.745495, 11.764280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055252, 0.991533, -0.117512,
		-0.952952, -0.087497, -0.290219,
		-0.298044, 0.095948, 0.949718,
		10.842091, 19.774279, 12.049195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.492352, 20.043821, 11.326375>,  <11.050722, 19.707115, 11.384394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.492352, 20.043821, 11.326375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.583569, 20.121475, 11.708015>,  <10.638298, 20.168068, 11.936999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.583569, 20.121475, 11.708015>,  <10.492352, 20.043821, 11.326375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583569, 20.121475, 11.708015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129724, 0.977242, -0.167838,
		-0.964971, -0.085496, 0.248035,
		0.228041, 0.194135, 0.954101,
		10.651980, 20.179716, 11.994246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.015426, 20.499508, 11.482196>,  <10.492352, 20.043821, 11.326375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.015426, 20.499508, 11.482196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.299269, 20.558287, 11.757837>,  <10.469574, 20.593554, 11.923223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.299269, 20.558287, 11.757837>,  <10.015426, 20.499508, 11.482196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.299269, 20.558287, 11.757837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158209, 0.986267, -0.047399,
		-0.686606, -0.075388, 0.723110,
		0.709607, 0.146947, 0.689104,
		10.512151, 20.602371, 11.964568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.811875, 20.974655, 11.913683>,  <10.015426, 20.499508, 11.482196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.811875, 20.974655, 11.913683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.207504, 20.988203, 11.971076>,  <10.444881, 20.996332, 12.005512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.207504, 20.988203, 11.971076>,  <9.811875, 20.974655, 11.913683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.207504, 20.988203, 11.971076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016159, 0.992295, -0.122839,
		-0.146537, 0.119178, 0.982000,
		0.989073, 0.033869, 0.143482,
		10.504227, 20.998363, 12.014121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981422, 21.515196, 12.418621>,  <9.811875, 20.974655, 11.913683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981422, 21.515196, 12.418621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.297776, 21.440447, 12.185528>,  <10.487589, 21.395597, 12.045671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.297776, 21.440447, 12.185528>,  <9.981422, 21.515196, 12.418621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297776, 21.440447, 12.185528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029108, 0.939670, -0.340841,
		0.611272, 0.286529, 0.737732,
		0.790885, -0.186872, -0.582734,
		10.535042, 21.384386, 12.010708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.903862, 16.904949, 27.628998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706110, 16.684633, 27.360008>,  <14.587459, 16.552444, 27.198614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706110, 16.684633, 27.360008>,  <14.903862, 16.904949, 27.628998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706110, 16.684633, 27.360008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713597, -0.184590, 0.675800,
		-0.496356, 0.813976, -0.301785,
		-0.494379, -0.550790, -0.672473,
		14.557796, 16.519396, 27.158266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219710, 17.054871, 27.701490>,  <14.903862, 16.904949, 27.628998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.219710, 17.054871, 27.701490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.226800, 16.694624, 27.527790>,  <14.231053, 16.478476, 27.423571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.226800, 16.694624, 27.527790>,  <14.219710, 17.054871, 27.701490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226800, 16.694624, 27.527790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706882, -0.318447, 0.631594,
		-0.707110, 0.295770, -0.642274,
		0.017724, -0.900617, -0.434251,
		14.232117, 16.424438, 27.397514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459893, 16.816879, 27.594807>,  <14.219710, 17.054871, 27.701490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459893, 16.816879, 27.594807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717778, 16.511513, 27.610502>,  <13.872509, 16.328293, 27.619919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717778, 16.511513, 27.610502>,  <13.459893, 16.816879, 27.594807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717778, 16.511513, 27.610502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669733, -0.539361, 0.510439,
		-0.368514, -0.355366, -0.859018,
		0.644713, -0.763417, 0.039238,
		13.911192, 16.282488, 27.622274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079289, 16.207794, 27.470835>,  <13.459893, 16.816879, 27.594807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.079289, 16.207794, 27.470835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.404236, 16.071024, 27.659788>,  <13.599204, 15.988961, 27.773161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.404236, 16.071024, 27.659788>,  <13.079289, 16.207794, 27.470835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404236, 16.071024, 27.659788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578929, -0.570152, 0.582897,
		0.070023, -0.747002, -0.661123,
		0.812366, -0.341927, 0.472385,
		13.647945, 15.968446, 27.801504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.939379, 15.484275, 27.548094>,  <13.079289, 16.207794, 27.470835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.939379, 15.484275, 27.548094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.220345, 15.503187, 27.832172>,  <13.388924, 15.514535, 28.002619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.220345, 15.503187, 27.832172>,  <12.939379, 15.484275, 27.548094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.220345, 15.503187, 27.832172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571004, -0.558260, 0.601913,
		0.424934, -0.828318, -0.365131,
		0.702414, 0.047282, 0.710197,
		13.431068, 15.517372, 28.045231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008256, 14.780524, 27.871714>,  <12.939379, 15.484275, 27.548094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008256, 14.780524, 27.871714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.152366, 15.061720, 28.116993>,  <13.238832, 15.230437, 28.264160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.152366, 15.061720, 28.116993>,  <13.008256, 14.780524, 27.871714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.152366, 15.061720, 28.116993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552382, -0.368936, 0.747502,
		0.751716, -0.608024, 0.255400,
		0.360273, 0.702988, 0.613197,
		13.260448, 15.272616, 28.300953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283650, 14.409073, 28.418549>,  <13.008256, 14.780524, 27.871714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283650, 14.409073, 28.418549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.181357, 14.769101, 28.559671>,  <13.119982, 14.985118, 28.644344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.181357, 14.769101, 28.559671>,  <13.283650, 14.409073, 28.418549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181357, 14.769101, 28.559671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488692, -0.435240, 0.756139,
		0.834135, 0.020956, 0.551163,
		-0.255733, 0.900071, 0.352807,
		13.104637, 15.039123, 28.665514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206075, 14.262828, 29.073734>,  <13.283650, 14.409073, 28.418549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206075, 14.262828, 29.073734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.058972, 14.633410, 29.041649>,  <12.970711, 14.855760, 29.022398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.058972, 14.633410, 29.041649>,  <13.206075, 14.262828, 29.073734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058972, 14.633410, 29.041649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586718, -0.164239, 0.792962,
		0.721470, 0.338680, 0.603968,
		-0.367755, 0.926456, -0.080216,
		12.948646, 14.911347, 29.017584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322485, 14.583043, 29.675430>,  <13.206075, 14.262828, 29.073734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322485, 14.583043, 29.675430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.031113, 14.811843, 29.524590>,  <12.856290, 14.949123, 29.434086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.031113, 14.811843, 29.524590>,  <13.322485, 14.583043, 29.675430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031113, 14.811843, 29.524590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536208, -0.133360, 0.833484,
		0.426463, 0.809339, 0.403855,
		-0.728430, 0.572001, -0.377101,
		12.812584, 14.983443, 29.411459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119633, 15.136855, 30.158619>,  <13.322485, 14.583043, 29.675430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119633, 15.136855, 30.158619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.801909, 15.037512, 29.936846>,  <12.611276, 14.977906, 29.803782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.801909, 15.037512, 29.936846>,  <13.119633, 15.136855, 30.158619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801909, 15.037512, 29.936846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488865, -0.280514, 0.826029,
		-0.360676, 0.927163, 0.101401,
		-0.794307, -0.248357, -0.554432,
		12.563618, 14.963005, 29.770515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525964, 15.363059, 30.489679>,  <13.119633, 15.136855, 30.158619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525964, 15.363059, 30.489679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.330621, 15.130370, 30.229492>,  <12.213415, 14.990757, 30.073380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.330621, 15.130370, 30.229492>,  <12.525964, 15.363059, 30.489679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.330621, 15.130370, 30.229492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652853, -0.251054, 0.714671,
		-0.579043, 0.773673, -0.257176,
		-0.488357, -0.581723, -0.650466,
		12.184114, 14.955853, 30.034353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.885061, 15.466069, 30.723595>,  <12.525964, 15.363059, 30.489679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.885061, 15.466069, 30.723595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.857691, 15.162138, 30.464989>,  <11.841269, 14.979779, 30.309826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.857691, 15.162138, 30.464989>,  <11.885061, 15.466069, 30.723595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.857691, 15.162138, 30.464989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592413, -0.490467, 0.639131,
		-0.802723, 0.426737, -0.416571,
		-0.068426, -0.759828, -0.646514,
		11.837163, 14.934190, 30.271034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204154, 15.217091, 30.788790>,  <11.885061, 15.466069, 30.723595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204154, 15.217091, 30.788790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.408461, 14.908914, 30.636192>,  <11.531045, 14.724008, 30.544634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.408461, 14.908914, 30.636192>,  <11.204154, 15.217091, 30.788790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408461, 14.908914, 30.636192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418318, -0.610386, 0.672635,
		-0.751084, -0.183975, -0.634055,
		0.510767, -0.770442, -0.381492,
		11.561690, 14.677781, 30.521746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141032, 15.583658, 31.480598>,  <11.204154, 15.217091, 30.788790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141032, 15.583658, 31.480598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.290559, 15.302968, 31.723198>,  <11.380275, 15.134554, 31.868757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.290559, 15.302968, 31.723198>,  <11.141032, 15.583658, 31.480598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290559, 15.302968, 31.723198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100140, 0.619549, 0.778544,
		-0.922081, -0.351768, 0.161328,
		0.373818, -0.701725, 0.606501,
		11.402704, 15.092450, 31.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.427015, 15.757818, 31.145596>,  <11.141032, 15.583658, 31.480598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.427015, 15.757818, 31.145596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.100069, 15.987855, 31.131836>,  <9.903901, 16.125877, 31.123581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.100069, 15.987855, 31.131836>,  <10.427015, 15.757818, 31.145596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100069, 15.987855, 31.131836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298026, 0.370973, -0.879522,
		-0.493045, -0.729142, -0.474613,
		-0.817366, 0.575091, -0.034397,
		9.854859, 16.160383, 31.121517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.218334, 15.747983, 30.413506>,  <10.427015, 15.757818, 31.145596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.218334, 15.747983, 30.413506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.053180, 16.074100, 30.575899>,  <9.954087, 16.269772, 30.673334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.053180, 16.074100, 30.575899>,  <10.218334, 15.747983, 30.413506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.053180, 16.074100, 30.575899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207005, 0.518088, -0.829900,
		-0.886947, -0.258613, -0.382681,
		-0.412885, 0.815294, 0.405982,
		9.929315, 16.318689, 30.697695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.579608, 15.946965, 30.078312>,  <10.218334, 15.747983, 30.413506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.579608, 15.946965, 30.078312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718207, 16.276457, 30.257828>,  <9.801367, 16.474152, 30.365538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718207, 16.276457, 30.257828>,  <9.579608, 15.946965, 30.078312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.718207, 16.276457, 30.257828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269499, 0.370841, -0.888734,
		-0.898504, 0.428892, -0.093498,
		0.346498, 0.823728, 0.448788,
		9.822157, 16.523575, 30.392464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.484903, 16.426483, 29.590189>,  <9.579608, 15.946965, 30.078312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.484903, 16.426483, 29.590189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.722787, 16.624727, 29.843390>,  <9.865517, 16.743673, 29.995310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.722787, 16.624727, 29.843390>,  <9.484903, 16.426483, 29.590189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.722787, 16.624727, 29.843390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418156, 0.481790, -0.770080,
		-0.686634, 0.722667, 0.079282,
		0.594709, 0.495611, 0.633001,
		9.901199, 16.773411, 30.033289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.318675, 17.154963, 29.515869>,  <9.484903, 16.426483, 29.590189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.318675, 17.154963, 29.515869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692337, 17.091579, 29.643772>,  <9.916534, 17.053549, 29.720514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692337, 17.091579, 29.643772>,  <9.318675, 17.154963, 29.515869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.692337, 17.091579, 29.643772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353941, 0.525870, -0.773425,
		-0.045594, 0.835674, 0.547329,
		0.934156, -0.158459, 0.319756,
		9.972584, 17.044043, 29.739698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.700577, 17.831785, 29.305037>,  <9.318675, 17.154963, 29.515869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.700577, 17.831785, 29.305037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.005438, 17.582741, 29.376001>,  <10.188354, 17.433313, 29.418581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.005438, 17.582741, 29.376001>,  <9.700577, 17.831785, 29.305037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005438, 17.582741, 29.376001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534193, 0.449998, -0.715639,
		0.365731, 0.640199, 0.675563,
		0.762153, -0.622613, 0.177412,
		10.234084, 17.395956, 29.429224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318785, 18.250208, 29.295458>,  <9.700577, 17.831785, 29.305037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318785, 18.250208, 29.295458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.402631, 17.864843, 29.228645>,  <10.452938, 17.633625, 29.188559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.402631, 17.864843, 29.228645>,  <10.318785, 18.250208, 29.295458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.402631, 17.864843, 29.228645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537278, 0.256213, -0.803547,
		0.816942, 0.078694, 0.571326,
		0.209615, -0.963412, -0.167031,
		10.465515, 17.575819, 29.178535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.914229, 18.311552, 29.098267>,  <10.318785, 18.250208, 29.295458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.914229, 18.311552, 29.098267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.851867, 17.929777, 28.996487>,  <10.814449, 17.700712, 28.935419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.851867, 17.929777, 28.996487>,  <10.914229, 18.311552, 29.098267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.851867, 17.929777, 28.996487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604602, 0.111498, -0.788685,
		0.781120, -0.276802, 0.559671,
		-0.155907, -0.954436, -0.254449,
		10.805095, 17.643446, 28.920153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.516950, 18.105947, 28.845421>,  <10.914229, 18.311552, 29.098267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.516950, 18.105947, 28.845421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.261247, 17.830832, 28.707844>,  <11.107825, 17.665762, 28.625298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.261247, 17.830832, 28.707844>,  <11.516950, 18.105947, 28.845421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261247, 17.830832, 28.707844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514601, -0.050252, -0.855956,
		0.571434, -0.724168, 0.386061,
		-0.639256, -0.687790, -0.343942,
		11.069469, 17.624495, 28.604662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.049092, 17.669794, 28.450777>,  <11.516950, 18.105947, 28.845421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.049092, 17.669794, 28.450777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.679195, 17.590111, 28.321058>,  <11.457257, 17.542301, 28.243227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.679195, 17.590111, 28.321058>,  <12.049092, 17.669794, 28.450777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679195, 17.590111, 28.321058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310460, 0.098046, -0.945517,
		0.220154, -0.975039, -0.028820,
		-0.924742, -0.199212, -0.324296,
		11.401772, 17.530348, 28.223770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101371, 17.186708, 27.846146>,  <12.049092, 17.669794, 28.450777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101371, 17.186708, 27.846146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.742102, 17.360554, 27.819620>,  <11.526541, 17.464861, 27.803705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.742102, 17.360554, 27.819620>,  <12.101371, 17.186708, 27.846146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742102, 17.360554, 27.819620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132170, 0.123074, -0.983557,
		-0.419307, -0.892167, -0.167985,
		-0.898172, 0.434615, -0.066312,
		11.472651, 17.490938, 27.799726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858590, 16.803341, 27.269657>,  <12.101371, 17.186708, 27.846146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858590, 16.803341, 27.269657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.677614, 17.154863, 27.330320>,  <11.569029, 17.365776, 27.366718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.677614, 17.154863, 27.330320>,  <11.858590, 16.803341, 27.269657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677614, 17.154863, 27.330320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078012, 0.208411, -0.974925,
		-0.888376, -0.429265, -0.162851,
		-0.452441, 0.878804, 0.151660,
		11.541882, 17.418505, 27.375818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.442683, 16.770987, 26.698404>,  <11.858590, 16.803341, 27.269657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.442683, 16.770987, 26.698404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.407645, 17.156321, 26.799845>,  <11.386622, 17.387522, 26.860710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.407645, 17.156321, 26.799845>,  <11.442683, 16.770987, 26.698404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407645, 17.156321, 26.799845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070296, 0.259924, -0.963067,
		-0.993673, -0.066533, -0.090486,
		-0.087596, 0.963334, 0.253602,
		11.381367, 17.445320, 26.875925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925614, 17.076471, 26.191782>,  <11.442683, 16.770987, 26.698404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925614, 17.076471, 26.191782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.126122, 17.386314, 26.346033>,  <11.246426, 17.572220, 26.438583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.126122, 17.386314, 26.346033>,  <10.925614, 17.076471, 26.191782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.126122, 17.386314, 26.346033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260886, 0.289630, -0.920898,
		-0.825026, 0.562223, -0.056902,
		0.501269, 0.774610, 0.385629,
		11.276503, 17.618698, 26.461721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293925, 17.435364, 26.167751>,  <10.925614, 17.076471, 26.191782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293925, 17.435364, 26.167751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.946212, 17.535231, 25.997101>,  <9.737583, 17.595152, 25.894711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.946212, 17.535231, 25.997101>,  <10.293925, 17.435364, 26.167751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946212, 17.535231, 25.997101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363719, 0.261397, 0.894081,
		0.334743, 0.932382, -0.136419,
		-0.869285, 0.249669, -0.426626,
		9.685427, 17.610132, 25.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.017986, 18.111475, 26.372416>,  <10.293925, 17.435364, 26.167751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.017986, 18.111475, 26.372416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.701673, 17.893761, 26.260406>,  <9.511884, 17.763132, 26.193201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.701673, 17.893761, 26.260406>,  <10.017986, 18.111475, 26.372416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.701673, 17.893761, 26.260406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455700, 0.218082, 0.863005,
		-0.408652, 0.810059, -0.420486,
		-0.790785, -0.544284, -0.280025,
		9.464437, 17.730476, 26.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.342763, 18.512117, 26.531908>,  <10.017986, 18.111475, 26.372416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.342763, 18.512117, 26.531908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.240377, 18.127115, 26.495989>,  <9.178946, 17.896114, 26.474438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.240377, 18.127115, 26.495989>,  <9.342763, 18.512117, 26.531908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240377, 18.127115, 26.495989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468472, 0.042252, 0.882468,
		-0.845586, 0.267949, -0.461722,
		-0.255965, -0.962506, -0.089798,
		9.163588, 17.838364, 26.469049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.627576, 18.523767, 26.799433>,  <9.342763, 18.512117, 26.531908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.627576, 18.523767, 26.799433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.704977, 18.131374, 26.805443>,  <8.751418, 17.895939, 26.809048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.704977, 18.131374, 26.805443>,  <8.627576, 18.523767, 26.799433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.704977, 18.131374, 26.805443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466125, -0.078450, 0.881234,
		-0.863298, -0.177525, -0.472442,
		0.193504, -0.980984, 0.015023,
		8.763028, 17.837078, 26.809950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949443, 18.207504, 26.883001>,  <8.627576, 18.523767, 26.799433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949443, 18.207504, 26.883001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.227570, 17.949207, 27.009209>,  <8.394445, 17.794230, 27.084932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.227570, 17.949207, 27.009209>,  <7.949443, 18.207504, 26.883001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.227570, 17.949207, 27.009209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476909, -0.086120, 0.874724,
		-0.537674, -0.758683, -0.367841,
		0.695317, -0.645743, 0.315518,
		8.436165, 17.755486, 27.103865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.583462, 17.793041, 27.190113>,  <7.949443, 18.207504, 26.883001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.583462, 17.793041, 27.190113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.951083, 17.720407, 27.330038>,  <8.171656, 17.676826, 27.413994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.951083, 17.720407, 27.330038>,  <7.583462, 17.793041, 27.190113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.951083, 17.720407, 27.330038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390982, -0.308013, 0.867330,
		-0.049745, -0.933892, -0.354076,
		0.919053, -0.181583, 0.349813,
		8.226799, 17.665932, 27.434982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.602808, 17.094416, 27.488615>,  <7.583462, 17.793041, 27.190113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.602808, 17.094416, 27.488615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.902276, 17.283512, 27.674522>,  <8.081956, 17.396971, 27.786066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.902276, 17.283512, 27.674522>,  <7.602808, 17.094416, 27.488615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.902276, 17.283512, 27.674522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486894, -0.083694, 0.869442,
		0.449921, -0.877217, 0.167517,
		0.748669, 0.472743, 0.464767,
		8.126877, 17.425335, 27.813953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.593308, 16.367083, 27.343803>,  <7.602808, 17.094416, 27.488615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.593308, 16.367083, 27.343803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.379064, 16.030447, 27.371649>,  <7.250517, 15.828465, 27.388355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.379064, 16.030447, 27.371649>,  <7.593308, 16.367083, 27.343803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.379064, 16.030447, 27.371649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284338, -0.257349, -0.923538,
		0.795156, -0.474864, 0.377135,
		-0.535610, -0.841591, 0.069611,
		7.218380, 15.777969, 27.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.950261, 15.672007, 27.273733>,  <7.593308, 16.367083, 27.343803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.950261, 15.672007, 27.273733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.583998, 15.577722, 27.143494>,  <7.364241, 15.521151, 27.065350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.583998, 15.577722, 27.143494>,  <7.950261, 15.672007, 27.273733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.583998, 15.577722, 27.143494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391703, -0.341384, -0.854415,
		0.090243, -0.909888, 0.404920,
		-0.915656, -0.235713, -0.325598,
		7.309301, 15.507008, 27.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.884306, 14.949298, 27.059092>,  <7.950261, 15.672007, 27.273733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.884306, 14.949298, 27.059092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.597855, 15.155620, 26.871004>,  <7.425984, 15.279412, 26.758152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.597855, 15.155620, 26.871004>,  <7.884306, 14.949298, 27.059092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597855, 15.155620, 26.871004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325908, -0.348630, -0.878773,
		-0.617207, -0.782562, 0.081559,
		-0.716128, 0.515804, -0.470220,
		7.383016, 15.310361, 26.729939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.734595, 14.554071, 26.502674>,  <7.884306, 14.949298, 27.059092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.734595, 14.554071, 26.502674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.565226, 14.897794, 26.387918>,  <7.463604, 15.104027, 26.319065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.565226, 14.897794, 26.387918>,  <7.734595, 14.554071, 26.502674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.565226, 14.897794, 26.387918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218028, -0.210712, -0.952924,
		-0.879305, -0.466040, -0.098132,
		-0.423423, 0.859306, -0.286890,
		7.438199, 15.155585, 26.301851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.306900, 14.332442, 25.883110>,  <7.734595, 14.554071, 26.502674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.306900, 14.332442, 25.883110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.335781, 14.731338, 25.876162>,  <7.353110, 14.970675, 25.871992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.335781, 14.731338, 25.876162>,  <7.306900, 14.332442, 25.883110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.335781, 14.731338, 25.876162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024590, -0.015631, -0.999576,
		-0.997087, 0.072600, 0.023393,
		0.072203, 0.997239, -0.017370,
		7.357442, 15.030509, 25.870951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.874443, 14.454917, 25.345285>,  <7.306900, 14.332442, 25.883110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.874443, 14.454917, 25.345285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.101984, 14.781281, 25.386654>,  <7.238509, 14.977100, 25.411474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.101984, 14.781281, 25.386654>,  <6.874443, 14.454917, 25.345285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.101984, 14.781281, 25.386654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043008, 0.096065, -0.994445,
		-0.821315, 0.570140, 0.019556,
		0.568852, 0.815911, 0.103420,
		7.272640, 15.026055, 25.417681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.685050, 15.005610, 24.834888>,  <6.874443, 14.454917, 25.345285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.685050, 15.005610, 24.834888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.069442, 15.065367, 24.928009>,  <7.300078, 15.101221, 24.983881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.069442, 15.065367, 24.928009>,  <6.685050, 15.005610, 24.834888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.069442, 15.065367, 24.928009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191814, 0.246499, -0.949971,
		-0.199303, 0.957560, 0.208226,
		0.960982, 0.149391, 0.232801,
		7.357737, 15.110184, 24.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<11.570485, 11.512488, 30.220844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483247, 11.884134, 30.340296>,  <11.430903, 12.107121, 30.411966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.483247, 11.884134, 30.340296>,  <11.570485, 11.512488, 30.220844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483247, 11.884134, 30.340296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364450, 0.361397, -0.858236,
		-0.905323, -0.078343, -0.417435,
		-0.218097, 0.929115, 0.298629,
		11.417818, 12.162868, 30.429884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.041234, 11.884516, 29.785387>,  <11.570485, 11.512488, 30.220844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.041234, 11.884516, 29.785387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.287418, 12.154684, 29.947876>,  <11.435129, 12.316785, 30.045368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.287418, 12.154684, 29.947876>,  <11.041234, 11.884516, 29.785387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287418, 12.154684, 29.947876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244266, 0.326567, -0.913065,
		-0.749362, 0.661181, 0.036007,
		0.615460, 0.675421, 0.406221,
		11.472056, 12.357310, 30.069742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936781, 12.566334, 29.330854>,  <11.041234, 11.884516, 29.785387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.936781, 12.566334, 29.330854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.291739, 12.668526, 29.484352>,  <11.504714, 12.729841, 29.576450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.291739, 12.668526, 29.484352>,  <10.936781, 12.566334, 29.330854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.291739, 12.668526, 29.484352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390942, 0.024116, -0.920099,
		-0.244322, 0.966513, -0.078477,
		0.887396, 0.255480, 0.383743,
		11.557959, 12.745170, 29.599476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.222818, 13.311931, 29.028440>,  <10.936781, 12.566334, 29.330854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.222818, 13.311931, 29.028440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.528265, 13.105823, 29.184074>,  <11.711533, 12.982158, 29.277454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.528265, 13.105823, 29.184074>,  <11.222818, 13.311931, 29.028440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.528265, 13.105823, 29.184074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490395, 0.070848, -0.868616,
		0.420005, 0.854095, 0.306786,
		0.763616, -0.515269, 0.389087,
		11.757350, 12.951241, 29.300800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.842526, 13.587133, 28.663219>,  <11.222818, 13.311931, 29.028440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.842526, 13.587133, 28.663219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.987316, 13.242544, 28.805677>,  <12.074190, 13.035790, 28.891151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.987316, 13.242544, 28.805677>,  <11.842526, 13.587133, 28.663219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.987316, 13.242544, 28.805677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642142, -0.046517, -0.765173,
		0.675743, 0.505667, 0.536350,
		0.361973, -0.861474, 0.356144,
		12.095908, 12.984102, 28.912521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.593091, 13.573856, 28.565792>,  <11.842526, 13.587133, 28.663219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.593091, 13.573856, 28.565792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.488394, 13.189876, 28.605753>,  <12.425575, 12.959487, 28.629730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.488394, 13.189876, 28.605753>,  <12.593091, 13.573856, 28.565792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488394, 13.189876, 28.605753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507681, -0.224977, -0.831652,
		0.820823, -0.166961, 0.546236,
		-0.261744, -0.959953, 0.099904,
		12.409870, 12.901890, 28.635723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.242777, 13.237055, 28.385567>,  <12.593091, 13.573856, 28.565792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.242777, 13.237055, 28.385567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.932155, 12.991990, 28.326771>,  <12.745781, 12.844952, 28.291492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.932155, 12.991990, 28.326771>,  <13.242777, 13.237055, 28.385567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.932155, 12.991990, 28.326771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315209, -0.175777, -0.932602,
		0.545532, -0.770550, 0.329617,
		-0.776556, -0.612662, -0.146992,
		12.699188, 12.808191, 28.282673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582443, 12.634026, 28.085617>,  <13.242777, 13.237055, 28.385567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582443, 12.634026, 28.085617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.191757, 12.608097, 28.003813>,  <12.957345, 12.592540, 27.954731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.191757, 12.608097, 28.003813>,  <13.582443, 12.634026, 28.085617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.191757, 12.608097, 28.003813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214130, -0.235981, -0.947872,
		0.013182, -0.969594, 0.244366,
		-0.976716, -0.064821, -0.204508,
		12.898743, 12.588651, 27.942461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525814, 11.958426, 27.748566>,  <13.582443, 12.634026, 28.085617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525814, 11.958426, 27.748566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.226837, 12.206985, 27.654593>,  <13.047451, 12.356121, 27.598209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.226837, 12.206985, 27.654593>,  <13.525814, 11.958426, 27.748566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226837, 12.206985, 27.654593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167122, -0.166388, -0.971795,
		-0.642962, -0.765623, 0.020516,
		-0.747442, 0.621399, -0.234934,
		13.002604, 12.393405, 27.584112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317215, 11.677450, 27.224726>,  <13.525814, 11.958426, 27.748566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317215, 11.677450, 27.224726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.140425, 12.035039, 27.195143>,  <13.034350, 12.249593, 27.177393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.140425, 12.035039, 27.195143>,  <13.317215, 11.677450, 27.224726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140425, 12.035039, 27.195143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368342, 0.105693, -0.923663,
		-0.817913, -0.435479, -0.376001,
		-0.441977, 0.893973, -0.073957,
		13.007832, 12.303230, 27.172956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988602, 11.640819, 26.567041>,  <13.317215, 11.677450, 27.224726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988602, 11.640819, 26.567041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.031698, 12.028148, 26.657145>,  <13.057556, 12.260545, 26.711206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.031698, 12.028148, 26.657145>,  <12.988602, 11.640819, 26.567041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031698, 12.028148, 26.657145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469627, 0.150134, -0.870006,
		-0.876266, 0.199525, -0.438575,
		0.107743, 0.968323, 0.225260,
		13.064021, 12.318645, 26.724722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683000, 11.954259, 26.036633>,  <12.988602, 11.640819, 26.567041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683000, 11.954259, 26.036633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.912352, 12.246403, 26.185123>,  <13.049963, 12.421689, 26.274218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.912352, 12.246403, 26.185123>,  <12.683000, 11.954259, 26.036633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.912352, 12.246403, 26.185123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344465, 0.196205, -0.918067,
		-0.743356, 0.654276, -0.139084,
		0.573380, 0.730361, 0.371226,
		13.084366, 12.465511, 26.296492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982910, 12.230784, 26.381418>,  <12.683000, 11.954259, 26.036633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982910, 12.230784, 26.381418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.679937, 12.073734, 26.172750>,  <11.498154, 11.979504, 26.047550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.679937, 12.073734, 26.172750>,  <11.982910, 12.230784, 26.381418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679937, 12.073734, 26.172750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647522, 0.349259, 0.677298,
		-0.083727, 0.850801, -0.518774,
		-0.757433, -0.392626, -0.521671,
		11.452707, 11.955947, 26.016249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498285, 12.723739, 26.236891>,  <11.982910, 12.230784, 26.381418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498285, 12.723739, 26.236891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.246134, 12.417063, 26.188215>,  <11.094843, 12.233057, 26.159010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.246134, 12.417063, 26.188215>,  <11.498285, 12.723739, 26.236891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.246134, 12.417063, 26.188215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611877, 0.394256, 0.685689,
		-0.477734, 0.506703, -0.717650,
		-0.630379, -0.766690, -0.121690,
		11.057020, 12.187056, 26.151709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.882807, 13.069183, 26.212521>,  <11.498285, 12.723739, 26.236891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.882807, 13.069183, 26.212521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.808696, 12.689507, 26.314274>,  <10.764229, 12.461701, 26.375326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.808696, 12.689507, 26.314274>,  <10.882807, 13.069183, 26.212521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808696, 12.689507, 26.314274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623567, 0.313632, 0.716100,
		-0.759497, -0.025947, -0.649993,
		-0.185278, -0.949190, 0.254382,
		10.753113, 12.404751, 26.390589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.059342, 12.897551, 26.127169>,  <10.882807, 13.069183, 26.212521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.059342, 12.897551, 26.127169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.212865, 12.629778, 26.381586>,  <10.304978, 12.469114, 26.534237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.212865, 12.629778, 26.381586>,  <10.059342, 12.897551, 26.127169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.212865, 12.629778, 26.381586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699072, 0.239386, 0.673790,
		-0.603316, -0.703247, -0.376103,
		0.383807, -0.669432, 0.636046,
		10.328007, 12.428948, 26.572399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.470096, 12.553711, 26.335651>,  <10.059342, 12.897551, 26.127169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.470096, 12.553711, 26.335651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.740300, 12.466233, 26.617319>,  <9.902423, 12.413747, 26.786320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.740300, 12.466233, 26.617319>,  <9.470096, 12.553711, 26.335651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.740300, 12.466233, 26.617319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643225, 0.292110, 0.707766,
		-0.360479, -0.931045, 0.056654,
		0.675512, -0.218694, 0.704171,
		9.942954, 12.400625, 26.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.133330, 12.047258, 26.795589>,  <9.470096, 12.553711, 26.335651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.133330, 12.047258, 26.795589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.428651, 12.230766, 26.993353>,  <9.605844, 12.340871, 27.112011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.428651, 12.230766, 26.993353>,  <9.133330, 12.047258, 26.795589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.428651, 12.230766, 26.993353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634091, 0.222299, 0.740615,
		0.229891, -0.860282, 0.455044,
		0.738294, 0.458800, 0.494393,
		9.650141, 12.368398, 27.141676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.019561, 11.877066, 27.568581>,  <9.133330, 12.047258, 26.795589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.019561, 11.877066, 27.568581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.273029, 12.186337, 27.558369>,  <9.425111, 12.371901, 27.552240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.273029, 12.186337, 27.558369>,  <9.019561, 11.877066, 27.568581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.273029, 12.186337, 27.558369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442177, 0.389078, 0.808145,
		0.634776, -0.500808, 0.588430,
		0.633671, 0.773181, -0.025532,
		9.463131, 12.418292, 27.550709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.163404, 11.896548, 28.318846>,  <9.019561, 11.877066, 27.568581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.163404, 11.896548, 28.318846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.297334, 12.244068, 28.172926>,  <9.377691, 12.452580, 28.085373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.297334, 12.244068, 28.172926>,  <9.163404, 11.896548, 28.318846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.297334, 12.244068, 28.172926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409357, 0.482821, 0.774152,
		0.848716, -0.109871, 0.517309,
		0.334824, 0.868800, -0.364802,
		9.397781, 12.504708, 28.063486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.609033, 12.205849, 28.839470>,  <9.163404, 11.896548, 28.318846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.609033, 12.205849, 28.839470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.452309, 12.487174, 28.602207>,  <9.358274, 12.655970, 28.459850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.452309, 12.487174, 28.602207>,  <9.609033, 12.205849, 28.839470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.452309, 12.487174, 28.602207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450784, 0.415268, 0.790155,
		0.802047, 0.576976, 0.154337,
		-0.391810, 0.703314, -0.593156,
		9.334765, 12.698169, 28.424261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.589874, 12.784649, 29.216703>,  <9.609033, 12.205849, 28.839470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.589874, 12.784649, 29.216703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.326313, 12.872421, 28.928898>,  <9.168177, 12.925084, 28.756214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.326313, 12.872421, 28.928898>,  <9.589874, 12.784649, 29.216703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.326313, 12.872421, 28.928898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557301, 0.500041, 0.662854,
		0.505235, 0.837741, -0.207190,
		-0.658903, 0.219430, -0.719512,
		9.128642, 12.938251, 28.713045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.532788, 13.481382, 29.267515>,  <9.589874, 12.784649, 29.216703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.532788, 13.481382, 29.267515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.210721, 13.332301, 29.082996>,  <9.017481, 13.242852, 28.972284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.210721, 13.332301, 29.082996>,  <9.532788, 13.481382, 29.267515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.210721, 13.332301, 29.082996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589381, 0.416532, 0.692193,
		-0.065837, 0.829213, -0.555042,
		-0.805168, -0.372703, -0.461299,
		8.969171, 13.220490, 28.944607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.071906, 14.001765, 29.254322>,  <9.532788, 13.481382, 29.267515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.071906, 14.001765, 29.254322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.840096, 13.679514, 29.205151>,  <8.701010, 13.486163, 29.175648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.840096, 13.679514, 29.205151>,  <9.071906, 14.001765, 29.254322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.840096, 13.679514, 29.205151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661878, 0.377283, 0.647746,
		-0.475465, 0.456748, -0.751874,
		-0.579526, -0.805629, -0.122927,
		8.666238, 13.437825, 29.168272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346719, 14.225496, 29.211718>,  <9.071906, 14.001765, 29.254322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346719, 14.225496, 29.211718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.301435, 13.837064, 29.295797>,  <8.274264, 13.604004, 29.346245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.301435, 13.837064, 29.295797>,  <8.346719, 14.225496, 29.211718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301435, 13.837064, 29.295797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714402, 0.226587, 0.662033,
		-0.690517, -0.075217, -0.719395,
		-0.113210, -0.971082, 0.210197,
		8.267471, 13.545739, 29.358856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.593446, 14.092463, 29.335802>,  <8.346719, 14.225496, 29.211718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.593446, 14.092463, 29.335802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.748378, 13.765647, 29.506645>,  <7.841337, 13.569557, 29.609150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.748378, 13.765647, 29.506645>,  <7.593446, 14.092463, 29.335802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.748378, 13.765647, 29.506645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624441, 0.108332, 0.773522,
		-0.678269, -0.566310, -0.468234,
		0.387329, -0.817042, 0.427106,
		7.864576, 13.520535, 29.634777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.084738, 14.177995, 29.843639>,  <7.593446, 14.092463, 29.335802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.084738, 14.177995, 29.843639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.755298, 14.401814, 29.880707>,  <6.557633, 14.536106, 29.902948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.755298, 14.401814, 29.880707>,  <7.084738, 14.177995, 29.843639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.755298, 14.401814, 29.880707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070227, 0.262742, -0.962307,
		-0.562806, -0.786049, -0.255690,
		-0.823600, 0.559549, 0.092671,
		6.508217, 14.569679, 29.908508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.427446, 13.848909, 29.449209>,  <7.084738, 14.177995, 29.843639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.427446, 13.848909, 29.449209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.394464, 14.243571, 29.505367>,  <6.374675, 14.480369, 29.539062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.394464, 14.243571, 29.505367>,  <6.427446, 13.848909, 29.449209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.394464, 14.243571, 29.505367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080810, 0.147033, -0.985825,
		-0.993313, -0.069940, -0.091856,
		-0.082454, 0.986656, 0.140398,
		6.369728, 14.539568, 29.547487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.861152, 14.166095, 29.069870>,  <6.427446, 13.848909, 29.449209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.861152, 14.166095, 29.069870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.116829, 14.467912, 29.129333>,  <6.270235, 14.649002, 29.165012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.116829, 14.467912, 29.129333>,  <5.861152, 14.166095, 29.069870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.116829, 14.467912, 29.129333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075829, 0.130525, -0.988541,
		-0.765300, 0.643140, 0.026215,
		0.639192, 0.754542, 0.148659,
		6.308587, 14.694274, 29.173931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.556249, 14.760222, 28.553303>,  <5.861152, 14.166095, 29.069870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.556249, 14.760222, 28.553303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.910177, 14.905101, 28.670544>,  <6.122533, 14.992028, 28.740889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.910177, 14.905101, 28.670544>,  <5.556249, 14.760222, 28.553303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<5.910177, 14.905101, 28.670544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249811, 0.162236, -0.954607,
		-0.393307, 0.917874, 0.053068,
		0.884818, 0.362197, 0.293104,
		6.175622, 15.013760, 28.758474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.663794, 15.472807, 28.318584>,  <5.556249, 14.760222, 28.553303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.663794, 15.472807, 28.318584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.039665, 15.360895, 28.397303>,  <6.265187, 15.293748, 28.444534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.039665, 15.360895, 28.397303>,  <5.663794, 15.472807, 28.318584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.039665, 15.360895, 28.397303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315630, 0.487437, -0.814115,
		0.131847, 0.827121, 0.546340,
		0.939678, -0.279780, 0.196797,
		6.321568, 15.276961, 28.456343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.084551, 16.055422, 28.123083>,  <5.663794, 15.472807, 28.318584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.084551, 16.055422, 28.123083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.356071, 15.762690, 28.147263>,  <6.518983, 15.587050, 28.161770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.356071, 15.762690, 28.147263>,  <6.084551, 16.055422, 28.123083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.356071, 15.762690, 28.147263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481109, 0.381035, -0.789523,
		0.554764, 0.565010, 0.610737,
		0.678801, -0.731830, 0.060447,
		6.559711, 15.543140, 28.165396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.869688, 16.405678, 27.975258>,  <6.084551, 16.055422, 28.123083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.869688, 16.405678, 27.975258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.879102, 16.017927, 27.877476>,  <6.884751, 15.785277, 27.818808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.879102, 16.017927, 27.877476>,  <6.869688, 16.405678, 27.975258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.879102, 16.017927, 27.877476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442784, 0.229338, -0.866802,
		0.896319, -0.087839, 0.434621,
		0.023536, -0.969375, -0.244454,
		6.886163, 15.727115, 27.804140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.718219, 16.581003, 28.077982>,  <6.869688, 16.405678, 27.975258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.718219, 16.581003, 28.077982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.865772, 16.941149, 28.170301>,  <7.954304, 17.157236, 28.225693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.865772, 16.941149, 28.170301>,  <7.718219, 16.581003, 28.077982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.865772, 16.941149, 28.170301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204133, -0.163770, 0.965147,
		0.906783, -0.403139, 0.123382,
		0.368883, 0.900366, 0.230798,
		7.976437, 17.211258, 28.239540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.055760, 16.463146, 28.722122>,  <7.718219, 16.581003, 28.077982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.055760, 16.463146, 28.722122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.013684, 16.860540, 28.704590>,  <7.988439, 17.098976, 28.694071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.013684, 16.860540, 28.704590>,  <8.055760, 16.463146, 28.722122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.013684, 16.860540, 28.704590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298999, 0.010438, 0.954196,
		0.948438, 0.113477, 0.295953,
		-0.105190, 0.993486, -0.043829,
		7.982127, 17.158587, 28.691441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.513123, 16.648542, 29.154972>,  <8.055760, 16.463146, 28.722122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.513123, 16.648542, 29.154972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.233891, 16.932878, 29.120584>,  <8.066351, 17.103479, 29.099951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.233891, 16.932878, 29.120584>,  <8.513123, 16.648542, 29.154972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.233891, 16.932878, 29.120584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273927, -0.154198, 0.949309,
		0.661550, 0.686243, 0.302361,
		-0.698080, 0.710840, -0.085971,
		8.024467, 17.146130, 29.094793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.647440, 16.911869, 29.765961>,  <8.513123, 16.648542, 29.154972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.647440, 16.911869, 29.765961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.308472, 17.090744, 29.651487>,  <8.105090, 17.198069, 29.582804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.308472, 17.090744, 29.651487>,  <8.647440, 16.911869, 29.765961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308472, 17.090744, 29.651487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325659, -0.012098, 0.945410,
		0.419312, 0.894359, 0.155883,
		-0.847421, 0.447187, -0.286184,
		8.054245, 17.224899, 29.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.593599, 17.521475, 30.153362>,  <8.647440, 16.911869, 29.765961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.593599, 17.521475, 30.153362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.219336, 17.437786, 30.039686>,  <7.994777, 17.387573, 29.971479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.219336, 17.437786, 30.039686>,  <8.593599, 17.521475, 30.153362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.219336, 17.437786, 30.039686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332164, 0.250137, 0.909449,
		-0.119192, 0.945334, -0.303540,
		-0.935660, -0.209224, -0.284192,
		7.938637, 17.375019, 29.954428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.232444, 17.896587, 30.583017>,  <8.593599, 17.521475, 30.153362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.232444, 17.896587, 30.583017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.945306, 17.658154, 30.439140>,  <7.773023, 17.515093, 30.352814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.945306, 17.658154, 30.439140>,  <8.232444, 17.896587, 30.583017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945306, 17.658154, 30.439140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389280, -0.084675, 0.917219,
		-0.577199, 0.798443, -0.171261,
		-0.717846, -0.596086, -0.359692,
		7.729952, 17.479328, 30.331232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647997, 18.210106, 30.731972>,  <8.232444, 17.896587, 30.583017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647997, 18.210106, 30.731972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.544365, 17.826077, 30.689758>,  <7.482186, 17.595659, 30.664431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.544365, 17.826077, 30.689758>,  <7.647997, 18.210106, 30.731972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.544365, 17.826077, 30.689758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384835, 0.002395, 0.922982,
		-0.885878, 0.279738, -0.370091,
		-0.259079, -0.960073, -0.105532,
		7.466641, 17.538055, 30.658098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.990493, 18.171623, 30.938805>,  <7.647997, 18.210106, 30.731972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.990493, 18.171623, 30.938805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.091403, 17.784805, 30.952578>,  <7.151949, 17.552715, 30.960842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.091403, 17.784805, 30.952578>,  <6.990493, 18.171623, 30.938805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.091403, 17.784805, 30.952578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368979, -0.063239, 0.927284,
		-0.894546, -0.246635, -0.372772,
		0.252275, -0.967043, 0.034433,
		7.167086, 17.494692, 30.962908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.420321, 17.756626, 30.999996>,  <6.990493, 18.171623, 30.938805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.420321, 17.756626, 30.999996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.730319, 17.560965, 31.160049>,  <6.916319, 17.443567, 31.256083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.730319, 17.560965, 31.160049>,  <6.420321, 17.756626, 30.999996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.730319, 17.560965, 31.160049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528624, -0.154799, 0.834622,
		-0.346317, -0.858351, -0.378547,
		0.774997, -0.489153, 0.400135,
		6.962819, 17.414219, 31.280090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.476580, 15.783615, 16.051884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771472, 15.679447, 16.301258>,  <12.948407, 15.616946, 16.450884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771472, 15.679447, 16.301258>,  <12.476580, 15.783615, 16.051884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.771472, 15.679447, 16.301258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204898, 0.793104, 0.573588,
		-0.643824, -0.550607, 0.531340,
		0.737230, -0.260419, 0.623438,
		12.992640, 15.601321, 16.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.241917, 15.452199, 16.699160>,  <12.476580, 15.783615, 16.051884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.241917, 15.452199, 16.699160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574427, 15.671550, 16.735527>,  <12.773932, 15.803160, 16.757347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574427, 15.671550, 16.735527>,  <12.241917, 15.452199, 16.699160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574427, 15.671550, 16.735527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393793, 0.465536, 0.792593,
		0.392311, -0.694667, 0.602935,
		0.831276, 0.548374, 0.090920,
		12.823809, 15.836062, 16.762802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186116, 15.622910, 17.394096>,  <12.241917, 15.452199, 16.699160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186116, 15.622910, 17.394096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463002, 15.887098, 17.277740>,  <12.629134, 16.045610, 17.207928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463002, 15.887098, 17.277740>,  <12.186116, 15.622910, 17.394096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.463002, 15.887098, 17.277740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210419, 0.570257, 0.794059,
		0.690335, -0.488451, 0.533716,
		0.692215, 0.660471, -0.290889,
		12.670667, 16.085239, 17.190474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741132, 15.750286, 17.923124>,  <12.186116, 15.622910, 17.394096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741132, 15.750286, 17.923124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731803, 16.079708, 17.696423>,  <12.726206, 16.277361, 17.560402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731803, 16.079708, 17.696423>,  <12.741132, 15.750286, 17.923124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731803, 16.079708, 17.696423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201075, 0.551460, 0.809605,
		0.979298, 0.132843, 0.152735,
		-0.023323, 0.823556, -0.566755,
		12.724806, 16.326775, 17.526396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095479, 16.219185, 18.272575>,  <12.741132, 15.750286, 17.923124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095479, 16.219185, 18.272575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865313, 16.441639, 18.032707>,  <12.727213, 16.575111, 17.888786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865313, 16.441639, 18.032707>,  <13.095479, 16.219185, 18.272575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865313, 16.441639, 18.032707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274110, 0.559675, 0.782066,
		0.770558, 0.614390, -0.169603,
		-0.575417, 0.556137, -0.599673,
		12.692688, 16.608480, 17.852806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.154289, 16.849058, 18.631393>,  <13.095479, 16.219185, 18.272575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.154289, 16.849058, 18.631393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857160, 16.896576, 18.367849>,  <12.678882, 16.925087, 18.209723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857160, 16.896576, 18.367849>,  <13.154289, 16.849058, 18.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.857160, 16.896576, 18.367849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513074, 0.531189, 0.674235,
		0.430077, 0.838883, -0.333629,
		-0.742825, 0.118797, -0.658861,
		12.634312, 16.932215, 18.170191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.082280, 17.517153, 18.727112>,  <13.154289, 16.849058, 18.631393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.082280, 17.517153, 18.727112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755474, 17.359962, 18.558325>,  <12.559391, 17.265648, 18.457052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755474, 17.359962, 18.558325>,  <13.082280, 17.517153, 18.727112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755474, 17.359962, 18.558325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576101, 0.525339, 0.626200,
		-0.024404, 0.754711, -0.655603,
		-0.817014, -0.392976, -0.421969,
		12.510370, 17.242069, 18.431734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721156, 18.105610, 18.653219>,  <13.082280, 17.517153, 18.727112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721156, 18.105610, 18.653219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482282, 17.784840, 18.646454>,  <12.338957, 17.592379, 18.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482282, 17.784840, 18.646454>,  <12.721156, 18.105610, 18.653219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.482282, 17.784840, 18.646454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517826, 0.369347, 0.771647,
		-0.612555, 0.469575, -0.635826,
		-0.597186, -0.801924, -0.016913,
		12.303125, 17.544262, 18.641380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.990254, 18.342051, 18.730871>,  <12.721156, 18.105610, 18.653219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.990254, 18.342051, 18.730871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014781, 17.965181, 18.862659>,  <12.029497, 17.739059, 18.941732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014781, 17.965181, 18.862659>,  <11.990254, 18.342051, 18.730871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.014781, 17.965181, 18.862659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644782, 0.214581, 0.733629,
		-0.761904, -0.257420, -0.594338,
		0.061317, -0.942173, 0.329470,
		12.033176, 17.682529, 18.961500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.398667, 18.284349, 18.998899>,  <11.990254, 18.342051, 18.730871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.398667, 18.284349, 18.998899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536200, 17.934761, 19.136280>,  <11.618719, 17.725008, 19.218708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536200, 17.934761, 19.136280>,  <11.398667, 18.284349, 18.998899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536200, 17.934761, 19.136280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544269, 0.112570, 0.831324,
		-0.765214, -0.472763, -0.436970,
		0.343830, -0.873970, 0.343450,
		11.639348, 17.672569, 19.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794848, 17.754786, 19.113409>,  <11.398667, 18.284349, 18.998899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794848, 17.754786, 19.113409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106465, 17.654320, 19.343195>,  <11.293435, 17.594040, 19.481066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106465, 17.654320, 19.343195>,  <10.794848, 17.754786, 19.113409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.106465, 17.654320, 19.343195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561655, 0.127622, 0.817469,
		-0.278633, -0.959494, -0.041645,
		0.779042, -0.251164, 0.574465,
		11.340178, 17.578970, 19.515535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.589662, 17.210787, 19.594828>,  <10.794848, 17.754786, 19.113409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.589662, 17.210787, 19.594828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.913476, 17.392359, 19.743744>,  <11.107764, 17.501301, 19.833094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.913476, 17.392359, 19.743744>,  <10.589662, 17.210787, 19.594828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.913476, 17.392359, 19.743744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428373, 0.023108, 0.903306,
		0.401434, -0.890738, 0.213158,
		0.809536, 0.453929, 0.372292,
		11.156337, 17.528538, 19.855431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591852, 16.476280, 19.558159>,  <10.589662, 17.210787, 19.594828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591852, 16.476280, 19.558159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247499, 16.274626, 19.530649>,  <10.040888, 16.153633, 19.514143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247499, 16.274626, 19.530649>,  <10.591852, 16.476280, 19.558159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.247499, 16.274626, 19.530649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023400, 0.095799, -0.995126,
		0.508267, -0.858295, -0.070674,
		-0.860881, -0.504136, -0.068776,
		9.989235, 16.123384, 19.510017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700753, 15.756174, 19.283703>,  <10.591852, 16.476280, 19.558159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700753, 15.756174, 19.283703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.327607, 15.872259, 19.198343>,  <10.103720, 15.941910, 19.147127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.327607, 15.872259, 19.198343>,  <10.700753, 15.756174, 19.283703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.327607, 15.872259, 19.198343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241790, 0.065332, -0.968127,
		-0.267022, -0.954729, -0.131117,
		-0.932865, 0.290214, -0.213399,
		10.047748, 15.959323, 19.134323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.464685, 15.437465, 18.791546>,  <10.700753, 15.756174, 19.283703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.464685, 15.437465, 18.791546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.211027, 15.742661, 18.741425>,  <10.058832, 15.925779, 18.711351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.211027, 15.742661, 18.741425>,  <10.464685, 15.437465, 18.791546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.211027, 15.742661, 18.741425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167034, -0.023051, -0.985682,
		-0.754955, -0.645997, -0.112828,
		-0.634147, 0.762992, -0.125306,
		10.020783, 15.971559, 18.703833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071631, 15.181871, 18.240055>,  <10.464685, 15.437465, 18.791546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071631, 15.181871, 18.240055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.990438, 15.573496, 18.246208>,  <9.941721, 15.808471, 18.249901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.990438, 15.573496, 18.246208>,  <10.071631, 15.181871, 18.240055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.990438, 15.573496, 18.246208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080459, -0.001021, -0.996758,
		-0.975871, -0.203564, 0.078981,
		-0.202985, 0.979061, 0.015382,
		9.929542, 15.867214, 18.250822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.605575, 15.135918, 17.793554>,  <10.071631, 15.181871, 18.240055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.605575, 15.135918, 17.793554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.697040, 15.522973, 17.836241>,  <9.751919, 15.755206, 17.861853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.697040, 15.522973, 17.836241>,  <9.605575, 15.135918, 17.793554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.697040, 15.522973, 17.836241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219869, 0.158123, -0.962629,
		-0.948352, 0.196654, 0.248911,
		0.228663, 0.967638, 0.106718,
		9.765638, 15.813265, 17.868256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062054, 15.530078, 17.532230>,  <9.605575, 15.135918, 17.793554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062054, 15.530078, 17.532230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362608, 15.790568, 17.489666>,  <9.542940, 15.946863, 17.464127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362608, 15.790568, 17.489666>,  <9.062054, 15.530078, 17.532230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362608, 15.790568, 17.489666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324733, 0.224549, -0.918763,
		-0.574429, 0.724901, 0.380197,
		0.751385, 0.651227, -0.106412,
		9.588023, 15.985936, 17.457743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.778341, 16.069632, 17.171255>,  <9.062054, 15.530078, 17.532230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.778341, 16.069632, 17.171255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.173099, 16.125633, 17.139153>,  <9.409953, 16.159235, 17.119890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.173099, 16.125633, 17.139153>,  <8.778341, 16.069632, 17.171255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.173099, 16.125633, 17.139153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097385, 0.120103, -0.987973,
		-0.128683, 0.982840, 0.132163,
		0.986893, 0.140006, -0.080258,
		9.469167, 16.167635, 17.115074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903549, 16.591486, 16.615499>,  <8.778341, 16.069632, 17.171255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903549, 16.591486, 16.615499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246468, 16.386497, 16.635180>,  <9.452218, 16.263504, 16.646988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246468, 16.386497, 16.635180>,  <8.903549, 16.591486, 16.615499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.246468, 16.386497, 16.635180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013307, -0.073475, -0.997208,
		0.514653, 0.855556, -0.056170,
		0.857295, -0.512469, 0.049199,
		9.503656, 16.232758, 16.649939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.380647, 16.801733, 15.991161>,  <8.903549, 16.591486, 16.615499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.380647, 16.801733, 15.991161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.500446, 16.445381, 16.127766>,  <9.572326, 16.231569, 16.209728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.500446, 16.445381, 16.127766>,  <9.380647, 16.801733, 15.991161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.500446, 16.445381, 16.127766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098556, -0.384915, -0.917675,
		0.948993, 0.241185, -0.203084,
		0.299499, -0.890882, 0.341511,
		9.590296, 16.178116, 16.230219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.839309, 16.565760, 15.458104>,  <9.380647, 16.801733, 15.991161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.839309, 16.565760, 15.458104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.757318, 16.232779, 15.664020>,  <9.708124, 16.032990, 15.787569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.757318, 16.232779, 15.664020>,  <9.839309, 16.565760, 15.458104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.757318, 16.232779, 15.664020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069835, -0.537054, -0.840653,
		0.976272, -0.136364, 0.168218,
		-0.204977, -0.832453, 0.514788,
		9.695826, 15.983043, 15.818456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230137, 16.093987, 15.086370>,  <9.839309, 16.565760, 15.458104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230137, 16.093987, 15.086370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949212, 15.911096, 15.304618>,  <9.780658, 15.801361, 15.435567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949212, 15.911096, 15.304618>,  <10.230137, 16.093987, 15.086370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949212, 15.911096, 15.304618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196931, -0.611762, -0.766137,
		0.684089, -0.645516, 0.339605,
		-0.702311, -0.457227, 0.545621,
		9.738519, 15.773928, 15.468305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397291, 15.442305, 15.088812>,  <10.230137, 16.093987, 15.086370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397291, 15.442305, 15.088812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000043, 15.454654, 15.133992>,  <9.761694, 15.462064, 15.161100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.000043, 15.454654, 15.133992>,  <10.397291, 15.442305, 15.088812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.000043, 15.454654, 15.133992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111913, -0.534046, -0.838016,
		0.034449, -0.844891, 0.533828,
		-0.993121, 0.030874, 0.112952,
		9.702106, 15.463916, 15.167878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102375, 14.728961, 14.889156>,  <10.397291, 15.442305, 15.088812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.102375, 14.728961, 14.889156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.760274, 14.935108, 14.910834>,  <9.555013, 15.058797, 14.923841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.760274, 14.935108, 14.910834>,  <10.102375, 14.728961, 14.889156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.760274, 14.935108, 14.910834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269491, -0.353003, -0.895971,
		-0.442624, -0.780887, 0.440794,
		-0.855253, 0.515368, 0.054194,
		9.503698, 15.089719, 14.927093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.213588, 14.324195, 15.567375>,  <10.102375, 14.728961, 14.889156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.213588, 14.324195, 15.567375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489646, 14.578442, 15.705760>,  <10.655281, 14.730989, 15.788791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489646, 14.578442, 15.705760>,  <10.213588, 14.324195, 15.567375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489646, 14.578442, 15.705760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182221, 0.310027, -0.933102,
		-0.700354, 0.707017, 0.098141,
		0.690145, 0.635618, 0.345962,
		10.696690, 14.769127, 15.809548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.894445, 14.042414, 15.809413>,  <10.213588, 14.324195, 15.567375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.894445, 14.042414, 15.809413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106333, 14.128873, 15.481345>,  <11.233465, 14.180749, 15.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106333, 14.128873, 15.481345>,  <10.894445, 14.042414, 15.809413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.106333, 14.128873, 15.481345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517768, -0.683497, -0.514537,
		-0.671800, 0.697217, -0.250146,
		0.529718, 0.216148, -0.820170,
		11.265248, 14.193717, 15.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.307760, 13.436643, 15.654137>,  <10.894445, 14.042414, 15.809413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.307760, 13.436643, 15.654137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504200, 13.158714, 15.443976>,  <11.622064, 12.991958, 15.317881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504200, 13.158714, 15.443976>,  <11.307760, 13.436643, 15.654137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504200, 13.158714, 15.443976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118297, -0.544360, 0.830469,
		-0.863034, -0.469996, -0.185140,
		0.491100, -0.694821, -0.525400,
		11.651530, 12.950268, 15.286356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043704, 12.660769, 15.610334>,  <11.307760, 13.436643, 15.654137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043704, 12.660769, 15.610334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434152, 12.746646, 15.623600>,  <11.668420, 12.798172, 15.631559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.434152, 12.746646, 15.623600>,  <11.043704, 12.660769, 15.610334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.434152, 12.746646, 15.623600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063083, -0.426214, 0.902420,
		0.207879, -0.878777, -0.429579,
		0.976118, 0.214693, 0.033165,
		11.726987, 12.811053, 15.633550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421512, 12.080058, 15.969435>,  <11.043704, 12.660769, 15.610334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421512, 12.080058, 15.969435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688006, 12.376315, 16.004248>,  <11.847903, 12.554070, 16.025135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688006, 12.376315, 16.004248>,  <11.421512, 12.080058, 15.969435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688006, 12.376315, 16.004248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192521, -0.283570, 0.939427,
		0.720460, -0.609127, -0.331514,
		0.666238, 0.740644, 0.087032,
		11.887877, 12.598508, 16.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.084835, 11.726419, 16.236712>,  <11.421512, 12.080058, 15.969435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.084835, 11.726419, 16.236712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096035, 12.120451, 16.304636>,  <12.102756, 12.356870, 16.345390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096035, 12.120451, 16.304636>,  <12.084835, 11.726419, 16.236712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096035, 12.120451, 16.304636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314310, -0.169937, 0.933986,
		0.948907, 0.027221, -0.314378,
		0.028000, 0.985079, 0.169811,
		12.104435, 12.415975, 16.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764812, 11.966696, 16.538288>,  <12.084835, 11.726419, 16.236712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764812, 11.966696, 16.538288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496665, 12.240450, 16.652985>,  <12.335776, 12.404703, 16.721802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496665, 12.240450, 16.652985>,  <12.764812, 11.966696, 16.538288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496665, 12.240450, 16.652985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414971, 0.025423, 0.909480,
		0.615146, 0.728676, -0.301043,
		-0.670370, 0.684386, 0.286740,
		12.295554, 12.445765, 16.739006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109451, 12.470135, 16.939457>,  <12.764812, 11.966696, 16.538288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109451, 12.470135, 16.939457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724905, 12.482261, 17.048899>,  <12.494178, 12.489536, 17.114563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724905, 12.482261, 17.048899>,  <13.109451, 12.470135, 16.939457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724905, 12.482261, 17.048899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270800, -0.074406, 0.959756,
		0.049452, 0.996767, 0.063322,
		-0.961365, 0.030314, 0.273604,
		12.436496, 12.491355, 17.130980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245366, 12.775874, 17.580259>,  <13.109451, 12.470135, 16.939457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245366, 12.775874, 17.580259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870885, 12.635371, 17.575459>,  <12.646196, 12.551069, 17.572578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870885, 12.635371, 17.575459>,  <13.245366, 12.775874, 17.580259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870885, 12.635371, 17.575459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087600, -0.266282, 0.959906,
		-0.340369, 0.897615, 0.280064,
		-0.936203, -0.351256, -0.012003,
		12.590024, 12.529994, 17.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964407, 13.115693, 18.154974>,  <13.245366, 12.775874, 17.580259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964407, 13.115693, 18.154974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752515, 12.790168, 18.059397>,  <12.625380, 12.594852, 18.002050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752515, 12.790168, 18.059397>,  <12.964407, 13.115693, 18.154974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752515, 12.790168, 18.059397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000759, -0.281261, 0.959631,
		-0.848166, 0.508527, 0.148375,
		-0.529730, -0.813814, -0.238942,
		12.593596, 12.546023, 17.987715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478777, 13.110112, 18.601854>,  <12.964407, 13.115693, 18.154974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478777, 13.110112, 18.601854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431010, 12.731289, 18.482643>,  <12.402350, 12.503995, 18.411116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431010, 12.731289, 18.482643>,  <12.478777, 13.110112, 18.601854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431010, 12.731289, 18.482643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312606, -0.249045, 0.916654,
		-0.942347, 0.202629, -0.266316,
		-0.119416, -0.947057, -0.298030,
		12.395185, 12.447172, 18.393234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.879023, 12.918603, 18.896782>,  <12.478777, 13.110112, 18.601854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.879023, 12.918603, 18.896782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080050, 12.580262, 18.825274>,  <12.200665, 12.377257, 18.782368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080050, 12.580262, 18.825274>,  <11.879023, 12.918603, 18.896782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080050, 12.580262, 18.825274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224943, -0.327597, 0.917650,
		-0.834762, -0.420966, -0.354908,
		0.502566, -0.845853, -0.178772,
		12.230820, 12.326507, 18.771643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482663, 12.300371, 19.045664>,  <11.879023, 12.918603, 18.896782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482663, 12.300371, 19.045664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835519, 12.111993, 19.043119>,  <12.047232, 11.998965, 19.041594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835519, 12.111993, 19.043119>,  <11.482663, 12.300371, 19.045664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835519, 12.111993, 19.043119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249655, -0.478999, 0.841565,
		-0.399378, -0.740790, -0.540118,
		0.882140, -0.470946, -0.006360,
		12.100161, 11.970709, 19.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316083, 11.666331, 19.304535>,  <11.482663, 12.300371, 19.045664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316083, 11.666331, 19.304535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706074, 11.732471, 19.363976>,  <11.940068, 11.772154, 19.399639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706074, 11.732471, 19.363976>,  <11.316083, 11.666331, 19.304535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706074, 11.732471, 19.363976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066366, -0.421474, 0.904409,
		0.212173, -0.891639, -0.399954,
		0.974976, 0.165348, 0.148600,
		11.998567, 11.782075, 19.408556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509955, 11.108054, 19.574499>,  <11.316083, 11.666331, 19.304535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509955, 11.108054, 19.574499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800845, 11.365458, 19.670031>,  <11.975379, 11.519901, 19.727348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800845, 11.365458, 19.670031>,  <11.509955, 11.108054, 19.574499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800845, 11.365458, 19.670031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096210, -0.440070, 0.892794,
		0.679623, -0.626285, -0.381942,
		0.727225, 0.643510, 0.238827,
		12.019012, 11.558512, 19.741678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059340, 10.765280, 19.789661>,  <11.509955, 11.108054, 19.574499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059340, 10.765280, 19.789661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110465, 11.122445, 19.962343>,  <12.141140, 11.336744, 20.065952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110465, 11.122445, 19.962343>,  <12.059340, 10.765280, 19.789661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110465, 11.122445, 19.962343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232702, -0.450124, 0.862113,
		0.964113, -0.009729, -0.265314,
		0.127812, 0.892913, 0.431706,
		12.148808, 11.390319, 20.091856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568339, 10.581912, 20.320915>,  <12.059340, 10.765280, 19.789661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568339, 10.581912, 20.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435245, 10.938522, 20.443859>,  <12.355388, 11.152489, 20.517626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435245, 10.938522, 20.443859>,  <12.568339, 10.581912, 20.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435245, 10.938522, 20.443859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057469, -0.306155, 0.950245,
		0.941267, 0.333845, 0.050634,
		-0.332737, 0.891525, 0.307359,
		12.335423, 11.205979, 20.536066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.027511, 10.819078, 20.908230>,  <12.568339, 10.581912, 20.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.027511, 10.819078, 20.908230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709574, 11.060213, 20.935980>,  <12.518811, 11.204894, 20.952631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709574, 11.060213, 20.935980>,  <13.027511, 10.819078, 20.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709574, 11.060213, 20.935980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131309, -0.282488, 0.950241,
		0.592439, 0.746182, 0.303692,
		-0.794842, 0.602838, 0.069376,
		12.471121, 11.241064, 20.956793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003245, 10.944700, 21.526628>,  <13.027511, 10.819078, 20.908230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003245, 10.944700, 21.526628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.634315, 11.096478, 21.497414>,  <12.412956, 11.187546, 21.479885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.634315, 11.096478, 21.497414>,  <13.003245, 10.944700, 21.526628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.634315, 11.096478, 21.497414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192259, -0.286673, 0.938539,
		0.335188, 0.879681, 0.337358,
		-0.922326, 0.379447, -0.073037,
		12.357616, 11.210313, 21.475502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984174, 11.428453, 22.103123>,  <13.003245, 10.944700, 21.526628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.984174, 11.428453, 22.103123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601450, 11.351027, 22.016363>,  <12.371816, 11.304570, 21.964308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601450, 11.351027, 22.016363>,  <12.984174, 11.428453, 22.103123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601450, 11.351027, 22.016363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219085, -0.010309, 0.975651,
		-0.191090, 0.981033, -0.032544,
		-0.956810, -0.193567, -0.216899,
		12.314406, 11.292956, 21.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582889, 11.945167, 22.479437>,  <12.984174, 11.428453, 22.103123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582889, 11.945167, 22.479437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.337934, 11.641518, 22.391151>,  <12.190962, 11.459328, 22.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.337934, 11.641518, 22.391151>,  <12.582889, 11.945167, 22.479437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.337934, 11.641518, 22.391151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346347, 0.006651, 0.938083,
		-0.710652, 0.650913, -0.266993,
		-0.612386, -0.759123, -0.220715,
		12.154219, 11.413781, 22.324936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.936332, 12.143642, 22.723148>,  <12.582889, 11.945167, 22.479437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.936332, 12.143642, 22.723148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947104, 11.744331, 22.702297>,  <11.953568, 11.504745, 22.689787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947104, 11.744331, 22.702297>,  <11.936332, 12.143642, 22.723148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947104, 11.744331, 22.702297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412133, -0.058595, 0.909238,
		-0.910726, -0.003005, -0.413001,
		0.026933, -0.998278, -0.052126,
		11.955184, 11.444848, 22.686659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.249816, 11.906708, 22.825504>,  <11.936332, 12.143642, 22.723148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.249816, 11.906708, 22.825504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.492705, 11.602951, 22.918974>,  <11.638439, 11.420697, 22.975056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.492705, 11.602951, 22.918974>,  <11.249816, 11.906708, 22.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.492705, 11.602951, 22.918974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422987, -0.060012, 0.904146,
		-0.672579, -0.647859, -0.357654,
		0.607223, -0.759393, 0.233673,
		11.674872, 11.375134, 22.989077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920704, 11.387948, 23.245760>,  <11.249816, 11.906708, 22.825504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920704, 11.387948, 23.245760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312445, 11.336256, 23.307947>,  <11.547489, 11.305241, 23.345259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312445, 11.336256, 23.307947>,  <10.920704, 11.387948, 23.245760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.312445, 11.336256, 23.307947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144690, 0.089020, 0.985464,
		-0.141193, -0.987611, 0.068483,
		0.979351, -0.129231, 0.155466,
		11.606250, 11.297487, 23.354588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911715, 11.009974, 23.792747>,  <10.920704, 11.387948, 23.245760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911715, 11.009974, 23.792747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.296612, 11.117589, 23.776226>,  <11.527551, 11.182158, 23.766314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.296612, 11.117589, 23.776226>,  <10.911715, 11.009974, 23.792747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.296612, 11.117589, 23.776226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047113, -0.015177, 0.998774,
		0.268081, -0.963010, -0.027279,
		0.962244, 0.269038, -0.041302,
		11.585285, 11.198300, 23.763836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223220, 10.493473, 23.907097>,  <10.911715, 11.009974, 23.792747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223220, 10.493473, 23.907097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456467, 10.799567, 24.016195>,  <11.596415, 10.983224, 24.081654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456467, 10.799567, 24.016195>,  <11.223220, 10.493473, 23.907097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.456467, 10.799567, 24.016195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096026, -0.268454, 0.958495,
		0.806694, -0.585104, -0.083057,
		0.583116, 0.765236, 0.272745,
		11.631402, 11.029138, 24.098019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637848, 10.245979, 24.495409>,  <11.223220, 10.493473, 23.907097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637848, 10.245979, 24.495409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680282, 10.643153, 24.516668>,  <11.705742, 10.881457, 24.529425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680282, 10.643153, 24.516668>,  <11.637848, 10.245979, 24.495409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680282, 10.643153, 24.516668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068214, -0.046058, 0.996607,
		0.992015, -0.109349, 0.062847,
		0.106083, 0.992936, 0.053150,
		11.712107, 10.941034, 24.532614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939939, 10.350363, 25.179731>,  <11.637848, 10.245979, 24.495409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939939, 10.350363, 25.179731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798926, 10.712960, 25.086788>,  <11.714318, 10.930519, 25.031023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798926, 10.712960, 25.086788>,  <11.939939, 10.350363, 25.179731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.798926, 10.712960, 25.086788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084108, 0.216601, 0.972631,
		0.932012, 0.362427, -0.000115,
		-0.352533, 0.906494, -0.232358,
		11.693167, 10.984908, 25.017080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452172, 10.604024, 25.761625>,  <11.939939, 10.350363, 25.179731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452172, 10.604024, 25.761625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132978, 10.619486, 25.521049>,  <10.941463, 10.628763, 25.376705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132978, 10.619486, 25.521049>,  <11.452172, 10.604024, 25.761625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132978, 10.619486, 25.521049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576373, 0.242668, 0.780325,
		0.176114, 0.969339, -0.171365,
		-0.797984, 0.038656, -0.601438,
		10.893583, 10.631083, 25.340618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
