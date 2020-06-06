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
	<4.320093, 14.973614, 15.285395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488849, 14.943652, 14.923976>,  <4.590102, 14.925675, 14.707125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488849, 14.943652, 14.923976>,  <4.320093, 14.973614, 15.285395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488849, 14.943652, 14.923976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890496, 0.221504, 0.397434,
		0.170369, -0.972279, 0.160153,
		0.421891, -0.074905, -0.903547,
		4.615416, 14.921181, 14.652912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.808022, 14.487164, 15.299016>,  <4.320093, 14.973614, 15.285395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.808022, 14.487164, 15.299016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.868026, 14.796328, 15.052404>,  <4.904028, 14.981826, 14.904438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.868026, 14.796328, 15.052404>,  <4.808022, 14.487164, 15.299016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.868026, 14.796328, 15.052404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891367, 0.164058, 0.422553,
		0.427741, -0.612939, -0.664336,
		0.150010, 0.772910, -0.616528,
		4.913029, 15.028201, 14.867446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425653, 14.484294, 14.931321>,  <4.808022, 14.487164, 15.299016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425653, 14.484294, 14.931321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349551, 14.876671, 14.947085>,  <5.303890, 15.112097, 14.956544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349551, 14.876671, 14.947085>,  <5.425653, 14.484294, 14.931321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.349551, 14.876671, 14.947085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937452, 0.169607, 0.304002,
		0.291525, 0.094784, -0.951856,
		-0.190256, 0.980943, 0.039411,
		5.292474, 15.170954, 14.958909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.017911, 14.326857, 14.360411>,  <5.425653, 14.484294, 14.931321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.017911, 14.326857, 14.360411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.343994, 14.529789, 14.248656>,  <5.539643, 14.651548, 14.181603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.343994, 14.529789, 14.248656>,  <5.017911, 14.326857, 14.360411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.343994, 14.529789, 14.248656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157236, -0.270408, -0.949819,
		-0.557420, 0.818227, -0.140668,
		0.815206, 0.507330, -0.279385,
		5.588555, 14.681988, 14.164841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.934244, 14.913797, 13.820410>,  <5.017911, 14.326857, 14.360411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.934244, 14.913797, 13.820410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296491, 14.744214, 13.816082>,  <5.513839, 14.642464, 13.813485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296491, 14.744214, 13.816082>,  <4.934244, 14.913797, 13.820410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.296491, 14.744214, 13.816082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162855, -0.324095, -0.931902,
		0.391581, 0.845708, -0.362550,
		0.905617, -0.423958, -0.010819,
		5.568176, 14.617026, 13.812837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.344322, 15.277258, 13.249668>,  <4.934244, 14.913797, 13.820410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.344322, 15.277258, 13.249668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.508143, 14.919552, 13.321840>,  <5.606435, 14.704927, 13.365144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.508143, 14.919552, 13.321840>,  <5.344322, 15.277258, 13.249668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.508143, 14.919552, 13.321840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050729, -0.219796, -0.974226,
		0.910875, 0.389843, -0.135383,
		0.409552, -0.894266, 0.180431,
		5.631009, 14.651272, 13.375970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.959884, 15.263966, 12.967208>,  <5.344322, 15.277258, 13.249668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.959884, 15.263966, 12.967208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.855060, 14.879449, 13.001244>,  <5.792165, 14.648739, 13.021665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.855060, 14.879449, 13.001244>,  <5.959884, 15.263966, 12.967208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.855060, 14.879449, 13.001244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087808, -0.111557, -0.989871,
		0.961048, -0.251936, 0.113644,
		-0.262062, -0.961293, 0.085089,
		5.776441, 14.591061, 13.026771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.309100, 14.954089, 12.506252>,  <5.959884, 15.263966, 12.967208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.309100, 14.954089, 12.506252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.042936, 14.664663, 12.579661>,  <5.883237, 14.491008, 12.623707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.042936, 14.664663, 12.579661>,  <6.309100, 14.954089, 12.506252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.042936, 14.664663, 12.579661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068435, -0.303949, -0.950227,
		0.743333, -0.619732, 0.251768,
		-0.665411, -0.723566, 0.183524,
		5.843312, 14.447594, 12.634719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.676085, 14.329841, 12.279562>,  <6.309100, 14.954089, 12.506252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.676085, 14.329841, 12.279562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.283092, 14.255822, 12.270743>,  <6.047297, 14.211411, 12.265452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.283092, 14.255822, 12.270743>,  <6.676085, 14.329841, 12.279562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.283092, 14.255822, 12.270743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065012, -0.229477, -0.971140,
		0.174648, -0.955562, 0.237487,
		-0.982482, -0.185047, -0.022046,
		5.988348, 14.200308, 12.264130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.591227, 13.869221, 11.724308>,  <6.676085, 14.329841, 12.279562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.591227, 13.869221, 11.724308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.204156, 13.957897, 11.772397>,  <5.971913, 14.011103, 11.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.204156, 13.957897, 11.772397>,  <6.591227, 13.869221, 11.724308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.204156, 13.957897, 11.772397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174818, -0.246078, -0.953354,
		-0.181760, -0.943558, 0.276879,
		-0.967678, 0.221685, 0.120224,
		5.913853, 14.024405, 11.808464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.250335, 13.363703, 11.390390>,  <6.591227, 13.869221, 11.724308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.250335, 13.363703, 11.390390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.992540, 13.668628, 11.414117>,  <5.837864, 13.851583, 11.428353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.992540, 13.668628, 11.414117>,  <6.250335, 13.363703, 11.390390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.992540, 13.668628, 11.414117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287531, -0.169743, -0.942610,
		-0.708494, -0.624554, 0.328586,
		-0.644486, 0.762312, 0.059317,
		5.799195, 13.897322, 11.431911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.666788, 13.179448, 11.018898>,  <6.250335, 13.363703, 11.390390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.666788, 13.179448, 11.018898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.619705, 13.575764, 11.045684>,  <5.591455, 13.813553, 11.061755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.619705, 13.575764, 11.045684>,  <5.666788, 13.179448, 11.018898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.619705, 13.575764, 11.045684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296534, 0.029289, -0.954573,
		-0.947741, -0.132217, 0.290355,
		-0.117706, 0.990788, 0.066965,
		5.584394, 13.873000, 11.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.085253, 13.392413, 10.591886>,  <5.666788, 13.179448, 11.018898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.085253, 13.392413, 10.591886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.286388, 13.738033, 10.601458>,  <5.407069, 13.945405, 10.607201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.286388, 13.738033, 10.601458>,  <5.085253, 13.392413, 10.591886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.286388, 13.738033, 10.601458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239936, 0.166121, -0.956470,
		-0.830413, 0.475208, 0.290848,
		0.502838, 0.864050, 0.023929,
		5.437239, 13.997249, 10.608636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.659606, 13.940858, 10.308415>,  <5.085253, 13.392413, 10.591886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.659606, 13.940858, 10.308415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.015121, 14.118469, 10.262997>,  <5.228431, 14.225036, 10.235745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.015121, 14.118469, 10.262997>,  <4.659606, 13.940858, 10.308415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.015121, 14.118469, 10.262997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236076, 0.231185, -0.943833,
		-0.392837, 0.865675, 0.310299,
		0.888790, 0.444027, -0.113547,
		5.281758, 14.251678, 10.228932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.484588, 14.547289, 9.968199>,  <4.659606, 13.940858, 10.308415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.484588, 14.547289, 9.968199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876194, 14.496349, 9.904563>,  <5.111158, 14.465786, 9.866382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876194, 14.496349, 9.904563>,  <4.484588, 14.547289, 9.968199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.876194, 14.496349, 9.904563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109990, 0.326979, -0.938609,
		0.171549, 0.936412, 0.306111,
		0.979016, -0.127348, -0.159089,
		5.169899, 14.458145, 9.856836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.663184, 15.225460, 9.838184>,  <4.484588, 14.547289, 9.968199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.663184, 15.225460, 9.838184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930377, 14.991144, 9.654597>,  <5.090692, 14.850554, 9.544445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930377, 14.991144, 9.654597>,  <4.663184, 15.225460, 9.838184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.930377, 14.991144, 9.654597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093151, 0.546076, -0.832541,
		0.738325, 0.598875, 0.310201,
		0.667981, -0.585790, -0.458968,
		5.130771, 14.815407, 9.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.937702, 15.626138, 9.466860>,  <4.663184, 15.225460, 9.838184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.937702, 15.626138, 9.466860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.069026, 15.292023, 9.290448>,  <5.147821, 15.091554, 9.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.069026, 15.292023, 9.290448>,  <4.937702, 15.626138, 9.466860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.069026, 15.292023, 9.290448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089181, 0.437414, -0.894827,
		0.940350, 0.333113, 0.069116,
		0.328311, -0.835287, -0.441029,
		5.167520, 15.041436, 9.158139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.469007, 15.875107, 9.115623>,  <4.937702, 15.626138, 9.466860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.469007, 15.875107, 9.115623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366339, 15.531859, 8.937744>,  <5.304739, 15.325912, 8.831017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366339, 15.531859, 8.937744>,  <5.469007, 15.875107, 9.115623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.366339, 15.531859, 8.937744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072483, 0.441725, -0.894218,
		0.963778, -0.261750, -0.051178,
		-0.256668, -0.858118, -0.444697,
		5.289339, 15.274425, 8.804335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.946458, 15.666740, 8.549576>,  <5.469007, 15.875107, 9.115623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.946458, 15.666740, 8.549576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600651, 15.485482, 8.462610>,  <5.393167, 15.376727, 8.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.600651, 15.485482, 8.462610>,  <5.946458, 15.666740, 8.549576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.600651, 15.485482, 8.462610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062458, 0.526085, -0.848135,
		0.498699, -0.719653, -0.483115,
		-0.864522, -0.453138, -0.217410,
		5.341296, 15.349539, 8.397386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.944375, 15.561159, 7.719066>,  <5.946458, 15.666740, 8.549576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.944375, 15.561159, 7.719066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.571448, 15.540403, 7.862226>,  <5.347692, 15.527950, 7.948122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.571448, 15.540403, 7.862226>,  <5.944375, 15.561159, 7.719066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.571448, 15.540403, 7.862226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294878, 0.681999, -0.669271,
		-0.209359, -0.729510, -0.651141,
		-0.932317, -0.051889, 0.357899,
		5.291753, 15.524837, 7.969596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.560116, 15.433639, 7.158742>,  <5.944375, 15.561159, 7.719066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.560116, 15.433639, 7.158742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293754, 15.575637, 7.421206>,  <5.133936, 15.660835, 7.578685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.293754, 15.575637, 7.421206>,  <5.560116, 15.433639, 7.158742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.293754, 15.575637, 7.421206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404313, 0.567442, -0.717315,
		-0.626977, -0.742959, -0.234334,
		-0.665906, 0.354995, 0.656161,
		5.093982, 15.682136, 7.618055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.956907, 15.359642, 6.821455>,  <5.560116, 15.433639, 7.158742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.956907, 15.359642, 6.821455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895765, 15.632336, 7.107637>,  <4.859080, 15.795952, 7.279346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895765, 15.632336, 7.107637>,  <4.956907, 15.359642, 6.821455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.895765, 15.632336, 7.107637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579763, 0.524431, -0.623576,
		-0.800319, -0.510110, 0.315082,
		-0.152853, 0.681733, 0.715455,
		4.849909, 15.836856, 7.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.344920, 15.664399, 6.604544>,  <4.956907, 15.359642, 6.821455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.344920, 15.664399, 6.604544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.461174, 15.899112, 6.906860>,  <4.530926, 16.039940, 7.088249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.461174, 15.899112, 6.906860>,  <4.344920, 15.664399, 6.604544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.461174, 15.899112, 6.906860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522167, 0.759162, -0.388605,
		-0.801793, -0.281707, 0.527037,
		0.290634, 0.586783, 0.755790,
		4.548364, 16.075146, 7.133597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.747703, 15.976600, 6.905198>,  <4.344920, 15.664399, 6.604544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.747703, 15.976600, 6.905198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.087392, 16.185600, 6.935702>,  <4.291205, 16.311001, 6.954005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.087392, 16.185600, 6.935702>,  <3.747703, 15.976600, 6.905198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.087392, 16.185600, 6.935702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441490, 0.781816, -0.440284,
		-0.289671, 0.340230, 0.894614,
		0.849221, 0.522501, 0.076261,
		4.342158, 16.342350, 6.958580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.581243, 16.724554, 7.005981>,  <3.747703, 15.976600, 6.905198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.581243, 16.724554, 7.005981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961652, 16.720755, 6.882393>,  <4.189898, 16.718475, 6.808240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961652, 16.720755, 6.882393>,  <3.581243, 16.724554, 7.005981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.961652, 16.720755, 6.882393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173255, 0.811395, -0.558231,
		0.255999, 0.584421, 0.770010,
		0.951024, -0.009498, -0.308970,
		4.246960, 16.717905, 6.789702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.996414, 17.326281, 7.311809>,  <3.581243, 16.724554, 7.005981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.996414, 17.326281, 7.311809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129970, 17.192142, 6.959432>,  <4.210103, 17.111660, 6.748005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.129970, 17.192142, 6.959432>,  <3.996414, 17.326281, 7.311809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.129970, 17.192142, 6.959432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282704, 0.855928, -0.432972,
		0.899220, 0.393611, 0.190981,
		0.333888, -0.335346, -0.880943,
		4.230136, 17.091539, 6.695148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.139978, 17.898085, 6.962434>,  <3.996414, 17.326281, 7.311809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.139978, 17.898085, 6.962434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161341, 17.639021, 6.658412>,  <4.174159, 17.483583, 6.475998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161341, 17.639021, 6.658412>,  <4.139978, 17.898085, 6.962434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161341, 17.639021, 6.658412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257766, 0.726406, -0.637096,
		0.964730, 0.229942, -0.128149,
		0.053407, -0.647658, -0.760057,
		4.177363, 17.444723, 6.430395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.481927, 18.172571, 6.413485>,  <4.139978, 17.898085, 6.962434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.481927, 18.172571, 6.413485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.258718, 17.892113, 6.235945>,  <4.124792, 17.723837, 6.129421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.258718, 17.892113, 6.235945>,  <4.481927, 18.172571, 6.413485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.258718, 17.892113, 6.235945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340381, 0.681202, -0.648154,
		0.756805, -0.210604, -0.618782,
		-0.558020, -0.701149, -0.443852,
		4.091311, 17.681768, 6.102790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.963425, 18.779356, 6.561375>,  <4.481927, 18.172571, 6.413485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.963425, 18.779356, 6.561375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349923, 18.682814, 6.525335>,  <5.581822, 18.624887, 6.503711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.349923, 18.682814, 6.525335>,  <4.963425, 18.779356, 6.561375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.349923, 18.682814, 6.525335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006406, -0.327118, 0.944962,
		-0.257544, -0.913642, -0.314530,
		0.966245, -0.241355, -0.090100,
		5.639796, 18.610407, 6.498304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.026777, 18.060602, 6.847878>,  <4.963425, 18.779356, 6.561375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.026777, 18.060602, 6.847878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.348744, 18.297026, 6.868883>,  <5.541924, 18.438879, 6.881485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.348744, 18.297026, 6.868883>,  <5.026777, 18.060602, 6.847878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.348744, 18.297026, 6.868883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067069, -0.178550, 0.981642,
		0.589584, -0.786619, -0.183360,
		0.804918, 0.591058, 0.052513,
		5.590219, 18.474342, 6.884636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.609966, 17.750141, 7.146733>,  <5.026777, 18.060602, 6.847878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.609966, 17.750141, 7.146733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.589558, 18.142515, 7.221745>,  <5.577312, 18.377939, 7.266753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.589558, 18.142515, 7.221745>,  <5.609966, 17.750141, 7.146733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.589558, 18.142515, 7.221745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064861, -0.190633, 0.979516,
		0.996589, 0.037812, 0.073350,
		-0.051021, 0.980933, 0.187530,
		5.574252, 18.436794, 7.278005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.117425, 17.882721, 7.635952>,  <5.609966, 17.750141, 7.146733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.117425, 17.882721, 7.635952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.810503, 18.138985, 7.624645>,  <5.626350, 18.292744, 7.617862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.810503, 18.138985, 7.624645>,  <6.117425, 17.882721, 7.635952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.810503, 18.138985, 7.624645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124824, -0.105975, 0.986503,
		0.629018, 0.760476, 0.161284,
		-0.767304, 0.640660, -0.028266,
		5.580312, 18.331182, 7.616166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.173267, 18.520016, 7.992596>,  <6.117425, 17.882721, 7.635952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.173267, 18.520016, 7.992596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.786178, 18.419893, 7.980849>,  <5.553925, 18.359819, 7.973801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.786178, 18.419893, 7.980849>,  <6.173267, 18.520016, 7.992596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.786178, 18.419893, 7.980849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018523, -0.045571, 0.998789,
		-0.251340, 0.967094, 0.039464,
		-0.967722, -0.250305, -0.029368,
		5.495862, 18.344801, 7.972039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.792432, 18.978424, 8.271019>,  <6.173267, 18.520016, 7.992596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.792432, 18.978424, 8.271019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.617054, 18.628481, 8.353375>,  <5.511827, 18.418516, 8.402789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.617054, 18.628481, 8.353375>,  <5.792432, 18.978424, 8.271019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.617054, 18.628481, 8.353375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048211, 0.205861, 0.977393,
		-0.897463, 0.438461, -0.048081,
		-0.438447, -0.874856, 0.205892,
		5.485519, 18.366024, 8.415143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104929, 19.110434, 8.635149>,  <5.792432, 18.978424, 8.271019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104929, 19.110434, 8.635149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921957, 19.230888, 8.969831>,  <4.812174, 19.303162, 9.170640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921957, 19.230888, 8.969831>,  <5.104929, 19.110434, 8.635149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.921957, 19.230888, 8.969831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684293, -0.481686, 0.547468,
		0.567892, 0.822979, 0.014271,
		-0.457429, 0.301137, 0.836705,
		4.784728, 19.321230, 9.220842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.583783, 19.288990, 9.098552>,  <5.104929, 19.110434, 8.635149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.583783, 19.288990, 9.098552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.253163, 19.192997, 9.302208>,  <5.054791, 19.135401, 9.424401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.253163, 19.192997, 9.302208>,  <5.583783, 19.288990, 9.098552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.253163, 19.192997, 9.302208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561605, -0.412101, 0.717476,
		0.037634, 0.878965, 0.475399,
		-0.826549, -0.239985, 0.509140,
		5.005198, 19.121002, 9.454950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.648352, 19.448681, 9.852081>,  <5.583783, 19.288990, 9.098552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.648352, 19.448681, 9.852081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.360378, 19.176170, 9.799081>,  <5.187594, 19.012665, 9.767281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.360378, 19.176170, 9.799081>,  <5.648352, 19.448681, 9.852081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.360378, 19.176170, 9.799081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482048, -0.628185, 0.610748,
		-0.499323, 0.375827, 0.780660,
		-0.719935, -0.681276, -0.132500,
		5.144398, 18.971788, 9.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.521708, 19.161770, 10.488489>,  <5.648352, 19.448681, 9.852081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.521708, 19.161770, 10.488489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.393010, 18.890339, 10.224364>,  <5.315790, 18.727480, 10.065889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.393010, 18.890339, 10.224364>,  <5.521708, 19.161770, 10.488489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.393010, 18.890339, 10.224364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386520, -0.730772, 0.562649,
		-0.864338, -0.074193, 0.497408,
		-0.321747, -0.678578, -0.660311,
		5.296485, 18.686766, 10.026271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.062721, 18.638937, 10.846871>,  <5.521708, 19.161770, 10.488489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.062721, 18.638937, 10.846871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.186697, 18.455708, 10.513619>,  <5.261083, 18.345770, 10.313668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.186697, 18.455708, 10.513619>,  <5.062721, 18.638937, 10.846871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.186697, 18.455708, 10.513619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367224, -0.750602, 0.549311,
		-0.876974, -0.476199, -0.064426,
		0.309940, -0.458073, -0.833130,
		5.279680, 18.318285, 10.263680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.887764, 17.940151, 10.916275>,  <5.062721, 18.638937, 10.846871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.887764, 17.940151, 10.916275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188857, 17.943306, 10.652963>,  <5.369512, 17.945200, 10.494975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188857, 17.943306, 10.652963>,  <4.887764, 17.940151, 10.916275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188857, 17.943306, 10.652963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510826, -0.637753, 0.576479,
		-0.415273, -0.770200, -0.484087,
		0.752732, 0.007888, -0.658280,
		5.414676, 17.945673, 10.455479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.981368, 17.194853, 10.736296>,  <4.887764, 17.940151, 10.916275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.981368, 17.194853, 10.736296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308320, 17.414892, 10.667850>,  <5.504491, 17.546917, 10.626783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308320, 17.414892, 10.667850>,  <4.981368, 17.194853, 10.736296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.308320, 17.414892, 10.667850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576048, -0.776480, 0.255437,
		0.007651, -0.307358, -0.951563,
		0.817380, 0.550100, -0.171112,
		5.553534, 17.579922, 10.616517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.437729, 16.739489, 10.417586>,  <4.981368, 17.194853, 10.736296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.437729, 16.739489, 10.417586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672954, 17.026752, 10.566410>,  <5.814089, 17.199110, 10.655704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672954, 17.026752, 10.566410>,  <5.437729, 16.739489, 10.417586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.672954, 17.026752, 10.566410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467655, -0.677223, 0.568039,
		0.659909, -0.160048, -0.734101,
		0.588064, 0.718160, 0.372059,
		5.849373, 17.242201, 10.678028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.011533, 16.384447, 10.564062>,  <5.437729, 16.739489, 10.417586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.011533, 16.384447, 10.564062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.107289, 16.734926, 10.731378>,  <6.164742, 16.945213, 10.831767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.107289, 16.734926, 10.731378>,  <6.011533, 16.384447, 10.564062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.107289, 16.734926, 10.731378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731507, -0.446045, 0.515694,
		0.638427, 0.182530, -0.747725,
		0.239390, 0.876200, 0.418290,
		6.179106, 16.997786, 10.856864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.739835, 16.510084, 10.598196>,  <6.011533, 16.384447, 10.564062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.739835, 16.510084, 10.598196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611933, 16.745453, 10.895253>,  <6.535191, 16.886673, 11.073487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611933, 16.745453, 10.895253>,  <6.739835, 16.510084, 10.598196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.611933, 16.745453, 10.895253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781828, -0.278922, 0.557627,
		0.535258, 0.758923, -0.370856,
		-0.319756, 0.588420, 0.742642,
		6.516006, 16.921980, 11.118046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.287807, 16.854036, 10.836765>,  <6.739835, 16.510084, 10.598196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.287807, 16.854036, 10.836765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.041285, 16.852774, 11.151765>,  <6.893371, 16.852016, 11.340765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.041285, 16.852774, 11.151765>,  <7.287807, 16.854036, 10.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.041285, 16.852774, 11.151765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770599, -0.208517, 0.602243,
		0.162305, 0.978014, 0.130945,
		-0.616307, -0.003159, 0.787500,
		6.856392, 16.851826, 11.388015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.703570, 17.121334, 11.443437>,  <7.287807, 16.854036, 10.836765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.703570, 17.121334, 11.443437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.385970, 16.959187, 11.624650>,  <7.195410, 16.861898, 11.733378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.385970, 16.959187, 11.624650>,  <7.703570, 17.121334, 11.443437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.385970, 16.959187, 11.624650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576162, -0.264093, 0.773494,
		-0.193906, 0.875175, 0.443247,
		-0.794001, -0.405368, 0.453034,
		7.147770, 16.837576, 11.760560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.898835, 17.193933, 12.139446>,  <7.703570, 17.121334, 11.443437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.898835, 17.193933, 12.139446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.606769, 16.920645, 12.142665>,  <7.431529, 16.756672, 12.144596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.606769, 16.920645, 12.142665>,  <7.898835, 17.193933, 12.139446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.606769, 16.920645, 12.142665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432127, -0.452631, 0.779994,
		-0.529267, 0.573003, 0.625735,
		-0.730166, -0.683223, 0.008047,
		7.387719, 16.715677, 12.145079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.692557, 17.117693, 12.877491>,  <7.898835, 17.193933, 12.139446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.692557, 17.117693, 12.877491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.562731, 16.802164, 12.668718>,  <7.484836, 16.612846, 12.543454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.562731, 16.802164, 12.668718>,  <7.692557, 17.117693, 12.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.562731, 16.802164, 12.668718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303742, -0.609502, 0.732290,
		-0.895767, 0.079143, 0.437422,
		-0.324565, -0.788825, -0.521932,
		7.465362, 16.565517, 12.512138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.347405, 16.627960, 13.376147>,  <7.692557, 17.117693, 12.877491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.347405, 16.627960, 13.376147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.396483, 16.386980, 13.060680>,  <7.425931, 16.242392, 12.871400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.396483, 16.386980, 13.060680>,  <7.347405, 16.627960, 13.376147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.396483, 16.386980, 13.060680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230954, -0.755523, 0.613063,
		-0.965198, -0.257366, 0.046439,
		0.122695, -0.602452, -0.788668,
		7.433292, 16.206245, 12.824080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.883915, 16.040091, 13.468080>,  <7.347405, 16.627960, 13.376147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.883915, 16.040091, 13.468080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.180651, 15.932200, 13.222504>,  <7.358693, 15.867466, 13.075158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.180651, 15.932200, 13.222504>,  <6.883915, 16.040091, 13.468080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.180651, 15.932200, 13.222504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262710, -0.725455, 0.636159,
		-0.616974, -0.633216, -0.467313,
		0.741840, -0.269726, -0.613939,
		7.403203, 15.851282, 13.038321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.764086, 15.294664, 13.379637>,  <6.883915, 16.040091, 13.468080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.764086, 15.294664, 13.379637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.146959, 15.354786, 13.280672>,  <7.376682, 15.390859, 13.221293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.146959, 15.354786, 13.280672>,  <6.764086, 15.294664, 13.379637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.146959, 15.354786, 13.280672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264744, -0.800232, 0.538088,
		-0.117111, -0.580549, -0.805759,
		0.957181, 0.150304, -0.247412,
		7.434113, 15.399877, 13.206449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.042232, 14.591426, 13.189281>,  <6.764086, 15.294664, 13.379637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.042232, 14.591426, 13.189281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.369909, 14.807441, 13.266516>,  <7.566515, 14.937050, 13.312857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.369909, 14.807441, 13.266516>,  <7.042232, 14.591426, 13.189281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.369909, 14.807441, 13.266516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363357, -0.749188, 0.553795,
		0.443728, -0.383506, -0.809956,
		0.819193, 0.540037, 0.193086,
		7.615667, 14.969452, 13.324442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647943, 14.174253, 13.095520>,  <7.042232, 14.591426, 13.189281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647943, 14.174253, 13.095520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806257, 14.473441, 13.308646>,  <7.901246, 14.652954, 13.436522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806257, 14.473441, 13.308646>,  <7.647943, 14.174253, 13.095520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.806257, 14.473441, 13.308646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426372, -0.663534, 0.614760,
		0.813364, -0.016135, -0.581531,
		0.395785, 0.747972, 0.532816,
		7.924993, 14.697833, 13.468491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.353559, 14.135366, 13.129451>,  <7.647943, 14.174253, 13.095520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.353559, 14.135366, 13.129451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.231813, 14.336783, 13.452884>,  <8.158766, 14.457634, 13.646944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.231813, 14.336783, 13.452884>,  <8.353559, 14.135366, 13.129451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.231813, 14.336783, 13.452884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383765, -0.712098, 0.587912,
		0.871830, 0.489245, 0.023495,
		-0.304364, 0.503543, 0.808583,
		8.140505, 14.487846, 13.695458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.811590, 13.838795, 13.669094>,  <8.353559, 14.135366, 13.129451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.811590, 13.838795, 13.669094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.538664, 14.034459, 13.886411>,  <8.374907, 14.151858, 14.016801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.538664, 14.034459, 13.886411>,  <8.811590, 13.838795, 13.669094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.538664, 14.034459, 13.886411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259913, -0.532287, 0.805678,
		0.683293, 0.690935, 0.236049,
		-0.682317, 0.489162, 0.543291,
		8.333969, 14.181208, 14.049398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.113791, 14.212047, 14.266756>,  <8.811590, 13.838795, 13.669094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.113791, 14.212047, 14.266756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.744482, 14.085380, 14.353740>,  <8.522897, 14.009379, 14.405931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.744482, 14.085380, 14.353740>,  <9.113791, 14.212047, 14.266756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744482, 14.085380, 14.353740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346456, -0.441892, 0.827466,
		-0.165938, 0.839317, 0.517699,
		-0.923273, -0.316668, 0.217460,
		8.467500, 13.990379, 14.418978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.836933, 14.381924, 14.572759>,  <9.113791, 14.212047, 14.266756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.836933, 14.381924, 14.572759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.676127, 14.030014, 14.674254>,  <9.579644, 13.818869, 14.735151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.676127, 14.030014, 14.674254>,  <9.836933, 14.381924, 14.572759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.676127, 14.030014, 14.674254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914399, -0.371366, 0.161125,
		-0.047524, 0.296793, 0.953759,
		-0.402014, -0.879773, 0.253739,
		9.555523, 13.766082, 14.750376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.185354, 14.155427, 15.238549>,  <9.836933, 14.381924, 14.572759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.185354, 14.155427, 15.238549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.045082, 13.892500, 14.971728>,  <9.960918, 13.734744, 14.811636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.045082, 13.892500, 14.971728>,  <10.185354, 14.155427, 15.238549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.045082, 13.892500, 14.971728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915480, -0.390664, -0.096321,
		-0.197279, -0.644450, 0.738759,
		-0.350681, -0.657317, -0.667051,
		9.939878, 13.695305, 14.771613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.637869, 13.608292, 15.320265>,  <10.185354, 14.155427, 15.238549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.637869, 13.608292, 15.320265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459045, 13.592161, 14.962827>,  <10.351751, 13.582483, 14.748364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.459045, 13.592161, 14.962827>,  <10.637869, 13.608292, 15.320265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.459045, 13.592161, 14.962827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860856, -0.290814, -0.417557,
		-0.243031, -0.955930, 0.164726,
		-0.447060, -0.040326, -0.893595,
		10.324927, 13.580064, 14.694748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.759595, 13.024392, 15.019485>,  <10.637869, 13.608292, 15.320265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.759595, 13.024392, 15.019485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722433, 13.297353, 14.729465>,  <10.700136, 13.461129, 14.555452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722433, 13.297353, 14.729465>,  <10.759595, 13.024392, 15.019485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722433, 13.297353, 14.729465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793732, -0.388886, -0.467715,
		-0.601131, -0.618947, -0.505515,
		-0.092903, 0.682401, -0.725050,
		10.694562, 13.502073, 14.511950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641403, 12.565398, 14.339250>,  <10.759595, 13.024392, 15.019485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641403, 12.565398, 14.339250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.846683, 12.907800, 14.364185>,  <10.969851, 13.113240, 14.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.846683, 12.907800, 14.364185>,  <10.641403, 12.565398, 14.339250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.846683, 12.907800, 14.364185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779404, -0.434397, -0.451474,
		-0.359383, 0.280284, -0.890104,
		0.513199, 0.856003, 0.062340,
		11.000642, 13.164600, 14.382887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.945690, 12.715300, 13.739931>,  <10.641403, 12.565398, 14.339250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.945690, 12.715300, 13.739931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.177417, 12.938066, 13.978003>,  <11.316453, 13.071725, 14.120846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.177417, 12.938066, 13.978003>,  <10.945690, 12.715300, 13.739931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.177417, 12.938066, 13.978003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800889, -0.253147, -0.542672,
		-0.151554, 0.791051, -0.592680,
		0.579316, 0.556915, 0.595179,
		11.351212, 13.105140, 14.156556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517646, 13.040613, 13.306769>,  <10.945690, 12.715300, 13.739931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517646, 13.040613, 13.306769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642943, 12.998764, 13.684326>,  <11.718122, 12.973655, 13.910860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642943, 12.998764, 13.684326>,  <11.517646, 13.040613, 13.306769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642943, 12.998764, 13.684326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897022, -0.293749, -0.330248,
		0.311819, 0.950140, 0.001834,
		0.313243, -0.104623, 0.943892,
		11.736917, 12.967377, 13.967494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086507, 13.496154, 13.418659>,  <11.517646, 13.040613, 13.306769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086507, 13.496154, 13.418659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102504, 13.171071, 13.651178>,  <12.112103, 12.976022, 13.790689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102504, 13.171071, 13.651178>,  <12.086507, 13.496154, 13.418659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102504, 13.171071, 13.651178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997760, 0.063701, 0.020414,
		-0.053620, 0.579180, 0.813434,
		0.039993, -0.812707, 0.581298,
		12.114502, 12.927258, 13.825568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925743, 14.307293, 13.245337>,  <12.086507, 13.496154, 13.418659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925743, 14.307293, 13.245337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904211, 14.067017, 13.564403>,  <11.891292, 13.922851, 13.755842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904211, 14.067017, 13.564403>,  <11.925743, 14.307293, 13.245337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904211, 14.067017, 13.564403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301851, 0.771241, 0.560422,
		-0.951834, -0.210609, -0.222836,
		-0.053831, -0.600692, 0.797666,
		11.888062, 13.886809, 13.803702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274508, 14.433250, 13.568101>,  <11.925743, 14.307293, 13.245337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274508, 14.433250, 13.568101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549270, 14.300861, 13.826904>,  <11.714127, 14.221428, 13.982186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549270, 14.300861, 13.826904>,  <11.274508, 14.433250, 13.568101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549270, 14.300861, 13.826904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364300, 0.613535, 0.700614,
		-0.628846, -0.716960, 0.300867,
		0.686905, -0.330972, 0.647008,
		11.755342, 14.201570, 14.021007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002784, 14.189870, 14.216723>,  <11.274508, 14.433250, 13.568101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002784, 14.189870, 14.216723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.383137, 14.259522, 14.319096>,  <11.611349, 14.301314, 14.380519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.383137, 14.259522, 14.319096>,  <11.002784, 14.189870, 14.216723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.383137, 14.259522, 14.319096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304165, 0.679145, 0.668016,
		-0.057492, -0.713050, 0.698752,
		0.950883, 0.174131, 0.255930,
		11.668402, 14.311762, 14.395875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988423, 14.178340, 14.880678>,  <11.002784, 14.189870, 14.216723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988423, 14.178340, 14.880678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345543, 14.352539, 14.834633>,  <11.559814, 14.457058, 14.807006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.345543, 14.352539, 14.834633>,  <10.988423, 14.178340, 14.880678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345543, 14.352539, 14.834633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256743, 0.701945, 0.664347,
		0.370123, -0.563574, 0.738507,
		0.892800, 0.435497, -0.115112,
		11.613383, 14.483189, 14.800099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228915, 14.180773, 15.517720>,  <10.988423, 14.178340, 14.880678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228915, 14.180773, 15.517720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431364, 14.464331, 15.321227>,  <11.552834, 14.634465, 15.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431364, 14.464331, 15.321227>,  <11.228915, 14.180773, 15.517720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.431364, 14.464331, 15.321227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152988, 0.634331, 0.757772,
		0.848784, -0.308373, 0.429502,
		0.506123, 0.708894, -0.491233,
		11.583200, 14.676999, 15.173858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.646496, 14.562430, 16.005457>,  <11.228915, 14.180773, 15.517720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.646496, 14.562430, 16.005457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669344, 14.816845, 15.697640>,  <11.683053, 14.969494, 15.512950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669344, 14.816845, 15.697640>,  <11.646496, 14.562430, 16.005457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669344, 14.816845, 15.697640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031266, 0.771562, 0.635385,
		0.997877, -0.012233, 0.063958,
		0.057120, 0.636036, -0.769542,
		11.686480, 15.007656, 15.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186104, 15.010965, 16.155441>,  <11.646496, 14.562430, 16.005457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186104, 15.010965, 16.155441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.933901, 15.193577, 15.904350>,  <11.782579, 15.303144, 15.753695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.933901, 15.193577, 15.904350>,  <12.186104, 15.010965, 16.155441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.933901, 15.193577, 15.904350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031465, 0.823105, 0.567016,
		0.775546, 0.337756, -0.533338,
		-0.630507, 0.456529, -0.627728,
		11.744749, 15.330536, 15.716032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390399, 15.658216, 16.245369>,  <12.186104, 15.010965, 16.155441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390399, 15.658216, 16.245369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036920, 15.682066, 16.059671>,  <11.824832, 15.696376, 15.948253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036920, 15.682066, 16.059671>,  <12.390399, 15.658216, 16.245369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.036920, 15.682066, 16.059671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242830, 0.789523, 0.563637,
		0.400138, 0.610817, -0.683222,
		-0.883698, 0.059626, -0.464244,
		11.771811, 15.699954, 15.920399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331400, 16.375303, 16.021187>,  <12.390399, 15.658216, 16.245369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331400, 16.375303, 16.021187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960440, 16.227417, 16.043947>,  <11.737864, 16.138685, 16.057604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960440, 16.227417, 16.043947>,  <12.331400, 16.375303, 16.021187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960440, 16.227417, 16.043947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198772, 0.615927, 0.762315,
		-0.316888, 0.695660, -0.644700,
		-0.927400, -0.369717, 0.056902,
		11.682220, 16.116503, 16.061018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.953483, 16.980955, 16.257357>,  <12.331400, 16.375303, 16.021187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.953483, 16.980955, 16.257357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702753, 16.677032, 16.326393>,  <11.552316, 16.494678, 16.367815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702753, 16.677032, 16.326393>,  <11.953483, 16.980955, 16.257357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702753, 16.677032, 16.326393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331493, 0.460516, 0.823430,
		-0.705127, 0.458933, -0.540533,
		-0.626823, -0.759806, 0.172590,
		11.514706, 16.449091, 16.378170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296011, 17.233734, 16.295218>,  <11.953483, 16.980955, 16.257357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296011, 17.233734, 16.295218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229488, 16.887716, 16.484549>,  <11.189575, 16.680105, 16.598146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229488, 16.887716, 16.484549>,  <11.296011, 17.233734, 16.295218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229488, 16.887716, 16.484549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333532, 0.501068, 0.798554,
		-0.927954, -0.025065, -0.371850,
		-0.166306, -0.865045, 0.473328,
		11.179597, 16.628202, 16.626547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.665665, 17.302586, 16.643826>,  <11.296011, 17.233734, 16.295218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.665665, 17.302586, 16.643826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.850208, 16.992804, 16.816969>,  <10.960935, 16.806934, 16.920855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.850208, 16.992804, 16.816969>,  <10.665665, 17.302586, 16.643826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.850208, 16.992804, 16.816969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248816, 0.355366, 0.901003,
		-0.851610, -0.523388, -0.028746,
		0.461359, -0.774455, 0.432860,
		10.988616, 16.760468, 16.946827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275288, 17.074305, 17.135962>,  <10.665665, 17.302586, 16.643826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275288, 17.074305, 17.135962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626257, 16.919401, 17.249214>,  <10.836839, 16.826460, 17.317165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626257, 16.919401, 17.249214>,  <10.275288, 17.074305, 17.135962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.626257, 16.919401, 17.249214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209614, 0.221380, 0.952393,
		-0.431500, -0.894999, 0.113070,
		0.877422, -0.387257, 0.283129,
		10.889483, 16.803225, 17.334152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004213, 16.707153, 17.663538>,  <10.275288, 17.074305, 17.135962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004213, 16.707153, 17.663538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395937, 16.769499, 17.715170>,  <10.630971, 16.806906, 17.746149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395937, 16.769499, 17.715170>,  <10.004213, 16.707153, 17.663538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395937, 16.769499, 17.715170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154853, 0.166500, 0.973806,
		0.130279, -0.973646, 0.187190,
		0.979310, 0.155853, 0.129081,
		10.689730, 16.816257, 17.753893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.052114, 16.409449, 18.301456>,  <10.004213, 16.707153, 17.663538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.052114, 16.409449, 18.301456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372600, 16.637850, 18.229887>,  <10.564891, 16.774891, 18.186945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372600, 16.637850, 18.229887>,  <10.052114, 16.409449, 18.301456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.372600, 16.637850, 18.229887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001394, 0.300797, 0.953687,
		0.598377, -0.763858, 0.241798,
		0.801214, 0.571002, -0.178925,
		10.612964, 16.809151, 18.176210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.506598, 16.238308, 18.783182>,  <10.052114, 16.409449, 18.301456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.506598, 16.238308, 18.783182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624783, 16.595734, 18.647980>,  <10.695694, 16.810188, 18.566858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.624783, 16.595734, 18.647980>,  <10.506598, 16.238308, 18.783182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.624783, 16.595734, 18.647980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042814, 0.341061, 0.939066,
		0.954394, -0.291930, 0.062514,
		0.295463, 0.893562, -0.338005,
		10.713422, 16.863802, 18.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.017533, 16.424126, 19.362846>,  <10.506598, 16.238308, 18.783182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.017533, 16.424126, 19.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.891993, 16.756363, 19.178843>,  <10.816669, 16.955706, 19.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.891993, 16.756363, 19.178843>,  <11.017533, 16.424126, 19.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.891993, 16.756363, 19.178843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091516, 0.455772, 0.885380,
		0.945051, 0.319976, -0.067032,
		-0.313852, 0.830595, -0.460010,
		10.797837, 17.005541, 19.040840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.271874, 16.876894, 19.684359>,  <11.017533, 16.424126, 19.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.271874, 16.876894, 19.684359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974902, 17.096378, 19.530624>,  <10.796719, 17.228069, 19.438385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974902, 17.096378, 19.530624>,  <11.271874, 16.876894, 19.684359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.974902, 17.096378, 19.530624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031079, 0.544869, 0.837945,
		0.669202, 0.634061, -0.387473,
		-0.742430, 0.548712, -0.384333,
		10.752173, 17.260992, 19.415325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.385734, 17.551437, 19.897152>,  <11.271874, 16.876894, 19.684359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.385734, 17.551437, 19.897152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006141, 17.566248, 19.771894>,  <10.778385, 17.575134, 19.696739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006141, 17.566248, 19.771894>,  <11.385734, 17.551437, 19.897152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006141, 17.566248, 19.771894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263511, 0.452299, 0.852049,
		0.173184, 0.891097, -0.419468,
		-0.948983, 0.037027, -0.313145,
		10.721446, 17.577356, 19.677952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121524, 18.206388, 20.187946>,  <11.385734, 17.551437, 19.897152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121524, 18.206388, 20.187946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.787839, 17.994122, 20.127966>,  <10.587628, 17.866762, 20.091978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.787839, 17.994122, 20.127966>,  <11.121524, 18.206388, 20.187946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.787839, 17.994122, 20.127966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336778, 0.274954, 0.900544,
		-0.436659, 0.801744, -0.408087,
		-0.834212, -0.530666, -0.149949,
		10.537576, 17.834923, 20.082981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582459, 18.632832, 20.497213>,  <11.121524, 18.206388, 20.187946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582459, 18.632832, 20.497213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437346, 18.262285, 20.456739>,  <10.350279, 18.039957, 20.432455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437346, 18.262285, 20.456739>,  <10.582459, 18.632832, 20.497213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437346, 18.262285, 20.456739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479521, 0.092473, 0.872645,
		-0.799030, 0.365100, -0.477759,
		-0.362782, -0.926364, -0.101184,
		10.328512, 17.984375, 20.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.960875, 18.692816, 20.798820>,  <10.582459, 18.632832, 20.497213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.960875, 18.692816, 20.798820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007620, 18.295975, 20.780609>,  <10.035667, 18.057869, 20.769682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007620, 18.295975, 20.780609>,  <9.960875, 18.692816, 20.798820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.007620, 18.295975, 20.780609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392017, -0.088199, 0.915721,
		-0.912505, -0.089167, -0.399228,
		0.116864, -0.992104, -0.045527,
		10.042679, 17.998344, 20.766951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253001, 18.378197, 20.956804>,  <9.960875, 18.692816, 20.798820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253001, 18.378197, 20.956804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550632, 18.119967, 21.025604>,  <9.729210, 17.965029, 21.066885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.550632, 18.119967, 21.025604>,  <9.253001, 18.378197, 20.956804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.550632, 18.119967, 21.025604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306727, -0.101382, 0.946383,
		-0.593523, -0.756938, -0.273451,
		0.744076, -0.645575, 0.172000,
		9.773854, 17.926294, 21.077204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.935545, 17.792068, 21.277328>,  <9.253001, 18.378197, 20.956804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.935545, 17.792068, 21.277328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319779, 17.799824, 21.388252>,  <9.550320, 17.804478, 21.454805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319779, 17.799824, 21.388252>,  <8.935545, 17.792068, 21.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.319779, 17.799824, 21.388252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277066, 0.147806, 0.949414,
		-0.022583, -0.988826, 0.147351,
		0.960585, 0.019385, 0.277309,
		9.607955, 17.805639, 21.471445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903826, 17.390142, 21.921118>,  <8.935545, 17.792068, 21.277328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903826, 17.390142, 21.921118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.255754, 17.580236, 21.924370>,  <9.466912, 17.694292, 21.926321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.255754, 17.580236, 21.924370>,  <8.903826, 17.390142, 21.921118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.255754, 17.580236, 21.924370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139272, 0.241413, 0.960377,
		0.454441, -0.846093, 0.278587,
		0.879822, 0.475234, 0.008129,
		9.519701, 17.722807, 21.926809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.255892, 17.180389, 22.557951>,  <8.903826, 17.390142, 21.921118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.255892, 17.180389, 22.557951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.463571, 17.504404, 22.448935>,  <9.588178, 17.698812, 22.383526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.463571, 17.504404, 22.448935>,  <9.255892, 17.180389, 22.557951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.463571, 17.504404, 22.448935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054633, 0.286779, 0.956438,
		0.852906, -0.511470, 0.104641,
		0.519198, 0.810035, -0.272539,
		9.619330, 17.747414, 22.367172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.831728, 17.223970, 22.977041>,  <9.255892, 17.180389, 22.557951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.831728, 17.223970, 22.977041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.816337, 17.597971, 22.836021>,  <9.807102, 17.822371, 22.751410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.816337, 17.597971, 22.836021>,  <9.831728, 17.223970, 22.977041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.816337, 17.597971, 22.836021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050879, 0.354188, 0.933789,
		0.997963, 0.017992, -0.061201,
		-0.038478, 0.935001, -0.352551,
		9.804793, 17.878471, 22.730257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.323459, 17.691595, 23.413591>,  <9.831728, 17.223970, 22.977041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.323459, 17.691595, 23.413591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.028457, 17.910028, 23.254654>,  <9.851456, 18.041088, 23.159292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.028457, 17.910028, 23.254654>,  <10.323459, 17.691595, 23.413591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.028457, 17.910028, 23.254654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122879, 0.470029, 0.874055,
		0.664067, 0.693446, -0.279547,
		-0.737506, 0.546081, -0.397341,
		9.807205, 18.073853, 23.135452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.459267, 18.466700, 23.435862>,  <10.323459, 17.691595, 23.413591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.459267, 18.466700, 23.435862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063670, 18.410858, 23.455482>,  <9.826312, 18.377354, 23.467255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063670, 18.410858, 23.455482>,  <10.459267, 18.466700, 23.435862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.063670, 18.410858, 23.455482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020692, 0.458730, 0.888335,
		-0.146518, 0.877540, -0.456569,
		-0.988992, -0.139604, 0.049054,
		9.766973, 18.368977, 23.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.133520, 19.029121, 23.808487>,  <10.459267, 18.466700, 23.435862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.133520, 19.029121, 23.808487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826392, 18.774265, 23.781649>,  <9.642116, 18.621351, 23.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826392, 18.774265, 23.781649>,  <10.133520, 19.029121, 23.808487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.826392, 18.774265, 23.781649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329561, 0.302987, 0.894197,
		-0.549400, 0.708696, -0.442616,
		-0.767821, -0.637141, -0.067098,
		9.596045, 18.583122, 23.761518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.489806, 19.458786, 24.030449>,  <10.133520, 19.029121, 23.808487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.489806, 19.458786, 24.030449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422819, 19.070415, 24.098864>,  <9.382627, 18.837393, 24.139912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422819, 19.070415, 24.098864>,  <9.489806, 19.458786, 24.030449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.422819, 19.070415, 24.098864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447251, 0.229428, 0.864482,
		-0.878590, 0.068277, -0.472670,
		-0.167468, -0.970928, 0.171037,
		9.372579, 18.779137, 24.150175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.904882, 19.418402, 24.337646>,  <9.489806, 19.458786, 24.030449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.904882, 19.418402, 24.337646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030491, 19.048235, 24.422489>,  <9.105856, 18.826134, 24.473394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030491, 19.048235, 24.422489>,  <8.904882, 19.418402, 24.337646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.030491, 19.048235, 24.422489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403251, 0.072251, 0.912232,
		-0.859522, -0.371994, -0.350488,
		0.314021, -0.925419, 0.212109,
		9.124698, 18.770609, 24.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.310779, 19.004942, 24.866133>,  <8.904882, 19.418402, 24.337646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.310779, 19.004942, 24.866133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.661508, 18.816729, 24.905693>,  <8.871944, 18.703800, 24.929430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.661508, 18.816729, 24.905693>,  <8.310779, 19.004942, 24.866133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.661508, 18.816729, 24.905693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065309, 0.087239, 0.994044,
		-0.476360, -0.878059, 0.045762,
		0.876821, -0.470534, 0.098902,
		8.924554, 18.675568, 24.935364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.172810, 18.489595, 25.426737>,  <8.310779, 19.004942, 24.866133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.172810, 18.489595, 25.426737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.566671, 18.557999, 25.412813>,  <8.802988, 18.599041, 25.404459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.566671, 18.557999, 25.412813>,  <8.172810, 18.489595, 25.426737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.566671, 18.557999, 25.412813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041502, -0.035708, 0.998500,
		0.169509, -0.984622, -0.042257,
		0.984654, 0.171009, -0.034811,
		8.862068, 18.609301, 25.402370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.354726, 18.140543, 26.023252>,  <8.172810, 18.489595, 25.426737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.354726, 18.140543, 26.023252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.672359, 18.366858, 25.934422>,  <8.862940, 18.502645, 25.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.672359, 18.366858, 25.934422>,  <8.354726, 18.140543, 26.023252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.672359, 18.366858, 25.934422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310653, -0.063757, 0.948382,
		0.522422, -0.822084, -0.226391,
		0.794084, 0.565785, -0.222075,
		8.910584, 18.536592, 25.867800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.869490, 17.776989, 26.242996>,  <8.354726, 18.140543, 26.023252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.869490, 17.776989, 26.242996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.994526, 18.156933, 26.240141>,  <9.069548, 18.384899, 26.238428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.994526, 18.156933, 26.240141>,  <8.869490, 17.776989, 26.242996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.994526, 18.156933, 26.240141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348109, -0.107561, 0.931263,
		0.883803, -0.293588, -0.364278,
		0.312590, 0.949861, -0.007138,
		9.088303, 18.441891, 26.237999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.542028, 17.764143, 26.643690>,  <8.869490, 17.776989, 26.242996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.542028, 17.764143, 26.643690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.411863, 18.142365, 26.646086>,  <9.333765, 18.369297, 26.647522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.411863, 18.142365, 26.646086>,  <9.542028, 17.764143, 26.643690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.411863, 18.142365, 26.646086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170912, 0.052589, 0.983882,
		0.929998, 0.321190, -0.178719,
		-0.325412, 0.945554, 0.005988,
		9.314240, 18.426031, 26.647882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.887342, 18.034349, 27.175667>,  <9.542028, 17.764143, 26.643690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.887342, 18.034349, 27.175667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611213, 18.313440, 27.099115>,  <9.445535, 18.480896, 27.053185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611213, 18.313440, 27.099115>,  <9.887342, 18.034349, 27.175667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611213, 18.313440, 27.099115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129935, 0.140658, 0.981495,
		0.711736, 0.702417, -0.006441,
		-0.690325, 0.697728, -0.191380,
		9.404116, 18.522758, 27.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.088864, 18.533958, 27.618860>,  <9.887342, 18.034349, 27.175667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.088864, 18.533958, 27.618860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.703177, 18.587076, 27.527077>,  <9.471766, 18.618946, 27.472008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.703177, 18.587076, 27.527077>,  <10.088864, 18.533958, 27.618860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.703177, 18.587076, 27.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210736, 0.141235, 0.967286,
		0.160858, 0.981029, -0.108197,
		-0.964217, 0.132795, -0.229457,
		9.413912, 18.626915, 27.458241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851130, 19.192591, 27.856899>,  <10.088864, 18.533958, 27.618860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851130, 19.192591, 27.856899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531460, 18.952463, 27.844624>,  <9.339658, 18.808388, 27.837259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531460, 18.952463, 27.844624>,  <9.851130, 19.192591, 27.856899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531460, 18.952463, 27.844624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195653, 0.211514, 0.957592,
		-0.568367, 0.771286, -0.286490,
		-0.799173, -0.600317, -0.030687,
		9.291708, 18.772367, 27.835417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.197121, 19.556778, 27.994373>,  <9.851130, 19.192591, 27.856899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.197121, 19.556778, 27.994373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148947, 19.173559, 28.098408>,  <9.120042, 18.943628, 28.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148947, 19.173559, 28.098408>,  <9.197121, 19.556778, 27.994373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.148947, 19.173559, 28.098408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096653, 0.272065, 0.957412,
		-0.988005, 0.090169, -0.125364,
		-0.120436, -0.958045, 0.260086,
		9.112816, 18.886147, 28.176434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.415088, 19.491508, 28.649492>,  <9.197121, 19.556778, 27.994373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.415088, 19.491508, 28.649492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.086825, 19.696203, 28.751198>,  <8.889868, 19.819019, 28.812222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.086825, 19.696203, 28.751198>,  <9.415088, 19.491508, 28.649492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.086825, 19.696203, 28.751198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079843, -0.337912, 0.937785,
		0.565818, 0.789899, 0.236450,
		-0.820655, 0.511737, 0.254265,
		8.840629, 19.849724, 28.827477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.596454, 19.893421, 29.347607>,  <9.415088, 19.491508, 28.649492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.596454, 19.893421, 29.347607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201609, 19.868887, 29.288485>,  <8.964702, 19.854166, 29.253012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201609, 19.868887, 29.288485>,  <9.596454, 19.893421, 29.347607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.201609, 19.868887, 29.288485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121074, -0.317708, 0.940427,
		-0.104642, 0.946203, 0.306187,
		-0.987113, -0.061337, -0.147806,
		8.905475, 19.850485, 29.244143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.163671, 20.128286, 29.973337>,  <9.596454, 19.893421, 29.347607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.163671, 20.128286, 29.973337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.998567, 19.854572, 29.732876>,  <8.899504, 19.690344, 29.588600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.998567, 19.854572, 29.732876>,  <9.163671, 20.128286, 29.973337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.998567, 19.854572, 29.732876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222173, -0.564424, 0.795025,
		-0.883328, 0.461715, 0.080943,
		-0.412761, -0.684284, -0.601152,
		8.874739, 19.649286, 29.552530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.705660, 19.957785, 30.406309>,  <9.163671, 20.128286, 29.973337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.705660, 19.957785, 30.406309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.732361, 19.649515, 30.152821>,  <8.748382, 19.464554, 30.000727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.732361, 19.649515, 30.152821>,  <8.705660, 19.957785, 30.406309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.732361, 19.649515, 30.152821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063257, -0.637131, 0.768155,
		-0.995762, -0.011189, -0.091281,
		0.066752, -0.770674, -0.633723,
		8.752387, 19.418312, 29.962704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.187730, 19.524523, 30.568813>,  <8.705660, 19.957785, 30.406309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.187730, 19.524523, 30.568813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481256, 19.303152, 30.411215>,  <8.657372, 19.170330, 30.316656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481256, 19.303152, 30.411215>,  <8.187730, 19.524523, 30.568813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.481256, 19.303152, 30.411215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031752, -0.551386, 0.833646,
		-0.678608, -0.624252, -0.387042,
		0.733814, -0.553429, -0.393996,
		8.701400, 19.137123, 30.293016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.924893, 18.854034, 30.480919>,  <8.187730, 19.524523, 30.568813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.924893, 18.854034, 30.480919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.311574, 18.891048, 30.576353>,  <8.543583, 18.913258, 30.633614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.311574, 18.891048, 30.576353>,  <7.924893, 18.854034, 30.480919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.311574, 18.891048, 30.576353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135281, -0.606607, 0.783407,
		0.217220, -0.789598, -0.573891,
		0.966703, 0.092535, 0.238585,
		8.601585, 18.918808, 30.647928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339056, 18.205784, 30.427784>,  <7.924893, 18.854034, 30.480919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339056, 18.205784, 30.427784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.487695, 18.452906, 30.704979>,  <8.576878, 18.601179, 30.871296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.487695, 18.452906, 30.704979>,  <8.339056, 18.205784, 30.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.487695, 18.452906, 30.704979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170879, -0.688169, 0.705141,
		0.912533, -0.380445, -0.150151,
		0.371596, 0.617807, 0.692987,
		8.599174, 18.638248, 30.912874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.989077, 17.524227, 30.137484>,  <8.339056, 18.205784, 30.427784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.989077, 17.524227, 30.137484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868058, 17.271744, 29.851814>,  <7.795446, 17.120255, 29.680412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868058, 17.271744, 29.851814>,  <7.989077, 17.524227, 30.137484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.868058, 17.271744, 29.851814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914692, -0.018373, 0.403733,
		-0.267961, 0.775396, -0.571802,
		-0.302548, -0.631207, -0.714172,
		7.777293, 17.082382, 29.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.678872, 17.235209, 30.122318>,  <7.989077, 17.524227, 30.137484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.678872, 17.235209, 30.122318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.948080, 17.057280, 30.358683>,  <9.109605, 16.950521, 30.500502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.948080, 17.057280, 30.358683>,  <8.678872, 17.235209, 30.122318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.948080, 17.057280, 30.358683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573106, -0.818669, 0.036468,
		0.467539, -0.363198, -0.805912,
		0.673021, -0.444823, 0.590911,
		9.149986, 16.923832, 30.535955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.500290, 16.542639, 30.085337>,  <8.678872, 17.235209, 30.122318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.500290, 16.542639, 30.085337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818643, 16.534454, 30.327379>,  <9.009654, 16.529543, 30.472605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818643, 16.534454, 30.327379>,  <8.500290, 16.542639, 30.085337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.818643, 16.534454, 30.327379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277069, -0.900948, 0.333954,
		0.538336, -0.433444, -0.722717,
		0.795881, -0.020463, 0.605107,
		9.057407, 16.528315, 30.508911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.194466, 16.078848, 30.239059>,  <8.500290, 16.542639, 30.085337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.194466, 16.078848, 30.239059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118335, 16.384171, 29.992113>,  <9.072657, 16.567364, 29.843945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118335, 16.384171, 29.992113>,  <9.194466, 16.078848, 30.239059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118335, 16.384171, 29.992113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479292, -0.476573, -0.736992,
		-0.856770, -0.436168, -0.275142,
		-0.190327, 0.763305, -0.617366,
		9.061236, 16.613163, 29.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084406, 15.854029, 29.644171>,  <9.194466, 16.078848, 30.239059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084406, 15.854029, 29.644171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177914, 16.231602, 29.550924>,  <9.234018, 16.458145, 29.494976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177914, 16.231602, 29.550924>,  <9.084406, 15.854029, 29.644171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177914, 16.231602, 29.550924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683597, -0.330062, -0.650964,
		-0.691409, -0.007183, -0.722428,
		0.233770, 0.943932, -0.233118,
		9.248045, 16.514782, 29.480989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.113480, 15.876648, 28.847582>,  <9.084406, 15.854029, 29.644171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.113480, 15.876648, 28.847582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334881, 16.174763, 28.996273>,  <9.467722, 16.353632, 29.085487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334881, 16.174763, 28.996273>,  <9.113480, 15.876648, 28.847582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.334881, 16.174763, 28.996273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723435, -0.209098, -0.657967,
		-0.412646, 0.633108, -0.654903,
		0.553503, 0.745287, 0.371729,
		9.500932, 16.398348, 29.107792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.168942, 16.274782, 28.303148>,  <9.113480, 15.876648, 28.847582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.168942, 16.274782, 28.303148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479940, 16.335800, 28.547192>,  <9.666539, 16.372412, 28.693617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479940, 16.335800, 28.547192>,  <9.168942, 16.274782, 28.303148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479940, 16.335800, 28.547192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628487, -0.153735, -0.762476,
		-0.022517, 0.976266, -0.215400,
		0.777494, 0.152545, 0.610109,
		9.713189, 16.381563, 28.730225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.611937, 16.877142, 27.969307>,  <9.168942, 16.274782, 28.303148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.611937, 16.877142, 27.969307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.833044, 16.662951, 28.224716>,  <9.965709, 16.534435, 28.377962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.833044, 16.662951, 28.224716>,  <9.611937, 16.877142, 27.969307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.833044, 16.662951, 28.224716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686526, -0.141707, -0.713163,
		0.472366, 0.832576, 0.289288,
		0.552769, -0.535477, 0.638522,
		9.998875, 16.502308, 28.416273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331582, 16.953781, 27.722395>,  <9.611937, 16.877142, 27.969307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331582, 16.953781, 27.722395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395215, 16.663128, 27.989738>,  <10.433394, 16.488737, 28.150145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395215, 16.663128, 27.989738>,  <10.331582, 16.953781, 27.722395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395215, 16.663128, 27.989738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709170, -0.386880, -0.589408,
		0.686856, 0.567742, 0.453759,
		0.159082, -0.726631, 0.668357,
		10.442940, 16.445139, 28.190245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.985683, 16.833548, 27.677862>,  <10.331582, 16.953781, 27.722395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.985683, 16.833548, 27.677862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839955, 16.505075, 27.853558>,  <10.752519, 16.307991, 27.958975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839955, 16.505075, 27.853558>,  <10.985683, 16.833548, 27.677862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.839955, 16.505075, 27.853558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523076, -0.570666, -0.633034,
		0.770495, -0.000871, 0.637445,
		-0.364320, -0.821181, 0.439240,
		10.730659, 16.258720, 27.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.596991, 16.438473, 27.749659>,  <10.985683, 16.833548, 27.677862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.596991, 16.438473, 27.749659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.276167, 16.200680, 27.772617>,  <11.083673, 16.058004, 27.786392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.276167, 16.200680, 27.772617>,  <11.596991, 16.438473, 27.749659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276167, 16.200680, 27.772617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434511, -0.646750, -0.626829,
		0.409759, -0.477814, 0.777040,
		-0.802058, -0.594481, 0.057396,
		11.035549, 16.022335, 27.789837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860057, 15.824305, 27.892538>,  <11.596991, 16.438473, 27.749659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860057, 15.824305, 27.892538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.498973, 15.727076, 27.750534>,  <11.282323, 15.668738, 27.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.498973, 15.727076, 27.750534>,  <11.860057, 15.824305, 27.892538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.498973, 15.727076, 27.750534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422669, -0.655211, -0.626138,
		-0.080409, -0.715272, 0.694205,
		-0.902710, -0.243072, -0.355008,
		11.228160, 15.654154, 27.644032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768287, 15.064606, 27.903839>,  <11.860057, 15.824305, 27.892538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768287, 15.064606, 27.903839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515634, 15.199535, 27.624626>,  <11.364041, 15.280493, 27.457098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515634, 15.199535, 27.624626>,  <11.768287, 15.064606, 27.903839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515634, 15.199535, 27.624626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251446, -0.762570, -0.596039,
		-0.733359, -0.551995, 0.396845,
		-0.631633, 0.337325, -0.698034,
		11.326143, 15.300733, 27.415216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.590537, 14.547456, 27.554358>,  <11.768287, 15.064606, 27.903839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.590537, 14.547456, 27.554358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.470487, 14.821676, 27.289045>,  <11.398457, 14.986209, 27.129858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.470487, 14.821676, 27.289045>,  <11.590537, 14.547456, 27.554358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.470487, 14.821676, 27.289045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178399, -0.642729, -0.745032,
		-0.937069, -0.341933, 0.070598,
		-0.300127, 0.685551, -0.663282,
		11.380448, 15.027342, 27.090061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085832, 14.254075, 27.194519>,  <11.590537, 14.547456, 27.554358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085832, 14.254075, 27.194519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220181, 14.547022, 26.957596>,  <11.300791, 14.722790, 26.815443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220181, 14.547022, 26.957596>,  <11.085832, 14.254075, 27.194519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220181, 14.547022, 26.957596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061562, -0.610424, -0.789679,
		-0.939893, 0.301697, -0.159939,
		0.335874, 0.732367, -0.592306,
		11.320944, 14.766732, 26.779903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738579, 14.264605, 26.559462>,  <11.085832, 14.254075, 27.194519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738579, 14.264605, 26.559462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.052658, 14.488231, 26.452944>,  <11.241105, 14.622406, 26.389034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.052658, 14.488231, 26.452944>,  <10.738579, 14.264605, 26.559462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.052658, 14.488231, 26.452944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103306, -0.542262, -0.833834,
		-0.610568, 0.627215, -0.483537,
		0.785197, 0.559065, -0.266293,
		11.288218, 14.655951, 26.373056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660863, 14.476362, 25.881340>,  <10.738579, 14.264605, 26.559462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660863, 14.476362, 25.881340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053470, 14.526925, 25.938816>,  <11.289034, 14.557262, 25.973303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.053470, 14.526925, 25.938816>,  <10.660863, 14.476362, 25.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.053470, 14.526925, 25.938816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177493, -0.320484, -0.930476,
		-0.071568, 0.938782, -0.336997,
		0.981516, 0.126407, 0.143691,
		11.347924, 14.564847, 25.981924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.908295, 14.845634, 25.299210>,  <10.660863, 14.476362, 25.881340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.908295, 14.845634, 25.299210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.244016, 14.683590, 25.444239>,  <11.445448, 14.586364, 25.531256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.244016, 14.683590, 25.444239>,  <10.908295, 14.845634, 25.299210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244016, 14.683590, 25.444239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278681, -0.252047, -0.926719,
		0.466808, 0.878840, -0.098647,
		0.839302, -0.405109, 0.362574,
		11.495806, 14.562057, 25.553011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.347902, 15.040590, 24.854982>,  <10.908295, 14.845634, 25.299210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.347902, 15.040590, 24.854982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.492928, 14.707499, 25.022367>,  <11.579943, 14.507644, 25.122799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.492928, 14.707499, 25.022367>,  <11.347902, 15.040590, 24.854982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.492928, 14.707499, 25.022367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401358, -0.265725, -0.876529,
		0.841106, 0.485750, 0.237880,
		0.362563, -0.832729, 0.418462,
		11.601697, 14.457680, 25.147905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083766, 15.001431, 24.662296>,  <11.347902, 15.040590, 24.854982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083766, 15.001431, 24.662296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951232, 14.637461, 24.762100>,  <11.871712, 14.419079, 24.821983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951232, 14.637461, 24.762100>,  <12.083766, 15.001431, 24.662296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.951232, 14.637461, 24.762100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156665, -0.313834, -0.936464,
		0.930416, -0.271194, 0.246537,
		-0.331335, -0.909924, 0.249510,
		11.851831, 14.364484, 24.836952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552917, 14.527482, 24.296341>,  <12.083766, 15.001431, 24.662296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552917, 14.527482, 24.296341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.237121, 14.311057, 24.412239>,  <12.047643, 14.181202, 24.481777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.237121, 14.311057, 24.412239>,  <12.552917, 14.527482, 24.296341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.237121, 14.311057, 24.412239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023070, -0.445590, -0.894940,
		0.613326, -0.713233, 0.339308,
		-0.789492, -0.541063, 0.289746,
		12.000273, 14.148739, 24.499163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699693, 13.782210, 24.152153>,  <12.552917, 14.527482, 24.296341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699693, 13.782210, 24.152153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.300167, 13.801690, 24.152237>,  <12.060452, 13.813377, 24.152287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.300167, 13.801690, 24.152237>,  <12.699693, 13.782210, 24.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.300167, 13.801690, 24.152237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018102, -0.367302, -0.929926,
		-0.045209, -0.928826, 0.367748,
		-0.998813, 0.048698, 0.000208,
		12.000523, 13.816299, 24.152300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.432600, 13.190211, 23.903572>,  <12.699693, 13.782210, 24.152153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.432600, 13.190211, 23.903572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119863, 13.436107, 23.861973>,  <11.932220, 13.583644, 23.837013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.119863, 13.436107, 23.861973>,  <12.432600, 13.190211, 23.903572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119863, 13.436107, 23.861973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095805, -0.283282, -0.954239,
		-0.616069, -0.736103, 0.280377,
		-0.781844, 0.614739, -0.103999,
		11.885309, 13.620528, 23.830772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820301, 12.872261, 23.832458>,  <12.432600, 13.190211, 23.903572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820301, 12.872261, 23.832458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701951, 13.215271, 23.664120>,  <11.630941, 13.421077, 23.563116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701951, 13.215271, 23.664120>,  <11.820301, 12.872261, 23.832458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.701951, 13.215271, 23.664120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301742, -0.501915, -0.810575,
		-0.906317, -0.112842, 0.407255,
		-0.295874, 0.857524, -0.420845,
		11.613189, 13.472528, 23.537867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.205556, 12.704609, 23.457745>,  <11.820301, 12.872261, 23.832458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.205556, 12.704609, 23.457745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324811, 13.042425, 23.279816>,  <11.396364, 13.245115, 23.173059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324811, 13.042425, 23.279816>,  <11.205556, 12.704609, 23.457745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324811, 13.042425, 23.279816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171304, -0.411106, -0.895347,
		-0.939025, 0.343137, 0.022107,
		0.298138, 0.844541, -0.444820,
		11.414252, 13.295787, 23.146370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.679111, 12.851148, 23.022751>,  <11.205556, 12.704609, 23.457745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.679111, 12.851148, 23.022751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.963854, 13.089004, 22.873262>,  <11.134699, 13.231717, 22.783569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.963854, 13.089004, 22.873262>,  <10.679111, 12.851148, 23.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.963854, 13.089004, 22.873262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092925, -0.447694, -0.889346,
		-0.696152, 0.667813, -0.263436,
		0.711855, 0.594640, -0.373719,
		11.177410, 13.267396, 22.761147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.405356, 13.044381, 22.400274>,  <10.679111, 12.851148, 23.022751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.405356, 13.044381, 22.400274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.799483, 13.106813, 22.372591>,  <11.035959, 13.144273, 22.355980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.799483, 13.106813, 22.372591>,  <10.405356, 13.044381, 22.400274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.799483, 13.106813, 22.372591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011260, -0.345075, -0.938508,
		-0.170366, 0.925506, -0.338250,
		0.985317, 0.156081, -0.069210,
		11.095078, 13.153638, 22.351828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.440784, 13.411707, 21.751467>,  <10.405356, 13.044381, 22.400274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.440784, 13.411707, 21.751467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.810775, 13.275109, 21.818155>,  <11.032769, 13.193151, 21.858170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.810775, 13.275109, 21.818155>,  <10.440784, 13.411707, 21.751467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.810775, 13.275109, 21.818155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087616, -0.235263, -0.967975,
		0.369782, 0.909963, -0.187693,
		0.924978, -0.341495, 0.166723,
		11.088268, 13.172661, 21.868172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823204, 13.597666, 21.228443>,  <10.440784, 13.411707, 21.751467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823204, 13.597666, 21.228443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.075688, 13.321532, 21.369871>,  <11.227179, 13.155852, 21.454729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.075688, 13.321532, 21.369871>,  <10.823204, 13.597666, 21.228443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.075688, 13.321532, 21.369871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281589, -0.220789, -0.933788,
		0.722690, 0.688978, 0.055027,
		0.631210, -0.690334, 0.353571,
		11.265052, 13.114432, 21.475943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510650, 13.882488, 21.045164>,  <10.823204, 13.597666, 21.228443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510650, 13.882488, 21.045164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553182, 13.487155, 21.088787>,  <11.578701, 13.249955, 21.114962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553182, 13.487155, 21.088787>,  <11.510650, 13.882488, 21.045164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.553182, 13.487155, 21.088787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418589, -0.054996, -0.906509,
		0.901930, 0.142039, 0.407857,
		0.106330, -0.988332, 0.109059,
		11.585080, 13.190656, 21.121504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.224574, 13.725431, 20.835934>,  <11.510650, 13.882488, 21.045164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.224574, 13.725431, 20.835934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.011645, 13.390682, 20.784901>,  <11.883888, 13.189833, 20.754282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.011645, 13.390682, 20.784901>,  <12.224574, 13.725431, 20.835934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.011645, 13.390682, 20.784901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395839, -0.112850, -0.911360,
		0.748295, -0.535638, 0.391340,
		-0.532321, -0.836873, -0.127582,
		11.851949, 13.139620, 20.746626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648298, 13.320920, 20.427389>,  <12.224574, 13.725431, 20.835934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648298, 13.320920, 20.427389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311541, 13.106417, 20.403254>,  <12.109486, 12.977715, 20.388771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311541, 13.106417, 20.403254>,  <12.648298, 13.320920, 20.427389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311541, 13.106417, 20.403254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262034, -0.308486, -0.914426,
		0.471755, -0.785661, 0.400230,
		-0.841894, -0.536259, -0.060340,
		12.058972, 12.945539, 20.385151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764787, 12.583440, 20.231878>,  <12.648298, 13.320920, 20.427389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764787, 12.583440, 20.231878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387694, 12.632421, 20.107773>,  <12.161439, 12.661811, 20.033310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387694, 12.632421, 20.107773>,  <12.764787, 12.583440, 20.231878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.387694, 12.632421, 20.107773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256553, -0.328247, -0.909084,
		-0.213163, -0.936621, 0.278032,
		-0.942731, 0.122454, -0.310263,
		12.104876, 12.669158, 20.014694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688895, 11.948297, 19.832182>,  <12.764787, 12.583440, 20.231878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688895, 11.948297, 19.832182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400440, 12.199911, 19.716063>,  <12.227367, 12.350880, 19.646391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400440, 12.199911, 19.716063>,  <12.688895, 11.948297, 19.832182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400440, 12.199911, 19.716063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077477, -0.343175, -0.936071,
		-0.688447, -0.697526, 0.198740,
		-0.721137, 0.629037, -0.290300,
		12.184099, 12.388622, 19.628973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123567, 11.546450, 19.590984>,  <12.688895, 11.948297, 19.832182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123567, 11.546450, 19.590984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096914, 11.909365, 19.424906>,  <12.080923, 12.127114, 19.325258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096914, 11.909365, 19.424906>,  <12.123567, 11.546450, 19.590984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096914, 11.909365, 19.424906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115513, -0.420338, -0.899985,
		-0.991069, -0.012005, 0.132811,
		-0.066630, 0.907288, -0.415197,
		12.076925, 12.181551, 19.300346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757351, 11.368308, 18.911884>,  <12.123567, 11.546450, 19.590984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757351, 11.368308, 18.911884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872079, 11.751191, 18.896458>,  <11.940915, 11.980921, 18.887201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872079, 11.751191, 18.896458>,  <11.757351, 11.368308, 18.911884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872079, 11.751191, 18.896458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281265, -0.122625, -0.951764,
		-0.915765, 0.262137, -0.304400,
		0.286819, 0.957208, -0.038565,
		11.958124, 12.038354, 18.884888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437631, 11.662247, 18.345881>,  <11.757351, 11.368308, 18.911884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437631, 11.662247, 18.345881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759487, 11.886721, 18.423471>,  <11.952600, 12.021404, 18.470026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759487, 11.886721, 18.423471>,  <11.437631, 11.662247, 18.345881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759487, 11.886721, 18.423471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230824, 0.005353, -0.972981,
		-0.547059, 0.827674, -0.125227,
		0.804640, 0.561184, 0.193976,
		12.000879, 12.055076, 18.481665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294019, 12.336811, 18.019720>,  <11.437631, 11.662247, 18.345881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294019, 12.336811, 18.019720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685680, 12.264446, 18.056662>,  <11.920677, 12.221027, 18.078827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685680, 12.264446, 18.056662>,  <11.294019, 12.336811, 18.019720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.685680, 12.264446, 18.056662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107576, 0.076187, -0.991273,
		0.172297, 0.980544, 0.094060,
		0.979153, -0.180912, 0.092356,
		11.979426, 12.210173, 18.084368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683409, 12.901521, 17.706015>,  <11.294019, 12.336811, 18.019720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683409, 12.901521, 17.706015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908743, 12.571073, 17.711355>,  <12.043943, 12.372804, 17.714560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908743, 12.571073, 17.711355>,  <11.683409, 12.901521, 17.706015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908743, 12.571073, 17.711355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185152, 0.110472, -0.976481,
		0.805216, 0.552558, 0.215190,
		0.563335, -0.826121, 0.013354,
		12.077744, 12.323236, 17.715361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214765, 13.128779, 17.276123>,  <11.683409, 12.901521, 17.706015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214765, 13.128779, 17.276123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.261285, 12.732448, 17.303637>,  <12.289197, 12.494649, 17.320145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.261285, 12.732448, 17.303637>,  <12.214765, 13.128779, 17.276123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.261285, 12.732448, 17.303637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223431, -0.041380, -0.973841,
		0.967757, 0.128626, 0.216569,
		0.116300, -0.990830, 0.068785,
		12.296175, 12.435199, 17.324272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.680987, 12.883682, 16.830755>,  <12.214765, 13.128779, 17.276123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.680987, 12.883682, 16.830755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490743, 12.536936, 16.890539>,  <12.376596, 12.328888, 16.926411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490743, 12.536936, 16.890539>,  <12.680987, 12.883682, 16.830755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490743, 12.536936, 16.890539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032466, -0.152495, -0.987771,
		0.879056, -0.474647, 0.044384,
		-0.475611, -0.866865, 0.149461,
		12.348060, 12.276876, 16.935377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.053265, 12.318589, 16.564472>,  <12.680987, 12.883682, 16.830755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.053265, 12.318589, 16.564472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687116, 12.158401, 16.581043>,  <12.467426, 12.062289, 16.590986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687116, 12.158401, 16.581043>,  <13.053265, 12.318589, 16.564472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.687116, 12.158401, 16.581043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112882, -0.354064, -0.928384,
		0.386458, -0.845141, 0.369307,
		-0.915373, -0.400470, 0.041430,
		12.412504, 12.038260, 16.593472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.175869, 11.672714, 16.284689>,  <13.053265, 12.318589, 16.564472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.175869, 11.672714, 16.284689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787220, 11.756484, 16.240705>,  <12.554030, 11.806746, 16.214315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787220, 11.756484, 16.240705>,  <13.175869, 11.672714, 16.284689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787220, 11.756484, 16.240705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035048, -0.332271, -0.942533,
		-0.233922, -0.919641, 0.315502,
		-0.971623, 0.209421, -0.109957,
		12.495733, 11.819311, 16.207718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.681377, 11.920550, 16.820175>,  <13.175869, 11.672714, 16.284689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.681377, 11.920550, 16.820175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.041473, 11.869834, 16.653564>,  <14.257531, 11.839404, 16.553598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.041473, 11.869834, 16.653564>,  <13.681377, 11.920550, 16.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.041473, 11.869834, 16.653564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418622, -0.010924, 0.908095,
		-0.119690, -0.991869, 0.043244,
		0.900239, -0.126793, -0.416525,
		14.311545, 11.831797, 16.528606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999003, 11.434695, 17.306076>,  <13.681377, 11.920550, 16.820175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999003, 11.434695, 17.306076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306518, 11.580614, 17.095974>,  <14.491026, 11.668165, 16.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306518, 11.580614, 17.095974>,  <13.999003, 11.434695, 17.306076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306518, 11.580614, 17.095974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583801, -0.065067, 0.809285,
		0.261048, -0.928811, -0.262991,
		0.768785, 0.364797, -0.525255,
		14.537153, 11.690053, 16.938396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602252, 11.016070, 17.519693>,  <13.999003, 11.434695, 17.306076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602252, 11.016070, 17.519693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.734583, 11.364182, 17.373726>,  <14.813982, 11.573050, 17.286146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.734583, 11.364182, 17.373726>,  <14.602252, 11.016070, 17.519693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734583, 11.364182, 17.373726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614907, 0.094534, 0.782913,
		0.715850, -0.483401, -0.503867,
		0.330828, 0.870280, -0.364919,
		14.833832, 11.625266, 17.264250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320148, 11.034190, 17.535419>,  <14.602252, 11.016070, 17.519693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320148, 11.034190, 17.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239018, 11.425178, 17.512045>,  <15.190340, 11.659770, 17.498020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239018, 11.425178, 17.512045>,  <15.320148, 11.034190, 17.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239018, 11.425178, 17.512045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403034, 0.137722, 0.904763,
		0.892426, 0.159957, -0.421887,
		-0.202826, 0.977469, -0.058438,
		15.178170, 11.718418, 17.494513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903812, 11.279796, 17.832064>,  <15.320148, 11.034190, 17.535419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.903812, 11.279796, 17.832064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678548, 11.610288, 17.826492>,  <15.543389, 11.808583, 17.823149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678548, 11.610288, 17.826492>,  <15.903812, 11.279796, 17.832064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678548, 11.610288, 17.826492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422169, 0.302159, 0.854677,
		0.710369, 0.475440, -0.518973,
		-0.563160, 0.826230, -0.013929,
		15.509600, 11.858157, 17.822313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340847, 11.924170, 18.036034>,  <15.903812, 11.279796, 17.832064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340847, 11.924170, 18.036034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967360, 12.047052, 18.109566>,  <15.743267, 12.120782, 18.153685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967360, 12.047052, 18.109566>,  <16.340847, 11.924170, 18.036034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967360, 12.047052, 18.109566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344975, 0.634755, 0.691432,
		0.095725, 0.709020, -0.698661,
		-0.933718, 0.307208, 0.183832,
		15.687244, 12.139215, 18.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399574, 12.531362, 18.266348>,  <16.340847, 11.924170, 18.036034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399574, 12.531362, 18.266348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035002, 12.443089, 18.405254>,  <15.816258, 12.390126, 18.488598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035002, 12.443089, 18.405254>,  <16.399574, 12.531362, 18.266348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035002, 12.443089, 18.405254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180692, 0.543583, 0.819676,
		-0.369655, 0.809826, -0.455563,
		-0.911431, -0.220681, 0.347267,
		15.761573, 12.376885, 18.509434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284697, 13.148626, 18.635983>,  <16.399574, 12.531362, 18.266348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284697, 13.148626, 18.635983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022964, 12.871766, 18.757818>,  <15.865925, 12.705649, 18.830919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022964, 12.871766, 18.757818>,  <16.284697, 13.148626, 18.635983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022964, 12.871766, 18.757818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038326, 0.432624, 0.900760,
		-0.755236, 0.577722, -0.309607,
		-0.654332, -0.692152, 0.304591,
		15.826665, 12.664121, 18.849195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818829, 13.473248, 19.203474>,  <16.284697, 13.148626, 18.635983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818829, 13.473248, 19.203474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797197, 13.082107, 19.284351>,  <15.784219, 12.847423, 19.332878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797197, 13.082107, 19.284351>,  <15.818829, 13.473248, 19.203474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797197, 13.082107, 19.284351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111896, 0.195278, 0.974344,
		-0.992247, 0.075314, 0.098858,
		-0.054077, -0.977852, 0.202191,
		15.780974, 12.788751, 19.345009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298920, 13.424316, 19.661795>,  <15.818829, 13.473248, 19.203474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298920, 13.424316, 19.661795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494516, 13.078156, 19.705545>,  <15.611875, 12.870459, 19.731796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494516, 13.078156, 19.705545>,  <15.298920, 13.424316, 19.661795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494516, 13.078156, 19.705545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220037, -0.001041, 0.975491,
		-0.844079, -0.501075, -0.190930,
		0.488993, -0.865403, 0.109377,
		15.641214, 12.818535, 19.738358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869514, 12.976956, 20.148050>,  <15.298920, 13.424316, 19.661795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869514, 12.976956, 20.148050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239873, 12.826541, 20.162502>,  <15.462089, 12.736292, 20.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239873, 12.826541, 20.162502>,  <14.869514, 12.976956, 20.148050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239873, 12.826541, 20.162502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030527, 0.020855, 0.999316,
		-0.376535, -0.926369, 0.007830,
		0.925899, -0.376039, 0.036132,
		15.517643, 12.713730, 20.173342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770269, 12.367525, 20.546665>,  <14.869514, 12.976956, 20.148050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.770269, 12.367525, 20.546665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152616, 12.484849, 20.553497>,  <15.382023, 12.555243, 20.557596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152616, 12.484849, 20.553497>,  <14.770269, 12.367525, 20.546665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152616, 12.484849, 20.553497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067349, 0.162148, 0.984465,
		0.285983, -0.942167, 0.174745,
		0.955865, 0.293309, 0.017083,
		15.439375, 12.572842, 20.558622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214491, 11.971646, 21.108240>,  <14.770269, 12.367525, 20.546665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.214491, 11.971646, 21.108240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396213, 12.318991, 21.028687>,  <15.505246, 12.527397, 20.980955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396213, 12.318991, 21.028687>,  <15.214491, 11.971646, 21.108240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396213, 12.318991, 21.028687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051303, 0.248385, 0.967302,
		0.889368, -0.429247, 0.157392,
		0.454305, 0.868362, -0.198884,
		15.532504, 12.579499, 20.969021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874271, 12.140281, 21.454048>,  <15.214491, 11.971646, 21.108240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874271, 12.140281, 21.454048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714152, 12.502508, 21.397894>,  <15.618081, 12.719845, 21.364201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714152, 12.502508, 21.397894>,  <15.874271, 12.140281, 21.454048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714152, 12.502508, 21.397894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129181, 0.095904, 0.986972,
		0.907234, 0.413218, 0.078592,
		-0.400298, 0.905568, -0.140387,
		15.594063, 12.774179, 21.355778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758956, 12.268652, 22.143885>,  <15.874271, 12.140281, 21.454048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758956, 12.268652, 22.143885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625476, 12.590165, 21.946877>,  <15.545387, 12.783073, 21.828672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625476, 12.590165, 21.946877>,  <15.758956, 12.268652, 22.143885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625476, 12.590165, 21.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335384, 0.387053, 0.858899,
		0.881000, 0.451798, 0.140416,
		-0.333701, 0.803784, -0.492520,
		15.525366, 12.831301, 21.799120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013700, 12.860188, 22.509390>,  <15.758956, 12.268652, 22.143885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013700, 12.860188, 22.509390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688831, 12.986988, 22.313477>,  <15.493910, 13.063067, 22.195929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688831, 12.986988, 22.313477>,  <16.013700, 12.860188, 22.509390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688831, 12.986988, 22.313477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380516, 0.348550, 0.856575,
		0.442246, 0.882058, -0.162460,
		-0.812174, 0.316998, -0.489782,
		15.445179, 13.082088, 22.166542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865362, 13.527555, 22.736116>,  <16.013700, 12.860188, 22.509390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865362, 13.527555, 22.736116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514892, 13.449765, 22.559711>,  <15.304609, 13.403090, 22.453869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514892, 13.449765, 22.559711>,  <15.865362, 13.527555, 22.736116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514892, 13.449765, 22.559711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479094, 0.451532, 0.752720,
		0.052745, 0.870803, -0.488795,
		-0.876177, -0.194477, -0.441012,
		15.252038, 13.391422, 22.427408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527826, 14.171260, 22.625357>,  <15.865362, 13.527555, 22.736116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527826, 14.171260, 22.625357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236926, 13.896728, 22.628397>,  <15.062387, 13.732008, 22.630222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236926, 13.896728, 22.628397>,  <15.527826, 14.171260, 22.625357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236926, 13.896728, 22.628397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436270, 0.470775, 0.766837,
		-0.529883, 0.554365, -0.641797,
		-0.727250, -0.686331, 0.007603,
		15.018751, 13.690828, 22.630678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945545, 14.536836, 22.571325>,  <15.527826, 14.171260, 22.625357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945545, 14.536836, 22.571325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840435, 14.187342, 22.735050>,  <14.777369, 13.977645, 22.833284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840435, 14.187342, 22.735050>,  <14.945545, 14.536836, 22.571325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840435, 14.187342, 22.735050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384720, 0.483921, 0.786010,
		-0.884839, 0.049074, -0.463306,
		-0.262776, -0.873735, 0.409312,
		14.761602, 13.925221, 22.857843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196012, 14.628337, 22.804003>,  <14.945545, 14.536836, 22.571325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196012, 14.628337, 22.804003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332212, 14.304704, 22.995604>,  <14.413933, 14.110523, 23.110563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332212, 14.304704, 22.995604>,  <14.196012, 14.628337, 22.804003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332212, 14.304704, 22.995604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442797, 0.311426, 0.840800,
		-0.829451, -0.498394, -0.252219,
		0.340502, -0.809084, 0.479000,
		14.434363, 14.061978, 23.139303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601618, 14.365320, 23.137703>,  <14.196012, 14.628337, 22.804003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601618, 14.365320, 23.137703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927940, 14.221126, 23.318594>,  <14.123734, 14.134609, 23.427128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927940, 14.221126, 23.318594>,  <13.601618, 14.365320, 23.137703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927940, 14.221126, 23.318594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344923, 0.324374, 0.880801,
		-0.464207, -0.874546, 0.140286,
		0.815806, -0.360486, 0.452228,
		14.172682, 14.112980, 23.454262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338914, 13.918556, 23.767345>,  <13.601618, 14.365320, 23.137703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338914, 13.918556, 23.767345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.717048, 14.029445, 23.836037>,  <13.943928, 14.095978, 23.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.717048, 14.029445, 23.836037>,  <13.338914, 13.918556, 23.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717048, 14.029445, 23.836037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243118, 0.248168, 0.937713,
		0.217332, -0.928204, 0.301999,
		0.945336, 0.277217, 0.171729,
		14.000648, 14.112611, 23.887554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465096, 13.698732, 24.399620>,  <13.338914, 13.918556, 23.767345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.465096, 13.698732, 24.399620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.768641, 13.957314, 24.368055>,  <13.950768, 14.112462, 24.349117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.768641, 13.957314, 24.368055>,  <13.465096, 13.698732, 24.399620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768641, 13.957314, 24.368055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084128, 0.217462, 0.972436,
		0.645794, -0.731307, 0.219409,
		0.758863, 0.646452, -0.078912,
		13.996301, 14.151249, 24.344381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873549, 13.533766, 25.071590>,  <13.465096, 13.698732, 24.399620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873549, 13.533766, 25.071590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013856, 13.873162, 24.913084>,  <14.098040, 14.076800, 24.817980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013856, 13.873162, 24.913084>,  <13.873549, 13.533766, 25.071590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013856, 13.873162, 24.913084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247361, 0.324174, 0.913085,
		0.903203, -0.418301, -0.096174,
		0.350767, 0.848490, -0.396266,
		14.119086, 14.127709, 24.794205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447879, 13.619256, 25.413372>,  <13.873549, 13.533766, 25.071590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447879, 13.619256, 25.413372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342619, 13.984853, 25.289843>,  <14.279463, 14.204211, 25.215725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342619, 13.984853, 25.289843>,  <14.447879, 13.619256, 25.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342619, 13.984853, 25.289843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126593, 0.350049, 0.928138,
		0.956413, 0.205145, -0.207820,
		-0.263150, 0.913992, -0.308822,
		14.263674, 14.259050, 25.197197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925056, 14.041552, 25.757240>,  <14.447879, 13.619256, 25.413372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925056, 14.041552, 25.757240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649997, 14.302688, 25.630156>,  <14.484961, 14.459369, 25.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649997, 14.302688, 25.630156>,  <14.925056, 14.041552, 25.757240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649997, 14.302688, 25.630156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275541, 0.639511, 0.717707,
		0.671727, 0.405988, -0.619643,
		-0.687649, 0.652839, -0.317710,
		14.443702, 14.498540, 25.534842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247444, 14.672710, 25.625624>,  <14.925056, 14.041552, 25.757240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247444, 14.672710, 25.625624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860816, 14.733771, 25.708027>,  <14.628839, 14.770408, 25.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860816, 14.733771, 25.708027>,  <15.247444, 14.672710, 25.625624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.860816, 14.733771, 25.708027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256200, 0.606818, 0.752419,
		-0.010152, 0.780045, -0.625641,
		-0.966570, 0.152651, 0.206008,
		14.570845, 14.779567, 25.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259862, 15.318841, 25.923950>,  <15.247444, 14.672710, 25.625624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259862, 15.318841, 25.923950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886264, 15.210959, 26.017681>,  <14.662105, 15.146231, 26.073919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886264, 15.210959, 26.017681>,  <15.259862, 15.318841, 25.923950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886264, 15.210959, 26.017681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052430, 0.545299, 0.836600,
		-0.353414, 0.793667, -0.495167,
		-0.933996, -0.269705, 0.234329,
		14.606065, 15.130048, 26.087980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991297, 15.908157, 26.212111>,  <15.259862, 15.318841, 25.923950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991297, 15.908157, 26.212111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746694, 15.630366, 26.363771>,  <14.599932, 15.463692, 26.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746694, 15.630366, 26.363771>,  <14.991297, 15.908157, 26.212111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746694, 15.630366, 26.363771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076340, 0.528739, 0.845345,
		-0.787547, 0.487991, -0.376344,
		-0.611508, -0.694478, 0.379154,
		14.563241, 15.422023, 26.477518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358418, 16.211510, 26.399317>,  <14.991297, 15.908157, 26.212111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358418, 16.211510, 26.399317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411435, 15.881555, 26.619131>,  <14.443245, 15.683581, 26.751020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411435, 15.881555, 26.619131>,  <14.358418, 16.211510, 26.399317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411435, 15.881555, 26.619131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039294, 0.549620, 0.834490,
		-0.990398, -0.132199, 0.040435,
		0.132542, -0.824889, 0.549538,
		14.451198, 15.634088, 26.783993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841439, 16.159351, 26.835648>,  <14.358418, 16.211510, 26.399317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841439, 16.159351, 26.835648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106297, 15.917417, 27.012613>,  <14.265213, 15.772255, 27.118793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106297, 15.917417, 27.012613>,  <13.841439, 16.159351, 26.835648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106297, 15.917417, 27.012613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097948, 0.515461, 0.851297,
		-0.742946, -0.607017, 0.282068,
		0.662147, -0.604839, 0.442415,
		14.304941, 15.735965, 27.145338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513524, 15.943414, 27.514521>,  <13.841439, 16.159351, 26.835648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513524, 15.943414, 27.514521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904119, 15.875174, 27.567240>,  <14.138475, 15.834229, 27.598871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904119, 15.875174, 27.567240>,  <13.513524, 15.943414, 27.514521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904119, 15.875174, 27.567240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022875, 0.525908, 0.850234,
		-0.214364, -0.833256, 0.509639,
		0.976486, -0.170601, 0.131797,
		14.197064, 15.823994, 27.606779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485258, 15.996828, 28.117376>,  <13.513524, 15.943414, 27.514521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485258, 15.996828, 28.117376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.879486, 16.007559, 28.050522>,  <14.116023, 16.013998, 28.010408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.879486, 16.007559, 28.050522>,  <13.485258, 15.996828, 28.117376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.879486, 16.007559, 28.050522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122713, 0.566888, 0.814604,
		0.116601, -0.823358, 0.555415,
		0.985569, 0.026827, -0.167136,
		14.175157, 16.015606, 28.000381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.802261, 15.876739, 28.790014>,  <13.485258, 15.996828, 28.117376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.802261, 15.876739, 28.790014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076044, 16.064354, 28.566759>,  <14.240314, 16.176924, 28.432806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.076044, 16.064354, 28.566759>,  <13.802261, 15.876739, 28.790014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076044, 16.064354, 28.566759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189191, 0.625071, 0.757293,
		0.704076, -0.623931, 0.339097,
		0.684459, 0.469037, -0.558140,
		14.281382, 16.205065, 28.399317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544907, 15.927649, 29.236870>,  <13.802261, 15.876739, 28.790014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544907, 15.927649, 29.236870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.476085, 16.208363, 28.960350>,  <14.434792, 16.376791, 28.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.476085, 16.208363, 28.960350>,  <14.544907, 15.927649, 29.236870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476085, 16.208363, 28.960350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199743, 0.712040, 0.673128,
		0.964624, -0.022267, -0.262687,
		-0.172056, 0.701786, -0.691299,
		14.424468, 16.418898, 28.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077374, 16.525745, 29.320387>,  <14.544907, 15.927649, 29.236870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077374, 16.525745, 29.320387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722704, 16.633860, 29.170319>,  <14.509902, 16.698729, 29.080278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722704, 16.633860, 29.170319>,  <15.077374, 16.525745, 29.320387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722704, 16.633860, 29.170319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001934, 0.809192, 0.587541,
		0.462390, 0.521683, -0.716967,
		-0.886675, 0.270287, -0.375171,
		14.456701, 16.714945, 29.057768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.974085, 17.327944, 29.072971>,  <15.077374, 16.525745, 29.320387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.974085, 17.327944, 29.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601147, 17.207052, 29.152355>,  <14.377383, 17.134518, 29.199986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.601147, 17.207052, 29.152355>,  <14.974085, 17.327944, 29.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601147, 17.207052, 29.152355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067446, 0.684633, 0.725761,
		-0.355220, 0.663275, -0.658700,
		-0.932347, -0.302231, 0.198460,
		14.321443, 17.116383, 29.211893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711083, 18.047049, 29.240770>,  <14.974085, 17.327944, 29.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711083, 18.047049, 29.240770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482204, 17.768824, 29.414568>,  <14.344877, 17.601889, 29.518847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482204, 17.768824, 29.414568>,  <14.711083, 18.047049, 29.240770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482204, 17.768824, 29.414568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235758, 0.646941, 0.725179,
		-0.785499, 0.312510, -0.534162,
		-0.572197, -0.695561, 0.434495,
		14.310545, 17.560156, 29.544916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847398, 18.608078, 28.870823>,  <14.711083, 18.047049, 29.240770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847398, 18.608078, 28.870823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159331, 18.858469, 28.869675>,  <15.346492, 19.008703, 28.868986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159331, 18.858469, 28.869675>,  <14.847398, 18.608078, 28.870823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159331, 18.858469, 28.869675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140654, -0.179691, -0.973616,
		-0.609979, 0.758855, -0.228176,
		0.779835, 0.625979, -0.002872,
		15.393282, 19.046263, 28.868813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744389, 19.175146, 28.314060>,  <14.847398, 18.608078, 28.870823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744389, 19.175146, 28.314060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139830, 19.158827, 28.372026>,  <15.377094, 19.149036, 28.406807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139830, 19.158827, 28.372026>,  <14.744389, 19.175146, 28.314060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139830, 19.158827, 28.372026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145280, 0.006077, -0.989372,
		0.039483, 0.999149, 0.011935,
		0.988603, -0.040797, 0.144916,
		15.436410, 19.146587, 28.415501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100002, 19.646477, 27.714390>,  <14.744389, 19.175146, 28.314060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100002, 19.646477, 27.714390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435573, 19.492325, 27.868111>,  <15.636914, 19.399834, 27.960342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435573, 19.492325, 27.868111>,  <15.100002, 19.646477, 27.714390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435573, 19.492325, 27.868111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307122, -0.247724, -0.918863,
		0.449312, 0.888884, -0.089463,
		0.838925, -0.385380, 0.384301,
		15.687250, 19.376711, 27.983400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555151, 19.612394, 27.150490>,  <15.100002, 19.646477, 27.714390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555151, 19.612394, 27.150490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749021, 19.398624, 27.427467>,  <15.865342, 19.270363, 27.593655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749021, 19.398624, 27.427467>,  <15.555151, 19.612394, 27.150490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749021, 19.398624, 27.427467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378333, -0.585676, -0.716832,
		0.788642, 0.609404, -0.081671,
		0.484673, -0.534425, 0.692446,
		15.894423, 19.238297, 27.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314819, 19.588474, 26.917295>,  <15.555151, 19.612394, 27.150490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314819, 19.588474, 26.917295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229069, 19.283760, 27.161829>,  <16.177618, 19.100931, 27.308548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229069, 19.283760, 27.161829>,  <16.314819, 19.588474, 26.917295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229069, 19.283760, 27.161829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466703, -0.629702, -0.621018,
		0.858039, 0.152180, 0.490520,
		-0.214375, -0.761785, 0.611332,
		16.164757, 19.055225, 27.345228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904793, 19.176292, 26.931816>,  <16.314819, 19.588474, 26.917295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904793, 19.176292, 26.931816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579082, 18.963839, 27.025503>,  <16.383657, 18.836367, 27.081715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579082, 18.963839, 27.025503>,  <16.904793, 19.176292, 26.931816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579082, 18.963839, 27.025503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202279, -0.637820, -0.743148,
		0.544098, -0.557749, 0.626796,
		-0.814273, -0.531133, 0.234216,
		16.334801, 18.804499, 27.095768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106441, 18.465134, 26.963970>,  <16.904793, 19.176292, 26.931816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106441, 18.465134, 26.963970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711147, 18.404518, 26.955666>,  <16.473970, 18.368149, 26.950684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711147, 18.404518, 26.955666>,  <17.106441, 18.465134, 26.963970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711147, 18.404518, 26.955666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126232, -0.731383, -0.670183,
		0.086376, -0.664917, 0.741906,
		-0.988233, -0.151539, -0.020760,
		16.414677, 18.359056, 26.949438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085516, 17.772150, 26.976244>,  <17.106441, 18.465134, 26.963970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085516, 17.772150, 26.976244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737518, 17.893183, 26.820524>,  <16.528719, 17.965803, 26.727093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737518, 17.893183, 26.820524>,  <17.085516, 17.772150, 26.976244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737518, 17.893183, 26.820524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098784, -0.666579, -0.738860,
		-0.483064, -0.681261, 0.550030,
		-0.869994, 0.302582, -0.389298,
		16.476521, 17.983957, 26.703735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604874, 17.213263, 27.069353>,  <17.085516, 17.772150, 26.976244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604874, 17.213263, 27.069353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498051, 17.443180, 26.759956>,  <16.433958, 17.581131, 26.574318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498051, 17.443180, 26.759956>,  <16.604874, 17.213263, 27.069353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498051, 17.443180, 26.759956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072559, -0.788372, -0.610905,
		-0.960946, -0.219269, 0.168832,
		-0.267055, 0.574796, -0.773493,
		16.417934, 17.615620, 26.527908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981978, 16.886343, 26.736399>,  <16.604874, 17.213263, 27.069353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981978, 16.886343, 26.736399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151333, 17.125210, 26.463888>,  <16.252945, 17.268530, 26.300383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151333, 17.125210, 26.463888>,  <15.981978, 16.886343, 26.736399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151333, 17.125210, 26.463888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142666, -0.698669, -0.701076,
		-0.894646, 0.394020, -0.210612,
		0.423386, 0.597167, -0.681275,
		16.278349, 17.304359, 26.259506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519675, 16.706173, 26.175373>,  <15.981978, 16.886343, 26.736399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519675, 16.706173, 26.175373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813159, 16.918060, 26.005165>,  <15.989249, 17.045193, 25.903040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813159, 16.918060, 26.005165>,  <15.519675, 16.706173, 26.175373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813159, 16.918060, 26.005165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134554, -0.500583, -0.855168,
		-0.666007, 0.684700, -0.296006,
		0.733710, 0.529719, -0.425521,
		16.033272, 17.076977, 25.877508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269224, 16.824852, 25.473974>,  <15.519675, 16.706173, 26.175373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269224, 16.824852, 25.473974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663370, 16.891184, 25.458204>,  <15.899858, 16.930983, 25.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.663370, 16.891184, 25.458204>,  <15.269224, 16.824852, 25.473974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663370, 16.891184, 25.458204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016368, -0.322279, -0.946503,
		-0.169665, 0.932007, -0.320277,
		0.985366, 0.165831, -0.039424,
		15.958980, 16.940933, 25.446377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371032, 17.119423, 24.856617>,  <15.269224, 16.824852, 25.473974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371032, 17.119423, 24.856617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744411, 17.013279, 24.953169>,  <15.968437, 16.949593, 25.011101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744411, 17.013279, 24.953169>,  <15.371032, 17.119423, 24.856617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744411, 17.013279, 24.953169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193155, -0.195206, -0.961554,
		0.302275, 0.944182, -0.130958,
		0.933446, -0.265358, 0.241380,
		16.024445, 16.933672, 25.025583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858500, 17.508081, 24.380821>,  <15.371032, 17.119423, 24.856617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858500, 17.508081, 24.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023365, 17.171030, 24.519442>,  <16.122284, 16.968800, 24.602613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023365, 17.171030, 24.519442>,  <15.858500, 17.508081, 24.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023365, 17.171030, 24.519442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152277, -0.311305, -0.938030,
		0.898296, 0.439391, 0.000005,
		0.412161, -0.842629, 0.346553,
		16.147013, 16.918242, 24.623407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460587, 17.405224, 24.086596>,  <15.858500, 17.508081, 24.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460587, 17.405224, 24.086596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.409908, 17.028933, 24.212439>,  <16.379501, 16.803158, 24.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.409908, 17.028933, 24.212439>,  <16.460587, 17.405224, 24.086596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.409908, 17.028933, 24.212439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324747, -0.339020, -0.882952,
		0.937277, -0.009699, 0.348451,
		-0.126696, -0.940729, 0.314606,
		16.371899, 16.746714, 24.306820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043085, 16.912769, 23.926485>,  <16.460587, 17.405224, 24.086596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043085, 16.912769, 23.926485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765760, 16.633387, 23.997448>,  <16.599365, 16.465757, 24.040026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765760, 16.633387, 23.997448>,  <17.043085, 16.912769, 23.926485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765760, 16.633387, 23.997448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266764, -0.477441, -0.837190,
		0.669443, -0.533110, 0.517340,
		-0.693314, -0.698458, 0.177405,
		16.557766, 16.423849, 24.050669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.363546, 16.333778, 23.959143>,  <17.043085, 16.912769, 23.926485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.363546, 16.333778, 23.959143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989969, 16.209272, 23.888870>,  <16.765823, 16.134569, 23.846706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989969, 16.209272, 23.888870>,  <17.363546, 16.333778, 23.959143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989969, 16.209272, 23.888870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342400, -0.638160, -0.689576,
		0.102526, -0.704179, 0.702582,
		-0.933944, -0.311264, -0.175683,
		16.709785, 16.115894, 23.836164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422676, 15.655127, 23.960966>,  <17.363546, 16.333778, 23.959143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422676, 15.655127, 23.960966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084549, 15.738393, 23.764151>,  <16.881672, 15.788353, 23.646061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084549, 15.738393, 23.764151>,  <17.422676, 15.655127, 23.960966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084549, 15.738393, 23.764151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236768, -0.679626, -0.694298,
		-0.478930, -0.703402, 0.525215,
		-0.845320, 0.208166, -0.492036,
		16.830954, 15.800843, 23.616539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112682, 14.953329, 23.815031>,  <17.422676, 15.655127, 23.960966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112682, 14.953329, 23.815031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.958473, 15.231273, 23.572199>,  <16.865948, 15.398039, 23.426500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.958473, 15.231273, 23.572199>,  <17.112682, 14.953329, 23.815031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958473, 15.231273, 23.572199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139195, -0.606611, -0.782718,
		-0.912139, -0.386258, 0.137142,
		-0.385523, 0.694858, -0.607079,
		16.842817, 15.439730, 23.390076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583769, 14.655547, 23.441690>,  <17.112682, 14.953329, 23.815031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583769, 14.655547, 23.441690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734388, 14.960999, 23.231897>,  <16.824760, 15.144271, 23.106022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734388, 14.960999, 23.231897>,  <16.583769, 14.655547, 23.441690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734388, 14.960999, 23.231897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048581, -0.581650, -0.811987,
		-0.925123, 0.280271, -0.256116,
		0.376547, 0.763631, -0.524482,
		16.847353, 15.190088, 23.074553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209988, 14.616209, 22.696871>,  <16.583769, 14.655547, 23.441690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209988, 14.616209, 22.696871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531792, 14.849015, 22.649506>,  <16.724874, 14.988699, 22.621086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531792, 14.849015, 22.649506>,  <16.209988, 14.616209, 22.696871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531792, 14.849015, 22.649506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085725, -0.311066, -0.946514,
		-0.587720, 0.751330, -0.300149,
		0.804510, 0.582015, -0.118412,
		16.773146, 15.023620, 22.613981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205004, 14.749636, 22.018713>,  <16.209988, 14.616209, 22.696871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205004, 14.749636, 22.018713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583303, 14.845700, 22.106239>,  <16.810284, 14.903339, 22.158754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583303, 14.845700, 22.106239>,  <16.205004, 14.749636, 22.018713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583303, 14.845700, 22.106239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289889, -0.319653, -0.902101,
		-0.146706, 0.916594, -0.371932,
		0.945749, 0.240162, 0.218816,
		16.867027, 14.917749, 22.171885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431992, 14.920764, 21.387268>,  <16.205004, 14.749636, 22.018713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.431992, 14.920764, 21.387268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791119, 14.915550, 21.563339>,  <17.006594, 14.912422, 21.668982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791119, 14.915550, 21.563339>,  <16.431992, 14.920764, 21.387268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791119, 14.915550, 21.563339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395830, -0.414162, -0.819627,
		0.192988, 0.910110, -0.366682,
		0.897816, -0.013035, 0.440178,
		17.060463, 14.911640, 21.695393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887632, 15.354235, 21.028990>,  <16.431992, 14.920764, 21.387268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887632, 15.354235, 21.028990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115192, 15.090703, 21.225885>,  <17.251728, 14.932585, 21.344023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115192, 15.090703, 21.225885>,  <16.887632, 15.354235, 21.028990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115192, 15.090703, 21.225885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454344, -0.247128, -0.855862,
		0.685512, 0.710545, 0.158744,
		0.568898, -0.658828, 0.492240,
		17.285862, 14.893055, 21.373558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395411, 15.416597, 20.737131>,  <16.887632, 15.354235, 21.028990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395411, 15.416597, 20.737131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465984, 15.071343, 20.926392>,  <17.508327, 14.864191, 21.039948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465984, 15.071343, 20.926392>,  <17.395411, 15.416597, 20.737131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465984, 15.071343, 20.926392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650427, -0.258557, -0.714207,
		0.738793, 0.433759, 0.515788,
		0.176433, -0.863135, 0.473149,
		17.518913, 14.812403, 21.068336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149849, 15.275474, 20.730364>,  <17.395411, 15.416597, 20.737131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149849, 15.275474, 20.730364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964369, 14.925813, 20.788107>,  <17.853081, 14.716016, 20.822752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964369, 14.925813, 20.788107>,  <18.149849, 15.275474, 20.730364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964369, 14.925813, 20.788107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619296, -0.436307, -0.652771,
		0.633605, -0.213291, 0.743675,
		-0.463700, -0.874153, 0.144356,
		17.825258, 14.663567, 20.831413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618441, 14.738993, 20.671709>,  <18.149849, 15.275474, 20.730364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618441, 14.738993, 20.671709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.291714, 14.523254, 20.589817>,  <18.095676, 14.393811, 20.540682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.291714, 14.523254, 20.589817>,  <18.618441, 14.738993, 20.671709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.291714, 14.523254, 20.589817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523791, -0.544634, -0.654993,
		0.241766, -0.642245, 0.727372,
		-0.816818, -0.539346, -0.204728,
		18.046669, 14.361450, 20.528399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832512, 14.026930, 20.692652>,  <18.618441, 14.738993, 20.671709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832512, 14.026930, 20.692652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485199, 14.055736, 20.496325>,  <18.276812, 14.073019, 20.378529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485199, 14.055736, 20.496325>,  <18.832512, 14.026930, 20.692652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485199, 14.055736, 20.496325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382951, -0.531624, -0.755463,
		-0.315335, -0.843913, 0.434020,
		-0.868281, 0.072015, -0.490817,
		18.224714, 14.077340, 20.349079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857672, 13.352985, 20.365593>,  <18.832512, 14.026930, 20.692652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857672, 13.352985, 20.365593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573740, 13.554778, 20.168966>,  <18.403381, 13.675854, 20.050989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573740, 13.554778, 20.168966>,  <18.857672, 13.352985, 20.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573740, 13.554778, 20.168966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225679, -0.498203, -0.837176,
		-0.667241, -0.705188, 0.239788,
		-0.709830, 0.504483, -0.491568,
		18.360790, 13.706123, 20.021496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696312, 12.910532, 19.900095>,  <18.857672, 13.352985, 20.365593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696312, 12.910532, 19.900095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.546022, 13.242051, 19.734238>,  <18.455849, 13.440963, 19.634724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.546022, 13.242051, 19.734238>,  <18.696312, 12.910532, 19.900095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.546022, 13.242051, 19.734238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157643, -0.383743, -0.909884,
		-0.913225, -0.407231, 0.013527,
		-0.375724, 0.828797, -0.414641,
		18.433306, 13.490690, 19.609846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328259, 12.611506, 19.228613>,  <18.696312, 12.910532, 19.900095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328259, 12.611506, 19.228613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377930, 13.006270, 19.187456>,  <18.407732, 13.243129, 19.162762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.377930, 13.006270, 19.187456>,  <18.328259, 12.611506, 19.228613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377930, 13.006270, 19.187456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250569, -0.131520, -0.959123,
		-0.960102, 0.093319, -0.263622,
		0.124176, 0.986911, -0.102890,
		18.415182, 13.302343, 19.156590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098305, 12.851655, 18.525444>,  <18.328259, 12.611506, 19.228613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098305, 12.851655, 18.525444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367620, 13.128236, 18.630196>,  <18.529209, 13.294184, 18.693047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367620, 13.128236, 18.630196>,  <18.098305, 12.851655, 18.525444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367620, 13.128236, 18.630196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297564, 0.070836, -0.952070,
		-0.676860, 0.718942, -0.158058,
		0.673287, 0.691451, 0.261878,
		18.569607, 13.335671, 18.708759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023212, 13.423836, 18.079662>,  <18.098305, 12.851655, 18.525444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023212, 13.423836, 18.079662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401091, 13.450098, 18.208187>,  <18.627817, 13.465856, 18.285301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401091, 13.450098, 18.208187>,  <18.023212, 13.423836, 18.079662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401091, 13.450098, 18.208187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306550, 0.171345, -0.936306,
		-0.116528, 0.983021, 0.141742,
		0.944695, 0.065655, 0.321311,
		18.684500, 13.469794, 18.304581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228720, 13.874604, 17.545097>,  <18.023212, 13.423836, 18.079662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228720, 13.874604, 17.545097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568132, 13.786152, 17.737385>,  <18.771780, 13.733081, 17.852758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568132, 13.786152, 17.737385>,  <18.228720, 13.874604, 17.545097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568132, 13.786152, 17.737385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528274, 0.406035, -0.745696,
		-0.030293, 0.886700, 0.461352,
		0.848534, -0.221131, 0.480720,
		18.822693, 13.719812, 17.881601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623928, 14.532948, 17.647739>,  <18.228720, 13.874604, 17.545097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623928, 14.532948, 17.647739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869616, 14.217297, 17.649080>,  <19.017029, 14.027906, 17.649885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869616, 14.217297, 17.649080>,  <18.623928, 14.532948, 17.647739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869616, 14.217297, 17.649080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599323, 0.463715, -0.652518,
		0.513367, 0.402797, 0.757766,
		0.614220, -0.789128, 0.003350,
		19.053881, 13.980558, 17.650085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266737, 14.758140, 17.550554>,  <18.623928, 14.532948, 17.647739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266737, 14.758140, 17.550554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301352, 14.378289, 17.430075>,  <19.322121, 14.150379, 17.357786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301352, 14.378289, 17.430075>,  <19.266737, 14.758140, 17.550554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301352, 14.378289, 17.430075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465504, 0.305843, -0.830521,
		0.880804, -0.068337, 0.468522,
		0.086539, -0.949626, -0.301199,
		19.327312, 14.093401, 17.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957790, 14.679611, 17.196049>,  <19.266737, 14.758140, 17.550554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957790, 14.679611, 17.196049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740665, 14.367909, 17.070753>,  <19.610392, 14.180888, 16.995577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.740665, 14.367909, 17.070753>,  <19.957790, 14.679611, 17.196049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.740665, 14.367909, 17.070753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262568, 0.196814, -0.944628,
		0.797756, -0.595001, 0.097775,
		-0.542811, -0.779255, -0.313237,
		19.577822, 14.134133, 16.976782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419079, 14.254972, 16.728273>,  <19.957790, 14.679611, 17.196049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419079, 14.254972, 16.728273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043751, 14.147405, 16.641335>,  <19.818554, 14.082865, 16.589170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043751, 14.147405, 16.641335>,  <20.419079, 14.254972, 16.728273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043751, 14.147405, 16.641335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223939, 0.006317, -0.974583,
		0.263456, -0.963143, 0.054294,
		-0.938319, -0.268918, -0.217349,
		19.762255, 14.066730, 16.576130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514263, 13.712011, 16.208708>,  <20.419079, 14.254972, 16.728273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514263, 13.712011, 16.208708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.141748, 13.854214, 16.176916>,  <19.918240, 13.939535, 16.157841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.141748, 13.854214, 16.176916>,  <20.514263, 13.712011, 16.208708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141748, 13.854214, 16.176916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091075, 0.015977, -0.995716,
		-0.352714, -0.934537, -0.047257,
		-0.931288, 0.355507, -0.079478,
		19.862362, 13.960866, 16.153072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123932, 13.222269, 15.737327>,  <20.514263, 13.712011, 16.208708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123932, 13.222269, 15.737327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986784, 13.597801, 15.750204>,  <19.904495, 13.823121, 15.757931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986784, 13.597801, 15.750204>,  <20.123932, 13.222269, 15.737327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986784, 13.597801, 15.750204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289548, 0.138224, -0.947130,
		-0.893645, -0.315421, -0.319230,
		-0.342870, 0.938831, 0.032193,
		19.883923, 13.879451, 15.759862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.691570, 13.349163, 15.087448>,  <20.123932, 13.222269, 15.737327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.691570, 13.349163, 15.087448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807613, 13.703457, 15.232397>,  <19.877239, 13.916033, 15.319366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807613, 13.703457, 15.232397>,  <19.691570, 13.349163, 15.087448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807613, 13.703457, 15.232397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119582, 0.342138, -0.932010,
		-0.949493, 0.313716, -0.006661,
		0.290108, 0.885734, 0.362372,
		19.894646, 13.969177, 15.341108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.401918, 13.925806, 14.712375>,  <19.691570, 13.349163, 15.087448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.401918, 13.925806, 14.712375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722075, 14.116350, 14.857953>,  <19.914169, 14.230677, 14.945300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722075, 14.116350, 14.857953>,  <19.401918, 13.925806, 14.712375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722075, 14.116350, 14.857953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139258, 0.442751, -0.885764,
		-0.583079, 0.759640, 0.288037,
		0.800391, 0.476359, 0.363945,
		19.962193, 14.259258, 14.967136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975319, 14.355302, 14.272763>,  <19.401918, 13.925806, 14.712375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975319, 14.355302, 14.272763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894236, 14.709872, 14.106315>,  <18.845587, 14.922615, 14.006446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894236, 14.709872, 14.106315>,  <18.975319, 14.355302, 14.272763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894236, 14.709872, 14.106315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838436, -0.062427, -0.541413,
		-0.505900, -0.458639, -0.730558,
		-0.202707, 0.886427, -0.416121,
		18.833424, 14.975801, 13.981479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198706, 14.448684, 13.580569>,  <18.975319, 14.355302, 14.272763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198706, 14.448684, 13.580569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194157, 14.843233, 13.646219>,  <19.191427, 15.079963, 13.685609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194157, 14.843233, 13.646219>,  <19.198706, 14.448684, 13.580569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194157, 14.843233, 13.646219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898568, 0.082089, -0.431088,
		-0.438687, 0.142575, -0.887257,
		-0.011371, 0.986374, 0.164125,
		19.190744, 15.139145, 13.695457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707485, 14.732249, 13.019000>,  <19.198706, 14.448684, 13.580569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707485, 14.732249, 13.019000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660069, 14.987585, 13.323229>,  <19.631618, 15.140786, 13.505766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660069, 14.987585, 13.323229>,  <19.707485, 14.732249, 13.019000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660069, 14.987585, 13.323229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931413, 0.336943, -0.137623,
		-0.344120, 0.692093, -0.634499,
		-0.118542, 0.638339, 0.760573,
		19.624506, 15.179087, 13.551400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977171, 15.424356, 12.825279>,  <19.707485, 14.732249, 13.019000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977171, 15.424356, 12.825279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968185, 15.359947, 13.219957>,  <19.962795, 15.321301, 13.456764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968185, 15.359947, 13.219957>,  <19.977171, 15.424356, 12.825279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968185, 15.359947, 13.219957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970155, 0.234839, 0.060410,
		-0.241442, 0.958604, 0.150942,
		-0.022462, -0.161022, 0.986695,
		19.961447, 15.311641, 13.515965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483091, 15.077751, 13.335432>,  <19.977171, 15.424356, 12.825279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483091, 15.077751, 13.335432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880161, 15.123654, 13.320323>,  <21.118402, 15.151196, 13.311257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880161, 15.123654, 13.320323>,  <20.483091, 15.077751, 13.335432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880161, 15.123654, 13.320323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055266, 0.153316, -0.986630,
		-0.107432, 0.981491, 0.158535,
		0.992675, 0.114757, -0.037772,
		21.177963, 15.158081, 13.308991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658031, 15.684124, 12.940181>,  <20.483091, 15.077751, 13.335432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658031, 15.684124, 12.940181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.968147, 15.432376, 12.918950>,  <21.154217, 15.281327, 12.906212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.968147, 15.432376, 12.918950>,  <20.658031, 15.684124, 12.940181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968147, 15.432376, 12.918950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021828, 0.110685, -0.993616,
		0.631226, 0.769183, 0.099551,
		0.775291, -0.629369, -0.053077,
		21.200735, 15.243565, 12.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947836, 15.870142, 12.345866>,  <20.658031, 15.684124, 12.940181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947836, 15.870142, 12.345866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155331, 15.537015, 12.423149>,  <21.279827, 15.337139, 12.469519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155331, 15.537015, 12.423149>,  <20.947836, 15.870142, 12.345866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155331, 15.537015, 12.423149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251733, -0.067183, -0.965462,
		0.817033, 0.549456, 0.174797,
		0.518736, -0.832817, 0.193207,
		21.310951, 15.287169, 12.481112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595531, 15.939863, 12.044575>,  <20.947836, 15.870142, 12.345866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595531, 15.939863, 12.044575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537767, 15.545456, 12.077840>,  <21.503109, 15.308812, 12.097798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537767, 15.545456, 12.077840>,  <21.595531, 15.939863, 12.044575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537767, 15.545456, 12.077840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459096, -0.141214, -0.877091,
		0.876571, -0.088482, 0.473070,
		-0.144410, -0.986017, 0.083162,
		21.494444, 15.249651, 12.102788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282928, 15.551515, 11.904376>,  <21.595531, 15.939863, 12.044575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282928, 15.551515, 11.904376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949787, 15.339828, 11.839526>,  <21.749903, 15.212815, 11.800616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949787, 15.339828, 11.839526>,  <22.282928, 15.551515, 11.904376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949787, 15.339828, 11.839526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296566, -0.179358, -0.938019,
		0.467337, -0.829313, 0.306327,
		-0.832853, -0.529217, -0.162125,
		21.699930, 15.181063, 11.790889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461550, 15.005160, 11.434969>,  <22.282928, 15.551515, 11.904376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461550, 15.005160, 11.434969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.063976, 14.964832, 11.417401>,  <21.825432, 14.940636, 11.406860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.063976, 14.964832, 11.417401>,  <22.461550, 15.005160, 11.434969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.063976, 14.964832, 11.417401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073952, -0.317184, -0.945476,
		0.081394, -0.942990, 0.322716,
		-0.993935, -0.100821, -0.043919,
		21.765797, 14.934586, 11.404225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.274906, 14.381583, 11.173321>,  <22.461550, 15.005160, 11.434969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.274906, 14.381583, 11.173321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949495, 14.602478, 11.100429>,  <21.754250, 14.735015, 11.056693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949495, 14.602478, 11.100429>,  <22.274906, 14.381583, 11.173321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949495, 14.602478, 11.100429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016925, -0.290747, -0.956650,
		-0.581281, -0.781345, 0.227183,
		-0.813527, 0.552238, -0.182230,
		21.705437, 14.768149, 11.045759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.979357, 14.023531, 10.623058>,  <22.274906, 14.381583, 11.173321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.979357, 14.023531, 10.623058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766233, 14.361996, 10.618548>,  <21.638359, 14.565075, 10.615843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766233, 14.361996, 10.618548>,  <21.979357, 14.023531, 10.623058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766233, 14.361996, 10.618548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030906, -0.032771, -0.998985,
		-0.845673, -0.531917, 0.043612,
		-0.532806, 0.846162, -0.011275,
		21.606392, 14.615845, 10.615166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.596708, 13.890615, 10.074022>,  <21.979357, 14.023531, 10.623058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.596708, 13.890615, 10.074022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580742, 14.287639, 10.120028>,  <21.571161, 14.525853, 10.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580742, 14.287639, 10.120028>,  <21.596708, 13.890615, 10.074022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580742, 14.287639, 10.120028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018869, 0.115836, -0.993089,
		-0.999025, -0.037470, -0.023352,
		-0.039916, 0.992561, 0.115016,
		21.568768, 14.585407, 10.154533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037510, 14.211565, 9.652899>,  <21.596708, 13.890615, 10.074022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037510, 14.211565, 9.652899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304634, 14.503369, 9.712018>,  <21.464909, 14.678452, 9.747489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304634, 14.503369, 9.712018>,  <21.037510, 14.211565, 9.652899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304634, 14.503369, 9.712018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057312, 0.147578, -0.987388,
		-0.742121, 0.667860, 0.056745,
		0.667811, 0.729510, 0.147797,
		21.504978, 14.722222, 9.756357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766426, 14.855739, 9.283604>,  <21.037510, 14.211565, 9.652899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766426, 14.855739, 9.283604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163229, 14.904371, 9.297086>,  <21.401312, 14.933551, 9.305175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163229, 14.904371, 9.297086>,  <20.766426, 14.855739, 9.283604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.163229, 14.904371, 9.297086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, 0.199130, -0.979933,
		-0.125853, 0.972402, 0.196458,
		0.992009, 0.121581, 0.033706,
		21.460833, 14.940845, 9.307198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952967, 15.373424, 8.800894>,  <20.766426, 14.855739, 9.283604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952967, 15.373424, 8.800894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313589, 15.220580, 8.882073>,  <21.529963, 15.128874, 8.930781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313589, 15.220580, 8.882073>,  <20.952967, 15.373424, 8.800894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313589, 15.220580, 8.882073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264000, 0.114203, -0.957738,
		0.342783, 0.917033, 0.203837,
		0.901556, -0.382109, 0.202950,
		21.584057, 15.105947, 8.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422247, 15.809248, 8.661610>,  <20.952967, 15.373424, 8.800894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422247, 15.809248, 8.661610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630051, 15.467770, 8.647123>,  <21.754734, 15.262882, 8.638432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630051, 15.467770, 8.647123>,  <21.422247, 15.809248, 8.661610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630051, 15.467770, 8.647123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194928, 0.159676, -0.967733,
		0.831933, 0.495688, 0.249363,
		0.519511, -0.853696, -0.036217,
		21.785904, 15.211660, 8.636258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932386, 15.959131, 8.277711>,  <21.422247, 15.809248, 8.661610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932386, 15.959131, 8.277711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.999224, 15.564787, 8.282746>,  <22.039326, 15.328180, 8.285768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.999224, 15.564787, 8.282746>,  <21.932386, 15.959131, 8.277711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.999224, 15.564787, 8.282746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313316, 0.040990, -0.948764,
		0.934833, 0.162476, 0.315735,
		0.167094, -0.985861, 0.012588,
		22.049353, 15.269029, 8.286523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621046, 15.873028, 7.955141>,  <21.932386, 15.959131, 8.277711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621046, 15.873028, 7.955141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384115, 15.553396, 7.913909>,  <22.241957, 15.361617, 7.889170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384115, 15.553396, 7.913909>,  <22.621046, 15.873028, 7.955141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384115, 15.553396, 7.913909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281681, -0.085517, -0.955690,
		0.754856, -0.595114, 0.275739,
		-0.592325, -0.799078, -0.103079,
		22.206417, 15.313673, 7.882986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.156025, 15.482507, 7.657154>,  <22.621046, 15.873028, 7.955141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.156025, 15.482507, 7.657154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.805128, 15.305959, 7.581639>,  <22.594591, 15.200029, 7.536330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.805128, 15.305959, 7.581639>,  <23.156025, 15.482507, 7.657154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.805128, 15.305959, 7.581639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325585, -0.258040, -0.909621,
		0.352766, -0.859422, 0.370067,
		-0.877241, -0.441371, -0.188787,
		22.541956, 15.173548, 7.525003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.299824, 14.917293, 7.220581>,  <23.156025, 15.482507, 7.657154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.299824, 14.917293, 7.220581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905970, 14.947023, 7.157369>,  <22.669657, 14.964862, 7.119442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905970, 14.947023, 7.157369>,  <23.299824, 14.917293, 7.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905970, 14.947023, 7.157369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128410, -0.305156, -0.943605,
		-0.118357, -0.949398, 0.290923,
		-0.984633, 0.074325, -0.158029,
		22.610580, 14.969321, 7.109960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994951, 14.313539, 6.890773>,  <23.299824, 14.917293, 7.220581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994951, 14.313539, 6.890773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728252, 14.594063, 6.789888>,  <22.568233, 14.762377, 6.729358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.728252, 14.594063, 6.789888>,  <22.994951, 14.313539, 6.890773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.728252, 14.594063, 6.789888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167332, -0.188904, -0.967634,
		-0.726256, -0.687371, 0.008600,
		-0.666748, 0.701311, -0.252212,
		22.528229, 14.804456, 6.714225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.799726, 14.145945, 6.189138>,  <22.994951, 14.313539, 6.890773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.799726, 14.145945, 6.189138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662064, 14.518448, 6.237000>,  <22.579466, 14.741950, 6.265718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.662064, 14.518448, 6.237000>,  <22.799726, 14.145945, 6.189138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.662064, 14.518448, 6.237000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016549, 0.133436, -0.990919,
		-0.938767, -0.339049, -0.061334,
		-0.344155, 0.931258, 0.119655,
		22.558817, 14.797825, 6.272897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269291, 14.208989, 5.686155>,  <22.799726, 14.145945, 6.189138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269291, 14.208989, 5.686155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.334877, 14.591651, 5.782426>,  <22.374229, 14.821248, 5.840189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.334877, 14.591651, 5.782426>,  <22.269291, 14.208989, 5.686155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334877, 14.591651, 5.782426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089684, 0.228514, -0.969401,
		-0.982380, 0.180535, -0.048328,
		0.163967, 0.956655, 0.240679,
		22.384068, 14.878648, 5.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877918, 14.613338, 5.305209>,  <22.269291, 14.208989, 5.686155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877918, 14.613338, 5.305209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.190468, 14.838993, 5.411942>,  <22.377998, 14.974386, 5.475982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.190468, 14.838993, 5.411942>,  <21.877918, 14.613338, 5.305209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.190468, 14.838993, 5.411942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176923, 0.209780, -0.961608,
		-0.598456, 0.798587, 0.064108,
		0.781376, 0.564138, 0.266833,
		22.424881, 15.008234, 5.491992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.860929, 15.141905, 4.845545>,  <21.877918, 14.613338, 5.305209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.860929, 15.141905, 4.845545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236181, 15.202150, 4.970272>,  <22.461332, 15.238297, 5.045108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236181, 15.202150, 4.970272>,  <21.860929, 15.141905, 4.845545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236181, 15.202150, 4.970272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293462, 0.132240, -0.946780,
		-0.183834, 0.979708, 0.079858,
		0.938128, 0.150615, 0.311817,
		22.517620, 15.247334, 5.063817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.203190, 15.643285, 4.498049>,  <21.860929, 15.141905, 4.845545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.203190, 15.643285, 4.498049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523697, 15.429714, 4.606043>,  <22.716002, 15.301572, 4.670839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523697, 15.429714, 4.606043>,  <22.203190, 15.643285, 4.498049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523697, 15.429714, 4.606043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331881, 0.021177, -0.943083,
		0.497819, 0.845266, 0.194169,
		0.801269, -0.533925, 0.269986,
		22.764078, 15.269537, 4.687038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784994, 15.744408, 4.047586>,  <22.203190, 15.643285, 4.498049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784994, 15.744408, 4.047586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912651, 15.404902, 4.216228>,  <22.989246, 15.201200, 4.317412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912651, 15.404902, 4.216228>,  <22.784994, 15.744408, 4.047586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912651, 15.404902, 4.216228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440347, -0.261122, -0.859017,
		0.839191, 0.459802, 0.290415,
		0.319144, -0.848762, 0.421604,
		23.008394, 15.150273, 4.342709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.451202, 15.734000, 4.001317>,  <22.784994, 15.744408, 4.047586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.451202, 15.734000, 4.001317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285851, 15.369828, 3.995201>,  <23.186640, 15.151325, 3.991532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285851, 15.369828, 3.995201>,  <23.451202, 15.734000, 4.001317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285851, 15.369828, 3.995201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468709, -0.198361, -0.860793,
		0.780660, -0.363000, 0.508726,
		-0.413379, -0.910431, -0.015289,
		23.161837, 15.096699, 3.990614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.132526, 16.361229, 4.205105>,  <23.451202, 15.734000, 4.001317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.132526, 16.361229, 4.205105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264469, 16.401224, 4.580594>,  <23.343636, 16.425222, 4.805887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264469, 16.401224, 4.580594>,  <23.132526, 16.361229, 4.205105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264469, 16.401224, 4.580594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922331, 0.177844, -0.343042,
		-0.201246, 0.978966, -0.033560,
		0.329858, 0.099989, 0.938720,
		23.363426, 16.431221, 4.862210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517998, 16.998087, 4.320610>,  <23.132526, 16.361229, 4.205105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517998, 16.998087, 4.320610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674707, 16.727098, 4.569623>,  <23.768734, 16.564507, 4.719030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674707, 16.727098, 4.569623>,  <23.517998, 16.998087, 4.320610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.674707, 16.727098, 4.569623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889455, 0.105816, -0.444604,
		0.235332, 0.727899, 0.644036,
		0.391776, -0.677470, 0.622531,
		23.792240, 16.523857, 4.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.079792, 17.237440, 4.632827>,  <23.517998, 16.998087, 4.320610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.079792, 17.237440, 4.632827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106867, 16.841515, 4.582729>,  <24.123112, 16.603960, 4.552670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106867, 16.841515, 4.582729>,  <24.079792, 17.237440, 4.632827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106867, 16.841515, 4.582729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825327, 0.126083, -0.550399,
		0.560584, -0.066113, 0.825454,
		0.067688, -0.989814, -0.125245,
		24.127172, 16.544571, 4.545156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634262, 17.328753, 5.062627>,  <24.079792, 17.237440, 4.632827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634262, 17.328753, 5.062627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358320, 17.080690, 5.212030>,  <24.192755, 16.931852, 5.301672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358320, 17.080690, 5.212030>,  <24.634262, 17.328753, 5.062627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358320, 17.080690, 5.212030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387698, -0.752185, -0.532831,
		0.611385, -0.222767, 0.759331,
		-0.689854, -0.620156, 0.373508,
		24.151363, 16.894644, 5.324083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.623018, 16.939796, 5.672400>,  <24.634262, 17.328753, 5.062627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.623018, 16.939796, 5.672400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284525, 17.151098, 5.644587>,  <24.081429, 17.277880, 5.627899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284525, 17.151098, 5.644587>,  <24.623018, 16.939796, 5.672400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284525, 17.151098, 5.644587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083876, -0.003200, 0.996471,
		0.526168, 0.849080, 0.047015,
		-0.846234, 0.528255, -0.069534,
		24.030655, 17.309574, 5.623727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658007, 17.619118, 6.003570>,  <24.623018, 16.939796, 5.672400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658007, 17.619118, 6.003570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310263, 17.421515, 5.998331>,  <24.101616, 17.302952, 5.995188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310263, 17.421515, 5.998331>,  <24.658007, 17.619118, 6.003570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310263, 17.421515, 5.998331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002248, -0.030458, 0.999534,
		-0.494176, 0.868924, 0.027590,
		-0.869359, -0.494007, -0.013098,
		24.049456, 17.273312, 5.994401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173275, 17.979258, 6.431001>,  <24.658007, 17.619118, 6.003570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173275, 17.979258, 6.431001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084961, 17.589933, 6.405939>,  <24.031973, 17.356339, 6.390902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084961, 17.589933, 6.405939>,  <24.173275, 17.979258, 6.431001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084961, 17.589933, 6.405939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029582, -0.057527, 0.997905,
		-0.974874, 0.222175, -0.016091,
		-0.220784, -0.973308, -0.062654,
		24.018726, 17.297941, 6.387143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.644386, 17.814104, 6.879472>,  <24.173275, 17.979258, 6.431001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.644386, 17.814104, 6.879472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854246, 17.474934, 6.849109>,  <23.980162, 17.271431, 6.830891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854246, 17.474934, 6.849109>,  <23.644386, 17.814104, 6.879472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854246, 17.474934, 6.849109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080241, -0.039513, 0.995992,
		-0.847527, -0.528639, 0.047308,
		0.524651, -0.847926, -0.075907,
		24.011642, 17.220556, 6.826336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.197533, 17.371151, 7.195853>,  <23.644386, 17.814104, 6.879472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.197533, 17.371151, 7.195853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564735, 17.213970, 7.217201>,  <23.785057, 17.119661, 7.230009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564735, 17.213970, 7.217201>,  <23.197533, 17.371151, 7.195853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.564735, 17.213970, 7.217201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092638, -0.081644, 0.992347,
		-0.385589, -0.915927, -0.111352,
		0.918008, -0.392954, 0.053368,
		23.840137, 17.096085, 7.233211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145727, 16.783627, 7.417402>,  <23.197533, 17.371151, 7.195853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145727, 16.783627, 7.417402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531330, 16.854916, 7.496323>,  <23.762691, 16.897690, 7.543675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531330, 16.854916, 7.496323>,  <23.145727, 16.783627, 7.417402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531330, 16.854916, 7.496323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138431, -0.297111, 0.944755,
		0.226999, -0.938062, -0.261745,
		0.964006, 0.178225, 0.197301,
		23.820532, 16.908382, 7.555513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.379850, 16.277239, 7.960112>,  <23.145727, 16.783627, 7.417402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.379850, 16.277239, 7.960112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660072, 16.560099, 7.998398>,  <23.828205, 16.729815, 8.021370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660072, 16.560099, 7.998398>,  <23.379850, 16.277239, 7.960112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.660072, 16.560099, 7.998398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103237, -0.032286, 0.994133,
		0.706091, -0.706327, 0.050386,
		0.700556, 0.707150, 0.095716,
		23.870239, 16.772243, 8.027113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933662, 16.045771, 8.461687>,  <23.379850, 16.277239, 7.960112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933662, 16.045771, 8.461687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.972996, 16.443129, 8.438023>,  <23.996595, 16.681543, 8.423824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.972996, 16.443129, 8.438023>,  <23.933662, 16.045771, 8.461687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.972996, 16.443129, 8.438023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206212, 0.037819, 0.977776,
		0.973554, -0.108348, -0.201131,
		0.098333, 0.993393, -0.059161,
		24.002497, 16.741146, 8.420274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468559, 16.204203, 8.848543>,  <23.933662, 16.045771, 8.461687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468559, 16.204203, 8.848543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266487, 16.547686, 8.814102>,  <24.145245, 16.753777, 8.793438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266487, 16.547686, 8.814102>,  <24.468559, 16.204203, 8.848543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266487, 16.547686, 8.814102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161726, 0.192197, 0.967938,
		0.847725, 0.475058, -0.235970,
		-0.505180, 0.858708, -0.086101,
		24.114933, 16.805298, 8.788272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897217, 16.705706, 9.229145>,  <24.468559, 16.204203, 8.848543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897217, 16.705706, 9.229145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520433, 16.838802, 9.211291>,  <24.294363, 16.918661, 9.200579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520433, 16.838802, 9.211291>,  <24.897217, 16.705706, 9.229145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520433, 16.838802, 9.211291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002158, 0.126946, 0.991907,
		0.335717, 0.934434, -0.118860,
		-0.941961, 0.332743, -0.044635,
		24.237844, 16.938625, 9.197901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816561, 17.255266, 9.729395>,  <24.897217, 16.705706, 9.229145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816561, 17.255266, 9.729395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444365, 17.125118, 9.662077>,  <24.221046, 17.047029, 9.621686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444365, 17.125118, 9.662077>,  <24.816561, 17.255266, 9.729395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444365, 17.125118, 9.662077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139629, -0.109711, 0.984107,
		-0.338662, 0.939201, 0.056654,
		-0.930490, -0.325370, -0.168295,
		24.165218, 17.027508, 9.611588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496132, 17.546436, 10.280573>,  <24.816561, 17.255266, 9.729395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496132, 17.546436, 10.280573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232071, 17.279308, 10.143044>,  <24.073635, 17.119032, 10.060526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232071, 17.279308, 10.143044>,  <24.496132, 17.546436, 10.280573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232071, 17.279308, 10.143044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122992, -0.355456, 0.926566,
		-0.740994, 0.653961, 0.152518,
		-0.660152, -0.667822, -0.343823,
		24.034025, 17.078962, 10.039897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934887, 17.586802, 10.662457>,  <24.496132, 17.546436, 10.280573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934887, 17.586802, 10.662457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946030, 17.217911, 10.508199>,  <23.952715, 16.996576, 10.415644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946030, 17.217911, 10.508199>,  <23.934887, 17.586802, 10.662457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.946030, 17.217911, 10.508199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259560, -0.379236, 0.888149,
		-0.965325, 0.075358, -0.249937,
		0.027856, -0.922226, -0.385646,
		23.954386, 16.941242, 10.392505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.313423, 17.356102, 10.813029>,  <23.934887, 17.586802, 10.662457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.313423, 17.356102, 10.813029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530527, 17.025543, 10.753055>,  <23.660789, 16.827208, 10.717070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530527, 17.025543, 10.753055>,  <23.313423, 17.356102, 10.813029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.530527, 17.025543, 10.753055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361931, -0.391228, 0.846136,
		-0.757902, -0.404984, -0.511441,
		0.542762, -0.826395, -0.149936,
		23.693356, 16.777624, 10.708074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.866058, 16.795658, 11.144264>,  <23.313423, 17.356102, 10.813029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.866058, 16.795658, 11.144264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.225534, 16.626255, 11.098667>,  <23.441221, 16.524612, 11.071309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.225534, 16.626255, 11.098667>,  <22.866058, 16.795658, 11.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.225534, 16.626255, 11.098667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067301, -0.390002, 0.918351,
		-0.433384, -0.817644, -0.378994,
		0.898693, -0.423505, -0.113992,
		23.495142, 16.499203, 11.064469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.884857, 15.980682, 11.409699>,  <22.866058, 16.795658, 11.144264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.884857, 15.980682, 11.409699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255909, 16.127329, 11.438264>,  <23.478540, 16.215317, 11.455402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255909, 16.127329, 11.438264>,  <22.884857, 15.980682, 11.409699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.255909, 16.127329, 11.438264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048795, -0.308503, 0.949971,
		0.370305, -0.877735, -0.304064,
		0.927628, 0.366616, 0.071411,
		23.534197, 16.237314, 11.459687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.290642, 15.479584, 11.645948>,  <22.884857, 15.980682, 11.409699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.290642, 15.479584, 11.645948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516094, 15.791400, 11.755229>,  <23.651365, 15.978490, 11.820798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516094, 15.791400, 11.755229>,  <23.290642, 15.479584, 11.645948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.516094, 15.791400, 11.755229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023053, -0.345459, 0.938151,
		0.825707, -0.522470, -0.212681,
		0.563629, 0.779540, 0.273203,
		23.685183, 16.025263, 11.837190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.676222, 15.191269, 12.148845>,  <23.290642, 15.479584, 11.645948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.676222, 15.191269, 12.148845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735277, 15.584818, 12.189238>,  <23.770710, 15.820948, 12.213473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735277, 15.584818, 12.189238>,  <23.676222, 15.191269, 12.148845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.735277, 15.584818, 12.189238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111856, -0.118055, 0.986687,
		0.982696, -0.134379, -0.127482,
		0.147640, 0.983873, 0.100981,
		23.779570, 15.879980, 12.219532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.353474, 15.367873, 12.532874>,  <23.676222, 15.191269, 12.148845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.353474, 15.367873, 12.532874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112474, 15.682504, 12.586973>,  <23.967875, 15.871283, 12.619432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112474, 15.682504, 12.586973>,  <24.353474, 15.367873, 12.532874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112474, 15.682504, 12.586973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124214, -0.074980, 0.989418,
		0.788395, 0.612922, -0.052529,
		-0.602498, 0.786577, 0.135248,
		23.931725, 15.918477, 12.627547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594759, 15.571935, 13.141850>,  <24.353474, 15.367873, 12.532874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594759, 15.571935, 13.141850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263126, 15.795560, 13.138404>,  <24.064148, 15.929735, 13.136336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263126, 15.795560, 13.138404>,  <24.594759, 15.571935, 13.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263126, 15.795560, 13.138404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006121, 0.024484, 0.999682,
		0.559096, 0.828764, -0.023721,
		-0.829081, 0.559063, -0.008616,
		24.014402, 15.963279, 13.135819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177364, 15.760410, 13.552459>,  <24.594759, 15.571935, 13.141850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177364, 15.760410, 13.552459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478004, 15.970800, 13.393238>,  <24.658388, 16.097034, 13.297706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478004, 15.970800, 13.393238>,  <24.177364, 15.760410, 13.552459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478004, 15.970800, 13.393238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276423, -0.799069, -0.533928,
		-0.598903, 0.291271, -0.745973,
		0.751602, 0.525976, -0.398051,
		24.703485, 16.128593, 13.273823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459492, 15.984805, 14.103157>,  <24.177364, 15.760410, 13.552459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459492, 15.984805, 14.103157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687563, 16.184038, 14.364480>,  <24.824406, 16.303577, 14.521274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687563, 16.184038, 14.364480>,  <24.459492, 15.984805, 14.103157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687563, 16.184038, 14.364480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633151, -0.773150, 0.036864,
		0.523465, 0.392623, -0.756195,
		0.570179, 0.498082, 0.653307,
		24.858616, 16.333464, 14.560472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174507, 15.907237, 13.783428>,  <24.459492, 15.984805, 14.103157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174507, 15.907237, 13.783428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179222, 15.985538, 14.175661>,  <25.182051, 16.032520, 14.411001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179222, 15.985538, 14.175661>,  <25.174507, 15.907237, 13.783428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179222, 15.985538, 14.175661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747140, -0.653472, 0.121471,
		0.664562, 0.731201, -0.153958,
		0.011787, 0.195753, 0.980582,
		25.182758, 16.044264, 14.469836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949554, 16.011305, 13.967062>,  <25.174507, 15.907237, 13.783428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949554, 16.011305, 13.967062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739407, 15.923400, 14.295864>,  <25.613317, 15.870657, 14.493145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739407, 15.923400, 14.295864>,  <25.949554, 16.011305, 13.967062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739407, 15.923400, 14.295864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828446, -0.352462, 0.435257,
		0.194073, 0.909657, 0.367234,
		-0.525370, -0.219762, 0.822004,
		25.581795, 15.857471, 14.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354248, 16.200819, 14.477965>,  <25.949554, 16.011305, 13.967062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354248, 16.200819, 14.477965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110622, 15.927837, 14.639606>,  <25.964447, 15.764049, 14.736589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110622, 15.927837, 14.639606>,  <26.354248, 16.200819, 14.477965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110622, 15.927837, 14.639606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790565, -0.563248, 0.240328,
		0.063596, 0.465843, 0.882579,
		-0.609066, -0.682453, 0.404100,
		25.927902, 15.723102, 14.760836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632215, 16.039026, 15.146282>,  <26.354248, 16.200819, 14.477965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632215, 16.039026, 15.146282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431278, 15.764885, 14.935402>,  <26.310715, 15.600400, 14.808873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431278, 15.764885, 14.935402>,  <26.632215, 16.039026, 15.146282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431278, 15.764885, 14.935402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834616, -0.543678, -0.088491,
		-0.225980, -0.484464, 0.845120,
		-0.502344, -0.685353, -0.527202,
		26.280575, 15.559279, 14.777242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759491, 15.338893, 15.489368>,  <26.632215, 16.039026, 15.146282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759491, 15.338893, 15.489368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736334, 15.394571, 15.093940>,  <26.722439, 15.427979, 14.856683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736334, 15.394571, 15.093940>,  <26.759491, 15.338893, 15.489368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736334, 15.394571, 15.093940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897158, -0.427097, -0.112677,
		-0.437899, -0.893428, -0.100153,
		-0.057894, 0.139195, -0.988571,
		26.718966, 15.436330, 14.797368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760935, 14.648447, 15.154991>,  <26.759491, 15.338893, 15.489368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760935, 14.648447, 15.154991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932659, 14.960915, 14.973677>,  <27.035694, 15.148395, 14.864888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932659, 14.960915, 14.973677>,  <26.760935, 14.648447, 15.154991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932659, 14.960915, 14.973677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885147, -0.463649, 0.039307,
		-0.179460, -0.418099, -0.890499,
		0.429313, 0.781168, -0.453285,
		27.061453, 15.195265, 14.837691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.595562, 19.168283, 21.337099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.210972, 19.088694, 21.261232>,  <12.980218, 19.040939, 21.215712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.210972, 19.088694, 21.261232>,  <13.595562, 19.168283, 21.337099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210972, 19.088694, 21.261232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259661, -0.430922, -0.864223,
		0.090227, -0.880179, 0.465987,
		-0.961475, -0.198976, -0.189667,
		12.922529, 19.029001, 21.204332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663884, 18.537901, 20.976978>,  <13.595562, 19.168283, 21.337099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663884, 18.537901, 20.976978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.302500, 18.684504, 20.888044>,  <13.085670, 18.772465, 20.834684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.302500, 18.684504, 20.888044>,  <13.663884, 18.537901, 20.976978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302500, 18.684504, 20.888044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101909, -0.320155, -0.941868,
		-0.416384, -0.873597, 0.251896,
		-0.903459, 0.366508, -0.222335,
		13.031462, 18.794455, 20.821344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206889, 17.986914, 20.753513>,  <13.663884, 18.537901, 20.976978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206889, 17.986914, 20.753513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064234, 18.325182, 20.594692>,  <12.978641, 18.528143, 20.499399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064234, 18.325182, 20.594692>,  <13.206889, 17.986914, 20.753513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064234, 18.325182, 20.594692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156811, -0.364782, -0.917793,
		-0.920989, -0.389581, -0.002516,
		-0.356637, 0.845672, -0.397050,
		12.957243, 18.578884, 20.475576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.663027, 17.746103, 20.328215>,  <13.206889, 17.986914, 20.753513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.663027, 17.746103, 20.328215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.781736, 18.106497, 20.201628>,  <12.852962, 18.322733, 20.125675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.781736, 18.106497, 20.201628>,  <12.663027, 17.746103, 20.328215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781736, 18.106497, 20.201628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143973, -0.369823, -0.917880,
		-0.944032, 0.226840, -0.239471,
		0.296773, 0.900985, -0.316466,
		12.870769, 18.376793, 20.106688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.455810, 17.705612, 19.675079>,  <12.663027, 17.746103, 20.328215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.455810, 17.705612, 19.675079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.693299, 18.026154, 19.645884>,  <12.835793, 18.218477, 19.628366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.693299, 18.026154, 19.645884>,  <12.455810, 17.705612, 19.675079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.693299, 18.026154, 19.645884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094377, -0.159432, -0.982687,
		-0.799115, 0.576556, -0.170288,
		0.593724, 0.801351, -0.072991,
		12.871416, 18.266560, 19.623987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.199582, 18.030640, 19.038179>,  <12.455810, 17.705612, 19.675079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.199582, 18.030640, 19.038179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.573256, 18.145739, 19.122559>,  <12.797461, 18.214798, 19.173185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.573256, 18.145739, 19.122559>,  <12.199582, 18.030640, 19.038179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.573256, 18.145739, 19.122559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250264, -0.107074, -0.962239,
		-0.254295, 0.951702, -0.172040,
		0.934185, 0.287748, 0.210948,
		12.853512, 18.232063, 19.185843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259900, 18.510490, 18.463964>,  <12.199582, 18.030640, 19.038179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259900, 18.510490, 18.463964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.604609, 18.382692, 18.621584>,  <12.811434, 18.306013, 18.716156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.604609, 18.382692, 18.621584>,  <12.259900, 18.510490, 18.463964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604609, 18.382692, 18.621584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381049, -0.105106, -0.918561,
		0.334891, 0.941741, 0.031166,
		0.861771, -0.319494, 0.394048,
		12.863140, 18.286844, 18.739798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653471, 18.550623, 17.964876>,  <12.259900, 18.510490, 18.463964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653471, 18.550623, 17.964876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.901414, 18.348330, 18.204880>,  <13.050179, 18.226954, 18.348883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.901414, 18.348330, 18.204880>,  <12.653471, 18.550623, 17.964876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901414, 18.348330, 18.204880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524038, -0.302354, -0.796220,
		0.584090, 0.807970, 0.077607,
		0.619857, -0.505734, 0.600009,
		13.087371, 18.196609, 18.384882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.297312, 18.631340, 17.650400>,  <12.653471, 18.550623, 17.964876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.297312, 18.631340, 17.650400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.272844, 18.301718, 17.875677>,  <13.258163, 18.103945, 18.010843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.272844, 18.301718, 17.875677>,  <13.297312, 18.631340, 17.650400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272844, 18.301718, 17.875677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477273, -0.519711, -0.708597,
		0.876623, 0.225453, 0.425091,
		-0.061170, -0.824058, 0.563194,
		13.254494, 18.054501, 18.044636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957970, 18.275221, 17.590483>,  <13.297312, 18.631340, 17.650400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957970, 18.275221, 17.590483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.698872, 17.991526, 17.701771>,  <13.543413, 17.821308, 17.768543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.698872, 17.991526, 17.701771>,  <13.957970, 18.275221, 17.590483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698872, 17.991526, 17.701771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418897, -0.636588, -0.647519,
		0.636358, -0.302881, 0.709445,
		-0.647745, -0.709238, 0.278222,
		13.504548, 17.778755, 17.785238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412752, 17.618153, 17.716684>,  <13.957970, 18.275221, 17.590483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412752, 17.618153, 17.716684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.035363, 17.514898, 17.633524>,  <13.808929, 17.452946, 17.583628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.035363, 17.514898, 17.633524>,  <14.412752, 17.618153, 17.716684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035363, 17.514898, 17.633524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331441, -0.739315, -0.586141,
		-0.002400, -0.621915, 0.783081,
		-0.943473, -0.258138, -0.207902,
		13.752321, 17.437456, 17.571154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325562, 16.847525, 17.862625>,  <14.412752, 17.618153, 17.716684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325562, 16.847525, 17.862625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.043641, 16.919060, 17.588028>,  <13.874489, 16.961981, 17.423269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.043641, 16.919060, 17.588028>,  <14.325562, 16.847525, 17.862625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043641, 16.919060, 17.588028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344062, -0.760095, -0.551250,
		-0.620384, -0.624718, 0.474185,
		-0.704801, 0.178838, -0.686493,
		13.832201, 16.972712, 17.382080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101178, 16.209341, 17.816347>,  <14.325562, 16.847525, 17.862625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101178, 16.209341, 17.816347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.973298, 16.403849, 17.491056>,  <13.896570, 16.520554, 17.295883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.973298, 16.403849, 17.491056>,  <14.101178, 16.209341, 17.816347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973298, 16.403849, 17.491056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251546, -0.783913, -0.567631,
		-0.913519, -0.386034, 0.128298,
		-0.319699, 0.486269, -0.813225,
		13.877388, 16.549728, 17.247089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708632, 15.707347, 17.361723>,  <14.101178, 16.209341, 17.816347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708632, 15.707347, 17.361723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.806729, 16.021805, 17.134802>,  <13.865587, 16.210480, 16.998650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.806729, 16.021805, 17.134802>,  <13.708632, 15.707347, 17.361723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806729, 16.021805, 17.134802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132587, -0.606873, -0.783662,
		-0.960353, 0.116970, -0.253063,
		0.245242, 0.786145, -0.567303,
		13.880302, 16.257648, 16.964611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.345374, 15.563548, 16.721025>,  <13.708632, 15.707347, 17.361723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.345374, 15.563548, 16.721025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.625679, 15.832358, 16.625263>,  <13.793861, 15.993645, 16.567806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.625679, 15.832358, 16.625263>,  <13.345374, 15.563548, 16.721025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.625679, 15.832358, 16.625263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303555, -0.584577, -0.752412,
		-0.645590, 0.454589, -0.613646,
		0.700762, 0.672026, -0.239404,
		13.835908, 16.033966, 16.553442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328826, 15.568750, 16.018475>,  <13.345374, 15.563548, 16.721025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328826, 15.568750, 16.018475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.683153, 15.743372, 16.081400>,  <13.895749, 15.848145, 16.119156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.683153, 15.743372, 16.081400>,  <13.328826, 15.568750, 16.018475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683153, 15.743372, 16.081400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351844, -0.410841, -0.841080,
		-0.302546, 0.800393, -0.517530,
		0.885817, 0.436555, 0.157315,
		13.948898, 15.874338, 16.128595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548409, 15.960367, 15.369874>,  <13.328826, 15.568750, 16.018475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548409, 15.960367, 15.369874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.870651, 15.856789, 15.583019>,  <14.063997, 15.794641, 15.710906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.870651, 15.856789, 15.583019>,  <13.548409, 15.960367, 15.369874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870651, 15.856789, 15.583019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325607, -0.557888, -0.763375,
		0.494951, 0.788484, -0.365124,
		0.805608, -0.258946, 0.532863,
		14.112333, 15.779105, 15.742878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044950, 15.898790, 14.843828>,  <13.548409, 15.960367, 15.369874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044950, 15.898790, 14.843828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.245612, 15.740211, 15.151379>,  <14.366010, 15.645062, 15.335909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.245612, 15.740211, 15.151379>,  <14.044950, 15.898790, 14.843828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245612, 15.740211, 15.151379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505072, -0.587354, -0.632390,
		0.702313, 0.705579, -0.094413,
		0.501656, -0.396450, 0.768875,
		14.396109, 15.621275, 15.382041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797903, 16.051970, 14.806020>,  <14.044950, 15.898790, 14.843828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797903, 16.051970, 14.806020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.756100, 15.723750, 15.030795>,  <14.731018, 15.526818, 15.165661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.756100, 15.723750, 15.030795>,  <14.797903, 16.051970, 14.806020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756100, 15.723750, 15.030795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684026, -0.469468, -0.558308,
		0.721932, 0.326033, 0.610341,
		-0.104508, -0.820550, 0.561939,
		14.724748, 15.477585, 15.199377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469014, 15.932463, 15.156662>,  <14.797903, 16.051970, 14.806020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469014, 15.932463, 15.156662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.253409, 15.597191, 15.123387>,  <15.124046, 15.396028, 15.103422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.253409, 15.597191, 15.123387>,  <15.469014, 15.932463, 15.156662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.253409, 15.597191, 15.123387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693989, -0.385966, -0.607791,
		0.477331, -0.385338, 0.789728,
		-0.539013, -0.838180, -0.083187,
		15.091705, 15.345737, 15.098432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989973, 15.496965, 14.909933>,  <15.469014, 15.932463, 15.156662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989973, 15.496965, 14.909933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.649276, 15.288941, 14.884408>,  <15.444858, 15.164127, 14.869093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.649276, 15.288941, 14.884408>,  <15.989973, 15.496965, 14.909933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649276, 15.288941, 14.884408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375289, -0.520535, -0.766943,
		0.365639, -0.677187, 0.638534,
		-0.851743, -0.520059, -0.063812,
		15.393753, 15.132923, 14.865264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204323, 14.805484, 14.914773>,  <15.989973, 15.496965, 14.909933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204323, 14.805484, 14.914773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.849052, 14.813182, 14.731134>,  <15.635890, 14.817801, 14.620951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.849052, 14.813182, 14.731134>,  <16.204323, 14.805484, 14.914773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849052, 14.813182, 14.731134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378084, -0.537201, -0.753968,
		-0.261137, -0.843235, 0.469854,
		-0.888178, 0.019245, -0.459097,
		15.582599, 14.818955, 14.593406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023634, 14.754059, 14.840441>,  <16.204323, 14.805484, 14.914773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023634, 14.754059, 14.840441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.351957, 14.937938, 14.704823>,  <17.548952, 15.048265, 14.623453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.351957, 14.937938, 14.704823>,  <17.023634, 14.754059, 14.840441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351957, 14.937938, 14.704823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013567, 0.577702, 0.816135,
		0.571029, -0.674498, 0.467952,
		0.820818, 0.459688, -0.339036,
		17.598200, 15.075847, 14.603110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689659, 14.682673, 15.319531>,  <17.023634, 14.754059, 14.840441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689659, 14.682673, 15.319531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.701736, 15.036353, 15.133078>,  <17.708982, 15.248561, 15.021206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.701736, 15.036353, 15.133078>,  <17.689659, 14.682673, 15.319531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.701736, 15.036353, 15.133078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010979, 0.466611, 0.884394,
		0.999484, -0.021586, 0.023796,
		0.030194, 0.884199, -0.466133,
		17.710794, 15.301613, 14.993237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938244, 15.103564, 15.815909>,  <17.689659, 14.682673, 15.319531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938244, 15.103564, 15.815909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.824486, 15.380891, 15.551053>,  <17.756231, 15.547287, 15.392139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.824486, 15.380891, 15.551053>,  <17.938244, 15.103564, 15.815909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824486, 15.380891, 15.551053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100253, 0.665366, 0.739755,
		0.953450, 0.276766, -0.119721,
		-0.284397, 0.693317, -0.662140,
		17.739166, 15.588886, 15.352411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365601, 15.641561, 15.945662>,  <17.938244, 15.103564, 15.815909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365601, 15.641561, 15.945662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.056343, 15.809247, 15.755291>,  <17.870789, 15.909859, 15.641068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.056343, 15.809247, 15.755291>,  <18.365601, 15.641561, 15.945662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056343, 15.809247, 15.755291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204856, 0.545117, 0.812946,
		0.600236, 0.726021, -0.335575,
		-0.773143, 0.419215, -0.475929,
		17.824400, 15.935012, 15.612513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445972, 16.387503, 16.039818>,  <18.365601, 15.641561, 15.945662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445972, 16.387503, 16.039818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061949, 16.301462, 15.968244>,  <17.831535, 16.249838, 15.925299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.061949, 16.301462, 15.968244>,  <18.445972, 16.387503, 16.039818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061949, 16.301462, 15.968244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263289, 0.478094, 0.837917,
		-0.094686, 0.851562, -0.515631,
		-0.960059, -0.215099, -0.178938,
		17.773932, 16.236933, 15.914562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080338, 16.889801, 16.357376>,  <18.445972, 16.387503, 16.039818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080338, 16.889801, 16.357376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.779402, 16.629000, 16.319685>,  <17.598841, 16.472519, 16.297071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.779402, 16.629000, 16.319685>,  <18.080338, 16.889801, 16.357376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779402, 16.629000, 16.319685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408898, 0.350024, 0.842785,
		-0.516518, 0.672587, -0.529939,
		-0.752338, -0.652004, -0.094226,
		17.553701, 16.433399, 16.291418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495275, 17.239134, 16.475445>,  <18.080338, 16.889801, 16.357376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495275, 17.239134, 16.475445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.359293, 16.866430, 16.526443>,  <17.277704, 16.642809, 16.557043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.359293, 16.866430, 16.526443>,  <17.495275, 17.239134, 16.475445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.359293, 16.866430, 16.526443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390989, 0.263333, 0.881920,
		-0.855311, 0.249963, -0.453829,
		-0.339956, -0.931759, 0.127499,
		17.257307, 16.586903, 16.564693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770035, 17.264324, 16.704229>,  <17.495275, 17.239134, 16.475445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770035, 17.264324, 16.704229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.853359, 16.880447, 16.779697>,  <16.903355, 16.650122, 16.824978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.853359, 16.880447, 16.779697>,  <16.770035, 17.264324, 16.704229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853359, 16.880447, 16.779697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493634, 0.063371, 0.867358,
		-0.844353, -0.273815, -0.460536,
		0.208311, -0.959692, 0.188672,
		16.915852, 16.592539, 16.836300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112980, 17.019583, 16.845140>,  <16.770035, 17.264324, 16.704229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112980, 17.019583, 16.845140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.407072, 16.799021, 17.002817>,  <16.583527, 16.666683, 17.097424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.407072, 16.799021, 17.002817>,  <16.112980, 17.019583, 16.845140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407072, 16.799021, 17.002817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399365, 0.117495, 0.909232,
		-0.547673, -0.825921, -0.133826,
		0.735229, -0.551407, 0.394193,
		16.627642, 16.633598, 17.121075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784104, 16.582958, 17.334118>,  <16.112980, 17.019583, 16.845140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784104, 16.582958, 17.334118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.166117, 16.626278, 17.444527>,  <16.395325, 16.652269, 17.510773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.166117, 16.626278, 17.444527>,  <15.784104, 16.582958, 17.334118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166117, 16.626278, 17.444527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287445, 0.109742, 0.951489,
		0.072750, -0.988043, 0.135935,
		0.955030, 0.108294, 0.276024,
		16.452625, 16.658768, 17.527334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909933, 16.189970, 17.959988>,  <15.784104, 16.582958, 17.334118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909933, 16.189970, 17.959988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.195715, 16.469042, 17.938814>,  <16.367184, 16.636484, 17.926111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.195715, 16.469042, 17.938814>,  <15.909933, 16.189970, 17.959988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195715, 16.469042, 17.938814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262845, 0.337736, 0.903796,
		0.648436, -0.631807, 0.424678,
		0.714453, 0.697678, -0.052933,
		16.410051, 16.678345, 17.922934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919530, 16.276270, 18.601364>,  <15.909933, 16.189970, 17.959988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919530, 16.276270, 18.601364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153770, 16.576477, 18.478857>,  <16.294315, 16.756601, 18.405354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153770, 16.576477, 18.478857>,  <15.919530, 16.276270, 18.601364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153770, 16.576477, 18.478857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160925, 0.477945, 0.863523,
		0.794466, -0.456393, 0.400662,
		0.585600, 0.750516, -0.306266,
		16.329451, 16.801632, 18.386978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259008, 16.404467, 19.156137>,  <15.919530, 16.276270, 18.601364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259008, 16.404467, 19.156137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.296246, 16.743118, 18.946547>,  <16.318588, 16.946308, 18.820791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.296246, 16.743118, 18.946547>,  <16.259008, 16.404467, 19.156137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296246, 16.743118, 18.946547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030904, 0.528468, 0.848390,
		0.995178, -0.062786, 0.075361,
		0.093093, 0.846628, -0.523979,
		16.324173, 16.997107, 18.789352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.891449, 16.795559, 19.431232>,  <16.259008, 16.404467, 19.156137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.891449, 16.795559, 19.431232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.640356, 17.044704, 19.244471>,  <16.489700, 17.194191, 19.132414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.640356, 17.044704, 19.244471>,  <16.891449, 16.795559, 19.431232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640356, 17.044704, 19.244471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203419, 0.447702, 0.870737,
		0.751382, 0.641566, -0.154334,
		-0.627731, 0.622862, -0.466902,
		16.452038, 17.231564, 19.104401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959404, 17.441404, 19.826910>,  <16.891449, 16.795559, 19.431232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959404, 17.441404, 19.826910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.626738, 17.510925, 19.615959>,  <16.427137, 17.552637, 19.489389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.626738, 17.510925, 19.615959>,  <16.959404, 17.441404, 19.826910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626738, 17.510925, 19.615959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326128, 0.615798, 0.717240,
		0.449415, 0.768496, -0.455456,
		-0.831665, 0.173802, -0.527377,
		16.377237, 17.563066, 19.457747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921591, 18.181473, 19.777380>,  <16.959404, 17.441404, 19.826910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921591, 18.181473, 19.777380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.553690, 18.033455, 19.725035>,  <16.332949, 17.944645, 19.693628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.553690, 18.033455, 19.725035>,  <16.921591, 18.181473, 19.777380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553690, 18.033455, 19.725035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308034, 0.473887, 0.824952,
		-0.243254, 0.799061, -0.549845,
		-0.919752, -0.370044, -0.130863,
		16.277765, 17.922441, 19.685776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499813, 18.794655, 19.926819>,  <16.921591, 18.181473, 19.777380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499813, 18.794655, 19.926819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.264120, 18.472652, 19.954445>,  <16.122704, 18.279451, 19.971022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.264120, 18.472652, 19.954445>,  <16.499813, 18.794655, 19.926819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.264120, 18.472652, 19.954445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488068, 0.422760, 0.763586,
		-0.643889, 0.416222, -0.642002,
		-0.589234, -0.805006, 0.069066,
		16.087351, 18.231152, 19.975164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867720, 19.122349, 20.016729>,  <16.499813, 18.794655, 19.926819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867720, 19.122349, 20.016729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815186, 18.748524, 20.148996>,  <15.783666, 18.524229, 20.228355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815186, 18.748524, 20.148996>,  <15.867720, 19.122349, 20.016729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815186, 18.748524, 20.148996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549720, 0.346232, 0.760218,
		-0.824960, -0.081931, -0.559221,
		-0.131334, -0.934565, 0.330667,
		15.775785, 18.468155, 20.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.973140, 18.974369, 20.212183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.212361, 18.713018, 20.397840>,  <15.355894, 18.556208, 20.509235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.212361, 18.713018, 20.397840>,  <14.973140, 18.974369, 20.212183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212361, 18.713018, 20.397840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572460, 0.057063, 0.817945,
		-0.560910, -0.754881, -0.339904,
		0.598055, -0.653375, 0.464146,
		15.391778, 18.517006, 20.537085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582717, 18.422579, 20.535379>,  <14.973140, 18.974369, 20.212183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582717, 18.422579, 20.535379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.924268, 18.436556, 20.743099>,  <15.129198, 18.444942, 20.867731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.924268, 18.436556, 20.743099>,  <14.582717, 18.422579, 20.535379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924268, 18.436556, 20.743099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515183, 0.198631, 0.833746,
		-0.074016, -0.979451, 0.187608,
		0.853878, 0.034942, 0.519299,
		15.180431, 18.447039, 20.898890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375634, 18.241579, 21.166292>,  <14.582717, 18.422579, 20.535379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375634, 18.241579, 21.166292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737055, 18.398499, 21.235224>,  <14.953907, 18.492651, 21.276583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737055, 18.398499, 21.235224>,  <14.375634, 18.241579, 21.166292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737055, 18.398499, 21.235224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307837, 0.314569, 0.897933,
		0.298036, -0.864382, 0.404991,
		0.903555, 0.392287, 0.172336,
		15.008120, 18.516188, 21.286922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597598, 18.002838, 21.776699>,  <14.375634, 18.241579, 21.166292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597598, 18.002838, 21.776699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.812911, 18.338243, 21.742891>,  <14.942099, 18.539488, 21.722607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.812911, 18.338243, 21.742891>,  <14.597598, 18.002838, 21.776699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812911, 18.338243, 21.742891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196734, 0.222539, 0.954867,
		0.819480, -0.497361, 0.284754,
		0.538283, 0.838515, -0.084518,
		14.974396, 18.589798, 21.717535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925097, 18.032793, 22.366312>,  <14.597598, 18.002838, 21.776699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925097, 18.032793, 22.366312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.970005, 18.408157, 22.235603>,  <14.996950, 18.633377, 22.157179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.970005, 18.408157, 22.235603>,  <14.925097, 18.032793, 22.366312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970005, 18.408157, 22.235603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227378, 0.344386, 0.910877,
		0.967313, -0.027965, 0.252039,
		0.112272, 0.938412, -0.326770,
		15.003687, 18.689680, 22.137573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232717, 18.349277, 22.886574>,  <14.925097, 18.032793, 22.366312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232717, 18.349277, 22.886574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.098401, 18.653717, 22.664593>,  <15.017812, 18.836380, 22.531404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.098401, 18.653717, 22.664593>,  <15.232717, 18.349277, 22.886574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098401, 18.653717, 22.664593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477809, 0.370105, 0.796694,
		0.811755, 0.532682, 0.239383,
		-0.335788, 0.761099, -0.554955,
		14.997664, 18.882048, 22.498106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459492, 18.957193, 23.162968>,  <15.232717, 18.349277, 22.886574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459492, 18.957193, 23.162968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.129919, 19.081968, 22.973722>,  <14.932176, 19.156834, 22.860176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.129919, 19.081968, 22.973722>,  <15.459492, 18.957193, 23.162968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129919, 19.081968, 22.973722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322205, 0.428922, 0.843925,
		0.466178, 0.847775, -0.252895,
		-0.823931, 0.311935, -0.473112,
		14.882740, 19.175549, 22.831789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366149, 19.702503, 23.310322>,  <15.459492, 18.957193, 23.162968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366149, 19.702503, 23.310322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.990351, 19.620171, 23.200788>,  <14.764872, 19.570772, 23.135069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.990351, 19.620171, 23.200788>,  <15.366149, 19.702503, 23.310322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990351, 19.620171, 23.200788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336212, 0.400801, 0.852244,
		-0.065664, 0.892745, -0.445753,
		-0.939494, -0.205829, -0.273833,
		14.708503, 19.558422, 23.118639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038856, 20.399479, 23.543209>,  <15.366149, 19.702503, 23.310322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038856, 20.399479, 23.543209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.734936, 20.140654, 23.517866>,  <14.552584, 19.985359, 23.502661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.734936, 20.140654, 23.517866>,  <15.038856, 20.399479, 23.543209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734936, 20.140654, 23.517866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356556, 0.333213, 0.872832,
		-0.543666, 0.685769, -0.483890,
		-0.759800, -0.647063, -0.063358,
		14.506996, 19.946535, 23.498859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538426, 20.826332, 23.671507>,  <15.038856, 20.399479, 23.543209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538426, 20.826332, 23.671507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.415071, 20.455162, 23.755270>,  <14.341059, 20.232460, 23.805529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.415071, 20.455162, 23.755270>,  <14.538426, 20.826332, 23.671507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415071, 20.455162, 23.755270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427850, 0.331916, 0.840700,
		-0.849613, 0.169665, -0.499371,
		-0.308387, -0.927926, 0.209409,
		14.322556, 20.176785, 23.818092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907290, 20.955765, 24.048803>,  <14.538426, 20.826332, 23.671507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907290, 20.955765, 24.048803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.997233, 20.574812, 24.131178>,  <14.051199, 20.346241, 24.180603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.997233, 20.574812, 24.131178>,  <13.907290, 20.955765, 24.048803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997233, 20.574812, 24.131178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432916, 0.091697, 0.896759,
		-0.872939, -0.290796, -0.391682,
		0.224858, -0.952381, 0.205936,
		14.064691, 20.289097, 24.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230840, 20.634119, 24.348875>,  <13.907290, 20.955765, 24.048803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230840, 20.634119, 24.348875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.552612, 20.435829, 24.479809>,  <13.745676, 20.316856, 24.558369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.552612, 20.435829, 24.479809>,  <13.230840, 20.634119, 24.348875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.552612, 20.435829, 24.479809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299450, 0.137508, 0.944151,
		-0.513048, -0.857526, -0.037828,
		0.804432, -0.495723, 0.327334,
		13.793942, 20.287113, 24.578009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919881, 20.136404, 24.836136>,  <13.230840, 20.634119, 24.348875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919881, 20.136404, 24.836136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.299444, 20.151047, 24.961504>,  <13.527183, 20.159832, 25.036724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.299444, 20.151047, 24.961504>,  <12.919881, 20.136404, 24.836136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299444, 20.151047, 24.961504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309393, -0.087312, 0.946917,
		0.062033, -0.995508, -0.071524,
		0.948909, 0.036611, 0.313419,
		13.584117, 20.162029, 25.055531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963467, 19.597319, 25.399673>,  <12.919881, 20.136404, 24.836136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.963467, 19.597319, 25.399673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.259892, 19.864506, 25.426947>,  <13.437746, 20.024818, 25.443312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.259892, 19.864506, 25.426947>,  <12.963467, 19.597319, 25.399673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259892, 19.864506, 25.426947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056635, -0.039003, 0.997633,
		0.669044, -0.743169, 0.008926,
		0.741062, 0.667966, 0.068184,
		13.482210, 20.064896, 25.447401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282557, 19.444723, 26.059639>,  <12.963467, 19.597319, 25.399673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282557, 19.444723, 26.059639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.480183, 19.782722, 25.977781>,  <13.598759, 19.985521, 25.928667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.480183, 19.782722, 25.977781>,  <13.282557, 19.444723, 26.059639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480183, 19.782722, 25.977781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062772, 0.200097, 0.977763,
		0.867156, -0.495925, 0.045819,
		0.494065, 0.844997, -0.204646,
		13.628402, 20.036222, 25.916388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923532, 19.460302, 26.490767>,  <13.282557, 19.444723, 26.059639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923532, 19.460302, 26.490767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.844872, 19.838831, 26.388159>,  <13.797675, 20.065948, 26.326595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.844872, 19.838831, 26.388159>,  <13.923532, 19.460302, 26.490767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844872, 19.838831, 26.388159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033957, 0.268042, 0.962808,
		0.979885, 0.180629, -0.084846,
		-0.196653, 0.946323, -0.256517,
		13.785875, 20.122728, 26.311203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371335, 19.862715, 26.863106>,  <13.923532, 19.460302, 26.490767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371335, 19.862715, 26.863106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.090206, 20.132385, 26.772308>,  <13.921529, 20.294188, 26.717831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.090206, 20.132385, 26.772308>,  <14.371335, 19.862715, 26.863106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090206, 20.132385, 26.772308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162403, 0.462733, 0.871495,
		0.692579, 0.575642, -0.434708,
		-0.702823, 0.674176, -0.226994,
		13.879359, 20.334639, 26.704210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590531, 20.596745, 27.026705>,  <14.371335, 19.862715, 26.863106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590531, 20.596745, 27.026705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193841, 20.643890, 27.006363>,  <13.955827, 20.672178, 26.994158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193841, 20.643890, 27.006363>,  <14.590531, 20.596745, 27.026705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.193841, 20.643890, 27.006363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023930, 0.558963, 0.828847,
		0.126117, 0.820773, -0.557159,
		-0.991727, 0.117864, -0.050853,
		13.896323, 20.679249, 26.991106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512703, 21.277927, 27.122866>,  <14.590531, 20.596745, 27.026705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512703, 21.277927, 27.122866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.168690, 21.095444, 27.214270>,  <13.962282, 20.985954, 27.269112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.168690, 21.095444, 27.214270>,  <14.512703, 21.277927, 27.122866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168690, 21.095444, 27.214270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077270, 0.559131, 0.825471,
		-0.504354, 0.692276, -0.516122,
		-0.860033, -0.456210, 0.228508,
		13.910680, 20.958580, 27.282822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988783, 21.775274, 27.296436>,  <14.512703, 21.277927, 27.122866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988783, 21.775274, 27.296436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.854788, 21.448814, 27.484770>,  <13.774390, 21.252939, 27.597771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.854788, 21.448814, 27.484770>,  <13.988783, 21.775274, 27.296436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854788, 21.448814, 27.484770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045067, 0.513012, 0.857198,
		-0.941144, 0.265932, -0.208634,
		-0.334988, -0.816149, 0.470833,
		13.754292, 21.203970, 27.626020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613437, 22.055292, 27.889416>,  <13.988783, 21.775274, 27.296436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613437, 22.055292, 27.889416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642611, 21.664906, 27.971556>,  <13.660115, 21.430674, 28.020840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642611, 21.664906, 27.971556>,  <13.613437, 22.055292, 27.889416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642611, 21.664906, 27.971556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120382, 0.213008, 0.969606,
		-0.990045, -0.045997, 0.133025,
		0.072935, -0.975967, 0.205350,
		13.664491, 21.372116, 28.033161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147190, 21.990129, 28.384508>,  <13.613437, 22.055292, 27.889416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147190, 21.990129, 28.384508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.377879, 21.667366, 28.435558>,  <13.516293, 21.473707, 28.466188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.377879, 21.667366, 28.435558>,  <13.147190, 21.990129, 28.384508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377879, 21.667366, 28.435558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079732, 0.211074, 0.974213,
		-0.813040, -0.551675, 0.186067,
		0.576723, -0.806909, 0.127625,
		13.550896, 21.425293, 28.473846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874342, 21.625212, 28.926771>,  <13.147190, 21.990129, 28.384508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874342, 21.625212, 28.926771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.266073, 21.547306, 28.904928>,  <13.501112, 21.500563, 28.891823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.266073, 21.547306, 28.904928>,  <12.874342, 21.625212, 28.926771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266073, 21.547306, 28.904928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092257, 0.189823, 0.977474,
		-0.180013, -0.962306, 0.203868,
		0.979328, -0.194767, -0.054609,
		13.559872, 21.488876, 28.888546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198960, 21.539864, 28.523489>,  <12.874342, 21.625212, 28.926771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198960, 21.539864, 28.523489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.148178, 21.695639, 28.158585>,  <12.117709, 21.789104, 27.939642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.148178, 21.695639, 28.158585>,  <12.198960, 21.539864, 28.523489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.148178, 21.695639, 28.158585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711267, 0.676777, 0.189928,
		0.691362, -0.624749, -0.362915,
		-0.126955, 0.389439, -0.912261,
		12.110091, 21.812469, 27.884907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913774, 20.992998, 28.334818>,  <12.198960, 21.539864, 28.523489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913774, 20.992998, 28.334818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516636, 21.011454, 28.378876>,  <11.278354, 21.022526, 28.405312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516636, 21.011454, 28.378876>,  <11.913774, 20.992998, 28.334818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516636, 21.011454, 28.378876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112851, -0.664137, -0.739044,
		0.039055, -0.746186, 0.664591,
		-0.992844, 0.046137, 0.110146,
		11.218782, 21.025295, 28.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691760, 20.295013, 28.322498>,  <11.913774, 20.992998, 28.334818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691760, 20.295013, 28.322498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.367259, 20.507240, 28.224216>,  <11.172559, 20.634577, 28.165247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.367259, 20.507240, 28.224216>,  <11.691760, 20.295013, 28.322498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.367259, 20.507240, 28.224216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119917, -0.562268, -0.818214,
		-0.572281, -0.634305, 0.519761,
		-0.811243, 0.530577, -0.245711,
		11.123883, 20.666410, 28.150505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.123354, 19.778538, 28.101496>,  <11.691760, 20.295013, 28.322498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.123354, 19.778538, 28.101496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.016694, 20.140665, 27.969257>,  <10.952698, 20.357941, 27.889914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.016694, 20.140665, 27.969257>,  <11.123354, 19.778538, 28.101496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016694, 20.140665, 27.969257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051998, -0.329005, -0.942896,
		-0.962390, -0.268614, 0.040654,
		-0.266650, 0.905319, -0.330598,
		10.936699, 20.412260, 27.870077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.666059, 19.610355, 27.586517>,  <11.123354, 19.778538, 28.101496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.666059, 19.610355, 27.586517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.739819, 19.999363, 27.529655>,  <10.784074, 20.232767, 27.495539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.739819, 19.999363, 27.529655>,  <10.666059, 19.610355, 27.586517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739819, 19.999363, 27.529655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009775, -0.142813, -0.989701,
		-0.982803, 0.183887, -0.016828,
		0.184397, 0.972517, -0.142154,
		10.795137, 20.291119, 27.487009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.030563, 19.893723, 27.254417>,  <10.666059, 19.610355, 27.586517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.030563, 19.893723, 27.254417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.370470, 20.092772, 27.184828>,  <10.574414, 20.212200, 27.143074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.370470, 20.092772, 27.184828>,  <10.030563, 19.893723, 27.254417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.370470, 20.092772, 27.184828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070720, -0.219428, -0.973062,
		-0.522392, 0.839180, -0.151271,
		0.849768, 0.497622, -0.173975,
		10.625401, 20.242058, 27.132635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.947469, 20.249681, 26.699684>,  <10.030563, 19.893723, 27.254417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.947469, 20.249681, 26.699684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.346317, 20.247124, 26.729898>,  <10.585627, 20.245590, 26.748028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.346317, 20.247124, 26.729898>,  <9.947469, 20.249681, 26.699684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346317, 20.247124, 26.729898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075775, 0.113731, -0.990618,
		-0.002258, 0.993491, 0.113888,
		0.997123, -0.006393, 0.075538,
		10.645454, 20.245205, 26.752560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.132318, 20.783903, 26.238743>,  <9.947469, 20.249681, 26.699684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.132318, 20.783903, 26.238743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.472492, 20.578680, 26.285275>,  <10.676597, 20.455547, 26.313194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.472492, 20.578680, 26.285275>,  <10.132318, 20.783903, 26.238743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472492, 20.578680, 26.285275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220290, 0.146491, -0.964372,
		0.477735, 0.845763, 0.237602,
		0.850436, -0.513056, 0.116329,
		10.727623, 20.424763, 26.320173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.667859, 21.148619, 25.897999>,  <10.132318, 20.783903, 26.238743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.667859, 21.148619, 25.897999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.802410, 20.773703, 25.934528>,  <10.883141, 20.548754, 25.956446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.802410, 20.773703, 25.934528>,  <10.667859, 21.148619, 25.897999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802410, 20.773703, 25.934528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285468, 0.009074, -0.958345,
		0.897417, 0.348437, 0.270619,
		0.336379, -0.937288, 0.091325,
		10.903324, 20.492516, 25.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231635, 21.075611, 25.474251>,  <10.667859, 21.148619, 25.897999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231635, 21.075611, 25.474251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.144367, 20.687828, 25.519077>,  <11.092007, 20.455158, 25.545973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.144367, 20.687828, 25.519077>,  <11.231635, 21.075611, 25.474251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.144367, 20.687828, 25.519077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281165, -0.172402, -0.944047,
		0.934531, -0.174453, 0.310189,
		-0.218169, -0.969455, 0.112065,
		11.078917, 20.396992, 25.552696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.754558, 20.784082, 25.199516>,  <11.231635, 21.075611, 25.474251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.754558, 20.784082, 25.199516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.484279, 20.489481, 25.212145>,  <11.322111, 20.312721, 25.219721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.484279, 20.489481, 25.212145>,  <11.754558, 20.784082, 25.199516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.484279, 20.489481, 25.212145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338821, -0.348312, -0.874002,
		0.654701, -0.579864, 0.484896,
		-0.675698, -0.736503, 0.031570,
		11.281569, 20.268530, 25.221617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143192, 20.128368, 25.169657>,  <11.754558, 20.784082, 25.199516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143192, 20.128368, 25.169657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.778925, 20.071270, 25.014580>,  <11.560365, 20.037010, 24.921534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.778925, 20.071270, 25.014580>,  <12.143192, 20.128368, 25.169657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.778925, 20.071270, 25.014580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412862, -0.348691, -0.841403,
		-0.015077, -0.926303, 0.376477,
		-0.910669, -0.142747, -0.387693,
		11.505724, 20.028446, 24.898272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.105432, 19.390583, 24.857956>,  <12.143192, 20.128368, 25.169657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.105432, 19.390583, 24.857956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.795276, 19.574583, 24.684902>,  <11.609182, 19.684982, 24.581070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.795276, 19.574583, 24.684902>,  <12.105432, 19.390583, 24.857956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795276, 19.574583, 24.684902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219472, -0.446092, -0.867660,
		-0.592120, -0.767724, 0.244937,
		-0.775388, 0.460002, -0.432634,
		11.562659, 19.712584, 24.555113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778004, 18.901087, 24.458035>,  <12.105432, 19.390583, 24.857956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778004, 18.901087, 24.458035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.633810, 19.240967, 24.304121>,  <11.547294, 19.444895, 24.211773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.633810, 19.240967, 24.304121>,  <11.778004, 18.901087, 24.458035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633810, 19.240967, 24.304121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107416, -0.371959, -0.922013,
		-0.926559, -0.373704, 0.042814,
		-0.360485, 0.849701, -0.384784,
		11.525664, 19.495876, 24.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.399383, 18.709101, 23.822376>,  <11.778004, 18.901087, 24.458035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.399383, 18.709101, 23.822376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.499275, 19.092583, 23.767946>,  <11.559211, 19.322672, 23.735289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.499275, 19.092583, 23.767946>,  <11.399383, 18.709101, 23.822376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.499275, 19.092583, 23.767946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155107, -0.178321, -0.971671,
		-0.955812, 0.221551, -0.193234,
		0.249732, 0.958706, -0.136077,
		11.574195, 19.380194, 23.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186875, 18.915741, 23.193237>,  <11.399383, 18.709101, 23.822376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186875, 18.915741, 23.193237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.475655, 19.181534, 23.270445>,  <11.648922, 19.341009, 23.316769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.475655, 19.181534, 23.270445>,  <11.186875, 18.915741, 23.193237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.475655, 19.181534, 23.270445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340911, -0.098831, -0.934886,
		-0.602139, 0.740741, -0.297880,
		0.721948, 0.664482, 0.193017,
		11.692239, 19.380878, 23.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121614, 19.290602, 22.689070>,  <11.186875, 18.915741, 23.193237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121614, 19.290602, 22.689070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.477786, 19.423107, 22.813906>,  <11.691489, 19.502609, 22.888807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.477786, 19.423107, 22.813906>,  <11.121614, 19.290602, 22.689070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477786, 19.423107, 22.813906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376090, -0.149397, -0.914460,
		-0.256301, 0.931636, -0.257612,
		0.890430, 0.331263, 0.312088,
		11.744915, 19.522486, 22.907532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299853, 19.744316, 22.180511>,  <11.121614, 19.290602, 22.689070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299853, 19.744316, 22.180511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.631248, 19.626688, 22.371145>,  <11.830084, 19.556110, 22.485525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.631248, 19.626688, 22.371145>,  <11.299853, 19.744316, 22.180511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631248, 19.626688, 22.371145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465774, -0.110643, -0.877960,
		0.310912, 0.949358, 0.045304,
		0.828486, -0.294070, 0.476586,
		11.879793, 19.538467, 22.514122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.895251, 20.076221, 21.887056>,  <11.299853, 19.744316, 22.180511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.895251, 20.076221, 21.887056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069262, 19.750158, 22.040035>,  <12.173668, 19.554520, 22.131823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069262, 19.750158, 22.040035>,  <11.895251, 20.076221, 21.887056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069262, 19.750158, 22.040035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569060, -0.080264, -0.818369,
		0.697798, 0.573648, 0.428958,
		0.435026, -0.815160, 0.382448,
		12.199769, 19.505610, 22.154770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624299, 20.119844, 21.747416>,  <11.895251, 20.076221, 21.887056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624299, 20.119844, 21.747416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.538804, 19.733580, 21.806496>,  <12.487507, 19.501822, 21.841944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.538804, 19.733580, 21.806496>,  <12.624299, 20.119844, 21.747416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.538804, 19.733580, 21.806496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385311, -0.222269, -0.895618,
		0.897692, -0.134518, 0.419587,
		-0.213738, -0.965661, 0.147698,
		12.474683, 19.443882, 21.850805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251513, 19.802771, 21.463087>,  <12.624299, 20.119844, 21.747416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251513, 19.802771, 21.463087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.966046, 19.523026, 21.478964>,  <12.794766, 19.355179, 21.488489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.966046, 19.523026, 21.478964>,  <13.251513, 19.802771, 21.463087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966046, 19.523026, 21.478964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357984, -0.412837, -0.837504,
		0.602105, -0.583488, 0.544987,
		-0.713665, -0.699362, 0.039692,
		12.751946, 19.313217, 21.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.119802, 10.781535, 2.728573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.326771, 10.444303, 2.787210>,  <23.450951, 10.241962, 2.822393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.326771, 10.444303, 2.787210>,  <23.119802, 10.781535, 2.728573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.326771, 10.444303, 2.787210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546477, 0.193717, -0.814762,
		0.658514, 0.501683, 0.560958,
		0.517419, -0.843083, 0.146593,
		23.481997, 10.191378, 2.831188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.035658, 11.449421, 2.753237>,  <23.119802, 10.781535, 2.728573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.035658, 11.449421, 2.753237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.797617, 11.698838, 2.550438>,  <22.654793, 11.848489, 2.428759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.797617, 11.698838, 2.550438>,  <23.035658, 11.449421, 2.753237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797617, 11.698838, 2.550438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551203, 0.142404, 0.822129,
		0.584830, 0.768711, 0.258953,
		-0.595104, 0.623542, -0.506998,
		22.619085, 11.885900, 2.398339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.089592, 12.221411, 2.844399>,  <23.035658, 11.449421, 2.753237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.089592, 12.221411, 2.844399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.721605, 12.069098, 2.807171>,  <22.500813, 11.977710, 2.784835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.721605, 12.069098, 2.807171>,  <23.089592, 12.221411, 2.844399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721605, 12.069098, 2.807171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199491, 0.250417, 0.947362,
		-0.337433, 0.890110, -0.306339,
		-0.919969, -0.380783, -0.093070,
		22.445614, 11.954863, 2.779250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788383, 12.834079, 3.208180>,  <23.089592, 12.221411, 2.844399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788383, 12.834079, 3.208180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.609640, 12.698814, 2.876887>,  <22.502394, 12.617656, 2.678112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.609640, 12.698814, 2.876887>,  <22.788383, 12.834079, 3.208180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609640, 12.698814, 2.876887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356621, -0.781732, 0.511583,
		-0.820451, 0.523969, 0.228728,
		-0.446857, -0.338160, -0.828231,
		22.475582, 12.597366, 2.628418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.322733, 13.355984, 3.488836>,  <22.788383, 12.834079, 3.208180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.322733, 13.355984, 3.488836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336332, 13.608163, 3.799031>,  <23.344492, 13.759470, 3.985147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336332, 13.608163, 3.799031>,  <23.322733, 13.355984, 3.488836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.336332, 13.608163, 3.799031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618971, 0.595928, -0.511610,
		-0.784678, 0.497398, -0.369967,
		0.034000, 0.630448, 0.775486,
		23.346533, 13.797297, 4.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864147, 13.881553, 3.306685>,  <23.322733, 13.355984, 3.488836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864147, 13.881553, 3.306685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227118, 14.028278, 3.224681>,  <23.444899, 14.116314, 3.175478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.227118, 14.028278, 3.224681>,  <22.864147, 13.881553, 3.306685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227118, 14.028278, 3.224681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417074, -0.726631, 0.545946,
		0.051294, -0.580909, -0.812351,
		0.907424, 0.366814, -0.205010,
		23.499344, 14.138323, 3.163178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834614, 14.509607, 3.700250>,  <22.864147, 13.881553, 3.306685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834614, 14.509607, 3.700250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.212343, 14.531141, 3.830086>,  <23.438980, 14.544062, 3.907988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.212343, 14.531141, 3.830086>,  <22.834614, 14.509607, 3.700250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212343, 14.531141, 3.830086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303419, 0.524038, 0.795815,
		-0.127255, -0.849992, 0.511194,
		0.944322, 0.053834, 0.324590,
		23.495640, 14.547292, 3.927463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.888321, 14.254034, 4.449252>,  <22.834614, 14.509607, 3.700250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.888321, 14.254034, 4.449252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155514, 14.525517, 4.327166>,  <23.315830, 14.688408, 4.253915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155514, 14.525517, 4.327166>,  <22.888321, 14.254034, 4.449252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155514, 14.525517, 4.327166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089031, 0.480075, 0.872698,
		0.738834, -0.555772, 0.381107,
		0.667981, 0.678709, -0.305214,
		23.355907, 14.729130, 4.235602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477880, 14.391894, 4.872562>,  <22.888321, 14.254034, 4.449252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477880, 14.391894, 4.872562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.429720, 14.750173, 4.701340>,  <23.400824, 14.965139, 4.598606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.429720, 14.750173, 4.701340>,  <23.477880, 14.391894, 4.872562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.429720, 14.750173, 4.701340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170949, 0.406045, 0.897722,
		0.977896, 0.181262, 0.104230,
		-0.120401, 0.895696, -0.428056,
		23.393600, 15.018882, 4.572923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.811832, 14.917106, 5.328697>,  <23.477880, 14.391894, 4.872562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.811832, 14.917106, 5.328697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509262, 15.067287, 5.114462>,  <23.327721, 15.157396, 4.985921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509262, 15.067287, 5.114462>,  <23.811832, 14.917106, 5.328697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509262, 15.067287, 5.114462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404075, 0.375659, 0.834029,
		0.514338, 0.847298, -0.132447,
		-0.756426, 0.375454, -0.535587,
		23.282333, 15.179924, 4.953786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686939, 15.685181, 5.367002>,  <23.811832, 14.917106, 5.328697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686939, 15.685181, 5.367002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.319069, 15.544502, 5.297134>,  <23.098347, 15.460095, 5.255214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.319069, 15.544502, 5.297134>,  <23.686939, 15.685181, 5.367002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.319069, 15.544502, 5.297134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235124, 0.136929, 0.962272,
		-0.314509, 0.926046, -0.208621,
		-0.919674, -0.351695, -0.174670,
		23.043167, 15.438993, 5.244733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314304, 15.785406, 6.004848>,  <23.686939, 15.685181, 5.367002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314304, 15.785406, 6.004848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.019617, 15.577239, 5.832148>,  <22.842804, 15.452339, 5.728527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.019617, 15.577239, 5.832148>,  <23.314304, 15.785406, 6.004848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.019617, 15.577239, 5.832148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428565, -0.134530, 0.893439,
		-0.523044, 0.843248, -0.123922,
		-0.736720, -0.520417, -0.431752,
		22.798601, 15.421114, 5.702622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.725437, 16.121681, 6.195901>,  <23.314304, 15.785406, 6.004848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.725437, 16.121681, 6.195901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.630796, 15.749339, 6.084529>,  <22.574011, 15.525933, 6.017705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.630796, 15.749339, 6.084529>,  <22.725437, 16.121681, 6.195901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630796, 15.749339, 6.084529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444256, -0.151210, 0.883047,
		-0.864092, 0.332627, -0.377762,
		-0.236604, -0.930857, -0.278431,
		22.559814, 15.470082, 6.000999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.006899, 15.944633, 6.385134>,  <22.725437, 16.121681, 6.195901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.006899, 15.944633, 6.385134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.185642, 15.587706, 6.359577>,  <22.292889, 15.373549, 6.344243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.185642, 15.587706, 6.359577>,  <22.006899, 15.944633, 6.385134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.185642, 15.587706, 6.359577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449065, -0.285506, 0.846657,
		-0.773731, -0.349642, -0.528290,
		0.446857, -0.892321, -0.063892,
		22.319700, 15.320009, 6.340409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.488422, 15.533769, 6.512188>,  <22.006899, 15.944633, 6.385134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.488422, 15.533769, 6.512188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808189, 15.300557, 6.570165>,  <22.000050, 15.160630, 6.604950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808189, 15.300557, 6.570165>,  <21.488422, 15.533769, 6.512188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808189, 15.300557, 6.570165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346223, -0.249927, 0.904249,
		-0.490979, -0.773054, -0.401654,
		0.799418, -0.583030, 0.144941,
		22.048016, 15.125648, 6.613647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337292, 15.043173, 6.890706>,  <21.488422, 15.533769, 6.512188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337292, 15.043173, 6.890706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731495, 15.028737, 6.957007>,  <21.968016, 15.020076, 6.996788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731495, 15.028737, 6.957007>,  <21.337292, 15.043173, 6.890706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731495, 15.028737, 6.957007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167379, -0.048045, 0.984721,
		-0.027565, -0.998193, -0.053387,
		0.985507, -0.036080, 0.165752,
		22.027147, 15.017911, 7.006732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.377848, 14.564859, 7.352802>,  <21.337292, 15.043173, 6.890706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.377848, 14.564859, 7.352802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736301, 14.736263, 7.398967>,  <21.951374, 14.839106, 7.426666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736301, 14.736263, 7.398967>,  <21.377848, 14.564859, 7.352802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736301, 14.736263, 7.398967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023385, -0.214105, 0.976531,
		0.443164, -0.877803, -0.181847,
		0.896136, 0.428511, 0.115412,
		22.005142, 14.864817, 7.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909424, 14.030384, 7.561893>,  <21.377848, 14.564859, 7.352802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909424, 14.030384, 7.561893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.978376, 14.403070, 7.689764>,  <22.019749, 14.626682, 7.766486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.978376, 14.403070, 7.689764>,  <21.909424, 14.030384, 7.561893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978376, 14.403070, 7.689764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014249, -0.322140, 0.946585,
		0.984927, -0.167729, -0.042255,
		0.172381, 0.931715, 0.319675,
		22.030090, 14.682585, 7.785666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058712, 13.988541, 8.271540>,  <21.909424, 14.030384, 7.561893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058712, 13.988541, 8.271540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.090958, 14.387022, 8.258395>,  <22.110306, 14.626111, 8.250508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.090958, 14.387022, 8.258395>,  <22.058712, 13.988541, 8.271540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.090958, 14.387022, 8.258395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016900, 0.031598, 0.999358,
		0.996602, -0.081118, -0.014289,
		0.080615, 0.996204, -0.032861,
		22.115143, 14.685884, 8.248537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560167, 14.175957, 8.710743>,  <22.058712, 13.988541, 8.271540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560167, 14.175957, 8.710743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318972, 14.494020, 8.685049>,  <22.174253, 14.684857, 8.669633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318972, 14.494020, 8.685049>,  <22.560167, 14.175957, 8.710743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318972, 14.494020, 8.685049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017580, 0.093747, 0.995441,
		0.797554, 0.599113, -0.070508,
		-0.602991, 0.795157, -0.064236,
		22.138075, 14.732567, 8.665778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758968, 14.676357, 9.228295>,  <22.560167, 14.175957, 8.710743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758968, 14.676357, 9.228295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381298, 14.781112, 9.148346>,  <22.154696, 14.843965, 9.100376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.381298, 14.781112, 9.148346>,  <22.758968, 14.676357, 9.228295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.381298, 14.781112, 9.148346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201328, 0.021550, 0.979287,
		0.260769, 0.964858, 0.032378,
		-0.944175, 0.261886, -0.199873,
		22.098045, 14.859677, 9.088384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.733606, 15.215547, 9.621533>,  <22.758968, 14.676357, 9.228295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.733606, 15.215547, 9.621533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.362661, 15.102869, 9.523026>,  <22.140095, 15.035262, 9.463923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.362661, 15.102869, 9.523026>,  <22.733606, 15.215547, 9.621533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362661, 15.102869, 9.523026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327616, 0.293386, 0.898105,
		-0.180740, 0.913550, -0.364363,
		-0.927362, -0.281695, -0.246267,
		22.084454, 15.018360, 9.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296526, 15.713238, 9.893710>,  <22.733606, 15.215547, 9.621533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296526, 15.713238, 9.893710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.034883, 15.414371, 9.846569>,  <21.877897, 15.235052, 9.818285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.034883, 15.414371, 9.846569>,  <22.296526, 15.713238, 9.893710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034883, 15.414371, 9.846569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325430, 0.137333, 0.935540,
		-0.682818, 0.650295, -0.332980,
		-0.654107, -0.747165, -0.117852,
		21.838652, 15.190222, 9.811213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725414, 15.891702, 10.259113>,  <22.296526, 15.713238, 9.893710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725414, 15.891702, 10.259113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.663479, 15.499059, 10.214441>,  <21.626318, 15.263473, 10.187638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.663479, 15.499059, 10.214441>,  <21.725414, 15.891702, 10.259113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663479, 15.499059, 10.214441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267388, -0.067184, 0.961243,
		-0.951067, 0.178700, -0.252068,
		-0.154839, -0.981607, -0.111679,
		21.617027, 15.204576, 10.180938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968090, 15.739650, 10.506409>,  <21.725414, 15.891702, 10.259113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968090, 15.739650, 10.506409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.194485, 15.412451, 10.547477>,  <21.330322, 15.216131, 10.572118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.194485, 15.412451, 10.547477>,  <20.968090, 15.739650, 10.506409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.194485, 15.412451, 10.547477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306525, -0.093193, 0.947290,
		-0.765312, -0.567623, -0.303482,
		0.565986, -0.817997, 0.102669,
		21.364281, 15.167051, 10.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.594496, 15.444476, 10.948899>,  <20.968090, 15.739650, 10.506409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.594496, 15.444476, 10.948899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.934019, 15.234092, 10.970399>,  <21.137733, 15.107861, 10.983298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.934019, 15.234092, 10.970399>,  <20.594496, 15.444476, 10.948899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.934019, 15.234092, 10.970399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146081, -0.135609, 0.979934,
		-0.508119, -0.839627, -0.191939,
		0.848808, -0.525962, 0.053748,
		21.188662, 15.076303, 10.986524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479458, 14.819057, 11.339782>,  <20.594496, 15.444476, 10.948899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479458, 14.819057, 11.339782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.875183, 14.875643, 11.353904>,  <21.112617, 14.909595, 11.362377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.875183, 14.875643, 11.353904>,  <20.479458, 14.819057, 11.339782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.875183, 14.875643, 11.353904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013955, -0.149157, 0.988715,
		0.145137, -0.978641, -0.145589,
		0.989313, 0.141468, 0.035306,
		21.171978, 14.918082, 11.364495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738132, 14.289200, 11.719261>,  <20.479458, 14.819057, 11.339782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738132, 14.289200, 11.719261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.015043, 14.576749, 11.744466>,  <21.181190, 14.749278, 11.759589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.015043, 14.576749, 11.744466>,  <20.738132, 14.289200, 11.719261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015043, 14.576749, 11.744466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137942, -0.217535, 0.966256,
		0.708323, -0.660227, -0.249758,
		0.692279, 0.718873, 0.063012,
		21.222727, 14.792411, 11.763370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.238949, 14.013070, 12.143844>,  <20.738132, 14.289200, 11.719261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.238949, 14.013070, 12.143844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.328419, 14.402746, 12.131682>,  <21.382101, 14.636552, 12.124386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.328419, 14.402746, 12.131682>,  <21.238949, 14.013070, 12.143844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328419, 14.402746, 12.131682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108362, 0.006145, 0.994093,
		0.968621, -0.225648, -0.104190,
		0.223675, 0.974190, -0.030404,
		21.395521, 14.695004, 12.122561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727676, 14.076310, 12.693038>,  <21.238949, 14.013070, 12.143844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727676, 14.076310, 12.693038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.607521, 14.450109, 12.616636>,  <21.535427, 14.674388, 12.570795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.607521, 14.450109, 12.616636>,  <21.727676, 14.076310, 12.693038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607521, 14.450109, 12.616636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003547, 0.201346, 0.979513,
		0.953810, 0.293557, -0.063797,
		-0.300388, 0.934497, -0.191005,
		21.517405, 14.730457, 12.559335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.222994, 14.405738, 12.827335>,  <21.727676, 14.076310, 12.693038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.222994, 14.405738, 12.827335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919153, 14.663521, 12.862383>,  <21.736849, 14.818191, 12.883411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919153, 14.663521, 12.862383>,  <22.222994, 14.405738, 12.827335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919153, 14.663521, 12.862383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279457, 0.201761, 0.938721,
		0.587287, 0.737541, -0.333356,
		-0.759604, 0.644457, 0.087619,
		21.691273, 14.856858, 12.888669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.456194, 15.007881, 12.988164>,  <22.222994, 14.405738, 12.827335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.456194, 15.007881, 12.988164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.079779, 15.002348, 13.123373>,  <21.853930, 14.999028, 13.204498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.079779, 15.002348, 13.123373>,  <22.456194, 15.007881, 12.988164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079779, 15.002348, 13.123373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327879, 0.208875, 0.921340,
		-0.083349, 0.977845, -0.192023,
		-0.941036, -0.013832, 0.338024,
		21.797468, 14.998199, 13.224780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.151575, 15.691309, 13.114834>,  <22.456194, 15.007881, 12.988164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.151575, 15.691309, 13.114834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099001, 15.358456, 13.330343>,  <22.067457, 15.158744, 13.459649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099001, 15.358456, 13.330343>,  <22.151575, 15.691309, 13.114834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099001, 15.358456, 13.330343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365599, 0.464489, 0.806590,
		-0.921446, 0.302989, 0.243178,
		-0.131434, -0.832134, 0.538774,
		22.059570, 15.108815, 13.491976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.893389, 15.783188, 13.813519>,  <22.151575, 15.691309, 13.114834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.893389, 15.783188, 13.813519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.128279, 15.459730, 13.799319>,  <22.269213, 15.265656, 13.790799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.128279, 15.459730, 13.799319>,  <21.893389, 15.783188, 13.813519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128279, 15.459730, 13.799319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511423, 0.336681, 0.790628,
		-0.627385, -0.482433, 0.611266,
		0.587227, -0.808643, -0.035499,
		22.304447, 15.217137, 13.788670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169130, 16.486988, 13.472219>,  <21.893389, 15.783188, 13.813519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169130, 16.486988, 13.472219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413153, 16.794918, 13.547271>,  <22.559566, 16.979675, 13.592301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413153, 16.794918, 13.547271>,  <22.169130, 16.486988, 13.472219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413153, 16.794918, 13.547271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149313, -0.344245, 0.926931,
		0.778164, -0.537463, -0.324953,
		0.610054, 0.769824, 0.187629,
		22.596169, 17.025866, 13.603559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.857481, 16.573740, 13.161334>,  <22.169130, 16.486988, 13.472219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.857481, 16.573740, 13.161334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217802, 16.401384, 13.139824>,  <23.433994, 16.297972, 13.126918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.217802, 16.401384, 13.139824>,  <22.857481, 16.573740, 13.161334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217802, 16.401384, 13.139824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032344, 0.190074, -0.981237,
		0.433024, 0.882161, 0.185156,
		0.900802, -0.430888, -0.053774,
		23.488043, 16.272118, 13.123692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312820, 17.028635, 12.745994>,  <22.857481, 16.573740, 13.161334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312820, 17.028635, 12.745994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.495636, 16.674175, 12.715384>,  <23.605326, 16.461500, 12.697018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.495636, 16.674175, 12.715384>,  <23.312820, 17.028635, 12.745994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.495636, 16.674175, 12.715384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084913, 0.129113, -0.987988,
		0.885384, 0.445051, 0.134256,
		0.457040, -0.886148, -0.076524,
		23.632748, 16.408331, 12.692427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970375, 17.138788, 12.420240>,  <23.312820, 17.028635, 12.745994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970375, 17.138788, 12.420240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.892256, 16.754656, 12.340614>,  <23.845385, 16.524178, 12.292839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.892256, 16.754656, 12.340614>,  <23.970375, 17.138788, 12.420240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.892256, 16.754656, 12.340614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332444, 0.126134, -0.934650,
		0.922681, -0.248713, 0.294622,
		-0.195298, -0.960329, -0.199065,
		23.833666, 16.466557, 12.280895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599665, 16.777149, 12.108539>,  <23.970375, 17.138788, 12.420240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599665, 16.777149, 12.108539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272747, 16.572037, 12.003404>,  <24.076597, 16.448969, 11.940323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272747, 16.572037, 12.003404>,  <24.599665, 16.777149, 12.108539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272747, 16.572037, 12.003404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230880, 0.126504, -0.964723,
		0.527944, -0.849147, 0.015000,
		-0.817294, -0.512783, -0.262838,
		24.027559, 16.418201, 11.924552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804174, 16.432465, 11.476211>,  <24.599665, 16.777149, 12.108539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804174, 16.432465, 11.476211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.405344, 16.403429, 11.466648>,  <24.166046, 16.386007, 11.460911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.405344, 16.403429, 11.466648>,  <24.804174, 16.432465, 11.476211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405344, 16.403429, 11.466648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010421, 0.180730, -0.983478,
		0.075709, -0.980850, -0.179445,
		-0.997076, -0.072588, -0.023905,
		24.106222, 16.381651, 11.459476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747894, 16.095343, 10.858878>,  <24.804174, 16.432465, 11.476211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747894, 16.095343, 10.858878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369684, 16.211023, 10.918668>,  <24.142757, 16.280432, 10.954541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369684, 16.211023, 10.918668>,  <24.747894, 16.095343, 10.858878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369684, 16.211023, 10.918668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089667, 0.210030, -0.973574,
		-0.312952, -0.933944, -0.172657,
		-0.945527, 0.289200, 0.149473,
		24.086025, 16.297783, 10.963510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464281, 15.772533, 10.324206>,  <24.747894, 16.095343, 10.858878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464281, 15.772533, 10.324206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205980, 16.051523, 10.448485>,  <24.050999, 16.218916, 10.523053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205980, 16.051523, 10.448485>,  <24.464281, 15.772533, 10.324206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205980, 16.051523, 10.448485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187348, 0.249740, -0.950016,
		-0.740205, -0.671685, -0.030600,
		-0.645753, 0.697474, 0.310698,
		24.012255, 16.260765, 10.541695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832376, 15.769913, 9.802961>,  <24.464281, 15.772533, 10.324206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832376, 15.769913, 9.802961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.859396, 16.116280, 10.001204>,  <23.875607, 16.324100, 10.120149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.859396, 16.116280, 10.001204>,  <23.832376, 15.769913, 9.802961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.859396, 16.116280, 10.001204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316474, 0.489684, -0.812437,
		-0.946193, -0.101968, 0.307117,
		0.067548, 0.865917, 0.495606,
		23.879660, 16.376055, 10.149885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242220, 16.080915, 9.689390>,  <23.832376, 15.769913, 9.802961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242220, 16.080915, 9.689390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.497292, 16.378370, 9.769758>,  <23.650335, 16.556843, 9.817979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.497292, 16.378370, 9.769758>,  <23.242220, 16.080915, 9.689390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497292, 16.378370, 9.769758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249027, 0.445845, -0.859772,
		-0.728936, 0.498226, 0.469492,
		0.637682, 0.743635, 0.200921,
		23.688597, 16.601461, 9.830034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945009, 16.702078, 9.424458>,  <23.242220, 16.080915, 9.689390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945009, 16.702078, 9.424458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329508, 16.787483, 9.494224>,  <23.560207, 16.838726, 9.536083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329508, 16.787483, 9.494224>,  <22.945009, 16.702078, 9.424458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329508, 16.787483, 9.494224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068847, 0.426694, -0.901772,
		-0.266961, 0.878831, 0.395458,
		0.961245, 0.213512, 0.174416,
		23.617882, 16.851538, 9.546548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.024584, 17.298326, 8.976992>,  <22.945009, 16.702078, 9.424458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.024584, 17.298326, 8.976992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.394581, 17.167385, 9.054171>,  <23.616579, 17.088820, 9.100478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.394581, 17.167385, 9.054171>,  <23.024584, 17.298326, 8.976992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.394581, 17.167385, 9.054171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279686, 0.242804, -0.928882,
		0.257226, 0.913173, 0.316148,
		0.924992, -0.327355, 0.192947,
		23.672079, 17.069180, 9.112055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484072, 17.893246, 8.703635>,  <23.024584, 17.298326, 8.976992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484072, 17.893246, 8.703635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688602, 17.550863, 8.734318>,  <23.811321, 17.345434, 8.752728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688602, 17.550863, 8.734318>,  <23.484072, 17.893246, 8.703635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688602, 17.550863, 8.734318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294405, 0.090613, -0.951375,
		0.807386, 0.509045, 0.298330,
		0.511326, -0.855957, 0.076706,
		23.842001, 17.294077, 8.757330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.094723, 18.039198, 8.382015>,  <23.484072, 17.893246, 8.703635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.094723, 18.039198, 8.382015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.055223, 17.641294, 8.392601>,  <24.031525, 17.402552, 8.398952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.055223, 17.641294, 8.392601>,  <24.094723, 18.039198, 8.382015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.055223, 17.641294, 8.392601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490989, -0.071836, -0.868199,
		0.865551, -0.072739, 0.495510,
		-0.098747, -0.994761, 0.026464,
		24.025599, 17.342867, 8.400540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730555, 17.731964, 8.184707>,  <24.094723, 18.039198, 8.382015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730555, 17.731964, 8.184707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.452023, 17.450794, 8.126709>,  <24.284903, 17.282093, 8.091910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.452023, 17.450794, 8.126709>,  <24.730555, 17.731964, 8.184707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452023, 17.450794, 8.126709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246238, -0.044215, -0.968200,
		0.674159, -0.709890, 0.203874,
		-0.696330, -0.702923, -0.144994,
		24.243124, 17.239918, 8.083211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035547, 17.116219, 7.897111>,  <24.730555, 17.731964, 8.184707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035547, 17.116219, 7.897111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.655859, 17.069920, 7.780094>,  <24.428045, 17.042141, 7.709883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.655859, 17.069920, 7.780094>,  <25.035547, 17.116219, 7.897111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655859, 17.069920, 7.780094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312993, -0.253316, -0.915350,
		0.031844, -0.960434, 0.276681,
		-0.949222, -0.115748, -0.292543,
		24.371092, 17.035196, 7.692331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012754, 16.525064, 7.340057>,  <25.035547, 17.116219, 7.897111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012754, 16.525064, 7.340057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.664631, 16.719110, 7.306049>,  <24.455757, 16.835539, 7.285644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.664631, 16.719110, 7.306049>,  <25.012754, 16.525064, 7.340057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664631, 16.719110, 7.306049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022870, -0.132634, -0.990901,
		-0.491978, -0.864333, 0.104338,
		-0.870307, 0.485115, -0.085020,
		24.403538, 16.864645, 7.280543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621645, 16.139853, 6.834023>,  <25.012754, 16.525064, 7.340057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621645, 16.139853, 6.834023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.476149, 16.512415, 6.828731>,  <24.388851, 16.735952, 6.825556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.476149, 16.512415, 6.828731>,  <24.621645, 16.139853, 6.834023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476149, 16.512415, 6.828731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186228, -0.086629, -0.978680,
		-0.912694, -0.353524, 0.204965,
		-0.363743, 0.931405, -0.013230,
		24.367025, 16.791836, 6.824762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.992207, 17.758305, 17.917547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788445, 17.455456, 18.081142>,  <16.666187, 17.273746, 18.179298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788445, 17.455456, 18.081142>,  <16.992207, 17.758305, 17.917547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788445, 17.455456, 18.081142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332596, -0.611568, -0.717889,
		0.793655, -0.229668, 0.563351,
		-0.509404, -0.757124, 0.408987,
		16.635624, 17.228319, 18.203838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504883, 17.346476, 17.963415>,  <16.992207, 17.758305, 17.917547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504883, 17.346476, 17.963415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177151, 17.117170, 17.966835>,  <16.980513, 16.979588, 17.968887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177151, 17.117170, 17.966835>,  <17.504883, 17.346476, 17.963415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177151, 17.117170, 17.966835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364016, -0.531673, -0.764733,
		0.442938, -0.623455, 0.644291,
		-0.819328, -0.573261, 0.008551,
		16.931353, 16.945192, 17.969400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745462, 16.666319, 17.782970>,  <17.504883, 17.346476, 17.963415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745462, 16.666319, 17.782970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353807, 16.660372, 17.701908>,  <17.118814, 16.656803, 17.653271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353807, 16.660372, 17.701908>,  <17.745462, 16.666319, 17.782970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353807, 16.660372, 17.701908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151747, -0.716780, -0.680588,
		-0.135140, -0.697141, 0.704082,
		-0.979137, -0.014868, -0.202655,
		17.060066, 16.655912, 17.641111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565113, 16.002487, 17.748287>,  <17.745462, 16.666319, 17.782970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565113, 16.002487, 17.748287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284157, 16.207756, 17.550983>,  <17.115583, 16.330917, 17.432600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284157, 16.207756, 17.550983>,  <17.565113, 16.002487, 17.748287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284157, 16.207756, 17.550983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088045, -0.750297, -0.655211,
		-0.706325, -0.416786, 0.572184,
		-0.702391, 0.513170, -0.493258,
		17.073441, 16.361708, 17.403006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343235, 15.491690, 17.272522>,  <17.565113, 16.002487, 17.748287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343235, 15.491690, 17.272522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186062, 15.835542, 17.141901>,  <17.091757, 16.041853, 17.063528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186062, 15.835542, 17.141901>,  <17.343235, 15.491690, 17.272522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186062, 15.835542, 17.141901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098958, -0.392583, -0.914377,
		-0.914226, -0.326976, 0.239327,
		-0.392935, 0.859631, -0.326553,
		17.068182, 16.093431, 17.043936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727341, 15.458188, 16.859632>,  <17.343235, 15.491690, 17.272522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727341, 15.458188, 16.859632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900400, 15.807601, 16.770407>,  <17.004236, 16.017248, 16.716871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900400, 15.807601, 16.770407>,  <16.727341, 15.458188, 16.859632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900400, 15.807601, 16.770407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135076, -0.307432, -0.941934,
		-0.891387, 0.377394, -0.251003,
		0.432647, 0.873533, -0.223064,
		17.030193, 16.069660, 16.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626976, 15.554636, 16.158335>,  <16.727341, 15.458188, 16.859632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626976, 15.554636, 16.158335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914946, 15.828003, 16.206751>,  <17.087727, 15.992023, 16.235800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914946, 15.828003, 16.206751>,  <16.626976, 15.554636, 16.158335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914946, 15.828003, 16.206751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293187, -0.141385, -0.945543,
		-0.629087, 0.716207, -0.302155,
		0.719924, 0.683417, 0.121039,
		17.130922, 16.033028, 16.243063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486012, 16.050955, 15.603508>,  <16.626976, 15.554636, 16.158335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486012, 16.050955, 15.603508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873747, 16.109474, 15.682482>,  <17.106388, 16.144587, 15.729866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873747, 16.109474, 15.682482>,  <16.486012, 16.050955, 15.603508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873747, 16.109474, 15.682482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215310, -0.118431, -0.969338,
		-0.118431, 0.982126, -0.146299,
		0.969338, 0.146299, 0.197436,
		17.164549, 16.153364, 15.741713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768217, 16.408102, 14.983306>,  <16.486012, 16.050955, 15.603508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768217, 16.408102, 14.983306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086514, 16.269634, 15.182086>,  <17.277493, 16.186554, 15.301354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086514, 16.269634, 15.182086>,  <16.768217, 16.408102, 14.983306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086514, 16.269634, 15.182086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376087, -0.360724, -0.853485,
		0.474712, 0.866052, -0.156854,
		0.795743, -0.346169, 0.496951,
		17.325237, 16.165783, 15.331171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324753, 16.464674, 14.531363>,  <16.768217, 16.408102, 14.983306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324753, 16.464674, 14.531363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.429909, 16.180647, 14.792648>,  <17.493004, 16.010231, 14.949420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.429909, 16.180647, 14.792648>,  <17.324753, 16.464674, 14.531363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429909, 16.180647, 14.792648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513701, -0.470075, -0.717734,
		0.816700, 0.524243, 0.241184,
		0.262892, -0.710070, 0.653214,
		17.508776, 15.967626, 14.988612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939281, 16.378365, 14.266390>,  <17.324753, 16.464674, 14.531363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939281, 16.378365, 14.266390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891226, 16.053799, 14.495187>,  <17.862392, 15.859059, 14.632464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891226, 16.053799, 14.495187>,  <17.939281, 16.378365, 14.266390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891226, 16.053799, 14.495187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552513, -0.533337, -0.640532,
		0.824800, 0.239080, 0.512391,
		-0.120139, -0.811414, 0.571991,
		17.855185, 15.810374, 14.666784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605883, 15.917057, 14.268365>,  <17.939281, 16.378365, 14.266390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605883, 15.917057, 14.268365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305960, 15.671994, 14.368315>,  <18.126005, 15.524957, 14.428285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305960, 15.671994, 14.368315>,  <18.605883, 15.917057, 14.268365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305960, 15.671994, 14.368315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303292, -0.653888, -0.693141,
		0.588048, -0.443938, 0.676106,
		-0.749809, -0.612657, 0.249874,
		18.081017, 15.488197, 14.443277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717974, 15.837424, 14.944555>,  <18.605883, 15.917057, 14.268365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717974, 15.837424, 14.944555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977032, 15.563053, 14.811853>,  <19.132465, 15.398430, 14.732232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977032, 15.563053, 14.811853>,  <18.717974, 15.837424, 14.944555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977032, 15.563053, 14.811853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635907, 0.246734, 0.731262,
		-0.419739, -0.684562, 0.595982,
		0.647643, -0.685928, -0.331754,
		19.171324, 15.357275, 14.712327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060602, 15.479363, 15.462189>,  <18.717974, 15.837424, 14.944555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060602, 15.479363, 15.462189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285482, 15.509501, 15.132764>,  <19.420410, 15.527584, 14.935109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.285482, 15.509501, 15.132764>,  <19.060602, 15.479363, 15.462189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.285482, 15.509501, 15.132764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814294, 0.123472, 0.567168,
		0.144421, -0.989483, 0.008062,
		0.562199, 0.075346, -0.823563,
		19.454142, 15.532104, 14.885695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308645, 15.009666, 15.923676>,  <19.060602, 15.479363, 15.462189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308645, 15.009666, 15.923676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423090, 14.633714, 15.849096>,  <19.491756, 14.408142, 15.804349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423090, 14.633714, 15.849096>,  <19.308645, 15.009666, 15.923676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423090, 14.633714, 15.849096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172296, -0.241874, 0.954888,
		-0.942578, -0.241081, -0.231141,
		0.286113, -0.939881, -0.186448,
		19.508924, 14.351749, 15.793162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777912, 14.624619, 16.094524>,  <19.308645, 15.009666, 15.923676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777912, 14.624619, 16.094524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099091, 14.386642, 16.109068>,  <19.291798, 14.243856, 16.117794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099091, 14.386642, 16.109068>,  <18.777912, 14.624619, 16.094524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099091, 14.386642, 16.109068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237622, -0.263562, 0.934918,
		-0.546637, -0.759329, -0.352997,
		0.802947, -0.594940, 0.036360,
		19.339975, 14.208160, 16.119976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648273, 13.822813, 16.153181>,  <18.777912, 14.624619, 16.094524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648273, 13.822813, 16.153181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995375, 13.932595, 16.318916>,  <19.203636, 13.998465, 16.418358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995375, 13.932595, 16.318916>,  <18.648273, 13.822813, 16.153181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995375, 13.932595, 16.318916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332859, -0.298147, 0.894602,
		0.369064, -0.914211, -0.167362,
		0.867754, 0.274457, 0.414339,
		19.255701, 14.014932, 16.443218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777332, 13.174504, 16.583366>,  <18.648273, 13.822813, 16.153181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777332, 13.174504, 16.583366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026390, 13.460739, 16.710014>,  <19.175825, 13.632480, 16.786003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026390, 13.460739, 16.710014>,  <18.777332, 13.174504, 16.583366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026390, 13.460739, 16.710014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086714, -0.339033, 0.936770,
		0.777685, -0.610730, -0.149046,
		0.622645, 0.715587, 0.316619,
		19.213184, 13.675415, 16.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292593, 12.831221, 16.992481>,  <18.777332, 13.174504, 16.583366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.292593, 12.831221, 16.992481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275784, 13.216661, 17.098089>,  <19.265697, 13.447926, 17.161455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275784, 13.216661, 17.098089>,  <19.292593, 12.831221, 16.992481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275784, 13.216661, 17.098089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134312, -0.267305, 0.954206,
		0.990048, 0.004640, 0.140656,
		-0.042025, 0.963601, 0.264021,
		19.263176, 13.505742, 17.177296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856468, 12.901492, 17.610086>,  <19.292593, 12.831221, 16.992481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856468, 12.901492, 17.610086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613167, 13.218989, 17.609873>,  <19.467186, 13.409488, 17.609745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613167, 13.218989, 17.609873>,  <19.856468, 12.901492, 17.610086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613167, 13.218989, 17.609873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237406, -0.181281, 0.954346,
		0.757408, 0.580611, 0.298704,
		-0.608253, 0.793743, -0.000536,
		19.430691, 13.457112, 17.609713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998472, 13.247144, 18.276381>,  <19.856468, 12.901492, 17.610086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998472, 13.247144, 18.276381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643492, 13.395880, 18.167448>,  <19.430504, 13.485121, 18.102089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643492, 13.395880, 18.167448>,  <19.998472, 13.247144, 18.276381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643492, 13.395880, 18.167448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294625, -0.003288, 0.955607,
		0.354437, 0.928292, 0.112471,
		-0.887452, 0.371839, -0.272332,
		19.377256, 13.507431, 18.085749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817978, 13.724195, 18.825058>,  <19.998472, 13.247144, 18.276381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817978, 13.724195, 18.825058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469887, 13.643639, 18.645216>,  <19.261032, 13.595304, 18.537312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469887, 13.643639, 18.645216>,  <19.817978, 13.724195, 18.825058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469887, 13.643639, 18.645216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483147, 0.170496, 0.858778,
		-0.096296, 0.964558, -0.245672,
		-0.870228, -0.201392, -0.449605,
		19.208818, 13.583220, 18.510334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376802, 14.266243, 19.041050>,  <19.817978, 13.724195, 18.825058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376802, 14.266243, 19.041050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094587, 14.001016, 18.941004>,  <18.925259, 13.841879, 18.880976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094587, 14.001016, 18.941004>,  <19.376802, 14.266243, 19.041050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094587, 14.001016, 18.941004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449007, 0.145199, 0.881652,
		-0.548279, 0.734342, -0.400165,
		-0.705537, -0.663068, -0.250116,
		18.882927, 13.802095, 18.865969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710135, 14.573278, 18.984524>,  <19.376802, 14.266243, 19.041050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710135, 14.573278, 18.984524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627958, 14.186420, 19.044426>,  <18.578653, 13.954306, 19.080368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627958, 14.186420, 19.044426>,  <18.710135, 14.573278, 18.984524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627958, 14.186420, 19.044426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582023, 0.243756, 0.775778,
		-0.786793, 0.072215, -0.612978,
		-0.205440, -0.967144, 0.149755,
		18.566326, 13.896277, 19.089352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030401, 14.601630, 19.136425>,  <18.710135, 14.573278, 18.984524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030401, 14.601630, 19.136425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118513, 14.243152, 19.290468>,  <18.171381, 14.028065, 19.382895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118513, 14.243152, 19.290468>,  <18.030401, 14.601630, 19.136425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118513, 14.243152, 19.290468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509441, 0.230982, 0.828925,
		-0.831833, -0.378786, -0.405678,
		0.220281, -0.896197, 0.385108,
		18.184597, 13.974293, 19.406000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432465, 14.325836, 19.309952>,  <18.030401, 14.601630, 19.136425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432465, 14.325836, 19.309952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709179, 14.144233, 19.534561>,  <17.875208, 14.035271, 19.669327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709179, 14.144233, 19.534561>,  <17.432465, 14.325836, 19.309952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709179, 14.144233, 19.534561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509432, 0.244273, 0.825112,
		-0.511773, -0.856858, -0.062303,
		0.691785, -0.454009, 0.561524,
		17.916714, 14.008030, 19.703018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.079220, 13.924751, 19.746462>,  <17.432465, 14.325836, 19.309952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.079220, 13.924751, 19.746462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426125, 13.982114, 19.937164>,  <17.634268, 14.016532, 20.051586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426125, 13.982114, 19.937164>,  <17.079220, 13.924751, 19.746462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426125, 13.982114, 19.937164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497160, 0.300097, 0.814109,
		-0.026324, -0.943067, 0.331558,
		0.867260, 0.143407, 0.476755,
		17.686302, 14.025136, 20.080191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966631, 13.683202, 20.349176>,  <17.079220, 13.924751, 19.746462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966631, 13.683202, 20.349176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296717, 13.900542, 20.410877>,  <17.494768, 14.030947, 20.447897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296717, 13.900542, 20.410877>,  <16.966631, 13.683202, 20.349176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296717, 13.900542, 20.410877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367510, 0.309146, 0.877134,
		0.428906, -0.780511, 0.454799,
		0.825213, 0.543351, 0.154251,
		17.544281, 14.063547, 20.457153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709049, 12.982886, 20.466753>,  <16.966631, 13.683202, 20.349176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709049, 12.982886, 20.466753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338074, 12.838326, 20.505217>,  <16.115488, 12.751591, 20.528296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338074, 12.838326, 20.505217>,  <16.709049, 12.982886, 20.466753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338074, 12.838326, 20.505217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018799, -0.211752, -0.977143,
		0.373501, -0.908048, 0.189593,
		-0.927440, -0.361400, 0.096160,
		16.059841, 12.729907, 20.534065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703127, 12.241951, 20.177679>,  <16.709049, 12.982886, 20.466753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703127, 12.241951, 20.177679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337233, 12.403431, 20.170887>,  <16.117697, 12.500319, 20.166813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337233, 12.403431, 20.170887>,  <16.703127, 12.241951, 20.177679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337233, 12.403431, 20.170887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036054, -0.123401, -0.991702,
		-0.402445, -0.906531, 0.127434,
		-0.914734, 0.403700, -0.016979,
		16.062813, 12.524541, 20.165794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345253, 11.759350, 19.946039>,  <16.703127, 12.241951, 20.177679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345253, 11.759350, 19.946039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135654, 12.093635, 19.880297>,  <16.009895, 12.294206, 19.840851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135654, 12.093635, 19.880297>,  <16.345253, 11.759350, 19.946039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.135654, 12.093635, 19.880297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311383, -0.367581, -0.876313,
		-0.792759, -0.408008, 0.452838,
		-0.523997, 0.835712, -0.164356,
		15.978456, 12.344348, 19.830990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687491, 11.572914, 19.683752>,  <16.345253, 11.759350, 19.946039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687491, 11.572914, 19.683752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727374, 11.952210, 19.563154>,  <15.751304, 12.179789, 19.490795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727374, 11.952210, 19.563154>,  <15.687491, 11.572914, 19.683752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727374, 11.952210, 19.563154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218805, -0.274693, -0.936306,
		-0.970661, 0.159323, 0.180091,
		0.099706, 0.948240, -0.301494,
		15.757286, 12.236683, 19.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062850, 11.792521, 19.431168>,  <15.687491, 11.572914, 19.683752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062850, 11.792521, 19.431168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319435, 12.035895, 19.244263>,  <15.473387, 12.181920, 19.132120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319435, 12.035895, 19.244263>,  <15.062850, 11.792521, 19.431168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319435, 12.035895, 19.244263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382997, -0.273757, -0.882253,
		-0.664709, 0.744892, 0.057423,
		0.641464, 0.608434, -0.467260,
		15.511874, 12.218426, 19.104084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.625482, 12.010901, 18.992414>,  <15.062850, 11.792521, 19.431168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.625482, 12.010901, 18.992414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988790, 12.119278, 18.864893>,  <15.206775, 12.184304, 18.788380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988790, 12.119278, 18.864893>,  <14.625482, 12.010901, 18.992414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988790, 12.119278, 18.864893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305026, -0.092727, -0.947819,
		-0.286366, 0.958119, -0.001577,
		0.908270, 0.270942, -0.318805,
		15.261271, 12.200561, 18.769251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493617, 12.537345, 18.456533>,  <14.625482, 12.010901, 18.992414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493617, 12.537345, 18.456533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852015, 12.382156, 18.370119>,  <15.067053, 12.289043, 18.318270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852015, 12.382156, 18.370119>,  <14.493617, 12.537345, 18.456533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852015, 12.382156, 18.370119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266414, -0.080429, -0.960497,
		0.355270, 0.918155, -0.175425,
		0.895995, -0.387972, -0.216036,
		15.120813, 12.265765, 18.305309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591204, 12.714074, 17.730106>,  <14.493617, 12.537345, 18.456533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591204, 12.714074, 17.730106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887508, 12.447483, 17.763765>,  <15.065291, 12.287529, 17.783960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887508, 12.447483, 17.763765>,  <14.591204, 12.714074, 17.730106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887508, 12.447483, 17.763765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054220, -0.184171, -0.981398,
		0.669576, 0.722419, -0.172563,
		0.740762, -0.666477, 0.084148,
		15.109737, 12.247540, 17.789009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178386, 12.965890, 17.276327>,  <14.591204, 12.714074, 17.730106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178386, 12.965890, 17.276327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137951, 12.574008, 17.345562>,  <15.113689, 12.338879, 17.387102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137951, 12.574008, 17.345562>,  <15.178386, 12.965890, 17.276327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137951, 12.574008, 17.345562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262583, -0.141533, -0.954473,
		0.959600, -0.141935, -0.242947,
		-0.101088, -0.979705, 0.173085,
		15.107625, 12.280096, 17.397488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421673, 12.653451, 16.652979>,  <15.178386, 12.965890, 17.276327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421673, 12.653451, 16.652979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245708, 12.346615, 16.839762>,  <15.140128, 12.162514, 16.951832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245708, 12.346615, 16.839762>,  <15.421673, 12.653451, 16.652979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245708, 12.346615, 16.839762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329344, -0.345938, -0.878556,
		0.835469, -0.540278, -0.100454,
		-0.439913, -0.767090, 0.466957,
		15.113733, 12.116488, 16.979849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551948, 12.022211, 16.259066>,  <15.421673, 12.653451, 16.652979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551948, 12.022211, 16.259066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223949, 11.940111, 16.472788>,  <15.027151, 11.890851, 16.601021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223949, 11.940111, 16.472788>,  <15.551948, 12.022211, 16.259066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223949, 11.940111, 16.472788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443327, -0.362703, -0.819700,
		0.362038, -0.909021, 0.206422,
		-0.819994, -0.205250, 0.534305,
		14.977951, 11.878536, 16.633080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431462, 11.338638, 16.118401>,  <15.551948, 12.022211, 16.259066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431462, 11.338638, 16.118401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092457, 11.528678, 16.213058>,  <14.889053, 11.642702, 16.269854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092457, 11.528678, 16.213058>,  <15.431462, 11.338638, 16.118401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092457, 11.528678, 16.213058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383712, -0.240386, -0.891616,
		-0.366721, -0.846460, 0.386032,
		-0.847515, 0.475100, 0.236642,
		14.838202, 11.671207, 16.284052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.333898, 15.077251, 25.270613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.691885, 14.920713, 25.356291>,  <13.906677, 14.826791, 25.407698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.691885, 14.920713, 25.356291>,  <13.333898, 15.077251, 25.270613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691885, 14.920713, 25.356291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074351, -0.342573, -0.936545,
		0.439891, 0.854103, -0.277495,
		0.894968, -0.391346, 0.214198,
		13.960376, 14.803309, 25.420549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.886817, 15.464621, 24.886145>,  <13.333898, 15.077251, 25.270613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.886817, 15.464621, 24.886145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.997529, 15.089579, 24.970325>,  <14.063956, 14.864553, 25.020834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.997529, 15.089579, 24.970325>,  <13.886817, 15.464621, 24.886145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997529, 15.089579, 24.970325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058600, -0.202131, -0.977604,
		0.959145, 0.282913, -0.001002,
		0.276780, -0.937605, 0.210452,
		14.080563, 14.808297, 25.033461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393425, 15.315950, 24.351627>,  <13.886817, 15.464621, 24.886145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393425, 15.315950, 24.351627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.326458, 14.948321, 24.494329>,  <14.286278, 14.727744, 24.579950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.326458, 14.948321, 24.494329>,  <14.393425, 15.315950, 24.351627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326458, 14.948321, 24.494329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110050, -0.377024, -0.919643,
		0.979725, -0.114704, 0.164264,
		-0.167418, -0.919074, 0.356756,
		14.276233, 14.672599, 24.601357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995651, 14.945020, 24.185421>,  <14.393425, 15.315950, 24.351627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995651, 14.945020, 24.185421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.688913, 14.692519, 24.231850>,  <14.504870, 14.541019, 24.259706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.688913, 14.692519, 24.231850>,  <14.995651, 14.945020, 24.185421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688913, 14.692519, 24.231850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172369, -0.376749, -0.910137,
		0.618256, -0.677925, 0.397715,
		-0.766844, -0.631251, 0.116074,
		14.458860, 14.503144, 24.266672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293753, 14.269390, 24.035406>,  <14.995651, 14.945020, 24.185421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293753, 14.269390, 24.035406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897508, 14.225307, 24.003054>,  <14.659760, 14.198856, 23.983643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897508, 14.225307, 24.003054>,  <15.293753, 14.269390, 24.035406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897508, 14.225307, 24.003054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122575, -0.454175, -0.882440,
		0.060520, -0.884070, 0.463421,
		-0.990612, -0.110209, -0.080879,
		14.600324, 14.192244, 23.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187731, 13.562670, 24.058668>,  <15.293753, 14.269390, 24.035406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187731, 13.562670, 24.058668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.888535, 13.750985, 23.871532>,  <14.709019, 13.863975, 23.759251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.888535, 13.750985, 23.871532>,  <15.187731, 13.562670, 24.058668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888535, 13.750985, 23.871532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239215, -0.466279, -0.851681,
		-0.619106, -0.748960, 0.236151,
		-0.747987, 0.470790, -0.467838,
		14.664139, 13.892221, 23.731180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898617, 13.064281, 23.780996>,  <15.187731, 13.562670, 24.058668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898617, 13.064281, 23.780996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.728369, 13.361124, 23.573875>,  <14.626220, 13.539230, 23.449602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.728369, 13.361124, 23.573875>,  <14.898617, 13.064281, 23.780996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728369, 13.361124, 23.573875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317318, -0.413485, -0.853428,
		-0.847441, -0.527545, -0.059497,
		-0.425621, 0.742109, -0.517804,
		14.600682, 13.583756, 23.418533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438128, 12.737817, 23.273611>,  <14.898617, 13.064281, 23.780996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438128, 12.737817, 23.273611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.514742, 13.105386, 23.135685>,  <14.560711, 13.325927, 23.052929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.514742, 13.105386, 23.135685>,  <14.438128, 12.737817, 23.273611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514742, 13.105386, 23.135685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340115, -0.391692, -0.854926,
		-0.920671, 0.046473, -0.387563,
		0.191537, 0.918922, -0.344814,
		14.572203, 13.381063, 23.032242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998457, 12.879117, 22.605173>,  <14.438128, 12.737817, 23.273611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998457, 12.879117, 22.605173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.325337, 13.109656, 22.606016>,  <14.521466, 13.247980, 22.606522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.325337, 13.109656, 22.606016>,  <13.998457, 12.879117, 22.605173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325337, 13.109656, 22.606016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212708, -0.298199, -0.930501,
		-0.535664, 0.760856, -0.366282,
		0.817202, 0.576348, 0.002106,
		14.570498, 13.282560, 22.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114059, 13.105153, 21.921064>,  <13.998457, 12.879117, 22.605173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114059, 13.105153, 21.921064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471973, 13.200495, 22.072086>,  <14.686722, 13.257700, 22.162701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471973, 13.200495, 22.072086>,  <14.114059, 13.105153, 21.921064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471973, 13.200495, 22.072086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408300, -0.094581, -0.907935,
		-0.180700, 0.966562, -0.181949,
		0.894784, 0.238354, 0.377556,
		14.740409, 13.272001, 22.185352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.456109, 13.483944, 21.480515>,  <14.114059, 13.105153, 21.921064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.456109, 13.483944, 21.480515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.752123, 13.325727, 21.698099>,  <14.929731, 13.230798, 21.828650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.752123, 13.325727, 21.698099>,  <14.456109, 13.483944, 21.480515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752123, 13.325727, 21.698099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519875, -0.176717, -0.835764,
		0.426706, 0.901287, 0.074855,
		0.740035, -0.395541, 0.543963,
		14.974133, 13.207066, 21.861288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031096, 13.864552, 21.146181>,  <14.456109, 13.483944, 21.480515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031096, 13.864552, 21.146181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.173848, 13.547126, 21.343315>,  <15.259500, 13.356670, 21.461596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.173848, 13.547126, 21.343315>,  <15.031096, 13.864552, 21.146181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173848, 13.547126, 21.343315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512064, -0.275065, -0.813714,
		0.781298, 0.542763, 0.308191,
		0.356881, -0.793566, 0.492837,
		15.280912, 13.309056, 21.491167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671600, 13.884095, 20.857544>,  <15.031096, 13.864552, 21.146181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671600, 13.884095, 20.857544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.663772, 13.533844, 21.050579>,  <15.659075, 13.323693, 21.166401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.663772, 13.533844, 21.050579>,  <15.671600, 13.884095, 20.857544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663772, 13.533844, 21.050579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419653, -0.445298, -0.790949,
		0.907474, 0.187040, 0.376175,
		-0.019571, -0.875629, 0.482588,
		15.657901, 13.271155, 21.195356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432949, 13.530155, 20.927792>,  <15.671600, 13.884095, 20.857544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432949, 13.530155, 20.927792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137743, 13.260275, 20.923599>,  <15.960619, 13.098347, 20.921083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137743, 13.260275, 20.923599>,  <16.432949, 13.530155, 20.927792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137743, 13.260275, 20.923599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365822, -0.387006, -0.846404,
		0.567014, -0.628495, 0.532438,
		-0.738017, -0.674701, -0.010479,
		15.916338, 13.057865, 20.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.149258, 13.635692, 21.142462>,  <16.432949, 13.530155, 20.927792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.149258, 13.635692, 21.142462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.387154, 13.939795, 21.037930>,  <17.529892, 14.122256, 20.975210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.387154, 13.939795, 21.037930>,  <17.149258, 13.635692, 21.142462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.387154, 13.939795, 21.037930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243132, 0.479951, 0.842932,
		0.766271, -0.437787, 0.470289,
		0.594740, 0.760256, -0.261333,
		17.565575, 14.167871, 20.959530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692080, 13.603775, 21.674126>,  <17.149258, 13.635692, 21.142462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692080, 13.603775, 21.674126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.653870, 13.950959, 21.479183>,  <17.630943, 14.159270, 21.362217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.653870, 13.950959, 21.479183>,  <17.692080, 13.603775, 21.674126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653870, 13.950959, 21.479183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159587, 0.469910, 0.868168,
		0.982551, 0.160710, 0.093627,
		-0.095527, 0.867961, -0.487358,
		17.625212, 14.211348, 21.332975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150658, 14.088521, 21.951664>,  <17.692080, 13.603775, 21.674126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150658, 14.088521, 21.951664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.843508, 14.288411, 21.791342>,  <17.659218, 14.408345, 21.695148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.843508, 14.288411, 21.791342>,  <18.150658, 14.088521, 21.951664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843508, 14.288411, 21.791342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058505, 0.568349, 0.820705,
		0.637925, 0.653646, -0.407183,
		-0.767873, 0.499726, -0.400806,
		17.613146, 14.438329, 21.671101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158625, 14.690216, 22.316490>,  <18.150658, 14.088521, 21.951664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158625, 14.690216, 22.316490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.823505, 14.769325, 22.112930>,  <17.622435, 14.816791, 21.990793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.823505, 14.769325, 22.112930>,  <18.158625, 14.690216, 22.316490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823505, 14.769325, 22.112930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379090, 0.460068, 0.802887,
		0.392919, 0.865577, -0.310470,
		-0.837798, 0.197774, -0.508901,
		17.572166, 14.828657, 21.960260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130909, 15.319105, 22.287403>,  <18.158625, 14.690216, 22.316490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130909, 15.319105, 22.287403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.746487, 15.210238, 22.268232>,  <17.515833, 15.144917, 22.256731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.746487, 15.210238, 22.268232>,  <18.130909, 15.319105, 22.287403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746487, 15.210238, 22.268232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200017, 0.565371, 0.800218,
		-0.190700, 0.778639, -0.597791,
		-0.961055, -0.272170, -0.047925,
		17.458170, 15.128587, 22.253855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750584, 15.899731, 22.446800>,  <18.130909, 15.319105, 22.287403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750584, 15.899731, 22.446800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453396, 15.635303, 22.488716>,  <17.275084, 15.476645, 22.513866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453396, 15.635303, 22.488716>,  <17.750584, 15.899731, 22.446800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453396, 15.635303, 22.488716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366019, 0.532358, 0.763299,
		-0.560381, 0.528753, -0.637491,
		-0.742970, -0.661071, 0.104790,
		17.230505, 15.436981, 22.520153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066139, 16.268549, 22.381157>,  <17.750584, 15.899731, 22.446800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066139, 16.268549, 22.381157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.024712, 15.927298, 22.585684>,  <16.999855, 15.722547, 22.708401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.024712, 15.927298, 22.585684>,  <17.066139, 16.268549, 22.381157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024712, 15.927298, 22.585684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454273, 0.497904, 0.738734,
		-0.884822, -0.155767, -0.439121,
		-0.103570, -0.853129, 0.511317,
		16.993641, 15.671359, 22.739079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306509, 16.235620, 22.543686>,  <17.066139, 16.268549, 22.381157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306509, 16.235620, 22.543686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.503214, 15.989900, 22.790524>,  <16.621237, 15.842467, 22.938625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.503214, 15.989900, 22.790524>,  <16.306509, 16.235620, 22.543686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503214, 15.989900, 22.790524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531997, 0.349074, 0.771444,
		-0.689311, -0.707659, -0.155146,
		0.491762, -0.614302, 0.617093,
		16.650742, 15.805609, 22.975651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750484, 15.954095, 22.943768>,  <16.306509, 16.235620, 22.543686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750484, 15.954095, 22.943768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.092358, 15.915024, 23.147718>,  <16.297482, 15.891582, 23.270088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.092358, 15.915024, 23.147718>,  <15.750484, 15.954095, 22.943768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092358, 15.915024, 23.147718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453995, 0.335740, 0.825328,
		-0.251803, -0.936877, 0.242606,
		0.854684, -0.097678, 0.509878,
		16.348763, 15.885720, 23.300682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469967, 15.791441, 23.631609>,  <15.750484, 15.954095, 22.943768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469967, 15.791441, 23.631609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.853731, 15.891009, 23.684629>,  <16.083990, 15.950750, 23.716442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.853731, 15.891009, 23.684629>,  <15.469967, 15.791441, 23.631609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853731, 15.891009, 23.684629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232056, 0.429740, 0.872624,
		0.160253, -0.867964, 0.470061,
		0.959411, 0.248921, 0.132549,
		16.141554, 15.965686, 23.724394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466603, 15.744592, 24.319986>,  <15.469967, 15.791441, 23.631609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466603, 15.744592, 24.319986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.807799, 15.941668, 24.251089>,  <16.012516, 16.059914, 24.209751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.807799, 15.941668, 24.251089>,  <15.466603, 15.744592, 24.319986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807799, 15.941668, 24.251089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045141, 0.398413, 0.916095,
		0.519974, -0.773643, 0.362082,
		0.852988, 0.492690, -0.172241,
		16.063696, 16.089474, 24.199417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973829, 15.605950, 24.796158>,  <15.466603, 15.744592, 24.319986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973829, 15.605950, 24.796158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102751, 15.949052, 24.635967>,  <16.180103, 16.154913, 24.539854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.102751, 15.949052, 24.635967>,  <15.973829, 15.605950, 24.796158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102751, 15.949052, 24.635967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242241, 0.334232, 0.910828,
		0.915117, -0.390575, -0.100059,
		0.322304, 0.857753, -0.400475,
		16.199442, 16.206377, 24.515825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589399, 15.827495, 25.033371>,  <15.973829, 15.605950, 24.796158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589399, 15.827495, 25.033371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.474272, 16.187330, 24.901979>,  <16.405195, 16.403233, 24.823145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.474272, 16.187330, 24.901979>,  <16.589399, 15.827495, 25.033371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474272, 16.187330, 24.901979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151559, 0.381457, 0.911878,
		0.945617, 0.212671, -0.246131,
		-0.287818, 0.899590, -0.328479,
		16.387926, 16.457207, 24.803436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183853, 16.365049, 25.111435>,  <16.589399, 15.827495, 25.033371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183853, 16.365049, 25.111435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.824739, 16.541222, 25.111992>,  <16.609272, 16.646925, 25.112326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.824739, 16.541222, 25.111992>,  <17.183853, 16.365049, 25.111435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824739, 16.541222, 25.111992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181273, 0.366628, 0.912537,
		0.401401, 0.819514, -0.408991,
		-0.897785, 0.440432, 0.001391,
		16.555405, 16.673351, 25.112410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.533066, 19.082560, 22.290316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.603889, 18.717033, 22.436516>,  <9.646384, 18.497717, 22.524237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.603889, 18.717033, 22.436516>,  <9.533066, 19.082560, 22.290316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.603889, 18.717033, 22.436516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073491, -0.358055, -0.930804,
		0.981452, 0.191669, 0.003760,
		0.177060, -0.913816, 0.365500,
		9.657007, 18.442888, 22.546165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171899, 18.913284, 22.044147>,  <9.533066, 19.082560, 22.290316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171899, 18.913284, 22.044147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.005029, 18.561041, 22.134031>,  <9.904906, 18.349695, 22.187962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.005029, 18.561041, 22.134031>,  <10.171899, 18.913284, 22.044147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005029, 18.561041, 22.134031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286816, -0.362187, -0.886881,
		0.862381, -0.305534, 0.403668,
		-0.417175, -0.880608, 0.224712,
		9.879876, 18.296858, 22.201445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625607, 18.409958, 21.819300>,  <10.171899, 18.913284, 22.044147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625607, 18.409958, 21.819300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.296800, 18.186872, 21.865335>,  <10.099516, 18.053022, 21.892956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.296800, 18.186872, 21.865335>,  <10.625607, 18.409958, 21.819300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.296800, 18.186872, 21.865335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223723, -0.502129, -0.835353,
		0.523675, -0.660927, 0.537532,
		-0.822018, -0.557711, 0.115088,
		10.050195, 18.019560, 21.899862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851715, 17.787788, 21.954851>,  <10.625607, 18.409958, 21.819300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851715, 17.787788, 21.954851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.484859, 17.781883, 21.795534>,  <10.264745, 17.778341, 21.699944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.484859, 17.781883, 21.795534>,  <10.851715, 17.787788, 21.954851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.484859, 17.781883, 21.795534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394954, -0.167856, -0.903236,
		-0.053521, -0.985701, 0.159778,
		-0.917141, -0.014762, -0.398290,
		10.209717, 17.777454, 21.676046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728465, 17.145895, 21.417166>,  <10.851715, 17.787788, 21.954851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728465, 17.145895, 21.417166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.440907, 17.396679, 21.297091>,  <10.268373, 17.547150, 21.225046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.440907, 17.396679, 21.297091>,  <10.728465, 17.145895, 21.417166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.440907, 17.396679, 21.297091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127010, -0.306104, -0.943488,
		-0.683418, -0.716394, 0.140425,
		-0.718894, 0.626961, -0.300186,
		10.225240, 17.584766, 21.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.283825, 16.756514, 20.909718>,  <10.728465, 17.145895, 21.417166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.283825, 16.756514, 20.909718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.209980, 17.146366, 20.859106>,  <10.165673, 17.380278, 20.828739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.209980, 17.146366, 20.859106>,  <10.283825, 16.756514, 20.909718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209980, 17.146366, 20.859106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012361, -0.126427, -0.991899,
		-0.982734, -0.184681, 0.011292,
		-0.184613, 0.974633, -0.126527,
		10.154596, 17.438755, 20.821148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781877, 16.799814, 20.466820>,  <10.283825, 16.756514, 20.909718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781877, 16.799814, 20.466820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.945982, 17.163883, 20.443943>,  <10.044445, 17.382324, 20.430218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.945982, 17.163883, 20.443943>,  <9.781877, 16.799814, 20.466820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.945982, 17.163883, 20.443943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099894, -0.107186, -0.989208,
		-0.906479, 0.400123, -0.134895,
		0.410264, 0.910172, -0.057192,
		10.069061, 17.436935, 20.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530084, 17.054224, 19.813431>,  <9.781877, 16.799814, 20.466820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530084, 17.054224, 19.813431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.828601, 17.308552, 19.892200>,  <10.007711, 17.461149, 19.939463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.828601, 17.308552, 19.892200>,  <9.530084, 17.054224, 19.813431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.828601, 17.308552, 19.892200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139441, 0.139947, -0.980291,
		-0.650847, 0.759045, 0.015782,
		0.746293, 0.635819, 0.196926,
		10.052489, 17.499298, 19.951279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.406187, 17.642744, 19.424393>,  <9.530084, 17.054224, 19.813431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.406187, 17.642744, 19.424393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.798409, 17.653126, 19.502199>,  <10.033743, 17.659355, 19.548883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.798409, 17.653126, 19.502199>,  <9.406187, 17.642744, 19.424393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.798409, 17.653126, 19.502199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195501, -0.043212, -0.979751,
		-0.017022, 0.998729, -0.047446,
		0.980556, 0.025953, 0.194517,
		10.092576, 17.660912, 19.560555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.785419, 17.942156, 18.946404>,  <9.406187, 17.642744, 19.424393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.785419, 17.942156, 18.946404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.089835, 17.721495, 19.082932>,  <10.272485, 17.589098, 19.164848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.089835, 17.721495, 19.082932>,  <9.785419, 17.942156, 18.946404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089835, 17.721495, 19.082932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241768, -0.247049, -0.938358,
		0.601970, 0.796647, -0.054642,
		0.761039, -0.551653, 0.341320,
		10.318147, 17.556000, 19.185328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199141, 17.989594, 18.397207>,  <9.785419, 17.942156, 18.946404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199141, 17.989594, 18.397207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.401634, 17.701752, 18.587322>,  <10.523130, 17.529047, 18.701391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.401634, 17.701752, 18.587322>,  <10.199141, 17.989594, 18.397207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.401634, 17.701752, 18.587322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318743, -0.355973, -0.878456,
		0.801330, 0.596199, 0.049163,
		0.506235, -0.719604, 0.475286,
		10.553505, 17.485870, 18.729908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011182, 18.070871, 18.205534>,  <10.199141, 17.989594, 18.397207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011182, 18.070871, 18.205534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.903347, 17.705931, 18.328781>,  <10.838646, 17.486967, 18.402729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.903347, 17.705931, 18.328781>,  <11.011182, 18.070871, 18.205534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.903347, 17.705931, 18.328781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484121, -0.404996, -0.775632,
		0.832436, -0.059935, 0.550871,
		-0.269588, -0.912352, 0.308117,
		10.822471, 17.432224, 18.421217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491675, 17.728964, 17.893972>,  <11.011182, 18.070871, 18.205534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491675, 17.728964, 17.893972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.245584, 17.439657, 18.019434>,  <11.097929, 17.266073, 18.094711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.245584, 17.439657, 18.019434>,  <11.491675, 17.728964, 17.893972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245584, 17.439657, 18.019434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412096, -0.634226, -0.654167,
		0.672064, -0.273207, 0.688250,
		-0.615229, -0.723267, 0.313653,
		11.061015, 17.222677, 18.113529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.954245, 17.082857, 17.935608>,  <11.491675, 17.728964, 17.893972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.954245, 17.082857, 17.935608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.568803, 16.997894, 17.870678>,  <11.337538, 16.946917, 17.831720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.568803, 16.997894, 17.870678>,  <11.954245, 17.082857, 17.935608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568803, 16.997894, 17.870678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260260, -0.606629, -0.751177,
		0.061083, -0.766084, 0.639831,
		-0.963604, -0.212407, -0.162326,
		11.279721, 16.934172, 17.821980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696285, 16.848787, 18.158997>,  <11.954245, 17.082857, 17.935608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696285, 16.848787, 18.158997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.918412, 17.156425, 18.032431>,  <13.051688, 17.341007, 17.956491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.918412, 17.156425, 18.032431>,  <12.696285, 16.848787, 18.158997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.918412, 17.156425, 18.032431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164299, 0.474430, 0.864825,
		0.815248, -0.428265, 0.389820,
		0.555316, 0.769094, -0.316415,
		13.085008, 17.387154, 17.937506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.016077, 16.909513, 18.737001>,  <12.696285, 16.848787, 18.158997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.016077, 16.909513, 18.737001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.054758, 17.244255, 18.521473>,  <13.077967, 17.445099, 18.392157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.054758, 17.244255, 18.521473>,  <13.016077, 16.909513, 18.737001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054758, 17.244255, 18.521473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134642, 0.547379, 0.825983,
		0.986164, -0.007327, 0.165608,
		0.096702, 0.836853, -0.538819,
		13.083769, 17.495312, 18.359827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.492343, 17.375578, 19.197855>,  <13.016077, 16.909513, 18.737001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.492343, 17.375578, 19.197855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.360259, 17.626654, 18.915871>,  <13.281009, 17.777300, 18.746681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.360259, 17.626654, 18.915871>,  <13.492343, 17.375578, 19.197855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360259, 17.626654, 18.915871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066384, 0.760446, 0.645999,
		0.941570, 0.166518, -0.292776,
		-0.330211, 0.627689, -0.704959,
		13.261196, 17.814960, 18.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017154, 17.829117, 19.136484>,  <13.492343, 17.375578, 19.197855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017154, 17.829117, 19.136484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.664639, 17.979044, 19.021351>,  <13.453131, 18.069000, 18.952271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.664639, 17.979044, 19.021351>,  <14.017154, 17.829117, 19.136484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664639, 17.979044, 19.021351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053760, 0.684621, 0.726914,
		0.469514, 0.625146, -0.623497,
		-0.881287, 0.374816, -0.287831,
		13.400253, 18.091488, 18.935001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068681, 18.577009, 19.219172>,  <14.017154, 17.829117, 19.136484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068681, 18.577009, 19.219172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.678111, 18.491322, 19.208523>,  <13.443769, 18.439909, 19.202133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.678111, 18.491322, 19.208523>,  <14.068681, 18.577009, 19.219172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678111, 18.491322, 19.208523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132591, 0.497852, 0.857067,
		-0.170346, 0.840390, -0.514517,
		-0.976423, -0.214218, -0.026621,
		13.385184, 18.427055, 19.200537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709800, 19.206459, 19.552084>,  <14.068681, 18.577009, 19.219172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709800, 19.206459, 19.552084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.441081, 18.910772, 19.571037>,  <13.279850, 18.733360, 19.582409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.441081, 18.910772, 19.571037>,  <13.709800, 19.206459, 19.552084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.441081, 18.910772, 19.571037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308836, 0.337662, 0.889160,
		-0.673283, 0.582700, -0.455137,
		-0.671796, -0.739219, 0.047384,
		13.239542, 18.689007, 19.585253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030343, 19.596077, 19.686144>,  <13.709800, 19.206459, 19.552084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030343, 19.596077, 19.686144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.981075, 19.219486, 19.811649>,  <12.951514, 18.993532, 19.886953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.981075, 19.219486, 19.811649>,  <13.030343, 19.596077, 19.686144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981075, 19.219486, 19.811649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385325, 0.336736, 0.859147,
		-0.914524, -0.015079, -0.404251,
		-0.123171, -0.941478, 0.313764,
		12.944124, 18.937042, 19.905779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503808, 19.680609, 20.094286>,  <13.030343, 19.596077, 19.686144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503808, 19.680609, 20.094286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.644783, 19.324125, 20.208506>,  <12.729368, 19.110235, 20.277039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.644783, 19.324125, 20.208506>,  <12.503808, 19.680609, 20.094286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.644783, 19.324125, 20.208506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194275, 0.228807, 0.953889,
		-0.915448, -0.391662, -0.092499,
		0.352437, -0.891206, 0.285550,
		12.750514, 19.056763, 20.294170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947325, 19.447260, 20.578035>,  <12.503808, 19.680609, 20.094286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.947325, 19.447260, 20.578035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.277878, 19.231226, 20.641785>,  <12.476210, 19.101604, 20.680035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.277878, 19.231226, 20.641785>,  <11.947325, 19.447260, 20.578035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.277878, 19.231226, 20.641785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229125, -0.063961, 0.971293,
		-0.514388, -0.839176, -0.176604,
		0.826382, -0.540086, 0.159376,
		12.525792, 19.069201, 20.689598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633939, 18.817513, 20.927395>,  <11.947325, 19.447260, 20.578035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633939, 18.817513, 20.927395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.020441, 18.870993, 21.015461>,  <12.252342, 18.903080, 21.068300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.020441, 18.870993, 21.015461>,  <11.633939, 18.817513, 20.927395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020441, 18.870993, 21.015461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231924, 0.079704, 0.969463,
		0.112079, -0.987810, 0.108025,
		0.966256, 0.133710, 0.220164,
		12.310318, 18.911102, 21.081511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746906, 18.391932, 21.538069>,  <11.633939, 18.817513, 20.927395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746906, 18.391932, 21.538069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045397, 18.658195, 21.535482>,  <12.224491, 18.817953, 21.533932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045397, 18.658195, 21.535482>,  <11.746906, 18.391932, 21.538069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045397, 18.658195, 21.535482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129677, 0.154883, 0.979385,
		0.652939, -0.730005, 0.201899,
		0.746227, 0.665660, -0.006464,
		12.269265, 18.857893, 21.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.138862, 18.212997, 22.158091>,  <11.746906, 18.391932, 21.538069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.138862, 18.212997, 22.158091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.234032, 18.580936, 22.033335>,  <12.291134, 18.801699, 21.958481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.234032, 18.580936, 22.033335>,  <12.138862, 18.212997, 22.158091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.234032, 18.580936, 22.033335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076223, 0.337803, 0.938125,
		0.968288, -0.199430, 0.150486,
		0.237925, 0.919846, -0.311890,
		12.305409, 18.856890, 21.939768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498296, 18.450916, 22.753233>,  <12.138862, 18.212997, 22.158091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498296, 18.450916, 22.753233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.423016, 18.787874, 22.551262>,  <12.377848, 18.990049, 22.430080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.423016, 18.787874, 22.551262>,  <12.498296, 18.450916, 22.753233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.423016, 18.787874, 22.551262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215640, 0.466124, 0.858037,
		0.958165, 0.270365, 0.093930,
		-0.188200, 0.842396, -0.504925,
		12.366555, 19.040592, 22.399784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923694, 19.025419, 23.073891>,  <12.498296, 18.450916, 22.753233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923694, 19.025419, 23.073891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.599109, 19.175585, 22.894741>,  <12.404358, 19.265684, 22.787251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.599109, 19.175585, 22.894741>,  <12.923694, 19.025419, 23.073891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599109, 19.175585, 22.894741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275792, 0.429671, 0.859838,
		0.515236, 0.821247, -0.245125,
		-0.811462, 0.375416, -0.447875,
		12.355670, 19.288210, 22.760378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582118, 19.031878, 22.718365>,  <12.923694, 19.025419, 23.073891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582118, 19.031878, 22.718365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.928114, 19.190582, 22.841246>,  <14.135712, 19.285805, 22.914974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.928114, 19.190582, 22.841246>,  <13.582118, 19.031878, 22.718365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928114, 19.190582, 22.841246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338787, -0.010156, -0.940808,
		-0.370158, 0.917865, -0.143203,
		0.864989, 0.396763, 0.307201,
		14.187611, 19.309612, 22.933407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823770, 19.491180, 22.100315>,  <13.582118, 19.031878, 22.718365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823770, 19.491180, 22.100315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.158448, 19.427084, 22.309795>,  <14.359256, 19.388626, 22.435484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.158448, 19.427084, 22.309795>,  <13.823770, 19.491180, 22.100315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158448, 19.427084, 22.309795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487730, -0.216944, -0.845609,
		0.249114, 0.962943, -0.103363,
		0.836697, -0.160240, 0.523700,
		14.409457, 19.379011, 22.466906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388916, 19.886528, 21.820757>,  <13.823770, 19.491180, 22.100315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388916, 19.886528, 21.820757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568118, 19.590948, 22.022051>,  <14.675639, 19.413601, 22.142828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568118, 19.590948, 22.022051>,  <14.388916, 19.886528, 21.820757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568118, 19.590948, 22.022051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589962, -0.178579, -0.787435,
		0.671742, 0.649665, 0.355947,
		0.448004, -0.738949, 0.503237,
		14.702519, 19.369263, 22.173021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075331, 19.885767, 21.680557>,  <14.388916, 19.886528, 21.820757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075331, 19.885767, 21.680557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.055058, 19.513924, 21.826576>,  <15.042895, 19.290817, 21.914188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.055058, 19.513924, 21.826576>,  <15.075331, 19.885767, 21.680557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.055058, 19.513924, 21.826576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604698, -0.319466, -0.729577,
		0.794841, 0.183769, 0.578322,
		-0.050680, -0.929608, 0.365050,
		15.039854, 19.235041, 21.936090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764839, 19.615965, 21.651203>,  <15.075331, 19.885767, 21.680557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764839, 19.615965, 21.651203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.516829, 19.302259, 21.660137>,  <15.368022, 19.114037, 21.665499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.516829, 19.302259, 21.660137>,  <15.764839, 19.615965, 21.651203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516829, 19.302259, 21.660137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524699, -0.435650, -0.731369,
		0.583316, -0.441749, 0.681616,
		-0.620027, -0.784262, 0.022336,
		15.330820, 19.066980, 21.666838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184673, 18.996578, 21.555895>,  <15.764839, 19.615965, 21.651203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184673, 18.996578, 21.555895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.820661, 18.851706, 21.475235>,  <15.602252, 18.764782, 21.426838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.820661, 18.851706, 21.475235>,  <16.184673, 18.996578, 21.555895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820661, 18.851706, 21.475235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399057, -0.633734, -0.662673,
		0.112215, -0.683525, 0.721250,
		-0.910034, -0.362181, -0.201651,
		15.547650, 18.743052, 21.414740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334990, 18.304880, 21.426361>,  <16.184673, 18.996578, 21.555895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334990, 18.304880, 21.426361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.978398, 18.367857, 21.256432>,  <15.764443, 18.405643, 21.154474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.978398, 18.367857, 21.256432>,  <16.334990, 18.304880, 21.426361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978398, 18.367857, 21.256432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246527, -0.618133, -0.746416,
		-0.380114, -0.770145, 0.512239,
		-0.891480, 0.157442, -0.424823,
		15.710955, 18.415091, 21.128984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288534, 17.682255, 20.993183>,  <16.334990, 18.304880, 21.426361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288534, 17.682255, 20.993183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.013502, 17.948317, 20.876698>,  <15.848483, 18.107954, 20.806807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.013502, 17.948317, 20.876698>,  <16.288534, 17.682255, 20.993183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013502, 17.948317, 20.876698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146047, -0.266176, -0.952796,
		-0.711269, -0.697655, 0.085873,
		-0.687580, 0.665153, -0.291213,
		15.807228, 18.147861, 20.789333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745809, 17.296066, 20.808308>,  <16.288534, 17.682255, 20.993183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745809, 17.296066, 20.808308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.771880, 17.648573, 20.621065>,  <15.787523, 17.860077, 20.508718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.771880, 17.648573, 20.621065>,  <15.745809, 17.296066, 20.808308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771880, 17.648573, 20.621065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038103, -0.466565, -0.883666,
		-0.997146, 0.075432, 0.003169,
		0.065178, 0.881264, -0.468108,
		15.791433, 17.912952, 20.480633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238902, 17.308596, 20.198126>,  <15.745809, 17.296066, 20.808308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238902, 17.308596, 20.198126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512186, 17.593832, 20.135233>,  <15.676156, 17.764975, 20.097496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512186, 17.593832, 20.135233>,  <15.238902, 17.308596, 20.198126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512186, 17.593832, 20.135233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070708, -0.278916, -0.957709,
		-0.726790, 0.643198, -0.240980,
		0.683210, 0.713093, -0.157234,
		15.717149, 17.807760, 20.088062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.047943, 17.514080, 19.553331>,  <15.238902, 17.308596, 20.198126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.047943, 17.514080, 19.553331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.432491, 17.615576, 19.596010>,  <15.663220, 17.676474, 19.621616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.432491, 17.615576, 19.596010>,  <15.047943, 17.514080, 19.553331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432491, 17.615576, 19.596010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188071, -0.322476, -0.927706,
		-0.200988, 0.911935, -0.357740,
		0.961370, 0.253738, 0.106695,
		15.720902, 17.691698, 19.628019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280880, 17.780025, 18.847998>,  <15.047943, 17.514080, 19.553331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280880, 17.780025, 18.847998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.616115, 17.692043, 19.047689>,  <15.817255, 17.639254, 19.167505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.616115, 17.692043, 19.047689>,  <15.280880, 17.780025, 18.847998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616115, 17.692043, 19.047689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429759, -0.297485, -0.852532,
		0.336034, 0.929043, -0.154789,
		0.838086, -0.219957, 0.499230,
		15.867540, 17.626057, 19.197458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777744, 18.184156, 18.530668>,  <15.280880, 17.780025, 18.847998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777744, 18.184156, 18.530668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973984, 17.886568, 18.712139>,  <16.091728, 17.708015, 18.821022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973984, 17.886568, 18.712139>,  <15.777744, 18.184156, 18.530668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973984, 17.886568, 18.712139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368101, -0.294961, -0.881759,
		0.789820, 0.599588, 0.129149,
		0.490598, -0.743971, 0.453675,
		16.121162, 17.663378, 18.848242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290487, 18.090219, 18.097778>,  <15.777744, 18.184156, 18.530668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290487, 18.090219, 18.097778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.305792, 17.747902, 18.304138>,  <16.314976, 17.542511, 18.427954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.305792, 17.747902, 18.304138>,  <16.290487, 18.090219, 18.097778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305792, 17.747902, 18.304138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383710, -0.464116, -0.798350,
		0.922661, 0.228504, 0.310618,
		0.038263, -0.855794, 0.515900,
		16.317270, 17.491163, 18.458908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.372418, 20.627157, 6.053823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.058713, 20.523232, 6.279187>,  <3.870491, 20.460876, 6.414405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.058713, 20.523232, 6.279187>,  <4.372418, 20.627157, 6.053823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.058713, 20.523232, 6.279187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572973, -0.045019, -0.818336,
		0.237980, -0.964609, -0.113560,
		-0.784262, -0.259814, 0.563409,
		3.823435, 20.445288, 6.448210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.132762, 19.942923, 6.004261>,  <4.372418, 20.627157, 6.053823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.132762, 19.942923, 6.004261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.843713, 20.205742, 6.090148>,  <3.670283, 20.363434, 6.141681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.843713, 20.205742, 6.090148>,  <4.132762, 19.942923, 6.004261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.843713, 20.205742, 6.090148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408443, -0.155264, -0.899482,
		-0.557665, -0.737686, 0.380564,
		-0.722623, 0.657048, 0.214718,
		3.626926, 20.402857, 6.154564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.456707, 19.711155, 5.728708>,  <4.132762, 19.942923, 6.004261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.456707, 19.711155, 5.728708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.535051, 20.103323, 5.736848>,  <3.582058, 20.338623, 5.741733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.535051, 20.103323, 5.736848>,  <3.456707, 19.711155, 5.728708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.535051, 20.103323, 5.736848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134807, 0.047475, -0.989734,
		-0.971321, 0.191107, 0.141466,
		0.195861, 0.980420, 0.020351,
		3.593810, 20.397449, 5.742954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013350, 19.214819, 5.632622>,  <3.456707, 19.711155, 5.728708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013350, 19.214819, 5.632622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.125147, 19.214334, 5.248563>,  <4.192225, 19.214045, 5.018128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.125147, 19.214334, 5.248563>,  <4.013350, 19.214819, 5.632622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.125147, 19.214334, 5.248563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086742, -0.995942, -0.023996,
		-0.956221, 0.089992, -0.278464,
		0.279493, -0.001210, -0.960147,
		4.208995, 19.213972, 4.960519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.593629, 18.724918, 5.259185>,  <4.013350, 19.214819, 5.632622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.593629, 18.724918, 5.259185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.945670, 18.772617, 5.075358>,  <4.156894, 18.801237, 4.965062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.945670, 18.772617, 5.075358>,  <3.593629, 18.724918, 5.259185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.945670, 18.772617, 5.075358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132728, -0.991148, -0.003002,
		-0.455857, -0.058355, -0.888138,
		0.880101, 0.119250, -0.459567,
		4.209700, 18.808392, 4.937488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.025758, 18.519974, 5.785295>,  <3.593629, 18.724918, 5.259185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.025758, 18.519974, 5.785295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.149245, 18.277561, 5.492060>,  <4.223337, 18.132114, 5.316118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.149245, 18.277561, 5.492060>,  <4.025758, 18.519974, 5.785295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.149245, 18.277561, 5.492060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179353, -0.719821, 0.670590,
		-0.934091, -0.338504, -0.113528,
		0.308717, -0.606031, -0.733090,
		4.241860, 18.095753, 5.272133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.618471, 17.895376, 5.725244>,  <4.025758, 18.519974, 5.785295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.618471, 17.895376, 5.725244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.008737, 17.861170, 5.644481>,  <4.242896, 17.840647, 5.596023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.008737, 17.861170, 5.644481>,  <3.618471, 17.895376, 5.725244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.008737, 17.861170, 5.644481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130749, -0.512309, 0.848790,
		-0.176023, -0.854533, -0.488661,
		0.975664, -0.085514, -0.201908,
		4.301436, 17.835516, 5.583909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.951625, 17.110918, 5.622814>,  <3.618471, 17.895376, 5.725244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.951625, 17.110918, 5.622814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.210901, 17.384014, 5.757700>,  <4.366467, 17.547873, 5.838633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.210901, 17.384014, 5.757700>,  <3.951625, 17.110918, 5.622814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.210901, 17.384014, 5.757700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180514, -0.567991, 0.802995,
		0.739773, -0.459621, -0.491411,
		0.648190, 0.682741, 0.337217,
		4.405358, 17.588837, 5.858865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.659039, 16.888449, 5.630124>,  <3.951625, 17.110918, 5.622814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.659039, 16.888449, 5.630124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.572755, 17.156031, 5.914649>,  <4.520984, 17.316580, 6.085365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.572755, 17.156031, 5.914649>,  <4.659039, 16.888449, 5.630124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.572755, 17.156031, 5.914649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288477, -0.652290, 0.700928,
		0.932872, 0.356396, -0.052271,
		-0.215712, 0.668954, 0.711314,
		4.508041, 17.356716, 6.128044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.242450, 16.958641, 5.967556>,  <4.659039, 16.888449, 5.630124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.242450, 16.958641, 5.967556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.925432, 17.034775, 6.199296>,  <4.735221, 17.080454, 6.338340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.925432, 17.034775, 6.199296>,  <5.242450, 16.958641, 5.967556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.925432, 17.034775, 6.199296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302765, -0.701865, 0.644763,
		0.529345, 0.686410, 0.498633,
		-0.792544, 0.190334, 0.579350,
		4.687668, 17.091875, 6.373101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.495456, 16.772799, 6.548772>,  <5.242450, 16.958641, 5.967556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.495456, 16.772799, 6.548772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.109567, 16.826843, 6.639152>,  <4.878033, 16.859270, 6.693379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.109567, 16.826843, 6.639152>,  <5.495456, 16.772799, 6.548772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.109567, 16.826843, 6.639152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105917, -0.586540, 0.802965,
		0.241018, 0.798571, 0.551539,
		-0.964724, 0.135112, 0.225949,
		4.820149, 16.867376, 6.706936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.414690, 17.011223, 7.184074>,  <5.495456, 16.772799, 6.548772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.414690, 17.011223, 7.184074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.076133, 16.812429, 7.107525>,  <4.872998, 16.693153, 7.061595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.076133, 16.812429, 7.107525>,  <5.414690, 17.011223, 7.184074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.076133, 16.812429, 7.107525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133351, -0.545681, 0.827314,
		-0.515591, 0.674714, 0.528135,
		-0.846394, -0.496983, -0.191374,
		4.822215, 16.663334, 7.050113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.200238, 17.013559, 7.865201>,  <5.414690, 17.011223, 7.184074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.200238, 17.013559, 7.865201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.988777, 16.756872, 7.642949>,  <4.861901, 16.602859, 7.509597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.988777, 16.756872, 7.642949>,  <5.200238, 17.013559, 7.865201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.988777, 16.756872, 7.642949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106805, -0.599089, 0.793527,
		-0.842093, 0.478843, 0.248171,
		-0.528652, -0.641717, -0.555631,
		4.830182, 16.564358, 7.476259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606523, 16.744415, 8.218451>,  <5.200238, 17.013559, 7.865201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606523, 16.744415, 8.218451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.696347, 16.458986, 7.953006>,  <4.750241, 16.287729, 7.793738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.696347, 16.458986, 7.953006>,  <4.606523, 16.744415, 8.218451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.696347, 16.458986, 7.953006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034186, -0.686357, 0.726460,
		-0.973861, -0.140448, -0.178522,
		0.224560, -0.713574, -0.663615,
		4.763715, 16.244915, 7.753922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.185073, 16.175116, 8.454786>,  <4.606523, 16.744415, 8.218451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.185073, 16.175116, 8.454786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.466527, 16.035633, 8.207140>,  <4.635398, 15.951943, 8.058553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.466527, 16.035633, 8.207140>,  <4.185073, 16.175116, 8.454786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.466527, 16.035633, 8.207140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145595, -0.782061, 0.605956,
		-0.695487, -0.516511, -0.499513,
		0.703633, -0.348708, -0.619115,
		4.677616, 15.931021, 8.021405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.043147, 15.487446, 8.470292>,  <4.185073, 16.175116, 8.454786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.043147, 15.487446, 8.470292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.414620, 15.506072, 8.323115>,  <4.637504, 15.517248, 8.234810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.414620, 15.506072, 8.323115>,  <4.043147, 15.487446, 8.470292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.414620, 15.506072, 8.323115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267154, -0.772134, 0.576575,
		-0.257250, -0.633752, -0.729508,
		0.928683, 0.046567, -0.367941,
		4.693225, 15.520042, 8.212733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.263069, 14.681246, 8.296757>,  <4.043147, 15.487446, 8.470292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.263069, 14.681246, 8.296757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.595501, 14.900646, 8.333534>,  <4.794960, 15.032287, 8.355600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.595501, 14.900646, 8.333534>,  <4.263069, 14.681246, 8.296757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.595501, 14.900646, 8.333534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357775, -0.653850, 0.666691,
		0.425798, -0.521179, -0.739641,
		0.831080, 0.548501, 0.091944,
		4.844825, 15.065196, 8.361117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.787530, 14.139810, 8.395029>,  <4.263069, 14.681246, 8.296757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.787530, 14.139810, 8.395029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.947067, 14.489924, 8.504425>,  <5.042789, 14.699993, 8.570063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.947067, 14.489924, 8.504425>,  <4.787530, 14.139810, 8.395029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.947067, 14.489924, 8.504425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543439, -0.465830, 0.698338,
		0.738647, -0.129901, -0.661458,
		0.398842, 0.875287, 0.273490,
		5.066720, 14.752511, 8.586473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.503896, 13.944626, 8.534730>,  <4.787530, 14.139810, 8.395029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.503896, 13.944626, 8.534730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.433513, 14.279599, 8.741705>,  <5.391283, 14.480583, 8.865891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.433513, 14.279599, 8.741705>,  <5.503896, 13.944626, 8.534730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.433513, 14.279599, 8.741705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496773, -0.378258, 0.781113,
		0.849856, 0.394493, -0.349457,
		-0.175958, 0.837434, 0.517439,
		5.380725, 14.530829, 8.896936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.091690, 13.981975, 9.012949>,  <5.503896, 13.944626, 8.534730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.091690, 13.981975, 9.012949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.798942, 14.211478, 9.160009>,  <5.623293, 14.349180, 9.248246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.798942, 14.211478, 9.160009>,  <6.091690, 13.981975, 9.012949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.798942, 14.211478, 9.160009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247022, -0.279446, 0.927842,
		0.635096, 0.769877, 0.062787,
		-0.731870, 0.573758, 0.367651,
		5.579381, 14.383606, 9.270305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.433126, 14.271886, 9.599038>,  <6.091690, 13.981975, 9.012949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.433126, 14.271886, 9.599038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.051679, 14.357956, 9.683237>,  <5.822810, 14.409598, 9.733756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.051679, 14.357956, 9.683237>,  <6.433126, 14.271886, 9.599038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.051679, 14.357956, 9.683237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174313, -0.175362, 0.968950,
		0.245408, 0.960701, 0.129721,
		-0.953619, 0.215176, 0.210498,
		5.765593, 14.422509, 9.746387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.411305, 14.806910, 10.164029>,  <6.433126, 14.271886, 9.599038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.411305, 14.806910, 10.164029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058465, 14.618684, 10.172674>,  <5.846761, 14.505748, 10.177861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058465, 14.618684, 10.172674>,  <6.411305, 14.806910, 10.164029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.058465, 14.618684, 10.172674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148205, -0.233681, 0.960952,
		-0.447140, 0.850859, 0.275871,
		-0.882100, -0.470565, 0.021614,
		5.793835, 14.477514, 10.179158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.135784, 15.086928, 10.830969>,  <6.411305, 14.806910, 10.164029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.135784, 15.086928, 10.830969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.900854, 14.772189, 10.755158>,  <5.759896, 14.583345, 10.709672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.900854, 14.772189, 10.755158>,  <6.135784, 15.086928, 10.830969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.900854, 14.772189, 10.755158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006314, -0.229709, 0.973239,
		-0.809327, 0.572803, 0.129946,
		-0.587324, -0.786848, -0.189527,
		5.724657, 14.536135, 10.698300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.434794, 15.122060, 11.138878>,  <6.135784, 15.086928, 10.830969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.434794, 15.122060, 11.138878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.500756, 14.728064, 11.118480>,  <5.540333, 14.491666, 11.106240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.500756, 14.728064, 11.118480>,  <5.434794, 15.122060, 11.138878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.500756, 14.728064, 11.118480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106711, -0.069218, 0.991878,
		-0.980520, -0.158122, -0.116523,
		0.164903, -0.984990, -0.050996,
		5.550227, 14.432567, 11.103181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.928399, 14.815019, 11.537366>,  <5.434794, 15.122060, 11.138878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.928399, 14.815019, 11.537366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.201562, 14.524603, 11.505104>,  <5.365459, 14.350353, 11.485746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.201562, 14.524603, 11.505104>,  <4.928399, 14.815019, 11.537366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.201562, 14.524603, 11.505104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009130, -0.118884, 0.992866,
		-0.730449, -0.677298, -0.087815,
		0.682906, -0.726040, -0.080655,
		5.406434, 14.306791, 11.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.690054, 14.348101, 11.935453>,  <4.928399, 14.815019, 11.537366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.690054, 14.348101, 11.935453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.073990, 14.246264, 11.888308>,  <5.304351, 14.185163, 11.860021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.073990, 14.246264, 11.888308>,  <4.690054, 14.348101, 11.935453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073990, 14.246264, 11.888308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108569, -0.050308, 0.992815,
		-0.258692, -0.965739, -0.020647,
		0.959839, -0.254591, -0.117864,
		5.361942, 14.169888, 11.852948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.712203, 13.805937, 12.331280>,  <4.690054, 14.348101, 11.935453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.712203, 13.805937, 12.331280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.085223, 13.948669, 12.309291>,  <5.309035, 14.034309, 12.296098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.085223, 13.948669, 12.309291>,  <4.712203, 13.805937, 12.331280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085223, 13.948669, 12.309291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105568, -0.123892, 0.986664,
		0.345263, -0.925917, -0.153206,
		0.932550, 0.356832, -0.054972,
		5.364988, 14.055719, 12.292799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.123034, 13.426043, 12.793518>,  <4.712203, 13.805937, 12.331280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.123034, 13.426043, 12.793518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.344090, 13.756245, 12.747688>,  <5.476724, 13.954366, 12.720191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.344090, 13.756245, 12.747688>,  <5.123034, 13.426043, 12.793518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.344090, 13.756245, 12.747688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292622, -0.063474, 0.954119,
		0.780359, -0.560812, -0.276639,
		0.552641, 0.825507, -0.114574,
		5.509883, 14.003897, 12.713316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635694, 13.280321, 13.203731>,  <5.123034, 13.426043, 12.793518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635694, 13.280321, 13.203731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.642995, 13.674335, 13.135179>,  <5.647376, 13.910744, 13.094048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.642995, 13.674335, 13.135179>,  <5.635694, 13.280321, 13.203731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.642995, 13.674335, 13.135179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328699, 0.155969, 0.931467,
		0.944258, -0.073334, -0.320933,
		0.018253, 0.985036, -0.171380,
		5.648471, 13.969847, 13.083765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.272875, 13.503131, 13.563659>,  <5.635694, 13.280321, 13.203731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.272875, 13.503131, 13.563659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.054353, 13.832767, 13.503758>,  <5.923240, 14.030549, 13.467818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.054353, 13.832767, 13.503758>,  <6.272875, 13.503131, 13.563659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.054353, 13.832767, 13.503758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270173, 0.342611, 0.899791,
		0.792816, 0.451102, -0.409817,
		-0.546305, 0.824090, -0.149752,
		5.890461, 14.079994, 13.458833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.685197, 13.938291, 13.930951>,  <6.272875, 13.503131, 13.563659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.685197, 13.938291, 13.930951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.354002, 14.155719, 13.875865>,  <6.155285, 14.286176, 13.842813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.354002, 14.155719, 13.875865>,  <6.685197, 13.938291, 13.930951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.354002, 14.155719, 13.875865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198958, 0.514397, 0.834153,
		0.524262, 0.663269, -0.534063,
		-0.827988, 0.543571, -0.137716,
		6.105606, 14.318790, 13.834550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.043031, 14.073693, 14.439425>,  <6.685197, 13.938291, 13.930951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.043031, 14.073693, 14.439425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.430950, 14.100254, 14.533306>,  <7.663701, 14.116190, 14.589634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.430950, 14.100254, 14.533306>,  <7.043031, 14.073693, 14.439425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.430950, 14.100254, 14.533306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151555, 0.589901, -0.793125,
		-0.191115, 0.804740, 0.562021,
		0.969797, 0.066401, 0.234701,
		7.721889, 14.120174, 14.603717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.373238, 14.677390, 14.794940>,  <7.043031, 14.073693, 14.439425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.373238, 14.677390, 14.794940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.670269, 14.530104, 14.571157>,  <7.848488, 14.441731, 14.436887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.670269, 14.530104, 14.571157>,  <7.373238, 14.677390, 14.794940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.670269, 14.530104, 14.571157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018587, 0.823662, -0.566776,
		0.669501, 0.431275, 0.604790,
		0.742579, -0.368216, -0.559459,
		7.893043, 14.419639, 14.403319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.911876, 15.258186, 14.740526>,  <7.373238, 14.677390, 14.794940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.911876, 15.258186, 14.740526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.948026, 15.022693, 14.419223>,  <7.969716, 14.881396, 14.226440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.948026, 15.022693, 14.419223>,  <7.911876, 15.258186, 14.740526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.948026, 15.022693, 14.419223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141211, 0.790835, -0.595516,
		0.985846, 0.167249, -0.011665,
		0.090374, -0.588734, -0.803259,
		7.975138, 14.846072, 14.178246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209962, 15.675235, 14.290853>,  <7.911876, 15.258186, 14.740526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209962, 15.675235, 14.290853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.124134, 15.386463, 14.027709>,  <8.072638, 15.213201, 13.869823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.124134, 15.386463, 14.027709>,  <8.209962, 15.675235, 14.290853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.124134, 15.386463, 14.027709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071283, 0.683326, -0.726625,
		0.974104, -0.109018, -0.198083,
		-0.214570, -0.721928, -0.657859,
		8.059763, 15.169885, 13.830351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.664062, 15.679304, 13.603412>,  <8.209962, 15.675235, 14.290853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.664062, 15.679304, 13.603412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.328416, 15.484298, 13.506904>,  <8.127028, 15.367294, 13.448998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.328416, 15.484298, 13.506904>,  <8.664062, 15.679304, 13.603412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.328416, 15.484298, 13.506904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197194, 0.686015, -0.700355,
		0.506950, -0.540103, -0.671782,
		-0.839116, -0.487516, -0.241271,
		8.076681, 15.338043, 13.434523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727472, 15.661119, 12.854101>,  <8.664062, 15.679304, 13.603412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727472, 15.661119, 12.854101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349130, 15.583243, 12.957989>,  <8.122125, 15.536518, 13.020321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349130, 15.583243, 12.957989>,  <8.727472, 15.661119, 12.854101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349130, 15.583243, 12.957989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324571, 0.575343, -0.750756,
		-0.003264, -0.794404, -0.607381,
		-0.945856, -0.194688, 0.259718,
		8.065372, 15.524837, 13.035904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.336963, 15.415774, 12.267567>,  <8.727472, 15.661119, 12.854101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.336963, 15.415774, 12.267567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.037237, 15.556405, 12.492039>,  <7.857402, 15.640783, 12.626721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.037237, 15.556405, 12.492039>,  <8.336963, 15.415774, 12.267567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.037237, 15.556405, 12.492039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423328, 0.397354, -0.814189,
		-0.509236, -0.847646, -0.148911,
		-0.749315, 0.351576, 0.561179,
		7.812443, 15.661878, 12.660393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.789227, 15.491483, 11.785688>,  <8.336963, 15.415774, 12.267567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.789227, 15.491483, 11.785688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.658431, 15.702849, 12.099083>,  <7.579952, 15.829670, 12.287120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.658431, 15.702849, 12.099083>,  <7.789227, 15.491483, 11.785688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.658431, 15.702849, 12.099083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637875, 0.488298, -0.595550,
		-0.697274, -0.694507, 0.177395,
		-0.326992, 0.528418, 0.783486,
		7.560333, 15.861375, 12.334129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.033194, 15.487505, 11.828743>,  <7.789227, 15.491483, 11.785688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.033194, 15.487505, 11.828743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.165009, 15.799071, 12.042171>,  <7.244098, 15.986011, 12.170227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.165009, 15.799071, 12.042171>,  <7.033194, 15.487505, 11.828743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165009, 15.799071, 12.042171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732276, 0.567589, -0.376316,
		-0.595966, -0.266709, 0.757424,
		0.329539, 0.778915, 0.533568,
		7.263871, 16.032745, 12.202241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.462241, 15.816608, 12.164320>,  <7.033194, 15.487505, 11.828743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.462241, 15.816608, 12.164320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735209, 16.108931, 12.158302>,  <6.898990, 16.284325, 12.154692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735209, 16.108931, 12.158302>,  <6.462241, 15.816608, 12.164320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.735209, 16.108931, 12.158302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688137, 0.635365, -0.350399,
		-0.246515, 0.249471, 0.936480,
		0.682420, 0.730805, -0.015043,
		6.939936, 16.328173, 12.153790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.134317, 16.339815, 12.365281>,  <6.462241, 15.816608, 12.164320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.134317, 16.339815, 12.365281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.445158, 16.495815, 12.167690>,  <6.631662, 16.589415, 12.049136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.445158, 16.495815, 12.167690>,  <6.134317, 16.339815, 12.365281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.445158, 16.495815, 12.167690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623004, 0.588060, -0.515802,
		0.089325, 0.708580, 0.699955,
		0.777102, 0.390000, -0.493976,
		6.678288, 16.612816, 12.019498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.030043, 17.009583, 12.386482>,  <6.134317, 16.339815, 12.365281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.030043, 17.009583, 12.386482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.275867, 16.945961, 12.077415>,  <6.423361, 16.907787, 11.891973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.275867, 16.945961, 12.077415>,  <6.030043, 17.009583, 12.386482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.275867, 16.945961, 12.077415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543816, 0.624123, -0.561013,
		0.571472, 0.764965, 0.297064,
		0.614560, -0.159055, -0.772669,
		6.460235, 16.898245, 11.845613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.172253, 17.663568, 12.114926>,  <6.030043, 17.009583, 12.386482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.172253, 17.663568, 12.114926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.269401, 17.432049, 11.803541>,  <6.327690, 17.293137, 11.616711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.269401, 17.432049, 11.803541>,  <6.172253, 17.663568, 12.114926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.269401, 17.432049, 11.803541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498371, 0.614037, -0.612034,
		0.832250, 0.536608, -0.139326,
		0.242870, -0.578801, -0.778462,
		6.342262, 17.258408, 11.570003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.541781, 18.012383, 11.566336>,  <6.172253, 17.663568, 12.114926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.541781, 18.012383, 11.566336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405922, 17.709805, 11.342752>,  <6.324407, 17.528257, 11.208603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405922, 17.709805, 11.342752>,  <6.541781, 18.012383, 11.566336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405922, 17.709805, 11.342752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360170, 0.653590, -0.665656,
		0.868860, -0.024769, -0.494438,
		-0.339647, -0.756444, -0.558957,
		6.304028, 17.482872, 11.175065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.479927, 18.341663, 11.005659>,  <6.541781, 18.012383, 11.566336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.479927, 18.341663, 11.005659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303166, 17.997782, 10.903181>,  <6.197110, 17.791452, 10.841695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303166, 17.997782, 10.903181>,  <6.479927, 18.341663, 11.005659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.303166, 17.997782, 10.903181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437549, 0.455879, -0.775065,
		0.783119, -0.230405, -0.577615,
		-0.441901, -0.859702, -0.256194,
		6.170596, 17.739872, 10.826323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.538543, 18.338337, 10.310513>,  <6.479927, 18.341663, 11.005659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.538543, 18.338337, 10.310513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.248394, 18.083786, 10.415481>,  <6.074306, 17.931055, 10.478460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.248394, 18.083786, 10.415481>,  <6.538543, 18.338337, 10.310513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.248394, 18.083786, 10.415481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607124, 0.411796, -0.679576,
		0.324401, -0.652267, -0.685063,
		-0.725372, -0.636374, 0.262420,
		6.030783, 17.892874, 10.494205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.358539, 17.999014, 9.667072>,  <6.538543, 18.338337, 10.310513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.358539, 17.999014, 9.667072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.040363, 17.964281, 9.906983>,  <5.849457, 17.943441, 10.050930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.040363, 17.964281, 9.906983>,  <6.358539, 17.999014, 9.667072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.040363, 17.964281, 9.906983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579756, 0.397286, -0.711369,
		-0.176513, -0.913577, -0.366360,
		-0.795441, -0.086834, 0.599778,
		5.801731, 17.938231, 10.086917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.848297, 17.810759, 9.200700>,  <6.358539, 17.999014, 9.667072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.848297, 17.810759, 9.200700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.669456, 17.960409, 9.525693>,  <5.562151, 18.050200, 9.720689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.669456, 17.960409, 9.525693>,  <5.848297, 17.810759, 9.200700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.669456, 17.960409, 9.525693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667895, 0.464569, -0.581457,
		-0.594993, -0.802624, 0.042167,
		-0.447102, 0.374126, 0.812484,
		5.535326, 18.072647, 9.769438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.125958, 17.726940, 9.185352>,  <5.848297, 17.810759, 9.200700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.125958, 17.726940, 9.185352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.188021, 18.031504, 9.437124>,  <5.225258, 18.214241, 9.588187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.188021, 18.031504, 9.437124>,  <5.125958, 17.726940, 9.185352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188021, 18.031504, 9.437124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764632, 0.495987, -0.411502,
		-0.625511, -0.417435, 0.659154,
		0.155156, 0.761409, 0.629430,
		5.234568, 18.259926, 9.625954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518268, 17.843254, 9.525633>,  <5.125958, 17.726940, 9.185352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518268, 17.843254, 9.525633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.743311, 18.173164, 9.502941>,  <4.878337, 18.371111, 9.489326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.743311, 18.173164, 9.502941>,  <4.518268, 17.843254, 9.525633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.743311, 18.173164, 9.502941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757185, 0.486525, -0.435849,
		-0.331877, 0.288167, 0.898230,
		0.562608, 0.824775, -0.056729,
		4.912094, 18.420597, 9.485923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.457757, 17.072920, 9.338561>,  <4.518268, 17.843254, 9.525633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.457757, 17.072920, 9.338561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.850338, 17.128416, 9.285644>,  <5.085886, 17.161715, 9.253893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.850338, 17.128416, 9.285644>,  <4.457757, 17.072920, 9.338561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.850338, 17.128416, 9.285644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112695, 0.975815, 0.187310,
		0.155082, -0.168928, 0.973351,
		0.981453, 0.138740, -0.132294,
		5.144773, 17.170038, 9.245955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.255781, 17.055862, 25.449923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.858030, 17.015888, 25.435926>,  <16.619379, 16.991903, 25.427528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.858030, 17.015888, 25.435926>,  <17.255781, 17.055862, 25.449923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858030, 17.015888, 25.435926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087609, 0.590943, 0.801942,
		-0.059466, 0.800499, -0.596377,
		-0.994378, -0.099936, -0.034990,
		16.559717, 16.985907, 25.425430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021524, 17.737320, 25.390753>,  <17.255781, 17.055862, 25.449923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021524, 17.737320, 25.390753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.726686, 17.505861, 25.530388>,  <16.549784, 17.366987, 25.614168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.726686, 17.505861, 25.530388>,  <17.021524, 17.737320, 25.390753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726686, 17.505861, 25.530388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122738, 0.622599, 0.772856,
		-0.664551, 0.526821, -0.529935,
		-0.737093, -0.578646, 0.349088,
		16.505558, 17.332268, 25.635115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678022, 18.245062, 25.420687>,  <17.021524, 17.737320, 25.390753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678022, 18.245062, 25.420687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.549112, 17.943523, 25.649719>,  <16.471766, 17.762600, 25.787140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.549112, 17.943523, 25.649719>,  <16.678022, 18.245062, 25.420687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549112, 17.943523, 25.649719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222814, 0.648268, 0.728082,
		-0.920050, 0.107063, -0.376889,
		-0.322276, -0.753848, 0.572583,
		16.452429, 17.717369, 25.821495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976373, 18.414410, 25.627184>,  <16.678022, 18.245062, 25.420687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976373, 18.414410, 25.627184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.110779, 18.154257, 25.899683>,  <16.191423, 17.998165, 26.063183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.110779, 18.154257, 25.899683>,  <15.976373, 18.414410, 25.627184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110779, 18.154257, 25.899683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248234, 0.636574, 0.730173,
		-0.908555, -0.414458, 0.052452,
		0.336016, -0.650382, 0.681246,
		16.211584, 17.959143, 26.104057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402893, 18.371656, 26.090919>,  <15.976373, 18.414410, 25.627184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402893, 18.371656, 26.090919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.732557, 18.256767, 26.286167>,  <15.930356, 18.187834, 26.403316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.732557, 18.256767, 26.286167>,  <15.402893, 18.371656, 26.090919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.732557, 18.256767, 26.286167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321561, 0.472159, 0.820771,
		-0.466215, -0.833408, 0.296775,
		0.824161, -0.287224, 0.488119,
		15.979806, 18.170601, 26.432602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185375, 18.072054, 26.716133>,  <15.402893, 18.371656, 26.090919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185375, 18.072054, 26.716133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.565339, 18.176617, 26.784643>,  <15.793318, 18.239355, 26.825750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.565339, 18.176617, 26.784643>,  <15.185375, 18.072054, 26.716133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565339, 18.176617, 26.784643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265428, 0.385508, 0.883703,
		0.164978, -0.884901, 0.435583,
		0.949911, 0.261407, 0.171277,
		15.850312, 18.255039, 26.836027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382232, 17.998575, 27.420752>,  <15.185375, 18.072054, 26.716133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382232, 17.998575, 27.420752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.687063, 18.242125, 27.332653>,  <15.869962, 18.388254, 27.279793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.687063, 18.242125, 27.332653>,  <15.382232, 17.998575, 27.420752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.687063, 18.242125, 27.332653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090028, 0.436499, 0.895189,
		0.641196, -0.662375, 0.387462,
		0.762078, 0.608874, -0.220249,
		15.915687, 18.424788, 27.266579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792325, 17.960279, 28.002430>,  <15.382232, 17.998575, 27.420752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792325, 17.960279, 28.002430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897041, 18.300737, 27.820435>,  <15.959871, 18.505013, 27.711237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897041, 18.300737, 27.820435>,  <15.792325, 17.960279, 28.002430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897041, 18.300737, 27.820435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070439, 0.487025, 0.870543,
		0.962551, -0.195850, 0.187452,
		0.261789, 0.851146, -0.454991,
		15.975578, 18.556082, 27.683937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378981, 18.255877, 28.326906>,  <15.792325, 17.960279, 28.002430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378981, 18.255877, 28.326906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.218912, 18.559238, 28.121115>,  <16.122871, 18.741255, 27.997641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.218912, 18.559238, 28.121115>,  <16.378981, 18.255877, 28.326906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218912, 18.559238, 28.121115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038486, 0.546985, 0.836257,
		0.915632, 0.354447, -0.189700,
		-0.400172, 0.758403, -0.514478,
		16.098860, 18.786758, 27.966772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671873, 18.798948, 28.555807>,  <16.378981, 18.255877, 28.326906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671873, 18.798948, 28.555807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.333467, 18.945871, 28.401226>,  <16.130424, 19.034025, 28.308477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.333467, 18.945871, 28.401226>,  <16.671873, 18.798948, 28.555807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333467, 18.945871, 28.401226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067808, 0.644820, 0.761320,
		0.528829, 0.670294, -0.520622,
		-0.846016, 0.367306, -0.386451,
		16.079662, 19.056063, 28.285292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620567, 19.418133, 28.873449>,  <16.671873, 18.798948, 28.555807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620567, 19.418133, 28.873449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.265791, 19.332134, 28.709930>,  <16.052925, 19.280535, 28.611818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.265791, 19.332134, 28.709930>,  <16.620567, 19.418133, 28.873449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265791, 19.332134, 28.709930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446985, 0.622524, 0.642393,
		0.116376, 0.752490, -0.648240,
		-0.886939, -0.214994, -0.408799,
		15.999709, 19.267635, 28.587290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295853, 20.092440, 28.663282>,  <16.620567, 19.418133, 28.873449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295853, 20.092440, 28.663282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.008596, 19.817823, 28.708786>,  <15.836244, 19.653053, 28.736088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.008596, 19.817823, 28.708786>,  <16.295853, 20.092440, 28.663282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.008596, 19.817823, 28.708786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472466, 0.601026, 0.644626,
		-0.510934, 0.409184, -0.755986,
		-0.718138, -0.686539, 0.113759,
		15.793155, 19.611862, 28.742914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624687, 20.429773, 28.600729>,  <16.295853, 20.092440, 28.663282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624687, 20.429773, 28.600729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.584270, 20.106863, 28.833311>,  <15.560019, 19.913116, 28.972860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.584270, 20.106863, 28.833311>,  <15.624687, 20.429773, 28.600729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584270, 20.106863, 28.833311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384863, 0.570664, 0.725412,
		-0.917426, -0.150483, -0.368354,
		-0.101045, -0.807278, 0.581457,
		15.553956, 19.864679, 29.007748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981443, 20.463381, 28.905842>,  <15.624687, 20.429773, 28.600729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981443, 20.463381, 28.905842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.183838, 20.211430, 29.141546>,  <15.305275, 20.060259, 29.282969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.183838, 20.211430, 29.141546>,  <14.981443, 20.463381, 28.905842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183838, 20.211430, 29.141546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435975, 0.402709, 0.804830,
		-0.744247, -0.664137, -0.070846,
		0.505987, -0.629879, 0.589262,
		15.335634, 20.022467, 29.318325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323341, 20.312979, 28.596888>,  <14.981443, 20.463381, 28.905842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323341, 20.312979, 28.596888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.101717, 20.643660, 28.557732>,  <13.968742, 20.842068, 28.534239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.101717, 20.643660, 28.557732>,  <14.323341, 20.312979, 28.596888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101717, 20.643660, 28.557732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390502, -0.361947, -0.846464,
		-0.735203, -0.430767, 0.523370,
		-0.554062, 0.826700, -0.097889,
		13.935498, 20.891670, 28.528364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671025, 20.126093, 28.348364>,  <14.323341, 20.312979, 28.596888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671025, 20.126093, 28.348364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.673215, 20.512451, 28.244812>,  <13.674529, 20.744267, 28.182680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.673215, 20.512451, 28.244812>,  <13.671025, 20.126093, 28.348364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673215, 20.512451, 28.244812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446778, -0.229247, -0.864775,
		-0.894628, 0.120398, 0.430285,
		0.005475, 0.965894, -0.258882,
		13.674857, 20.802219, 28.167147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033803, 20.194971, 28.131491>,  <13.671025, 20.126093, 28.348364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033803, 20.194971, 28.131491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238436, 20.499998, 27.973112>,  <13.361216, 20.683014, 27.878084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238436, 20.499998, 27.973112>,  <13.033803, 20.194971, 28.131491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.238436, 20.499998, 27.973112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389340, -0.205059, -0.897978,
		-0.765963, 0.613546, 0.191995,
		0.511581, 0.762569, -0.395946,
		13.391910, 20.728769, 27.854328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699807, 20.447037, 27.542597>,  <13.033803, 20.194971, 28.131491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699807, 20.447037, 27.542597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.059289, 20.609045, 27.475323>,  <13.274979, 20.706251, 27.434959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.059289, 20.609045, 27.475323>,  <12.699807, 20.447037, 27.542597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059289, 20.609045, 27.475323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094701, -0.195220, -0.976177,
		-0.428206, 0.893223, -0.137089,
		0.898706, 0.405022, -0.168184,
		13.328900, 20.730551, 27.424868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620720, 20.696579, 26.923710>,  <12.699807, 20.447037, 27.542597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620720, 20.696579, 26.923710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.019542, 20.724310, 26.936821>,  <13.258835, 20.740948, 26.944689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.019542, 20.724310, 26.936821>,  <12.620720, 20.696579, 26.923710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019542, 20.724310, 26.936821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055399, -0.355603, -0.932994,
		-0.053025, 0.932062, -0.358396,
		0.997055, 0.069327, 0.032780,
		13.318659, 20.745108, 26.946655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890786, 21.158463, 26.356663>,  <12.620720, 20.696579, 26.923710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890786, 21.158463, 26.356663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.192551, 20.924944, 26.476692>,  <13.373610, 20.784832, 26.548710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.192551, 20.924944, 26.476692>,  <12.890786, 21.158463, 26.356663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192551, 20.924944, 26.476692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218342, -0.207932, -0.953463,
		0.619024, 0.784822, -0.029399,
		0.754411, -0.583797, 0.300074,
		13.418874, 20.749805, 26.566715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.522009, 21.392406, 26.043674>,  <12.890786, 21.158463, 26.356663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.522009, 21.392406, 26.043674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.583776, 21.003197, 26.112238>,  <13.620837, 20.769670, 26.153376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.583776, 21.003197, 26.112238>,  <13.522009, 21.392406, 26.043674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583776, 21.003197, 26.112238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114972, -0.154615, -0.981262,
		0.981293, 0.171234, 0.087995,
		0.154420, -0.973023, 0.171409,
		13.630102, 20.711290, 26.163660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109262, 21.208351, 25.745623>,  <13.522009, 21.392406, 26.043674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109262, 21.208351, 25.745623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.931878, 20.851608, 25.781254>,  <13.825448, 20.637562, 25.802631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.931878, 20.851608, 25.781254>,  <14.109262, 21.208351, 25.745623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931878, 20.851608, 25.781254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255003, -0.220819, -0.941388,
		0.859254, -0.394753, 0.325350,
		-0.443460, -0.891857, 0.089076,
		13.798841, 20.584051, 25.807976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548313, 20.768322, 25.575039>,  <14.109262, 21.208351, 25.745623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548313, 20.768322, 25.575039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.224660, 20.535547, 25.542406>,  <14.030468, 20.395884, 25.522827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.224660, 20.535547, 25.542406>,  <14.548313, 20.768322, 25.575039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224660, 20.535547, 25.542406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353297, -0.370824, -0.858878,
		0.469559, -0.723769, 0.505642,
		-0.809133, -0.581935, -0.081581,
		13.981920, 20.360968, 25.517931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842554, 20.066521, 25.372675>,  <14.548313, 20.768322, 25.575039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842554, 20.066521, 25.372675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.461637, 20.100256, 25.255356>,  <14.233086, 20.120497, 25.184965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.461637, 20.100256, 25.255356>,  <14.842554, 20.066521, 25.372675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461637, 20.100256, 25.255356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214827, -0.497356, -0.840528,
		-0.216763, -0.863437, 0.455511,
		-0.952294, 0.084340, -0.293298,
		14.175948, 20.125559, 25.167366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732356, 19.507198, 24.925928>,  <14.842554, 20.066521, 25.372675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732356, 19.507198, 24.925928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.420970, 19.744688, 24.844460>,  <14.234138, 19.887182, 24.795578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.420970, 19.744688, 24.844460>,  <14.732356, 19.507198, 24.925928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420970, 19.744688, 24.844460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020505, -0.348364, -0.937135,
		-0.627353, -0.725351, 0.283363,
		-0.778465, 0.593725, -0.203674,
		14.187430, 19.922806, 24.783358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303883, 19.044626, 24.488918>,  <14.732356, 19.507198, 24.925928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303883, 19.044626, 24.488918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.232570, 19.427248, 24.396645>,  <14.189782, 19.656822, 24.341280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.232570, 19.427248, 24.396645>,  <14.303883, 19.044626, 24.488918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232570, 19.427248, 24.396645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112848, -0.252771, -0.960923,
		-0.977487, -0.145284, 0.153010,
		-0.178283, 0.956556, -0.230685,
		14.179085, 19.714214, 24.327438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832582, 18.971630, 24.034647>,  <14.303883, 19.044626, 24.488918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832582, 18.971630, 24.034647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.970767, 19.341494, 23.970573>,  <14.053678, 19.563412, 23.932129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.970767, 19.341494, 23.970573>,  <13.832582, 18.971630, 24.034647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970767, 19.341494, 23.970573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283220, -0.265467, -0.921582,
		-0.894674, 0.273004, -0.353591,
		0.345462, 0.924660, -0.160186,
		14.074406, 19.618891, 23.922518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479921, 19.181498, 23.523874>,  <13.832582, 18.971630, 24.034647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479921, 19.181498, 23.523874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.833710, 19.368107, 23.520584>,  <14.045983, 19.480072, 23.518610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.833710, 19.368107, 23.520584>,  <13.479921, 19.181498, 23.523874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833710, 19.368107, 23.520584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109717, -0.225079, -0.968143,
		-0.453511, 0.855393, -0.250261,
		0.884472, 0.466522, -0.008224,
		14.099051, 19.508064, 23.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851624, 19.726048, 23.461746>,  <13.479921, 19.181498, 23.523874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851624, 19.726048, 23.461746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.516124, 19.671473, 23.250887>,  <12.314824, 19.638727, 23.124372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.516124, 19.671473, 23.250887>,  <12.851624, 19.726048, 23.461746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516124, 19.671473, 23.250887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525708, 0.455154, 0.718656,
		0.141882, 0.879898, -0.453486,
		-0.838750, -0.136437, -0.527147,
		12.264499, 19.630541, 23.092743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.491045, 20.375576, 23.515844>,  <12.851624, 19.726048, 23.461746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.491045, 20.375576, 23.515844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.206838, 20.110008, 23.422569>,  <12.036313, 19.950668, 23.366604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.206838, 20.110008, 23.422569>,  <12.491045, 20.375576, 23.515844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.206838, 20.110008, 23.422569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534435, 0.293566, 0.792589,
		-0.457758, 0.687773, -0.563405,
		-0.710518, -0.663918, -0.233188,
		11.993682, 19.910833, 23.352613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812570, 20.700315, 23.612797>,  <12.491045, 20.375576, 23.515844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812570, 20.700315, 23.612797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.745488, 20.306276, 23.628080>,  <11.705239, 20.069853, 23.637251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.745488, 20.306276, 23.628080>,  <11.812570, 20.700315, 23.612797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745488, 20.306276, 23.628080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490304, 0.116970, 0.863666,
		-0.855265, 0.126104, -0.502614,
		-0.167703, -0.985097, 0.038211,
		11.695177, 20.010748, 23.639544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003480, 20.566151, 23.669214>,  <11.812570, 20.700315, 23.612797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003480, 20.566151, 23.669214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.175524, 20.240786, 23.825863>,  <11.278750, 20.045567, 23.919853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.175524, 20.240786, 23.825863>,  <11.003480, 20.566151, 23.669214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175524, 20.240786, 23.825863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488583, 0.155045, 0.858631,
		-0.759139, -0.560645, -0.330733,
		0.430109, -0.813411, 0.391622,
		11.304557, 19.996763, 23.943350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.480583, 20.304644, 23.921158>,  <11.003480, 20.566151, 23.669214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.480583, 20.304644, 23.921158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.805825, 20.158228, 24.102211>,  <11.000971, 20.070379, 24.210842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.805825, 20.158228, 24.102211>,  <10.480583, 20.304644, 23.921158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.805825, 20.158228, 24.102211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441695, 0.118517, 0.889303,
		-0.379164, -0.923022, -0.065311,
		0.813105, -0.366039, 0.452631,
		11.049757, 20.048416, 24.238001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.295414, 19.817724, 24.452345>,  <10.480583, 20.304644, 23.921158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.295414, 19.817724, 24.452345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.657416, 19.887878, 24.607370>,  <10.874618, 19.929972, 24.700386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.657416, 19.887878, 24.607370>,  <10.295414, 19.817724, 24.452345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657416, 19.887878, 24.607370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399475, 0.037205, 0.915989,
		0.146235, -0.983796, 0.103734,
		0.905005, 0.175389, 0.387562,
		10.928918, 19.940495, 24.723639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.354339, 19.402395, 25.055717>,  <10.295414, 19.817724, 24.452345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.354339, 19.402395, 25.055717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.645402, 19.671110, 25.111162>,  <10.820040, 19.832340, 25.144428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.645402, 19.671110, 25.111162>,  <10.354339, 19.402395, 25.055717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645402, 19.671110, 25.111162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284780, 0.112030, 0.952024,
		0.624030, -0.732222, 0.272832,
		0.727658, 0.671789, 0.138612,
		10.863700, 19.872646, 25.152746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.109579, 18.689442, 25.375587>,  <10.354339, 19.402395, 25.055717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.109579, 18.689442, 25.375587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.710961, 18.666319, 25.399441>,  <9.471790, 18.652445, 25.413754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.710961, 18.666319, 25.399441>,  <10.109579, 18.689442, 25.375587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.710961, 18.666319, 25.399441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050700, -0.145283, -0.988091,
		0.065782, -0.987700, 0.141850,
		-0.996545, -0.057807, 0.059633,
		9.411998, 18.648977, 25.417330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.023783, 18.045845, 25.075651>,  <10.109579, 18.689442, 25.375587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.023783, 18.045845, 25.075651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.665695, 18.218464, 25.031193>,  <9.450843, 18.322035, 25.004517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.665695, 18.218464, 25.031193>,  <10.023783, 18.045845, 25.075651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.665695, 18.218464, 25.031193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057943, -0.360020, -0.931143,
		-0.441848, -0.827135, 0.347301,
		-0.895216, 0.431547, -0.111148,
		9.397130, 18.347927, 24.997849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.620563, 17.552181, 24.740530>,  <10.023783, 18.045845, 25.075651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.620563, 17.552181, 24.740530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.479765, 17.919304, 24.667061>,  <9.395287, 18.139578, 24.622980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.479765, 17.919304, 24.667061>,  <9.620563, 17.552181, 24.740530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479765, 17.919304, 24.667061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079700, -0.224907, -0.971115,
		-0.932603, -0.327188, 0.152315,
		-0.351993, 0.917805, -0.183672,
		9.374166, 18.194645, 24.611959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.061582, 17.560642, 24.324018>,  <9.620563, 17.552181, 24.740530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.061582, 17.560642, 24.324018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.151167, 17.944437, 24.255638>,  <9.204918, 18.174713, 24.214609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.151167, 17.944437, 24.255638>,  <9.061582, 17.560642, 24.324018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.151167, 17.944437, 24.255638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065305, -0.160237, -0.984916,
		-0.972407, 0.231749, 0.026772,
		0.223964, 0.959487, -0.170950,
		9.218356, 18.232283, 24.204353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.525506, 17.852945, 23.833620>,  <9.061582, 17.560642, 24.324018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.525506, 17.852945, 23.833620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.858698, 18.072065, 23.802488>,  <9.058613, 18.203537, 23.783810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.858698, 18.072065, 23.802488>,  <8.525506, 17.852945, 23.833620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.858698, 18.072065, 23.802488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009585, -0.126353, -0.991939,
		-0.553219, 0.827012, -0.099999,
		0.832981, 0.547801, -0.077828,
		9.108592, 18.236406, 23.779140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444097, 18.403566, 23.239271>,  <8.525506, 17.852945, 23.833620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444097, 18.403566, 23.239271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.837344, 18.389793, 23.311152>,  <9.073293, 18.381529, 23.354279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.837344, 18.389793, 23.311152>,  <8.444097, 18.403566, 23.239271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.837344, 18.389793, 23.311152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178157, -0.043592, -0.983036,
		0.041684, 0.998456, -0.036721,
		0.983119, -0.034435, 0.179699,
		9.132279, 18.379463, 23.365061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.855767, 18.970915, 22.806402>,  <8.444097, 18.403566, 23.239271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.855767, 18.970915, 22.806402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.104645, 18.664984, 22.873228>,  <9.253971, 18.481424, 22.913324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.104645, 18.664984, 22.873228>,  <8.855767, 18.970915, 22.806402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.104645, 18.664984, 22.873228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217638, -0.036002, -0.975365,
		0.752002, 0.643227, 0.144056,
		0.622195, -0.764829, 0.167064,
		9.291304, 18.435535, 22.923347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.193945, 15.253913, 27.975899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.181913, 15.053721, 27.629808>,  <16.174694, 14.933606, 27.422153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.181913, 15.053721, 27.629808>,  <16.193945, 15.253913, 27.975899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181913, 15.053721, 27.629808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623156, -0.667413, 0.407721,
		-0.781519, 0.551435, -0.291801,
		-0.030080, -0.500479, -0.865226,
		16.172890, 14.903578, 27.370241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102446, 15.885934, 28.143131>,  <16.193945, 15.253913, 27.975899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102446, 15.885934, 28.143131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.849813, 15.620803, 28.304010>,  <15.698233, 15.461724, 28.400537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.849813, 15.620803, 28.304010>,  <16.102446, 15.885934, 28.143131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849813, 15.620803, 28.304010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534962, 0.002919, 0.844871,
		-0.561177, 0.748767, 0.352744,
		-0.631582, -0.662827, 0.402200,
		15.660337, 15.421955, 28.424671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730183, 16.132475, 28.660555>,  <16.102446, 15.885934, 28.143131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.730183, 16.132475, 28.660555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.742716, 15.738683, 28.729628>,  <15.750236, 15.502408, 28.771072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.742716, 15.738683, 28.729628>,  <15.730183, 16.132475, 28.660555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742716, 15.738683, 28.729628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430346, 0.169222, 0.886660,
		-0.902120, 0.046531, 0.428968,
		0.031334, -0.984479, 0.172684,
		15.752116, 15.443339, 28.781433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496637, 16.736599, 28.291040>,  <15.730183, 16.132475, 28.660555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496637, 16.736599, 28.291040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.101705, 16.729736, 28.227943>,  <14.864745, 16.725618, 28.190086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.101705, 16.729736, 28.227943>,  <15.496637, 16.736599, 28.291040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101705, 16.729736, 28.227943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103779, 0.821846, 0.560178,
		0.120026, 0.569452, -0.813215,
		-0.987331, -0.017159, -0.157741,
		14.805505, 16.724588, 28.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.081577, 16.943232, 27.718901>,  <15.496637, 16.736599, 28.291040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.081577, 16.943232, 27.718901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.919163, 16.667847, 27.959284>,  <14.821714, 16.502615, 28.103514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.919163, 16.667847, 27.959284>,  <15.081577, 16.943232, 27.718901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919163, 16.667847, 27.959284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037050, -0.644665, -0.763567,
		0.913106, -0.332301, 0.236249,
		-0.406036, -0.688464, 0.600959,
		14.797352, 16.461308, 28.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403179, 16.321995, 27.566486>,  <15.081577, 16.943232, 27.718901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.403179, 16.321995, 27.566486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.057770, 16.209785, 27.734121>,  <14.850524, 16.142460, 27.834703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.057770, 16.209785, 27.734121>,  <15.403179, 16.321995, 27.566486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.057770, 16.209785, 27.734121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074959, -0.750389, -0.656733,
		0.498709, -0.598518, 0.626950,
		-0.863522, -0.280523, 0.419090,
		14.798713, 16.125629, 27.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458336, 15.661412, 27.728355>,  <15.403179, 16.321995, 27.566486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458336, 15.661412, 27.728355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.061626, 15.706460, 27.704016>,  <14.823601, 15.733489, 27.689411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.061626, 15.706460, 27.704016>,  <15.458336, 15.661412, 27.728355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061626, 15.706460, 27.704016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034748, -0.694365, -0.718784,
		-0.123201, -0.710756, 0.692566,
		-0.991773, 0.112620, -0.060849,
		14.764094, 15.740246, 27.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.143908, 14.944189, 27.776899>,  <15.458336, 15.661412, 27.728355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.143908, 14.944189, 27.776899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.888478, 15.188151, 27.589182>,  <14.735221, 15.334529, 27.476551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.888478, 15.188151, 27.589182>,  <15.143908, 14.944189, 27.776899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888478, 15.188151, 27.589182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167081, -0.705155, -0.689087,
		-0.751205, -0.361622, 0.552197,
		-0.638573, 0.609907, -0.469296,
		14.696906, 15.371123, 27.448393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555158, 14.562315, 27.525881>,  <15.143908, 14.944189, 27.776899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555158, 14.562315, 27.525881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.522158, 14.875411, 27.279139>,  <14.502357, 15.063269, 27.131094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.522158, 14.875411, 27.279139>,  <14.555158, 14.562315, 27.525881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522158, 14.875411, 27.279139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197265, -0.619545, -0.759770,
		-0.976873, 0.059002, 0.205520,
		-0.082501, 0.782741, -0.616856,
		14.497407, 15.110233, 27.094082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018206, 14.319306, 26.983919>,  <14.555158, 14.562315, 27.525881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018206, 14.319306, 26.983919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.167476, 14.659836, 26.836414>,  <14.257038, 14.864154, 26.747911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.167476, 14.659836, 26.836414>,  <14.018206, 14.319306, 26.983919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167476, 14.659836, 26.836414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298950, -0.265937, -0.916464,
		-0.878276, 0.452245, 0.155262,
		0.373176, 0.851324, -0.368764,
		14.279428, 14.915233, 26.725784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.488632, 14.659589, 26.573622>,  <14.018206, 14.319306, 26.983919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.488632, 14.659589, 26.573622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.828857, 14.794713, 26.412413>,  <14.032992, 14.875788, 26.315687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.828857, 14.794713, 26.412413>,  <13.488632, 14.659589, 26.573622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828857, 14.794713, 26.412413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268275, -0.380421, -0.885047,
		-0.452296, 0.860909, -0.232946,
		0.850563, 0.337810, -0.403023,
		14.084026, 14.896056, 26.291506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300912, 14.967258, 25.976051>,  <13.488632, 14.659589, 26.573622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300912, 14.967258, 25.976051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.691947, 14.908376, 25.915852>,  <13.926568, 14.873046, 25.879732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.691947, 14.908376, 25.915852>,  <13.300912, 14.967258, 25.976051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691947, 14.908376, 25.915852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181220, -0.224591, -0.957454,
		0.107144, 0.963270, -0.246234,
		0.977588, -0.147208, -0.150501,
		13.985224, 14.864213, 25.870701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.663383, 14.696941, 26.112978>,  <13.300912, 14.967258, 25.976051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.663383, 14.696941, 26.112978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.267787, 14.671238, 26.059654>,  <12.030430, 14.655816, 26.027660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.267787, 14.671238, 26.059654>,  <12.663383, 14.696941, 26.112978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.267787, 14.671238, 26.059654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114800, 0.901583, 0.417095,
		0.093386, 0.427806, -0.899033,
		-0.988989, -0.064258, -0.133308,
		11.971090, 14.651960, 26.019661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308344, 15.371095, 26.107950>,  <12.663383, 14.696941, 26.112978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308344, 15.371095, 26.107950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.987189, 15.137470, 26.155693>,  <11.794497, 14.997295, 26.184340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.987189, 15.137470, 26.155693>,  <12.308344, 15.371095, 26.107950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.987189, 15.137470, 26.155693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402772, 0.679085, 0.613692,
		-0.439488, 0.444651, -0.780471,
		-0.802886, -0.584062, 0.119357,
		11.746324, 14.962252, 26.191500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.688898, 15.749184, 25.993689>,  <12.308344, 15.371095, 26.107950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.688898, 15.749184, 25.993689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.554922, 15.444014, 26.214872>,  <11.474537, 15.260912, 26.347582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.554922, 15.444014, 26.214872>,  <11.688898, 15.749184, 25.993689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.554922, 15.444014, 26.214872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347357, 0.645499, 0.680202,
		-0.875876, 0.035753, -0.481211,
		-0.334940, -0.762924, 0.552958,
		11.454440, 15.215137, 26.380760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.026871, 15.914474, 26.210457>,  <11.688898, 15.749184, 25.993689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.026871, 15.914474, 26.210457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.141142, 15.648065, 26.486080>,  <11.209704, 15.488219, 26.651455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.141142, 15.648065, 26.486080>,  <11.026871, 15.914474, 26.210457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141142, 15.648065, 26.486080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380471, 0.581104, 0.719416,
		-0.879563, -0.467688, -0.087395,
		0.285677, -0.666023, 0.689059,
		11.226845, 15.448257, 26.692799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.478605, 15.849142, 26.643234>,  <11.026871, 15.914474, 26.210457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.478605, 15.849142, 26.643234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.743284, 15.672324, 26.885475>,  <10.902091, 15.566234, 27.030819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.743284, 15.672324, 26.885475>,  <10.478605, 15.849142, 26.643234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.743284, 15.672324, 26.885475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526331, 0.301386, 0.795074,
		-0.533979, -0.844845, -0.033237,
		0.661697, -0.442046, 0.605602,
		10.941793, 15.539710, 27.067156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090215, 15.364465, 27.109240>,  <10.478605, 15.849142, 26.643234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090215, 15.364465, 27.109240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.444449, 15.447736, 27.275322>,  <10.656990, 15.497699, 27.374971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.444449, 15.447736, 27.275322>,  <10.090215, 15.364465, 27.109240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444449, 15.447736, 27.275322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463545, 0.339624, 0.818402,
		0.029359, -0.917233, 0.397267,
		0.885587, 0.208179, 0.415208,
		10.710125, 15.510189, 27.399885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.038222, 15.205965, 27.710543>,  <10.090215, 15.364465, 27.109240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.038222, 15.205965, 27.710543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.362700, 15.437573, 27.743280>,  <10.557386, 15.576538, 27.762924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.362700, 15.437573, 27.743280>,  <10.038222, 15.205965, 27.710543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362700, 15.437573, 27.743280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427660, 0.491946, 0.758351,
		0.398835, -0.650174, 0.646687,
		0.811195, 0.579019, 0.081848,
		10.606058, 15.611279, 27.767834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.246895, 15.149422, 28.380777>,  <10.038222, 15.205965, 27.710543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.246895, 15.149422, 28.380777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.413760, 15.494486, 28.266380>,  <10.513880, 15.701525, 28.197742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.413760, 15.494486, 28.266380>,  <10.246895, 15.149422, 28.380777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.413760, 15.494486, 28.266380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469579, 0.474014, 0.744853,
		0.778120, -0.176430, 0.602829,
		0.417164, 0.862660, -0.285992,
		10.538909, 15.753284, 28.180582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641435, 15.399514, 28.918131>,  <10.246895, 15.149422, 28.380777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641435, 15.399514, 28.918131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.552452, 15.729886, 28.710918>,  <10.499063, 15.928109, 28.586592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.552452, 15.729886, 28.710918>,  <10.641435, 15.399514, 28.918131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552452, 15.729886, 28.710918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387653, 0.412602, 0.824309,
		0.894561, 0.384187, 0.228388,
		-0.222456, 0.825930, -0.518029,
		10.485716, 15.977665, 28.555510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740507, 15.978634, 29.358101>,  <10.641435, 15.399514, 28.918131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740507, 15.978634, 29.358101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.521919, 16.142889, 29.066143>,  <10.390766, 16.241442, 28.890968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.521919, 16.142889, 29.066143>,  <10.740507, 15.978634, 29.358101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521919, 16.142889, 29.066143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585602, 0.435687, 0.683555,
		0.598700, 0.800970, 0.002381,
		-0.546470, 0.410639, -0.729895,
		10.357978, 16.266081, 28.847174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.676574, 16.728611, 29.565304>,  <10.740507, 15.978634, 29.358101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.676574, 16.728611, 29.565304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.394468, 16.634575, 29.297771>,  <10.225204, 16.578154, 29.137253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.394468, 16.634575, 29.297771>,  <10.676574, 16.728611, 29.565304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.394468, 16.634575, 29.297771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679509, 0.493181, 0.543175,
		0.202161, 0.837559, -0.507568,
		-0.705265, -0.235089, -0.668831,
		10.182889, 16.564049, 29.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.327654, 17.324240, 29.416525>,  <10.676574, 16.728611, 29.565304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.327654, 17.324240, 29.416525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.052106, 17.047266, 29.330738>,  <9.886777, 16.881083, 29.279266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.052106, 17.047266, 29.330738>,  <10.327654, 17.324240, 29.416525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052106, 17.047266, 29.330738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682922, 0.520730, 0.512306,
		-0.243057, 0.499377, -0.831592,
		-0.688869, -0.692433, -0.214469,
		9.845446, 16.839537, 29.266397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.724725, 17.742147, 29.237810>,  <10.327654, 17.324240, 29.416525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.724725, 17.742147, 29.237810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.583089, 17.375443, 29.311750>,  <9.498107, 17.155420, 29.356115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.583089, 17.375443, 29.311750>,  <9.724725, 17.742147, 29.237810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583089, 17.375443, 29.311750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786134, 0.398837, 0.472147,
		-0.506571, 0.021865, -0.861921,
		-0.354090, -0.916761, 0.184850,
		9.476862, 17.100414, 29.367205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.938251, 17.736944, 28.984566>,  <9.724725, 17.742147, 29.237810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.938251, 17.736944, 28.984566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.985267, 17.428246, 29.234556>,  <9.013475, 17.243027, 29.384550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.985267, 17.428246, 29.234556>,  <8.938251, 17.736944, 28.984566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.985267, 17.428246, 29.234556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830262, 0.268914, 0.488211,
		-0.544839, -0.576276, -0.609144,
		0.117537, -0.771746, 0.624975,
		9.020528, 17.196722, 29.422049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.602978, 18.123684, 28.241402>,  <8.938251, 17.736944, 28.984566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.602978, 18.123684, 28.241402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.530100, 18.500586, 28.129002>,  <8.486373, 18.726727, 28.061562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.530100, 18.500586, 28.129002>,  <8.602978, 18.123684, 28.241402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.530100, 18.500586, 28.129002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603532, -0.118445, -0.788492,
		-0.776243, -0.313251, -0.547101,
		-0.182195, 0.942255, -0.281000,
		8.475442, 18.783262, 28.044703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.334661, 18.182781, 27.492960>,  <8.602978, 18.123684, 28.241402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.334661, 18.182781, 27.492960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.522742, 18.520691, 27.595148>,  <8.635591, 18.723436, 27.656462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.522742, 18.520691, 27.595148>,  <8.334661, 18.182781, 27.492960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.522742, 18.520691, 27.595148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480459, -0.002202, -0.877014,
		-0.740317, 0.535117, -0.406915,
		0.470202, 0.844775, 0.255472,
		8.663803, 18.774124, 27.671789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143644, 18.812698, 27.041666>,  <8.334661, 18.182781, 27.492960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143644, 18.812698, 27.041666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.514425, 18.791555, 27.190241>,  <8.736894, 18.778870, 27.279387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.514425, 18.791555, 27.190241>,  <8.143644, 18.812698, 27.041666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.514425, 18.791555, 27.190241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374569, 0.186753, -0.908197,
		-0.021364, 0.980984, 0.192909,
		0.926953, -0.052855, 0.371436,
		8.792511, 18.775700, 27.301672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.468047, 19.395779, 26.721560>,  <8.143644, 18.812698, 27.041666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.468047, 19.395779, 26.721560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.754139, 19.140509, 26.835529>,  <8.925794, 18.987347, 26.903912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.754139, 19.140509, 26.835529>,  <8.468047, 19.395779, 26.721560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.754139, 19.140509, 26.835529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427755, 0.077322, -0.900581,
		0.552696, 0.765999, 0.328286,
		0.715228, -0.638174, 0.284924,
		8.968707, 18.949057, 26.921007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.051062, 19.755228, 26.567818>,  <8.468047, 19.395779, 26.721560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.051062, 19.755228, 26.567818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.127641, 19.363380, 26.592113>,  <9.173589, 19.128271, 26.606691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.127641, 19.363380, 26.592113>,  <9.051062, 19.755228, 26.567818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127641, 19.363380, 26.592113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276373, -0.005576, -0.961035,
		0.941789, 0.200776, 0.269673,
		0.191449, -0.979622, 0.060740,
		9.185076, 19.069494, 26.610336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.587445, 19.686237, 26.198425>,  <9.051062, 19.755228, 26.567818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.587445, 19.686237, 26.198425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.433924, 19.317020, 26.208916>,  <9.341811, 19.095490, 26.215210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.433924, 19.317020, 26.208916>,  <9.587445, 19.686237, 26.198425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.433924, 19.317020, 26.208916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190018, -0.106738, -0.975961,
		0.903653, -0.369594, 0.216361,
		-0.383803, -0.923043, 0.026224,
		9.318783, 19.040108, 26.216784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.029655, 19.279312, 25.773340>,  <9.587445, 19.686237, 26.198425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.029655, 19.279312, 25.773340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.690091, 19.069071, 25.795576>,  <9.486352, 18.942926, 25.808918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.690091, 19.069071, 25.795576>,  <10.029655, 19.279312, 25.773340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.690091, 19.069071, 25.795576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023900, -0.143242, -0.989399,
		0.527995, -0.838583, 0.134162,
		-0.848911, -0.525604, 0.055589,
		9.435418, 18.911390, 25.812252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.850216, 19.115467, 25.767511>,  <10.029655, 19.279312, 25.773340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.850216, 19.115467, 25.767511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.939651, 19.500999, 25.709496>,  <10.993313, 19.732319, 25.674686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.939651, 19.500999, 25.709496>,  <10.850216, 19.115467, 25.767511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.939651, 19.500999, 25.709496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222569, 0.195363, 0.955142,
		0.948931, -0.181279, 0.258200,
		0.223590, 0.963832, -0.145039,
		11.006728, 19.790150, 25.665983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.385310, 19.288408, 26.152014>,  <10.850216, 19.115467, 25.767511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.385310, 19.288408, 26.152014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.250361, 19.658154, 26.080759>,  <11.169392, 19.880001, 26.038006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.250361, 19.658154, 26.080759>,  <11.385310, 19.288408, 26.152014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250361, 19.658154, 26.080759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089060, 0.219725, 0.971488,
		0.937149, 0.311888, -0.156452,
		-0.337372, 0.924363, -0.178138,
		11.149150, 19.935463, 26.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.783679, 19.735819, 26.549570>,  <11.385310, 19.288408, 26.152014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.783679, 19.735819, 26.549570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.455313, 19.948008, 26.465006>,  <11.258293, 20.075321, 26.414267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.455313, 19.948008, 26.465006>,  <11.783679, 19.735819, 26.549570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455313, 19.948008, 26.465006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019058, 0.395459, 0.918286,
		0.570730, 0.749807, -0.334749,
		-0.820916, 0.530473, -0.211410,
		11.209038, 20.107149, 26.401583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974696, 20.398514, 26.787848>,  <11.783679, 19.735819, 26.549570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974696, 20.398514, 26.787848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.577853, 20.349268, 26.778343>,  <11.339747, 20.319721, 26.772640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.577853, 20.349268, 26.778343>,  <11.974696, 20.398514, 26.787848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577853, 20.349268, 26.778343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062363, 0.320096, 0.945330,
		-0.108777, 0.939352, -0.325247,
		-0.992108, -0.123114, -0.023762,
		11.280221, 20.312334, 26.771215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702568, 21.033230, 26.927032>,  <11.974696, 20.398514, 26.787848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702568, 21.033230, 26.927032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.396746, 20.784220, 26.993868>,  <11.213252, 20.634813, 27.033968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.396746, 20.784220, 26.993868>,  <11.702568, 21.033230, 26.927032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396746, 20.784220, 26.993868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156205, 0.430452, 0.888995,
		-0.625344, 0.653586, -0.426346,
		-0.764556, -0.622524, 0.167087,
		11.167379, 20.597462, 27.043993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.167155, 21.453592, 27.086824>,  <11.702568, 21.033230, 26.927032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.167155, 21.453592, 27.086824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.060113, 21.096869, 27.232735>,  <10.995888, 20.882833, 27.320282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.060113, 21.096869, 27.232735>,  <11.167155, 21.453592, 27.086824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.060113, 21.096869, 27.232735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287396, 0.435229, 0.853217,
		-0.919669, 0.123490, -0.372772,
		-0.267605, -0.891810, 0.364777,
		10.979832, 20.829325, 27.342167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.540390, 21.561255, 27.384453>,  <11.167155, 21.453592, 27.086824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.540390, 21.561255, 27.384453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.633284, 21.207783, 27.547020>,  <10.689019, 20.995699, 27.644560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.633284, 21.207783, 27.547020>,  <10.540390, 21.561255, 27.384453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.633284, 21.207783, 27.547020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208421, 0.362924, 0.908211,
		-0.950068, -0.295622, -0.099895,
		0.232233, -0.883682, 0.406417,
		10.702953, 20.942678, 27.668945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073697, 21.439005, 27.894022>,  <10.540390, 21.561255, 27.384453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073697, 21.439005, 27.894022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.381147, 21.193819, 27.967222>,  <10.565618, 21.046707, 28.011143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.381147, 21.193819, 27.967222>,  <10.073697, 21.439005, 27.894022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.381147, 21.193819, 27.967222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019981, 0.308940, 0.950871,
		-0.639387, -0.727207, 0.249707,
		0.768625, -0.612965, 0.183002,
		10.611735, 21.009930, 28.022123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.918980, 21.148609, 28.539059>,  <10.073697, 21.439005, 27.894022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.918980, 21.148609, 28.539059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.313525, 21.110359, 28.485477>,  <10.550252, 21.087410, 28.453329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.313525, 21.110359, 28.485477>,  <9.918980, 21.148609, 28.539059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.313525, 21.110359, 28.485477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159858, 0.363022, 0.917965,
		-0.039151, -0.926861, 0.373358,
		0.986364, -0.095624, -0.133954,
		10.609434, 21.081673, 28.445292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.384398, 14.857818, 14.142647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757769, 14.802689, 14.275144>,  <14.981791, 14.769611, 14.354642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757769, 14.802689, 14.275144>,  <14.384398, 14.857818, 14.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.757769, 14.802689, 14.275144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255240, 0.393729, 0.883080,
		-0.252128, -0.908836, 0.332339,
		0.933426, -0.137823, 0.331241,
		15.037796, 14.761342, 14.374516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305869, 14.442171, 14.773461>,  <14.384398, 14.857818, 14.142647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305869, 14.442171, 14.773461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649302, 14.645715, 14.798435>,  <14.855361, 14.767841, 14.813419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649302, 14.645715, 14.798435>,  <14.305869, 14.442171, 14.773461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649302, 14.645715, 14.798435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229622, 0.272803, 0.934266,
		0.458379, -0.816480, 0.351069,
		0.858581, 0.508861, 0.062434,
		14.906877, 14.798373, 14.817165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601548, 14.194263, 15.366028>,  <14.305869, 14.442171, 14.773461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601548, 14.194263, 15.366028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736209, 14.558067, 15.268492>,  <14.817005, 14.776350, 15.209970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736209, 14.558067, 15.268492>,  <14.601548, 14.194263, 15.366028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736209, 14.558067, 15.268492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217409, 0.327035, 0.919664,
		0.916187, -0.256593, 0.307833,
		0.336651, 0.909510, -0.243840,
		14.837204, 14.830920, 15.195340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557291, 14.475640, 16.002977>,  <14.601548, 14.194263, 15.366028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.557291, 14.475640, 16.002977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632375, 14.787639, 15.764190>,  <14.677425, 14.974837, 15.620917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632375, 14.787639, 15.764190>,  <14.557291, 14.475640, 16.002977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632375, 14.787639, 15.764190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365944, 0.619551, 0.694436,
		0.911510, 0.088105, 0.401730,
		0.187709, 0.779996, -0.596969,
		14.688687, 15.021638, 15.585099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893905, 15.045531, 16.398947>,  <14.557291, 14.475640, 16.002977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893905, 15.045531, 16.398947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722811, 15.224716, 16.084909>,  <14.620154, 15.332227, 15.896487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722811, 15.224716, 16.084909>,  <14.893905, 15.045531, 16.398947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722811, 15.224716, 16.084909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343290, 0.722975, 0.599549,
		0.836178, 0.525964, -0.155461,
		-0.427736, 0.447962, -0.785094,
		14.594490, 15.359105, 15.849381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198859, 15.656084, 16.385300>,  <14.893905, 15.045531, 16.398947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198859, 15.656084, 16.385300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847533, 15.674446, 16.194950>,  <14.636738, 15.685464, 16.080740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847533, 15.674446, 16.194950>,  <15.198859, 15.656084, 16.385300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847533, 15.674446, 16.194950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244104, 0.812789, 0.528949,
		0.411065, 0.580747, -0.702680,
		-0.878316, 0.045906, -0.475872,
		14.584039, 15.688218, 16.052189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136203, 16.286703, 16.374329>,  <15.198859, 15.656084, 16.385300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136203, 16.286703, 16.374329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761635, 16.160677, 16.312550>,  <14.536894, 16.085062, 16.275482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761635, 16.160677, 16.312550>,  <15.136203, 16.286703, 16.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761635, 16.160677, 16.312550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341923, 0.720510, 0.603285,
		-0.078791, 0.617737, -0.782427,
		-0.936419, -0.315064, -0.154449,
		14.480709, 16.066158, 16.266214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730277, 16.918161, 16.205194>,  <15.136203, 16.286703, 16.374329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730277, 16.918161, 16.205194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459952, 16.642996, 16.311064>,  <14.297757, 16.477896, 16.374586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459952, 16.642996, 16.311064>,  <14.730277, 16.918161, 16.205194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459952, 16.642996, 16.311064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538624, 0.706043, 0.459768,
		-0.503152, 0.168157, -0.847680,
		-0.675812, -0.687914, 0.264673,
		14.257209, 16.436621, 16.390467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078796, 17.273800, 16.141235>,  <14.730277, 16.918161, 16.205194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078796, 17.273800, 16.141235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010280, 16.960850, 16.380751>,  <13.969170, 16.773079, 16.524460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010280, 16.960850, 16.380751>,  <14.078796, 17.273800, 16.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010280, 16.960850, 16.380751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478964, 0.597246, 0.643344,
		-0.860960, -0.176599, -0.477033,
		-0.171292, -0.782375, 0.598789,
		13.958892, 16.726137, 16.560387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447513, 17.461050, 16.420622>,  <14.078796, 17.273800, 16.141235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447513, 17.461050, 16.420622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551579, 17.151318, 16.651352>,  <13.614019, 16.965479, 16.789789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551579, 17.151318, 16.651352>,  <13.447513, 17.461050, 16.420622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551579, 17.151318, 16.651352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547733, 0.373621, 0.748596,
		-0.795174, -0.510705, -0.326923,
		0.260167, -0.774331, 0.576823,
		13.629629, 16.919018, 16.824398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825260, 17.139748, 16.617743>,  <13.447513, 17.461050, 16.420622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825260, 17.139748, 16.617743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124582, 17.083992, 16.877159>,  <13.304175, 17.050539, 17.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124582, 17.083992, 16.877159>,  <12.825260, 17.139748, 16.617743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124582, 17.083992, 16.877159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464945, 0.587127, 0.662653,
		-0.473143, -0.797404, 0.374543,
		0.748306, -0.139388, 0.648544,
		13.349074, 17.042175, 17.071722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511342, 16.942448, 17.394526>,  <12.825260, 17.139748, 16.617743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511342, 16.942448, 17.394526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.875404, 17.102098, 17.438913>,  <13.093842, 17.197889, 17.465546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.875404, 17.102098, 17.438913>,  <12.511342, 16.942448, 17.394526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.875404, 17.102098, 17.438913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313037, 0.487170, 0.815275,
		0.271339, -0.776764, 0.568342,
		0.910156, 0.399128, 0.110968,
		13.148451, 17.221836, 17.472204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.990638, 16.409565, 17.743702>,  <12.511342, 16.942448, 17.394526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.990638, 16.409565, 17.743702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.628309, 16.533520, 17.628145>,  <11.410913, 16.607893, 17.558811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.628309, 16.533520, 17.628145>,  <11.990638, 16.409565, 17.743702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628309, 16.533520, 17.628145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132626, -0.440207, -0.888047,
		-0.402364, -0.842727, 0.357650,
		-0.905822, 0.309885, -0.288891,
		11.356564, 16.626486, 17.541477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573359, 15.833920, 17.606289>,  <11.990638, 16.409565, 17.743702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573359, 15.833920, 17.606289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407452, 16.129278, 17.393597>,  <11.307908, 16.306494, 17.265982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407452, 16.129278, 17.393597>,  <11.573359, 15.833920, 17.606289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407452, 16.129278, 17.393597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019934, -0.591600, -0.805984,
		-0.909709, -0.323696, 0.260095,
		-0.414766, 0.738397, -0.531732,
		11.283022, 16.350798, 17.234077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239941, 15.432627, 17.132248>,  <11.573359, 15.833920, 17.606289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239941, 15.432627, 17.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.219427, 15.803673, 16.984247>,  <11.207119, 16.026300, 16.895447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.219427, 15.803673, 16.984247>,  <11.239941, 15.432627, 17.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219427, 15.803673, 16.984247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077488, -0.365676, -0.927511,
		-0.995673, -0.076238, -0.053126,
		-0.051285, 0.927615, -0.370002,
		11.204041, 16.081957, 16.873247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734739, 15.390590, 16.595118>,  <11.239941, 15.432627, 17.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734739, 15.390590, 16.595118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958122, 15.714589, 16.523533>,  <11.092152, 15.908989, 16.480581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958122, 15.714589, 16.523533>,  <10.734739, 15.390590, 16.595118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.958122, 15.714589, 16.523533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270796, -0.381932, -0.883627,
		-0.784088, 0.445006, -0.432638,
		0.558458, 0.809998, -0.178962,
		11.125660, 15.957588, 16.469845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.444280, 15.703311, 15.962317>,  <10.734739, 15.390590, 16.595118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.444280, 15.703311, 15.962317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.821250, 15.833868, 15.991441>,  <11.047432, 15.912202, 16.008915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.821250, 15.833868, 15.991441>,  <10.444280, 15.703311, 15.962317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.821250, 15.833868, 15.991441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231808, -0.480663, -0.845711,
		-0.241035, 0.813899, -0.528650,
		0.942426, 0.326392, 0.072811,
		11.103978, 15.931786, 16.013285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618112, 15.814576, 15.315386>,  <10.444280, 15.703311, 15.962317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618112, 15.814576, 15.315386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.971465, 15.785600, 15.500593>,  <11.183477, 15.768214, 15.611718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.971465, 15.785600, 15.500593>,  <10.618112, 15.814576, 15.315386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.971465, 15.785600, 15.500593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385273, -0.450266, -0.805497,
		0.266832, 0.889951, -0.369848,
		0.883383, -0.072440, 0.463019,
		11.236480, 15.763867, 15.639499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.143806, 16.198267, 14.819159>,  <10.618112, 15.814576, 15.315386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.143806, 16.198267, 14.819159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.299172, 15.916555, 15.056856>,  <11.392392, 15.747528, 15.199474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.299172, 15.916555, 15.056856>,  <11.143806, 16.198267, 14.819159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.299172, 15.916555, 15.056856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451309, -0.416848, -0.789023,
		0.803402, 0.574655, 0.155938,
		0.388414, -0.704279, 0.594244,
		11.415696, 15.705272, 15.235129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.572070, 15.837465, 14.455732>,  <11.143806, 16.198267, 14.819159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.572070, 15.837465, 14.455732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621745, 15.584288, 14.761401>,  <11.651550, 15.432381, 14.944802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621745, 15.584288, 14.761401>,  <11.572070, 15.837465, 14.455732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621745, 15.584288, 14.761401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467532, -0.641961, -0.607700,
		0.875209, 0.432743, 0.216200,
		0.124186, -0.632945, 0.764172,
		11.659001, 15.394404, 14.990653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231913, 15.537223, 14.500043>,  <11.572070, 15.837465, 14.455732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231913, 15.537223, 14.500043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054935, 15.267837, 14.736918>,  <11.948749, 15.106205, 14.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054935, 15.267837, 14.736918>,  <12.231913, 15.537223, 14.500043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.054935, 15.267837, 14.736918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450186, -0.737900, -0.502828,
		0.775613, 0.044122, 0.629664,
		-0.442443, -0.673466, 0.592188,
		11.922202, 15.065797, 14.914575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780590, 15.023981, 14.682869>,  <12.231913, 15.537223, 14.500043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780590, 15.023981, 14.682869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417765, 14.858588, 14.714545>,  <12.200069, 14.759353, 14.733551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417765, 14.858588, 14.714545>,  <12.780590, 15.023981, 14.682869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417765, 14.858588, 14.714545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307820, -0.779702, -0.545263,
		0.287202, -0.470211, 0.834516,
		-0.907062, -0.413481, 0.079191,
		12.145646, 14.734544, 14.738302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.906895, 14.407254, 14.702659>,  <12.780590, 15.023981, 14.682869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.906895, 14.407254, 14.702659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519165, 14.391806, 14.605567>,  <12.286527, 14.382537, 14.547312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519165, 14.391806, 14.605567>,  <12.906895, 14.407254, 14.702659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519165, 14.391806, 14.605567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186169, -0.760145, -0.622512,
		-0.160467, -0.648605, 0.744018,
		-0.969325, -0.038620, -0.242728,
		12.228368, 14.380219, 14.532748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648622, 13.699837, 14.772204>,  <12.906895, 14.407254, 14.702659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648622, 13.699837, 14.772204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.402332, 13.889452, 14.520436>,  <12.254559, 14.003222, 14.369375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.402332, 13.889452, 14.520436>,  <12.648622, 13.699837, 14.772204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.402332, 13.889452, 14.520436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160732, -0.706441, -0.689279,
		-0.771396, -0.525573, 0.358778,
		-0.615722, 0.474040, -0.629422,
		12.217615, 14.031664, 14.331610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032955, 13.302994, 14.493559>,  <12.648622, 13.699837, 14.772204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032955, 13.302994, 14.493559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.257813, 13.552073, 14.275846>,  <12.392729, 13.701520, 14.145219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.257813, 13.552073, 14.275846>,  <12.032955, 13.302994, 14.493559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.257813, 13.552073, 14.275846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237106, -0.751826, -0.615254,
		-0.792320, 0.216811, -0.570282,
		0.562147, 0.622696, -0.544280,
		12.426457, 13.738881, 14.112562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.219701, 12.621681, 14.731527>,  <12.032955, 13.302994, 14.493559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.219701, 12.621681, 14.731527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938004, 12.889545, 14.825842>,  <11.768985, 13.050264, 14.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938004, 12.889545, 14.825842>,  <12.219701, 12.621681, 14.731527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938004, 12.889545, 14.825842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518670, -0.258511, -0.814956,
		-0.484791, -0.696223, 0.529388,
		-0.704243, 0.669661, 0.235786,
		11.726730, 13.090444, 14.896578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.984988, 12.260432, 15.280070>,  <12.219701, 12.621681, 14.731527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.984988, 12.260432, 15.280070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.005570, 11.870629, 15.367420>,  <12.017920, 11.636747, 15.419830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.005570, 11.870629, 15.367420>,  <11.984988, 12.260432, 15.280070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005570, 11.870629, 15.367420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058368, 0.215357, 0.974789,
		-0.996968, -0.062905, -0.045799,
		0.051456, -0.974507, 0.218376,
		12.021008, 11.578278, 15.432933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593315, 12.275549, 15.856310>,  <11.984988, 12.260432, 15.280070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593315, 12.275549, 15.856310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800416, 11.933450, 15.847514>,  <11.924677, 11.728190, 15.842237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800416, 11.933450, 15.847514>,  <11.593315, 12.275549, 15.856310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800416, 11.933450, 15.847514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094291, 0.031499, 0.995046,
		-0.850318, -0.517261, 0.096951,
		0.517752, -0.855248, -0.021989,
		11.955742, 11.676875, 15.840918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154656, 11.876183, 16.125153>,  <11.593315, 12.275549, 15.856310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154656, 11.876183, 16.125153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551549, 11.838865, 16.158075>,  <11.789684, 11.816475, 16.177830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551549, 11.838865, 16.158075>,  <11.154656, 11.876183, 16.125153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551549, 11.838865, 16.158075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075879, 0.070475, 0.994623,
		-0.098595, -0.993141, 0.062848,
		0.992230, -0.093296, 0.082307,
		11.849218, 11.810877, 16.182768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.269381, 11.462006, 16.578829>,  <11.154656, 11.876183, 16.125153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.269381, 11.462006, 16.578829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639972, 11.612106, 16.590317>,  <11.862327, 11.702167, 16.597210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639972, 11.612106, 16.590317>,  <11.269381, 11.462006, 16.578829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.639972, 11.612106, 16.590317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011816, -0.047272, 0.998812,
		0.376164, -0.925717, -0.039362,
		0.926478, 0.375252, 0.028721,
		11.917915, 11.724682, 16.598932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.784937, 11.101208, 17.080690>,  <11.269381, 11.462006, 16.578829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.784937, 11.101208, 17.080690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955042, 11.458503, 17.022345>,  <12.057105, 11.672880, 16.987337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955042, 11.458503, 17.022345>,  <11.784937, 11.101208, 17.080690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955042, 11.458503, 17.022345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242040, 0.043054, 0.969310,
		0.872105, -0.447517, -0.197890,
		0.425263, 0.893239, -0.145864,
		12.082621, 11.726475, 16.978586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394950, 11.120164, 17.516714>,  <11.784937, 11.101208, 17.080690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394950, 11.120164, 17.516714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375641, 11.515480, 17.458815>,  <12.364056, 11.752669, 17.424074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375641, 11.515480, 17.458815>,  <12.394950, 11.120164, 17.516714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375641, 11.515480, 17.458815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257683, 0.152335, 0.954146,
		0.965023, 0.008760, -0.262019,
		-0.048273, 0.988290, -0.144750,
		12.361159, 11.811967, 17.415390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897269, 11.389064, 18.027000>,  <12.394950, 11.120164, 17.516714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897269, 11.389064, 18.027000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.673603, 11.695228, 17.899576>,  <12.539403, 11.878926, 17.823122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.673603, 11.695228, 17.899576>,  <12.897269, 11.389064, 18.027000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.673603, 11.695228, 17.899576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087974, 0.436856, 0.895219,
		0.824375, 0.472550, -0.311611,
		-0.559165, 0.765410, -0.318561,
		12.505854, 11.924850, 17.804008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231351, 12.017351, 18.206524>,  <12.897269, 11.389064, 18.027000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231351, 12.017351, 18.206524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839988, 12.092710, 18.172520>,  <12.605170, 12.137924, 18.152117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839988, 12.092710, 18.172520>,  <13.231351, 12.017351, 18.206524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839988, 12.092710, 18.172520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017181, 0.335744, 0.941797,
		0.205972, 0.922921, -0.325257,
		-0.978407, 0.188396, -0.085011,
		12.546466, 12.149228, 18.147017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092866, 12.713161, 18.610575>,  <13.231351, 12.017351, 18.206524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092866, 12.713161, 18.610575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747355, 12.519080, 18.556213>,  <12.540050, 12.402632, 18.523598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747355, 12.519080, 18.556213>,  <13.092866, 12.713161, 18.610575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747355, 12.519080, 18.556213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310214, 0.299544, 0.902242,
		-0.397062, 0.821493, -0.409256,
		-0.863776, -0.485203, -0.135901,
		12.488223, 12.373519, 18.515444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.559610, 13.127542, 18.749866>,  <13.092866, 12.713161, 18.610575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.559610, 13.127542, 18.749866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364875, 12.780988, 18.794344>,  <12.248034, 12.573055, 18.821032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364875, 12.780988, 18.794344>,  <12.559610, 13.127542, 18.749866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364875, 12.780988, 18.794344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380777, 0.325067, 0.865645,
		-0.786128, 0.379089, -0.488155,
		-0.486839, -0.866385, 0.111196,
		12.218823, 12.521072, 18.827703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841975, 13.334608, 18.835350>,  <12.559610, 13.127542, 18.749866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841975, 13.334608, 18.835350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903393, 12.966718, 18.979866>,  <11.940244, 12.745983, 19.066576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903393, 12.966718, 18.979866>,  <11.841975, 13.334608, 18.835350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903393, 12.966718, 18.979866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337981, 0.294690, 0.893827,
		-0.928543, -0.259350, -0.265602,
		0.153544, -0.919725, 0.361288,
		11.949456, 12.690800, 19.088253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250764, 13.140622, 19.146992>,  <11.841975, 13.334608, 18.835350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250764, 13.140622, 19.146992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.495691, 12.869222, 19.309326>,  <11.642648, 12.706382, 19.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.495691, 12.869222, 19.309326>,  <11.250764, 13.140622, 19.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.495691, 12.869222, 19.309326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313062, 0.263280, 0.912511,
		-0.725988, -0.685799, -0.051201,
		0.612318, -0.678501, 0.405836,
		11.679387, 12.665671, 19.431076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920528, 12.718119, 19.643305>,  <11.250764, 13.140622, 19.146992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920528, 12.718119, 19.643305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300401, 12.681339, 19.763071>,  <11.528324, 12.659272, 19.834930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300401, 12.681339, 19.763071>,  <10.920528, 12.718119, 19.643305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.300401, 12.681339, 19.763071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271385, 0.235720, 0.933159,
		-0.156381, -0.967461, 0.198905,
		0.949682, -0.091948, 0.299416,
		11.585305, 12.653755, 19.852896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.909913, 12.443501, 20.301023>,  <10.920528, 12.718119, 19.643305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.909913, 12.443501, 20.301023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.284492, 12.582826, 20.317753>,  <11.509238, 12.666421, 20.327789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.284492, 12.582826, 20.317753>,  <10.909913, 12.443501, 20.301023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.284492, 12.582826, 20.317753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054034, 0.025416, 0.998216,
		0.346629, -0.937034, 0.042622,
		0.936445, 0.348313, 0.041822,
		11.565425, 12.687320, 20.330299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146141, 12.043751, 20.770294>,  <10.909913, 12.443501, 20.301023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146141, 12.043751, 20.770294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385177, 12.362916, 20.738743>,  <11.528598, 12.554416, 20.719812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385177, 12.362916, 20.738743>,  <11.146141, 12.043751, 20.770294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385177, 12.362916, 20.738743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046457, 0.132670, 0.990071,
		0.800456, -0.587990, 0.116351,
		0.597588, 0.797914, -0.078880,
		11.564453, 12.602290, 20.715078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.676200, 11.907178, 21.256842>,  <11.146141, 12.043751, 20.770294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.676200, 11.907178, 21.256842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638042, 12.302322, 21.207802>,  <11.615149, 12.539409, 21.178379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638042, 12.302322, 21.207802>,  <11.676200, 11.907178, 21.256842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638042, 12.302322, 21.207802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067406, 0.129288, 0.989313,
		0.993155, 0.086110, -0.078921,
		-0.095393, 0.987861, -0.122598,
		11.609425, 12.598680, 21.171022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.157406, 12.240486, 21.779898>,  <11.676200, 11.907178, 21.256842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.157406, 12.240486, 21.779898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856046, 12.489930, 21.696472>,  <11.675230, 12.639597, 21.646418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856046, 12.489930, 21.696472>,  <12.157406, 12.240486, 21.779898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.856046, 12.489930, 21.696472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154960, 0.139865, 0.977970,
		0.639043, 0.769121, -0.008740,
		-0.753400, 0.623611, -0.208563,
		11.630026, 12.677013, 21.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.333084, 12.792934, 22.106926>,  <12.157406, 12.240486, 21.779898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.333084, 12.792934, 22.106926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948292, 12.882168, 22.043898>,  <11.717417, 12.935708, 22.006081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948292, 12.882168, 22.043898>,  <12.333084, 12.792934, 22.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948292, 12.882168, 22.043898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018120, 0.523528, 0.851816,
		0.272517, 0.822285, -0.499581,
		-0.961980, 0.223082, -0.157570,
		11.659698, 12.949093, 21.996626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366212, 13.440833, 22.355957>,  <12.333084, 12.792934, 22.106926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.366212, 13.440833, 22.355957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976883, 13.349072, 22.354191>,  <11.743286, 13.294016, 22.353130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976883, 13.349072, 22.354191>,  <12.366212, 13.440833, 22.355957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.976883, 13.349072, 22.354191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152965, 0.634427, 0.757697,
		-0.171016, 0.738158, -0.652592,
		-0.973322, -0.229402, -0.004415,
		11.684886, 13.280252, 22.352867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.136765, 14.088756, 22.403038>,  <12.366212, 13.440833, 22.355957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.136765, 14.088756, 22.403038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852692, 13.826625, 22.505945>,  <11.682248, 13.669347, 22.567690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852692, 13.826625, 22.505945>,  <12.136765, 14.088756, 22.403038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852692, 13.826625, 22.505945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140610, 0.490101, 0.860250,
		-0.689833, 0.574760, -0.440207,
		-0.710183, -0.655326, 0.257270,
		11.639637, 13.630027, 22.583126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.640531, 14.420700, 22.628124>,  <12.136765, 14.088756, 22.403038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.640531, 14.420700, 22.628124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589231, 14.058612, 22.790174>,  <11.558451, 13.841358, 22.887403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589231, 14.058612, 22.790174>,  <11.640531, 14.420700, 22.628124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.589231, 14.058612, 22.790174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160462, 0.422056, 0.892256,
		-0.978675, 0.049424, -0.199382,
		-0.128249, -0.905222, 0.405124,
		11.550756, 13.787045, 22.911713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.199275, 14.607706, 23.137197>,  <11.640531, 14.420700, 22.628124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.199275, 14.607706, 23.137197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336665, 14.251369, 23.256142>,  <11.419099, 14.037566, 23.327509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336665, 14.251369, 23.256142>,  <11.199275, 14.607706, 23.137197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336665, 14.251369, 23.256142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199669, 0.378653, 0.903745,
		-0.917691, -0.251040, 0.307931,
		0.343475, -0.890843, 0.297362,
		11.439708, 13.984116, 23.345350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835724, 14.383418, 23.815119>,  <11.199275, 14.607706, 23.137197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835724, 14.383418, 23.815119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.161543, 14.151416, 23.811047>,  <11.357035, 14.012215, 23.808603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.161543, 14.151416, 23.811047>,  <10.835724, 14.383418, 23.815119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.161543, 14.151416, 23.811047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111413, 0.139194, 0.983978,
		-0.569296, -0.802632, 0.178000,
		0.814548, -0.580006, -0.010181,
		11.405908, 13.977414, 23.807993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.717668, 13.917786, 24.324203>,  <10.835724, 14.383418, 23.815119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.717668, 13.917786, 24.324203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.112320, 13.874488, 24.275471>,  <11.349112, 13.848509, 24.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.112320, 13.874488, 24.275471>,  <10.717668, 13.917786, 24.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.112320, 13.874488, 24.275471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144276, 0.232458, 0.961846,
		-0.075794, -0.966564, 0.244968,
		0.986630, -0.108245, -0.121833,
		11.408309, 13.842014, 24.238920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.948018, 13.441665, 24.866985>,  <10.717668, 13.917786, 24.324203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.948018, 13.441665, 24.866985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278299, 13.642964, 24.765041>,  <11.476468, 13.763744, 24.703875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278299, 13.642964, 24.765041>,  <10.948018, 13.441665, 24.866985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278299, 13.642964, 24.765041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185948, 0.183723, 0.965230,
		0.532576, -0.844385, 0.058123,
		0.825704, 0.503250, -0.254858,
		11.526011, 13.793940, 24.688583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.475144, 13.210788, 25.266811>,  <10.948018, 13.441665, 24.866985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.475144, 13.210788, 25.266811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583671, 13.570176, 25.128746>,  <11.648787, 13.785810, 25.045908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583671, 13.570176, 25.128746>,  <11.475144, 13.210788, 25.266811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583671, 13.570176, 25.128746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317555, 0.254971, 0.913317,
		0.908596, -0.357406, -0.216136,
		0.271316, 0.898472, -0.345161,
		11.665066, 13.839718, 25.025198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104271, 13.373757, 25.573040>,  <11.475144, 13.210788, 25.266811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104271, 13.373757, 25.573040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938269, 13.716881, 25.451757>,  <11.838668, 13.922755, 25.378988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938269, 13.716881, 25.451757>,  <12.104271, 13.373757, 25.573040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938269, 13.716881, 25.451757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316782, 0.448644, 0.835684,
		0.852889, 0.250762, -0.457929,
		-0.415005, 0.857809, -0.303207,
		11.813767, 13.974223, 25.360796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516880, 13.886984, 25.952215>,  <12.104271, 13.373757, 25.573040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516880, 13.886984, 25.952215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189984, 14.082191, 25.829605>,  <11.993847, 14.199314, 25.756039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189984, 14.082191, 25.829605>,  <12.516880, 13.886984, 25.952215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189984, 14.082191, 25.829605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104627, 0.648692, 0.753825,
		0.566720, 0.583985, -0.581197,
		-0.817240, 0.488016, -0.306526,
		11.944812, 14.228596, 25.737648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
