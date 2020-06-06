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
	<24.293400, 34.478279, 34.899837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338179, 34.840160, 34.735409>,  <24.365046, 35.057289, 34.636753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338179, 34.840160, 34.735409>,  <24.293400, 34.478279, 34.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338179, 34.840160, 34.735409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792629, 0.168200, 0.586044,
		0.599338, -0.391430, -0.698266,
		0.111947, 0.904705, -0.411068,
		24.371763, 35.111572, 34.612087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908468, 34.621346, 34.424389>,  <24.293400, 34.478279, 34.899837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908468, 34.621346, 34.424389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777969, 34.920219, 34.656002>,  <24.699671, 35.099545, 34.794968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777969, 34.920219, 34.656002>,  <24.908468, 34.621346, 34.424389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777969, 34.920219, 34.656002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842450, -0.048019, 0.536631,
		0.428767, 0.662879, -0.613800,
		-0.326248, 0.747185, 0.579031,
		24.680096, 35.144375, 34.829712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406128, 35.249313, 34.468063>,  <24.908468, 34.621346, 34.424389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406128, 35.249313, 34.468063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193785, 35.199944, 34.803432>,  <25.066378, 35.170322, 35.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193785, 35.199944, 34.803432>,  <25.406128, 35.249313, 34.468063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193785, 35.199944, 34.803432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845955, -0.136111, 0.515591,
		0.050479, 0.982975, 0.176671,
		-0.530859, -0.123429, 0.838423,
		25.034527, 35.162914, 35.054958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841330, 35.462051, 34.864082>,  <25.406128, 35.249313, 34.468063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841330, 35.462051, 34.864082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623003, 35.240677, 35.115730>,  <25.492006, 35.107853, 35.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623003, 35.240677, 35.115730>,  <25.841330, 35.462051, 34.864082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623003, 35.240677, 35.115730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830024, -0.254396, 0.496329,
		-0.114643, 0.793088, 0.598221,
		-0.545817, -0.553439, 0.629118,
		25.459257, 35.074646, 35.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860012, 35.623173, 35.689514>,  <25.841330, 35.462051, 34.864082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860012, 35.623173, 35.689514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816198, 35.231014, 35.624004>,  <25.789911, 34.995720, 35.584698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816198, 35.231014, 35.624004>,  <25.860012, 35.623173, 35.689514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816198, 35.231014, 35.624004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910218, -0.165133, 0.379781,
		-0.399381, -0.107472, 0.910464,
		-0.109532, -0.980398, -0.163774,
		25.783339, 34.936893, 35.574871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194332, 35.328239, 36.342808>,  <25.860012, 35.623173, 35.689514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194332, 35.328239, 36.342808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153946, 35.040394, 36.068008>,  <26.129715, 34.867687, 35.903130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153946, 35.040394, 36.068008>,  <26.194332, 35.328239, 36.342808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153946, 35.040394, 36.068008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862515, -0.407471, 0.300058,
		-0.495856, -0.562250, 0.661817,
		-0.100963, -0.719613, -0.686996,
		26.123657, 34.824509, 35.861908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340067, 34.515438, 36.586655>,  <26.194332, 35.328239, 36.342808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340067, 34.515438, 36.586655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426237, 34.610161, 36.207706>,  <26.477940, 34.666992, 35.980335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426237, 34.610161, 36.207706>,  <26.340067, 34.515438, 36.586655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426237, 34.610161, 36.207706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910555, -0.399230, 0.107263,
		-0.352819, -0.885742, -0.301627,
		0.215426, 0.236803, -0.947373,
		26.490866, 34.681202, 35.923496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525009, 33.988758, 36.173332>,  <26.340067, 34.515438, 36.586655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525009, 33.988758, 36.173332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700779, 34.304314, 36.001492>,  <26.806242, 34.493649, 35.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700779, 34.304314, 36.001492>,  <26.525009, 33.988758, 36.173332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700779, 34.304314, 36.001492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868864, -0.494661, -0.019628,
		-0.227991, -0.364641, -0.902805,
		0.439425, 0.788890, -0.429601,
		26.832607, 34.540981, 35.872612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002314, 33.724522, 35.749043>,  <26.525009, 33.988758, 36.173332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002314, 33.724522, 35.749043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136681, 34.100018, 35.779823>,  <27.217300, 34.325317, 35.798290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136681, 34.100018, 35.779823>,  <27.002314, 33.724522, 35.749043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136681, 34.100018, 35.779823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931531, -0.343195, 0.120279,
		0.139321, 0.031280, -0.989753,
		0.335916, 0.938743, 0.076952,
		27.237455, 34.381641, 35.802910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518614, 33.818291, 35.283741>,  <27.002314, 33.724522, 35.749043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518614, 33.818291, 35.283741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573544, 34.094051, 35.568237>,  <27.606501, 34.259506, 35.738937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573544, 34.094051, 35.568237>,  <27.518614, 33.818291, 35.283741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573544, 34.094051, 35.568237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928348, -0.339974, 0.150291,
		0.345415, 0.639645, -0.686690,
		0.137324, 0.689400, 0.711245,
		27.614740, 34.300873, 35.781612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082722, 34.161560, 35.056046>,  <27.518614, 33.818291, 35.283741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082722, 34.161560, 35.056046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037291, 34.200275, 35.451569>,  <28.010031, 34.223503, 35.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037291, 34.200275, 35.451569>,  <28.082722, 34.161560, 35.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037291, 34.200275, 35.451569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955123, -0.263404, 0.135495,
		0.273570, 0.959818, -0.062529,
		-0.113580, 0.096790, 0.988803,
		28.003216, 34.229313, 35.748211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624670, 34.577076, 35.506573>,  <28.082722, 34.161560, 35.056046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624670, 34.577076, 35.506573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500198, 34.270981, 35.731991>,  <28.425514, 34.087322, 35.867241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500198, 34.270981, 35.731991>,  <28.624670, 34.577076, 35.506573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500198, 34.270981, 35.731991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920142, -0.390923, -0.022746,
		0.237707, 0.511460, 0.825775,
		-0.311181, -0.765237, 0.563541,
		28.406845, 34.041409, 35.901054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061686, 34.437744, 36.176670>,  <28.624670, 34.577076, 35.506573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061686, 34.437744, 36.176670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902054, 34.077511, 36.107758>,  <28.806274, 33.861370, 36.066410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902054, 34.077511, 36.107758>,  <29.061686, 34.437744, 36.176670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902054, 34.077511, 36.107758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916035, -0.399828, -0.031879,
		-0.040173, -0.170539, 0.984531,
		-0.399080, -0.900585, -0.172282,
		28.782330, 33.807335, 36.056072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001104, 34.572815, 36.878525>,  <29.061686, 34.437744, 36.176670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001104, 34.572815, 36.878525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149107, 34.332672, 37.162121>,  <29.237909, 34.188587, 37.332279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149107, 34.332672, 37.162121>,  <29.001104, 34.572815, 36.878525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149107, 34.332672, 37.162121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874594, 0.032296, 0.483780,
		-0.313337, -0.799082, -0.513116,
		0.370008, -0.600354, 0.708991,
		29.260109, 34.152565, 37.374817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494131, 33.986752, 37.030949>,  <29.001104, 34.572815, 36.878525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494131, 33.986752, 37.030949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704660, 34.137989, 37.335587>,  <28.830978, 34.228733, 37.518368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704660, 34.137989, 37.335587>,  <28.494131, 33.986752, 37.030949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704660, 34.137989, 37.335587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848075, 0.168922, 0.502229,
		0.061239, -0.910226, 0.409559,
		0.526325, 0.378093, 0.761595,
		28.862558, 34.251419, 37.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920052, 34.517830, 37.028435>,  <28.494131, 33.986752, 37.030949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920052, 34.517830, 37.028435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944012, 34.428322, 36.639317>,  <27.958387, 34.374619, 36.405846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944012, 34.428322, 36.639317>,  <27.920052, 34.517830, 37.028435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944012, 34.428322, 36.639317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739038, 0.645154, -0.193907,
		0.670996, 0.730550, -0.126730,
		0.059898, -0.223769, -0.972800,
		27.961981, 34.361191, 36.347477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714451, 35.082996, 36.849281>,  <27.920052, 34.517830, 37.028435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714451, 35.082996, 36.849281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690331, 34.867260, 36.513309>,  <27.675859, 34.737820, 36.311726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690331, 34.867260, 36.513309>,  <27.714451, 35.082996, 36.849281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690331, 34.867260, 36.513309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832434, 0.491519, -0.255858,
		0.550834, 0.683755, -0.478603,
		-0.060299, -0.539340, -0.839926,
		27.672241, 34.705460, 36.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686604, 35.510422, 36.265755>,  <27.714451, 35.082996, 36.849281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686604, 35.510422, 36.265755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530685, 35.173050, 36.117870>,  <27.437134, 34.970627, 36.029140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530685, 35.173050, 36.117870>,  <27.686604, 35.510422, 36.265755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530685, 35.173050, 36.117870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879276, 0.460203, -0.122827,
		0.273739, 0.277202, -0.920992,
		-0.389795, -0.843429, -0.369712,
		27.413746, 34.920021, 36.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279974, 35.700199, 35.614307>,  <27.686604, 35.510422, 36.265755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279974, 35.700199, 35.614307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158342, 35.349068, 35.762333>,  <27.085363, 35.138390, 35.851151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158342, 35.349068, 35.762333>,  <27.279974, 35.700199, 35.614307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158342, 35.349068, 35.762333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933750, 0.351628, 0.066845,
		-0.188804, -0.325225, -0.926597,
		-0.304078, -0.877831, 0.370067,
		27.067120, 35.085720, 35.873352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472427, 35.826935, 34.825481>,  <27.279974, 35.700199, 35.614307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472427, 35.826935, 34.825481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678253, 35.613937, 35.094311>,  <27.801748, 35.486141, 35.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678253, 35.613937, 35.094311>,  <27.472427, 35.826935, 34.825481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678253, 35.613937, 35.094311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707897, -0.706100, -0.017459,
		0.483846, -0.466774, -0.740280,
		0.514562, -0.532489, 0.672072,
		27.832623, 35.454189, 35.295933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554335, 35.133755, 34.649822>,  <27.472427, 35.826935, 34.825481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554335, 35.133755, 34.649822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540869, 35.172031, 35.047760>,  <27.532789, 35.195000, 35.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540869, 35.172031, 35.047760>,  <27.554335, 35.133755, 34.649822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540869, 35.172031, 35.047760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884771, -0.465788, 0.014866,
		0.464808, -0.879707, 0.100347,
		-0.033663, 0.095694, 0.994841,
		27.530769, 35.200741, 35.346214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917568, 34.663895, 34.171646>,  <27.554335, 35.133755, 34.649822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917568, 34.663895, 34.171646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186192, 34.815197, 33.916794>,  <28.347364, 34.905979, 33.763882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186192, 34.815197, 33.916794>,  <27.917568, 34.663895, 34.171646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186192, 34.815197, 33.916794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612592, -0.200290, -0.764602,
		-0.416825, 0.903774, 0.097210,
		0.671557, 0.378255, -0.637130,
		28.387659, 34.928673, 33.725655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538145, 34.813515, 34.440937>,  <27.917568, 34.663895, 34.171646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538145, 34.813515, 34.440937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625889, 34.512081, 34.193069>,  <28.678535, 34.331223, 34.044350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625889, 34.512081, 34.193069>,  <28.538145, 34.813515, 34.440937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625889, 34.512081, 34.193069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800127, -0.224488, 0.556239,
		-0.558281, -0.617832, 0.553720,
		0.219358, -0.753584, -0.619671,
		28.691696, 34.286007, 34.007168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926109, 34.376076, 34.845951>,  <28.538145, 34.813515, 34.440937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926109, 34.376076, 34.845951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045294, 34.226734, 34.494537>,  <29.116804, 34.137131, 34.283688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045294, 34.226734, 34.494537>,  <28.926109, 34.376076, 34.845951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045294, 34.226734, 34.494537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884483, -0.238182, 0.401196,
		-0.359039, -0.896593, 0.259254,
		0.297960, -0.373351, -0.878538,
		29.134682, 34.114731, 34.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145056, 33.699455, 34.930054>,  <28.926109, 34.376076, 34.845951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145056, 33.699455, 34.930054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326675, 33.880322, 34.622967>,  <29.435648, 33.988842, 34.438717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326675, 33.880322, 34.622967>,  <29.145056, 33.699455, 34.930054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326675, 33.880322, 34.622967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888079, -0.299101, 0.349075,
		-0.071785, -0.840290, -0.537363,
		0.454050, 0.452163, -0.767715,
		29.462891, 34.015972, 34.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929993, 33.369541, 34.882130>,  <29.145056, 33.699455, 34.930054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929993, 33.369541, 34.882130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642427, 33.093250, 34.913258>,  <29.469889, 32.927475, 34.931934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642427, 33.093250, 34.913258>,  <29.929993, 33.369541, 34.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642427, 33.093250, 34.913258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602644, -0.675163, -0.425412,
		0.346388, -0.258935, 0.901647,
		-0.718913, -0.690730, 0.077823,
		29.426754, 32.886032, 34.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215456, 32.779976, 35.216164>,  <29.929993, 33.369541, 34.882130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215456, 32.779976, 35.216164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908131, 32.658405, 34.990837>,  <29.723736, 32.585461, 34.855640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908131, 32.658405, 34.990837>,  <30.215456, 32.779976, 35.216164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908131, 32.658405, 34.990837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574732, -0.714963, -0.398134,
		-0.281745, -0.629646, 0.723993,
		-0.768311, -0.303930, -0.563315,
		29.677637, 32.567226, 34.821842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981869, 33.015800, 35.218849>,  <30.215456, 32.779976, 35.216164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981869, 33.015800, 35.218849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735764, 33.272293, 35.402271>,  <30.588100, 33.426189, 35.512325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735764, 33.272293, 35.402271>,  <30.981869, 33.015800, 35.218849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735764, 33.272293, 35.402271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782819, -0.428375, -0.451320,
		-0.092969, -0.636644, 0.765534,
		-0.615265, 0.641233, 0.458551,
		30.551184, 33.464664, 35.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344278, 33.256859, 35.697334>,  <30.981869, 33.015800, 35.218849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344278, 33.256859, 35.697334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676548, 33.439850, 35.570404>,  <31.875910, 33.549644, 35.494247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676548, 33.439850, 35.570404>,  <31.344278, 33.256859, 35.697334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676548, 33.439850, 35.570404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109347, 0.692900, 0.712695,
		0.545915, -0.557319, 0.625598,
		0.830675, 0.457478, -0.317323,
		31.925751, 33.577095, 35.475208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636913, 33.472569, 36.294216>,  <31.344278, 33.256859, 35.697334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636913, 33.472569, 36.294216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772665, 33.696110, 35.991558>,  <31.854116, 33.830235, 35.809963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772665, 33.696110, 35.991558>,  <31.636913, 33.472569, 36.294216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772665, 33.696110, 35.991558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154872, 0.826603, 0.541057,
		0.927813, -0.066441, 0.367082,
		0.339379, 0.558850, -0.756643,
		31.874479, 33.863766, 35.764565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071896, 34.027706, 36.560688>,  <31.636913, 33.472569, 36.294216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071896, 34.027706, 36.560688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902817, 34.139168, 36.215740>,  <31.801371, 34.206043, 36.008770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902817, 34.139168, 36.215740>,  <32.071896, 34.027706, 36.560688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902817, 34.139168, 36.215740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270005, 0.869626, 0.413338,
		0.865117, 0.407559, -0.292348,
		-0.422693, 0.278650, -0.862372,
		31.776009, 34.222763, 35.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292889, 34.621677, 36.417328>,  <32.071896, 34.027706, 36.560688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292889, 34.621677, 36.417328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948950, 34.617725, 36.213146>,  <31.742586, 34.615353, 36.090637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948950, 34.617725, 36.213146>,  <32.292889, 34.621677, 36.417328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948950, 34.617725, 36.213146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109537, 0.980101, 0.165541,
		0.498662, 0.198253, -0.843819,
		-0.859847, -0.009881, -0.510456,
		31.690996, 34.614761, 36.060009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400276, 35.199928, 36.006363>,  <32.292889, 34.621677, 36.417328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400276, 35.199928, 36.006363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015244, 35.098221, 36.043846>,  <31.784224, 35.037197, 36.066334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015244, 35.098221, 36.043846>,  <32.400276, 35.199928, 36.006363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015244, 35.098221, 36.043846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231618, 0.951477, 0.202592,
		-0.140671, 0.173308, -0.974770,
		-0.962582, -0.254273, 0.093703,
		31.726469, 35.021938, 36.071957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013809, 35.603317, 35.576767>,  <32.400276, 35.199928, 36.006363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013809, 35.603317, 35.576767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750954, 35.481003, 35.852352>,  <31.593241, 35.407616, 36.017704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750954, 35.481003, 35.852352>,  <32.013809, 35.603317, 35.576767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750954, 35.481003, 35.852352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158354, 0.949626, 0.270433,
		-0.736952, 0.068611, -0.672454,
		-0.657135, -0.305782, 0.688964,
		31.553814, 35.389267, 36.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417318, 36.069347, 35.561756>,  <32.013809, 35.603317, 35.576767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417318, 36.069347, 35.561756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438000, 35.900875, 35.923958>,  <31.450409, 35.799793, 36.141277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438000, 35.900875, 35.923958>,  <31.417318, 36.069347, 35.561756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438000, 35.900875, 35.923958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307341, 0.855999, 0.415702,
		-0.950194, -0.299791, -0.085188,
		0.051703, -0.421179, 0.905503,
		31.453510, 35.774521, 36.195610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417671, 36.631729, 35.985855>,  <31.417318, 36.069347, 35.561756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417671, 36.631729, 35.985855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345850, 36.311760, 36.214897>,  <31.302757, 36.119778, 36.352322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345850, 36.311760, 36.214897>,  <31.417671, 36.631729, 35.985855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345850, 36.311760, 36.214897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211488, 0.599846, 0.771659,
		-0.960746, 0.017455, -0.276880,
		-0.179555, -0.799925, 0.572608,
		31.291983, 36.071781, 36.386681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889429, 36.861687, 36.445068>,  <31.417671, 36.631729, 35.985855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889429, 36.861687, 36.445068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090836, 36.557793, 36.609642>,  <31.211679, 36.375458, 36.708385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090836, 36.557793, 36.609642>,  <30.889429, 36.861687, 36.445068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090836, 36.557793, 36.609642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162762, 0.551085, 0.818421,
		-0.848517, -0.345122, 0.401135,
		0.503515, -0.759734, 0.411433,
		31.241890, 36.329872, 36.733070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575766, 36.794693, 37.055897>,  <30.889429, 36.861687, 36.445068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575766, 36.794693, 37.055897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947388, 36.648899, 37.081200>,  <31.170361, 36.561420, 37.096382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947388, 36.648899, 37.081200>,  <30.575766, 36.794693, 37.055897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947388, 36.648899, 37.081200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188630, 0.613850, 0.766555,
		-0.318233, -0.700240, 0.639055,
		0.929057, -0.364488, 0.063261,
		31.226105, 36.539551, 37.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681900, 36.650333, 37.813946>,  <30.575766, 36.794693, 37.055897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681900, 36.650333, 37.813946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035877, 36.654133, 37.627705>,  <31.248264, 36.656414, 37.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035877, 36.654133, 37.627705>,  <30.681900, 36.650333, 37.813946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035877, 36.654133, 37.627705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359889, 0.620574, 0.696684,
		0.295557, -0.784090, 0.545755,
		0.884944, 0.009499, -0.465600,
		31.301361, 36.656982, 37.488026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255024, 36.277695, 38.238358>,  <30.681900, 36.650333, 37.813946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255024, 36.277695, 38.238358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402588, 36.552055, 37.987453>,  <31.491125, 36.716671, 37.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402588, 36.552055, 37.987453>,  <31.255024, 36.277695, 38.238358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402588, 36.552055, 37.987453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520373, 0.406763, 0.750837,
		0.770142, -0.603398, -0.206864,
		0.368909, 0.685897, -0.627257,
		31.513260, 36.757824, 37.799278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991228, 36.403114, 38.147625>,  <31.255024, 36.277695, 38.238358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991228, 36.403114, 38.147625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792044, 36.748688, 38.117554>,  <31.672533, 36.956032, 38.099510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792044, 36.748688, 38.117554>,  <31.991228, 36.403114, 38.147625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792044, 36.748688, 38.117554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645201, 0.427015, 0.633541,
		0.579439, 0.266977, -0.770048,
		-0.497963, 0.863934, -0.075176,
		31.642654, 37.007870, 38.095001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275467, 37.045753, 37.777790>,  <31.991228, 36.403114, 38.147625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275467, 37.045753, 37.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023129, 37.110966, 38.081223>,  <31.871725, 37.150093, 38.263283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023129, 37.110966, 38.081223>,  <32.275467, 37.045753, 37.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023129, 37.110966, 38.081223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754564, 0.356637, 0.550856,
		-0.180732, 0.919907, -0.348003,
		-0.630848, 0.163034, 0.758585,
		31.833874, 37.159878, 38.308800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488354, 36.620972, 37.138577>,  <32.275467, 37.045753, 37.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488354, 36.620972, 37.138577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133018, 36.586521, 37.318996>,  <31.919819, 36.565849, 37.427250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133018, 36.586521, 37.318996>,  <32.488354, 36.620972, 37.138577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133018, 36.586521, 37.318996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289564, -0.657283, -0.695795,
		0.356393, -0.748706, 0.558948,
		-0.888334, -0.086126, 0.451050,
		31.866518, 36.560684, 37.454311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348557, 35.873428, 37.261597>,  <32.488354, 36.620972, 37.138577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348557, 35.873428, 37.261597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026428, 36.103416, 37.203827>,  <31.833151, 36.241409, 37.169163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026428, 36.103416, 37.203827>,  <32.348557, 35.873428, 37.261597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026428, 36.103416, 37.203827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339622, -0.647133, -0.682551,
		-0.485913, -0.500623, 0.716425,
		-0.805323, 0.574974, -0.144427,
		31.784832, 36.275909, 37.160500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806162, 35.388069, 37.313911>,  <32.348557, 35.873428, 37.261597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806162, 35.388069, 37.313911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626009, 35.686794, 37.118187>,  <31.517918, 35.866032, 37.000751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626009, 35.686794, 37.118187>,  <31.806162, 35.388069, 37.313911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626009, 35.686794, 37.118187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382855, -0.656638, -0.649806,
		-0.806583, -0.105328, 0.581661,
		-0.450384, 0.746815, -0.489308,
		31.490894, 35.910839, 36.971394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038145, 35.243408, 37.291592>,  <31.806162, 35.388069, 37.313911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038145, 35.243408, 37.291592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136909, 35.445992, 36.961128>,  <31.196169, 35.567543, 36.762852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136909, 35.445992, 36.961128>,  <31.038145, 35.243408, 37.291592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136909, 35.445992, 36.961128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331078, -0.757159, -0.563115,
		-0.910726, 0.412561, -0.019272,
		0.246912, 0.506462, -0.826154,
		31.210983, 35.597931, 36.713284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522142, 35.039650, 36.706951>,  <31.038145, 35.243408, 37.291592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522142, 35.039650, 36.706951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861979, 35.152435, 36.528652>,  <31.065880, 35.220104, 36.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861979, 35.152435, 36.528652>,  <30.522142, 35.039650, 36.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861979, 35.152435, 36.528652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042531, -0.805742, -0.590738,
		-0.525726, 0.520843, -0.672558,
		0.849590, 0.281962, -0.445752,
		31.116856, 35.237022, 36.394928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380713, 34.787819, 36.100594>,  <30.522142, 35.039650, 36.706951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380713, 34.787819, 36.100594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774723, 34.850914, 36.072754>,  <31.011129, 34.888771, 36.056049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774723, 34.850914, 36.072754>,  <30.380713, 34.787819, 36.100594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774723, 34.850914, 36.072754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108567, -0.881070, -0.460357,
		-0.133939, 0.445907, -0.885002,
		0.985025, 0.157742, -0.069599,
		31.070230, 34.898235, 36.051876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567175, 34.513290, 35.520462>,  <30.380713, 34.787819, 36.100594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567175, 34.513290, 35.520462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925644, 34.546467, 35.694817>,  <31.140726, 34.566372, 35.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925644, 34.546467, 35.694817>,  <30.567175, 34.513290, 35.520462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925644, 34.546467, 35.694817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235078, -0.921919, -0.307901,
		0.376312, 0.378399, -0.845697,
		0.896174, 0.082938, 0.435883,
		31.194496, 34.571350, 35.825581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129246, 34.376797, 34.939484>,  <30.567175, 34.513290, 35.520462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129246, 34.376797, 34.939484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204964, 34.293289, 35.323273>,  <31.250395, 34.243183, 35.553547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204964, 34.293289, 35.323273>,  <31.129246, 34.376797, 34.939484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204964, 34.293289, 35.323273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127089, -0.963707, -0.234769,
		0.973661, 0.166379, -0.155893,
		0.189296, -0.208773, 0.959469,
		31.261753, 34.230656, 35.611115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741419, 34.109444, 35.073872>,  <31.129246, 34.376797, 34.939484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741419, 34.109444, 35.073872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532476, 33.965973, 35.383324>,  <31.407112, 33.879890, 35.568993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532476, 33.965973, 35.383324>,  <31.741419, 34.109444, 35.073872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532476, 33.965973, 35.383324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478973, -0.874009, -0.081815,
		0.705501, 0.327810, 0.628339,
		-0.522354, -0.358678, 0.773626,
		31.375771, 33.858368, 35.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179516, 34.760986, 35.161858>,  <31.741419, 34.109444, 35.073872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179516, 34.760986, 35.161858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547146, 34.737263, 35.006020>,  <32.767723, 34.723030, 34.912518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547146, 34.737263, 35.006020>,  <32.179516, 34.760986, 35.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547146, 34.737263, 35.006020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382084, 0.107981, -0.917797,
		0.096500, 0.992382, 0.076583,
		0.919075, -0.059306, -0.389594,
		32.822868, 34.719471, 34.889141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337875, 35.290462, 34.645901>,  <32.179516, 34.760986, 35.161858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337875, 35.290462, 34.645901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546944, 34.952377, 34.601307>,  <32.672386, 34.749527, 34.574551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546944, 34.952377, 34.601307>,  <32.337875, 35.290462, 34.645901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546944, 34.952377, 34.601307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223874, -0.009899, -0.974568,
		0.822616, 0.534334, -0.194396,
		0.522669, -0.845215, -0.111481,
		32.703743, 34.698814, 34.567863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000767, 35.338078, 34.264114>,  <32.337875, 35.290462, 34.645901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000767, 35.338078, 34.264114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846180, 34.978268, 34.182636>,  <32.753429, 34.762383, 34.133747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846180, 34.978268, 34.182636>,  <33.000767, 35.338078, 34.264114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846180, 34.978268, 34.182636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053058, 0.242175, -0.968781,
		0.920777, -0.363591, -0.141319,
		-0.386464, -0.899529, -0.203698,
		32.730240, 34.708408, 34.121529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545753, 35.024174, 34.671310>,  <33.000767, 35.338078, 34.264114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545753, 35.024174, 34.671310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891842, 35.183788, 34.549885>,  <34.099495, 35.279556, 34.477028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891842, 35.183788, 34.549885>,  <33.545753, 35.024174, 34.671310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891842, 35.183788, 34.549885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464719, -0.410982, 0.784302,
		0.188206, -0.819672, -0.541033,
		0.865225, 0.399039, -0.303567,
		34.151409, 35.303501, 34.458813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625885, 35.510860, 35.329338>,  <33.545753, 35.024174, 34.671310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625885, 35.510860, 35.329338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579887, 35.143860, 35.481632>,  <33.552288, 34.923660, 35.573009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579887, 35.143860, 35.481632>,  <33.625885, 35.510860, 35.329338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579887, 35.143860, 35.481632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988848, -0.142247, -0.044119,
		0.094638, 0.371420, 0.923629,
		-0.114997, -0.917504, 0.380740,
		33.545387, 34.868610, 35.595856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292660, 36.237404, 35.335915>,  <33.625885, 35.510860, 35.329338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292660, 36.237404, 35.335915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045410, 36.447357, 35.569981>,  <32.897060, 36.573330, 35.710423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045410, 36.447357, 35.569981>,  <33.292660, 36.237404, 35.335915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045410, 36.447357, 35.569981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665458, -0.745656, -0.034101,
		0.418435, -0.410483, 0.810195,
		-0.618124, 0.524882, 0.585168,
		32.859974, 36.604820, 35.745529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054848, 36.331020, 35.173714>,  <33.292660, 36.237404, 35.335915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054848, 36.331020, 35.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411037, 36.153690, 35.214741>,  <34.624752, 36.047291, 35.239357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411037, 36.153690, 35.214741>,  <34.054848, 36.331020, 35.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411037, 36.153690, 35.214741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188270, 0.153735, -0.970010,
		0.414263, 0.883078, 0.220361,
		0.890472, -0.443327, 0.102570,
		34.678181, 36.020691, 35.245510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555176, 36.672211, 34.911190>,  <34.054848, 36.331020, 35.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555176, 36.672211, 34.911190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700840, 36.299789, 34.901958>,  <34.788239, 36.076336, 34.896420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700840, 36.299789, 34.901958>,  <34.555176, 36.672211, 34.911190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700840, 36.299789, 34.901958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108981, 0.067208, -0.991769,
		0.924937, 0.358650, 0.125941,
		0.364163, -0.931050, -0.023078,
		34.810089, 36.020473, 34.895035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106159, 36.703655, 34.519779>,  <34.555176, 36.672211, 34.911190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106159, 36.703655, 34.519779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039703, 36.309517, 34.504303>,  <34.999828, 36.073036, 34.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039703, 36.309517, 34.504303>,  <35.106159, 36.703655, 34.519779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039703, 36.309517, 34.504303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096898, 0.022736, -0.995035,
		0.981330, -0.169064, 0.091700,
		-0.166139, -0.985343, -0.038694,
		34.989861, 36.013912, 34.492695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776096, 36.350479, 34.295414>,  <35.106159, 36.703655, 34.519779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776096, 36.350479, 34.295414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469936, 36.112934, 34.196228>,  <35.286240, 35.970406, 34.136715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469936, 36.112934, 34.196228>,  <35.776096, 36.350479, 34.295414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469936, 36.112934, 34.196228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218590, 0.122499, -0.968097,
		0.605294, -0.795185, 0.036052,
		-0.765400, -0.593864, -0.247967,
		35.240314, 35.934776, 34.121838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923286, 35.711460, 33.829967>,  <35.776096, 36.350479, 34.295414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923286, 35.711460, 33.829967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545002, 35.826736, 33.769875>,  <35.318031, 35.895905, 33.733818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545002, 35.826736, 33.769875>,  <35.923286, 35.711460, 33.829967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545002, 35.826736, 33.769875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203782, 0.165726, -0.964887,
		-0.253176, -0.943122, -0.215458,
		-0.945714, 0.288193, -0.150234,
		35.261288, 35.913193, 33.724804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531006, 35.256889, 33.355946>,  <35.923286, 35.711460, 33.829967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531006, 35.256889, 33.355946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402752, 35.635647, 33.365635>,  <35.325798, 35.862900, 33.371449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402752, 35.635647, 33.365635>,  <35.531006, 35.256889, 33.355946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402752, 35.635647, 33.365635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393481, 0.156415, -0.905929,
		-0.861607, -0.280939, -0.422736,
		-0.320634, 0.946893, 0.024224,
		35.306561, 35.919716, 33.372902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291504, 35.438889, 32.689682>,  <35.531006, 35.256889, 33.355946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291504, 35.438889, 32.689682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325203, 35.819881, 32.806770>,  <35.345421, 36.048477, 32.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325203, 35.819881, 32.806770>,  <35.291504, 35.438889, 32.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325203, 35.819881, 32.806770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374241, 0.242014, -0.895194,
		-0.923497, 0.184964, -0.336068,
		0.084246, 0.952480, 0.292721,
		35.350475, 36.105625, 32.894588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868534, 35.882565, 32.227188>,  <35.291504, 35.438889, 32.689682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868534, 35.882565, 32.227188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139534, 36.133366, 32.380997>,  <35.302135, 36.283848, 32.473282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139534, 36.133366, 32.380997>,  <34.868534, 35.882565, 32.227188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139534, 36.133366, 32.380997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432582, 0.083143, -0.897753,
		-0.594864, 0.774567, -0.214901,
		0.677503, 0.627003, 0.384522,
		35.342785, 36.321468, 32.496353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889084, 36.572948, 31.897903>,  <34.868534, 35.882565, 32.227188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889084, 36.572948, 31.897903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252590, 36.493343, 32.044624>,  <35.470692, 36.445580, 32.132656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252590, 36.493343, 32.044624>,  <34.889084, 36.572948, 31.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252590, 36.493343, 32.044624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397688, 0.146610, -0.905732,
		0.126478, 0.968968, 0.212379,
		0.908762, -0.199016, 0.366804,
		35.525219, 36.433640, 32.154667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384487, 37.037197, 31.708435>,  <34.889084, 36.572948, 31.897903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384487, 37.037197, 31.708435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596142, 36.706219, 31.783642>,  <35.723133, 36.507633, 31.828766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596142, 36.706219, 31.783642>,  <35.384487, 37.037197, 31.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596142, 36.706219, 31.783642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488740, 0.116066, -0.864674,
		0.693649, 0.549420, 0.465821,
		0.529135, -0.827446, 0.188015,
		35.754883, 36.457985, 31.840046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789440, 36.439682, 31.279871>,  <35.384487, 37.037197, 31.708435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789440, 36.439682, 31.279871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429821, 36.613487, 31.258276>,  <35.214050, 36.717770, 31.245319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429821, 36.613487, 31.258276>,  <35.789440, 36.439682, 31.279871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429821, 36.613487, 31.258276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045498, -0.215340, -0.975479,
		-0.435482, -0.874545, 0.213370,
		-0.899047, 0.434511, -0.053987,
		35.160107, 36.743839, 31.242081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273640, 35.875118, 31.114813>,  <35.789440, 36.439682, 31.279871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273640, 35.875118, 31.114813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166878, 36.242672, 30.998596>,  <35.102821, 36.463203, 30.928865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166878, 36.242672, 30.998596>,  <35.273640, 35.875118, 31.114813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166878, 36.242672, 30.998596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047339, -0.313614, -0.948370,
		-0.962560, -0.239369, 0.127204,
		-0.266903, 0.918884, -0.290541,
		35.086807, 36.518337, 30.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711914, 35.704639, 30.753185>,  <35.273640, 35.875118, 31.114813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711914, 35.704639, 30.753185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843746, 36.063808, 30.636486>,  <34.922844, 36.279308, 30.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843746, 36.063808, 30.636486>,  <34.711914, 35.704639, 30.753185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843746, 36.063808, 30.636486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125477, -0.264615, -0.956156,
		-0.935754, 0.351734, 0.025458,
		0.329576, 0.897921, -0.291748,
		34.942619, 36.333183, 30.548962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293877, 36.008015, 30.206541>,  <34.711914, 35.704639, 30.753185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293877, 36.008015, 30.206541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637486, 36.207172, 30.158909>,  <34.843651, 36.326668, 30.130329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637486, 36.207172, 30.158909>,  <34.293877, 36.008015, 30.206541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637486, 36.207172, 30.158909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011687, -0.213472, -0.976879,
		-0.511807, 0.840552, -0.177558,
		0.859021, 0.497898, -0.119080,
		34.895191, 36.356541, 30.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195576, 36.430084, 29.618456>,  <34.293877, 36.008015, 30.206541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195576, 36.430084, 29.618456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591682, 36.394127, 29.660955>,  <34.829346, 36.372551, 29.686455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591682, 36.394127, 29.660955>,  <34.195576, 36.430084, 29.618456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591682, 36.394127, 29.660955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096138, -0.110180, -0.989251,
		0.100634, 0.989838, -0.100465,
		0.990268, -0.089894, 0.106249,
		34.888763, 36.367157, 29.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561958, 36.680576, 28.996153>,  <34.195576, 36.430084, 29.618456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561958, 36.680576, 28.996153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842098, 36.460285, 29.177795>,  <35.010181, 36.328110, 29.286781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842098, 36.460285, 29.177795>,  <34.561958, 36.680576, 28.996153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842098, 36.460285, 29.177795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355526, -0.282519, -0.890946,
		0.618961, 0.785419, -0.002064,
		0.700349, -0.550726, 0.454105,
		35.052204, 36.295067, 29.314028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207119, 36.853676, 28.702986>,  <34.561958, 36.680576, 28.996153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207119, 36.853676, 28.702986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235966, 36.478680, 28.839169>,  <35.253273, 36.253681, 28.920877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235966, 36.478680, 28.839169>,  <35.207119, 36.853676, 28.702986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235966, 36.478680, 28.839169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439862, -0.276466, -0.854452,
		0.895165, 0.211370, 0.392431,
		0.072112, -0.937491, 0.340457,
		35.257599, 36.197433, 28.941305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818890, 36.677040, 28.542444>,  <35.207119, 36.853676, 28.702986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818890, 36.677040, 28.542444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632034, 36.327507, 28.596407>,  <35.519920, 36.117786, 28.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632034, 36.327507, 28.596407>,  <35.818890, 36.677040, 28.542444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632034, 36.327507, 28.596407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446376, -0.364779, -0.817120,
		0.763235, -0.321491, 0.560460,
		-0.467141, -0.873831, 0.134906,
		35.491894, 36.065357, 28.636879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307320, 36.171162, 28.379053>,  <35.818890, 36.677040, 28.542444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307320, 36.171162, 28.379053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952370, 35.988544, 28.353329>,  <35.739399, 35.878975, 28.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952370, 35.988544, 28.353329>,  <36.307320, 36.171162, 28.379053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952370, 35.988544, 28.353329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255796, -0.371467, -0.892514,
		0.383577, -0.808446, 0.446411,
		-0.887377, -0.456539, -0.064311,
		35.686157, 35.851582, 28.334036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439270, 35.516037, 28.014837>,  <36.307320, 36.171162, 28.379053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439270, 35.516037, 28.014837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039387, 35.514259, 28.005394>,  <35.799458, 35.513195, 27.999727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039387, 35.514259, 28.005394>,  <36.439270, 35.516037, 28.014837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039387, 35.514259, 28.005394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023990, -0.235900, -0.971481,
		-0.001256, -0.971767, 0.235938,
		-0.999711, -0.004440, -0.023609,
		35.739471, 35.512928, 27.998312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212303, 34.859119, 27.709230>,  <36.439270, 35.516037, 28.014837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212303, 34.859119, 27.709230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888325, 35.089184, 27.663305>,  <35.693939, 35.227222, 27.635750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888325, 35.089184, 27.663305>,  <36.212303, 34.859119, 27.709230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888325, 35.089184, 27.663305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028158, -0.157401, -0.987133,
		-0.585830, -0.802756, 0.111291,
		-0.809945, 0.575159, -0.114815,
		35.645340, 35.261730, 27.628860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721764, 34.470291, 27.250448>,  <36.212303, 34.859119, 27.709230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721764, 34.470291, 27.250448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659294, 34.862644, 27.204018>,  <35.621811, 35.098057, 27.176159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659294, 34.862644, 27.204018>,  <35.721764, 34.470291, 27.250448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659294, 34.862644, 27.204018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097471, -0.132248, -0.986413,
		-0.982908, -0.142741, 0.116262,
		-0.156177, 0.980885, -0.116075,
		35.612442, 35.156910, 27.169195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116089, 34.515320, 26.880672>,  <35.721764, 34.470291, 27.250448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116089, 34.515320, 26.880672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304607, 34.865150, 26.835058>,  <35.417717, 35.075047, 26.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304607, 34.865150, 26.835058>,  <35.116089, 34.515320, 26.880672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304607, 34.865150, 26.835058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171626, -0.035886, -0.984508,
		-0.865117, 0.483564, 0.133187,
		0.471293, 0.874573, -0.114038,
		35.445995, 35.127522, 26.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646236, 34.873619, 26.411001>,  <35.116089, 34.515320, 26.880672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646236, 34.873619, 26.411001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986614, 35.083523, 26.401930>,  <35.190842, 35.209465, 26.396488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986614, 35.083523, 26.401930>,  <34.646236, 34.873619, 26.411001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986614, 35.083523, 26.401930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092169, 0.106678, -0.990013,
		-0.517101, 0.844539, 0.139144,
		0.850948, 0.524761, -0.022677,
		35.241898, 35.240952, 26.395126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514164, 35.548016, 26.161411>,  <34.646236, 34.873619, 26.411001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514164, 35.548016, 26.161411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901485, 35.481934, 26.086479>,  <35.133881, 35.442284, 26.041521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901485, 35.481934, 26.086479>,  <34.514164, 35.548016, 26.161411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901485, 35.481934, 26.086479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129169, 0.310704, -0.941689,
		0.213775, 0.936040, 0.279518,
		0.968305, -0.165204, -0.187329,
		35.191978, 35.432373, 26.030281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749142, 36.117744, 25.722784>,  <34.514164, 35.548016, 26.161411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749142, 36.117744, 25.722784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032055, 35.840672, 25.666315>,  <35.201805, 35.674427, 25.632433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032055, 35.840672, 25.666315>,  <34.749142, 36.117744, 25.722784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032055, 35.840672, 25.666315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114840, 0.084465, -0.989787,
		0.697536, 0.716275, -0.019807,
		0.707287, -0.692687, -0.141175,
		35.244240, 35.632866, 25.623962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024109, 36.349869, 25.179390>,  <34.749142, 36.117744, 25.722784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024109, 36.349869, 25.179390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163464, 35.974995, 25.186354>,  <35.247078, 35.750069, 25.190531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163464, 35.974995, 25.186354>,  <35.024109, 36.349869, 25.179390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163464, 35.974995, 25.186354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100012, 0.018700, -0.994811,
		0.932001, 0.348318, 0.100245,
		0.348385, -0.937190, 0.017408,
		35.267979, 35.693836, 25.191576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558842, 36.362667, 24.656427>,  <35.024109, 36.349869, 25.179390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558842, 36.362667, 24.656427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448704, 35.983463, 24.720261>,  <35.382622, 35.755943, 24.758560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448704, 35.983463, 24.720261>,  <35.558842, 36.362667, 24.656427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448704, 35.983463, 24.720261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086538, -0.140884, -0.986237,
		0.957443, -0.285365, -0.043247,
		-0.275345, -0.948008, 0.159584,
		35.366100, 35.699062, 24.768135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858177, 36.058632, 24.126932>,  <35.558842, 36.362667, 24.656427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858177, 36.058632, 24.126932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555382, 35.819305, 24.231985>,  <35.373703, 35.675709, 24.295017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555382, 35.819305, 24.231985>,  <35.858177, 36.058632, 24.126932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555382, 35.819305, 24.231985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224372, -0.139478, -0.964470,
		0.613694, -0.789023, -0.028663,
		-0.756991, -0.598321, 0.262632,
		35.328285, 35.639809, 24.310774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768021, 35.653084, 23.612204>,  <35.858177, 36.058632, 24.126932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768021, 35.653084, 23.612204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400116, 35.608913, 23.762854>,  <35.179375, 35.582413, 23.853243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400116, 35.608913, 23.762854>,  <35.768021, 35.653084, 23.612204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400116, 35.608913, 23.762854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389838, 0.145936, -0.909246,
		0.045441, -0.983112, -0.177274,
		-0.919762, -0.110425, 0.376623,
		35.124187, 35.575787, 23.875841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411148, 35.061031, 23.138872>,  <35.768021, 35.653084, 23.612204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411148, 35.061031, 23.138872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124382, 35.279865, 23.311724>,  <34.952324, 35.411167, 23.415434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124382, 35.279865, 23.311724>,  <35.411148, 35.061031, 23.138872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124382, 35.279865, 23.311724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453533, 0.104768, -0.885060,
		-0.529475, -0.830496, 0.173011,
		-0.716912, 0.547084, 0.432129,
		34.909309, 35.443989, 23.441362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730984, 34.870342, 22.713720>,  <35.411148, 35.061031, 23.138872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730984, 34.870342, 22.713720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650566, 35.212601, 22.904488>,  <34.602314, 35.417957, 23.018948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650566, 35.212601, 22.904488>,  <34.730984, 34.870342, 22.713720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650566, 35.212601, 22.904488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509575, 0.324449, -0.796910,
		-0.836609, -0.403238, 0.370788,
		-0.201043, 0.855647, 0.476917,
		34.590252, 35.469296, 23.047564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907795, 34.964497, 22.725370>,  <34.730984, 34.870342, 22.713720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907795, 34.964497, 22.725370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064999, 35.326492, 22.790525>,  <34.159321, 35.543690, 22.829618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064999, 35.326492, 22.790525>,  <33.907795, 34.964497, 22.725370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064999, 35.326492, 22.790525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585616, 0.382905, -0.714450,
		-0.708941, 0.185398, 0.680463,
		0.393010, 0.904993, 0.162886,
		34.182903, 35.597992, 22.839392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397888, 35.485943, 22.573145>,  <33.907795, 34.964497, 22.725370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397888, 35.485943, 22.573145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732048, 35.705105, 22.555696>,  <33.932545, 35.836601, 22.545227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732048, 35.705105, 22.555696>,  <33.397888, 35.485943, 22.573145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732048, 35.705105, 22.555696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382665, 0.522812, -0.761731,
		-0.394552, 0.653044, 0.646423,
		0.835402, 0.547906, -0.043621,
		33.982670, 35.869476, 22.542610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187862, 36.147251, 22.431721>,  <33.397888, 35.485943, 22.573145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187862, 36.147251, 22.431721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574020, 36.169357, 22.329781>,  <33.805717, 36.182621, 22.268616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574020, 36.169357, 22.329781>,  <33.187862, 36.147251, 22.431721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574020, 36.169357, 22.329781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241921, 0.554668, -0.796127,
		0.097359, 0.830234, 0.548846,
		0.965399, 0.055267, -0.254853,
		33.863640, 36.185936, 22.253325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218384, 36.832310, 22.102896>,  <33.187862, 36.147251, 22.431721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218384, 36.832310, 22.102896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508350, 36.595718, 21.961670>,  <33.682331, 36.453762, 21.876934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508350, 36.595718, 21.961670>,  <33.218384, 36.832310, 22.102896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508350, 36.595718, 21.961670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096941, 0.419847, -0.902403,
		0.681986, 0.688389, 0.247013,
		0.724912, -0.591480, -0.353063,
		33.725822, 36.418274, 21.855751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413719, 37.172947, 21.582499>,  <33.218384, 36.832310, 22.102896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413719, 37.172947, 21.582499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622509, 36.839180, 21.511742>,  <33.747784, 36.638920, 21.469288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622509, 36.839180, 21.511742>,  <33.413719, 37.172947, 21.582499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622509, 36.839180, 21.511742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005616, 0.210742, -0.977525,
		0.852941, 0.509252, 0.114689,
		0.521976, -0.834416, -0.176891,
		33.779102, 36.588856, 21.458675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042149, 37.367634, 21.073273>,  <33.413719, 37.172947, 21.582499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042149, 37.367634, 21.073273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926315, 36.985706, 21.046537>,  <33.856815, 36.756550, 21.030497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926315, 36.985706, 21.046537>,  <34.042149, 37.367634, 21.073273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926315, 36.985706, 21.046537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012125, 0.073484, -0.997223,
		0.957076, -0.287968, -0.032857,
		-0.289583, -0.954816, -0.066838,
		33.839439, 36.699261, 21.026485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346352, 37.173458, 20.481829>,  <34.042149, 37.367634, 21.073273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346352, 37.173458, 20.481829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077240, 36.880291, 20.522243>,  <33.915775, 36.704391, 20.546492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077240, 36.880291, 20.522243>,  <34.346352, 37.173458, 20.481829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077240, 36.880291, 20.522243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152814, 0.004038, -0.988247,
		0.723893, -0.680307, -0.114717,
		-0.672775, -0.732916, 0.101037,
		33.875408, 36.660416, 20.552555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688217, 36.593994, 20.151850>,  <34.346352, 37.173458, 20.481829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688217, 36.593994, 20.151850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288322, 36.595863, 20.142805>,  <34.048386, 36.596985, 20.137379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288322, 36.595863, 20.142805>,  <34.688217, 36.593994, 20.151850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288322, 36.595863, 20.142805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021786, -0.133384, -0.990825,
		-0.007650, -0.991054, 0.133247,
		-0.999734, 0.004677, -0.022611,
		33.988403, 36.597267, 20.136023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542744, 36.160137, 19.601715>,  <34.688217, 36.593994, 20.151850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542744, 36.160137, 19.601715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183907, 36.325195, 19.664900>,  <33.968605, 36.424229, 19.702810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183907, 36.325195, 19.664900>,  <34.542744, 36.160137, 19.601715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183907, 36.325195, 19.664900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097557, 0.163695, -0.981675,
		-0.430941, -0.896062, -0.106593,
		-0.897091, 0.412645, 0.157960,
		33.914780, 36.448990, 19.712288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202026, 35.840252, 19.076637>,  <34.542744, 36.160137, 19.601715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202026, 35.840252, 19.076637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014957, 36.178551, 19.179392>,  <33.902718, 36.381531, 19.241045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014957, 36.178551, 19.179392>,  <34.202026, 35.840252, 19.076637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014957, 36.178551, 19.179392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226188, 0.166440, -0.959759,
		-0.854472, -0.506957, 0.113459,
		-0.467672, 0.845750, 0.256886,
		33.874657, 36.432274, 19.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627575, 35.711929, 18.810484>,  <34.202026, 35.840252, 19.076637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627575, 35.711929, 18.810484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628841, 36.105747, 18.880529>,  <33.629601, 36.342037, 18.922558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628841, 36.105747, 18.880529>,  <33.627575, 35.711929, 18.810484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628841, 36.105747, 18.880529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140951, 0.173807, -0.974640,
		-0.990011, -0.021600, 0.139322,
		0.003163, 0.984543, 0.175116,
		33.629791, 36.401112, 18.933064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165470, 35.937813, 18.304771>,  <33.627575, 35.711929, 18.810484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165470, 35.937813, 18.304771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356403, 36.272118, 18.413324>,  <33.470963, 36.472702, 18.478456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356403, 36.272118, 18.413324>,  <33.165470, 35.937813, 18.304771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356403, 36.272118, 18.413324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007070, 0.312481, -0.949898,
		-0.878693, 0.451501, 0.155067,
		0.477336, 0.835765, 0.271383,
		33.499603, 36.522846, 18.494740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818424, 36.401878, 17.895412>,  <33.165470, 35.937813, 18.304771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818424, 36.401878, 17.895412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154301, 36.592239, 18.000051>,  <33.355827, 36.706455, 18.062834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154301, 36.592239, 18.000051>,  <32.818424, 36.401878, 17.895412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154301, 36.592239, 18.000051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043044, 0.538519, -0.841514,
		-0.541351, 0.695354, 0.472676,
		0.839694, 0.475900, 0.261597,
		33.406208, 36.735008, 18.078531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632629, 37.110462, 17.850309>,  <32.818424, 36.401878, 17.895412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632629, 37.110462, 17.850309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025730, 37.048653, 17.809671>,  <33.261589, 37.011566, 17.785288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025730, 37.048653, 17.809671>,  <32.632629, 37.110462, 17.850309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025730, 37.048653, 17.809671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014982, 0.614105, -0.789082,
		0.184320, 0.773950, 0.605827,
		0.982752, -0.154520, -0.101597,
		33.320557, 37.002296, 17.779192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830479, 37.814960, 17.848530>,  <32.632629, 37.110462, 17.850309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830479, 37.814960, 17.848530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113468, 37.604942, 17.659298>,  <33.283264, 37.478931, 17.545759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113468, 37.604942, 17.659298>,  <32.830479, 37.814960, 17.848530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113468, 37.604942, 17.659298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161490, 0.531576, -0.831473,
		0.688040, 0.664645, 0.291287,
		0.707475, -0.525047, -0.473079,
		33.325710, 37.447430, 17.517374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022861, 38.282867, 17.241562>,  <32.830479, 37.814960, 17.848530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022861, 38.282867, 17.241562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168312, 37.921661, 17.150049>,  <33.255581, 37.704937, 17.095142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168312, 37.921661, 17.150049>,  <33.022861, 38.282867, 17.241562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168312, 37.921661, 17.150049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004103, 0.247144, -0.968970,
		0.931536, 0.351404, 0.093573,
		0.363626, -0.903015, -0.228782,
		33.277401, 37.650757, 17.081415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599739, 38.440975, 16.726110>,  <33.022861, 38.282867, 17.241562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599739, 38.440975, 16.726110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467251, 38.064022, 16.707285>,  <33.387760, 37.837852, 16.695990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467251, 38.064022, 16.707285>,  <33.599739, 38.440975, 16.726110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467251, 38.064022, 16.707285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091224, 0.081627, -0.992479,
		0.939135, -0.324432, -0.113004,
		-0.331216, -0.942380, -0.047063,
		33.367886, 37.781307, 16.693167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941864, 38.187836, 16.207672>,  <33.599739, 38.440975, 16.726110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941864, 38.187836, 16.207672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632534, 37.937660, 16.249250>,  <33.446938, 37.787556, 16.274199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632534, 37.937660, 16.249250>,  <33.941864, 38.187836, 16.207672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632534, 37.937660, 16.249250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189039, 0.070962, -0.979402,
		0.605177, -0.777042, -0.173108,
		-0.773321, -0.625436, 0.103947,
		33.400539, 37.750031, 16.280434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993893, 37.738205, 15.620111>,  <33.941864, 38.187836, 16.207672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993893, 37.738205, 15.620111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616199, 37.752434, 15.751047>,  <33.389584, 37.760971, 15.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616199, 37.752434, 15.751047>,  <33.993893, 37.738205, 15.620111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616199, 37.752434, 15.751047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309262, 0.245416, -0.918764,
		-0.113020, -0.968765, -0.220729,
		-0.944237, 0.035576, 0.327339,
		33.332928, 37.763107, 15.849249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656876, 37.403431, 15.198869>,  <33.993893, 37.738205, 15.620111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656876, 37.403431, 15.198869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360447, 37.622971, 15.353569>,  <33.182590, 37.754696, 15.446389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360447, 37.622971, 15.353569>,  <33.656876, 37.403431, 15.198869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360447, 37.622971, 15.353569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317013, 0.221749, -0.922133,
		-0.591877, -0.805971, 0.009662,
		-0.741070, 0.548852, 0.386751,
		33.138126, 37.787624, 15.469595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017284, 37.153400, 14.829015>,  <33.656876, 37.403431, 15.198869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017284, 37.153400, 14.829015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960598, 37.526669, 14.961147>,  <32.926586, 37.750629, 15.040427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960598, 37.526669, 14.961147>,  <33.017284, 37.153400, 14.829015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960598, 37.526669, 14.961147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630655, 0.172106, -0.756739,
		-0.763015, -0.315564, 0.564116,
		-0.141712, 0.933166, 0.330331,
		32.918083, 37.806618, 15.060246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233704, 37.309753, 14.815647>,  <33.017284, 37.153400, 14.829015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233704, 37.309753, 14.815647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466831, 37.633083, 14.782340>,  <32.606709, 37.827084, 14.762356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466831, 37.633083, 14.782340>,  <32.233704, 37.309753, 14.815647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466831, 37.633083, 14.782340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616611, 0.373177, -0.693202,
		-0.529261, 0.455352, 0.715917,
		0.582815, 0.808327, -0.083267,
		32.641674, 37.875580, 14.757360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081825, 38.053520, 15.218807>,  <32.233704, 37.309753, 14.815647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081825, 38.053520, 15.218807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243671, 38.070919, 14.853427>,  <32.340778, 38.081360, 14.634199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243671, 38.070919, 14.853427>,  <32.081825, 38.053520, 15.218807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243671, 38.070919, 14.853427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890628, 0.245412, -0.382824,
		0.207519, 0.968442, 0.138040,
		0.404619, 0.043499, -0.913450,
		32.365059, 38.083969, 14.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974655, 38.766972, 14.912757>,  <32.081825, 38.053520, 15.218807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974655, 38.766972, 14.912757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980675, 38.459572, 14.656887>,  <31.984287, 38.275131, 14.503366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980675, 38.459572, 14.656887>,  <31.974655, 38.766972, 14.912757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980675, 38.459572, 14.656887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924408, 0.233146, -0.301848,
		0.381108, 0.595862, -0.706898,
		0.015050, -0.768499, -0.639674,
		31.985189, 38.229023, 14.464985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849098, 38.991230, 14.162307>,  <31.974655, 38.766972, 14.912757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849098, 38.991230, 14.162307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741632, 38.608059, 14.202680>,  <31.677153, 38.378155, 14.226903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741632, 38.608059, 14.202680>,  <31.849098, 38.991230, 14.162307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741632, 38.608059, 14.202680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945650, 0.242380, -0.216788,
		0.183203, -0.153691, -0.970987,
		-0.268666, -0.957930, 0.100933,
		31.661032, 38.320679, 14.232960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382673, 38.763710, 13.509556>,  <31.849098, 38.991230, 14.162307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382673, 38.763710, 13.509556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280458, 38.556919, 13.836344>,  <31.219130, 38.432846, 14.032416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280458, 38.556919, 13.836344>,  <31.382673, 38.763710, 13.509556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280458, 38.556919, 13.836344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962397, 0.055471, -0.265923,
		0.092157, -0.854202, -0.511709,
		-0.255537, -0.516974, 0.816970,
		31.203798, 38.401829, 14.081434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200993, 39.417015, 13.210937>,  <31.382673, 38.763710, 13.509556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200993, 39.417015, 13.210937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570559, 39.567913, 13.236457>,  <31.792297, 39.658451, 13.251769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570559, 39.567913, 13.236457>,  <31.200993, 39.417015, 13.210937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570559, 39.567913, 13.236457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380975, -0.891773, -0.244127,
		-0.035200, 0.249859, -0.967642,
		0.923915, 0.377241, 0.063800,
		31.847733, 39.681084, 13.255597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011465, 39.564716, 13.844692>,  <31.200993, 39.417015, 13.210937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011465, 39.564716, 13.844692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685631, 39.336014, 13.883761>,  <30.490129, 39.198792, 13.907203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685631, 39.336014, 13.883761>,  <31.011465, 39.564716, 13.844692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685631, 39.336014, 13.883761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052662, 0.094794, 0.994103,
		-0.577645, 0.814928, -0.047108,
		-0.814588, -0.571757, 0.097673,
		30.441254, 39.164486, 13.913063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954620, 39.793964, 14.465197>,  <31.011465, 39.564716, 13.844692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954620, 39.793964, 14.465197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798307, 39.425793, 14.469202>,  <30.704519, 39.204891, 14.471605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798307, 39.425793, 14.469202>,  <30.954620, 39.793964, 14.465197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798307, 39.425793, 14.469202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357857, 0.161939, 0.919627,
		-0.848073, 0.355791, -0.392665,
		-0.390783, -0.920429, 0.010013,
		30.681072, 39.149666, 14.472206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319895, 39.956005, 14.814635>,  <30.954620, 39.793964, 14.465197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319895, 39.956005, 14.814635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449169, 39.578430, 14.841570>,  <30.526733, 39.351887, 14.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449169, 39.578430, 14.841570>,  <30.319895, 39.956005, 14.814635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449169, 39.578430, 14.841570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215604, -0.004159, 0.976472,
		-0.921448, -0.330099, -0.204861,
		0.323184, -0.943937, 0.067338,
		30.546124, 39.295250, 14.861772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849953, 39.463188, 15.079596>,  <30.319895, 39.956005, 14.814635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849953, 39.463188, 15.079596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221035, 39.336723, 15.159001>,  <30.443684, 39.260845, 15.206645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221035, 39.336723, 15.159001>,  <29.849953, 39.463188, 15.079596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221035, 39.336723, 15.159001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145121, 0.184518, 0.972056,
		-0.343955, -0.930589, 0.125297,
		0.927704, -0.316161, 0.198514,
		30.499346, 39.241875, 15.218555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721703, 39.122532, 15.710939>,  <29.849953, 39.463188, 15.079596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721703, 39.122532, 15.710939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121601, 39.125290, 15.719475>,  <30.361540, 39.126945, 15.724596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121601, 39.125290, 15.719475>,  <29.721703, 39.122532, 15.710939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121601, 39.125290, 15.719475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022395, 0.257824, 0.965932,
		0.001159, -0.966167, 0.257913,
		0.999749, 0.006895, 0.021339,
		30.421526, 39.127357, 15.725876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913038, 38.779404, 16.282673>,  <29.721703, 39.122532, 15.710939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913038, 38.779404, 16.282673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234505, 39.007164, 16.213505>,  <30.427383, 39.143822, 16.172003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234505, 39.007164, 16.213505>,  <29.913038, 38.779404, 16.282673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234505, 39.007164, 16.213505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085061, 0.177681, 0.980405,
		0.588971, -0.802626, 0.094362,
		0.803665, 0.569404, -0.172921,
		30.475605, 39.177986, 16.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416449, 38.558167, 16.814371>,  <29.913038, 38.779404, 16.282673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416449, 38.558167, 16.814371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539314, 38.914791, 16.681238>,  <30.613033, 39.128765, 16.601358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539314, 38.914791, 16.681238>,  <30.416449, 38.558167, 16.814371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539314, 38.914791, 16.681238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300498, 0.240980, 0.922838,
		0.902968, -0.383476, -0.193891,
		0.307163, 0.891557, -0.332831,
		30.631464, 39.182259, 16.581388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879261, 38.566841, 17.260466>,  <30.416449, 38.558167, 16.814371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879261, 38.566841, 17.260466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860487, 38.943787, 17.127949>,  <30.849222, 39.169952, 17.048439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860487, 38.943787, 17.127949>,  <30.879261, 38.566841, 17.260466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860487, 38.943787, 17.127949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161801, 0.334448, 0.928421,
		0.985707, -0.010026, -0.168173,
		-0.046936, 0.942361, -0.331290,
		30.846407, 39.226494, 17.028563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501320, 38.837017, 17.508612>,  <30.879261, 38.566841, 17.260466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501320, 38.837017, 17.508612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241999, 39.135441, 17.447809>,  <31.086407, 39.314495, 17.411327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241999, 39.135441, 17.447809>,  <31.501320, 38.837017, 17.508612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241999, 39.135441, 17.447809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262727, 0.406583, 0.875023,
		0.714619, 0.527343, -0.459597,
		-0.648301, 0.746057, -0.152004,
		31.047508, 39.359257, 17.402208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857042, 39.549805, 17.487125>,  <31.501320, 38.837017, 17.508612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857042, 39.549805, 17.487125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476488, 39.612858, 17.592968>,  <31.248156, 39.650688, 17.656473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476488, 39.612858, 17.592968>,  <31.857042, 39.549805, 17.487125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476488, 39.612858, 17.592968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307928, 0.468147, 0.828262,
		0.006685, 0.869477, -0.493928,
		-0.951386, 0.157631, 0.264607,
		31.191072, 39.660149, 17.672350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884281, 40.201870, 17.889301>,  <31.857042, 39.549805, 17.487125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884281, 40.201870, 17.889301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520794, 40.056286, 17.971052>,  <31.302702, 39.968937, 18.020102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520794, 40.056286, 17.971052>,  <31.884281, 40.201870, 17.889301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520794, 40.056286, 17.971052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062940, 0.364551, 0.929054,
		-0.412640, 0.857111, -0.308366,
		-0.908717, -0.363956, 0.204375,
		31.248178, 39.947098, 18.032364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586861, 40.791054, 18.227634>,  <31.884281, 40.201870, 17.889301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586861, 40.791054, 18.227634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424696, 40.435661, 18.313658>,  <31.327398, 40.222427, 18.365271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424696, 40.435661, 18.313658>,  <31.586861, 40.791054, 18.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424696, 40.435661, 18.313658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143882, 0.170305, 0.974830,
		-0.902741, 0.426148, 0.058793,
		-0.405410, -0.888478, 0.215056,
		31.303074, 40.169117, 18.378174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169170, 40.884327, 18.882509>,  <31.586861, 40.791054, 18.227634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169170, 40.884327, 18.882509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251778, 40.495697, 18.836231>,  <31.301342, 40.262520, 18.808464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251778, 40.495697, 18.836231>,  <31.169170, 40.884327, 18.882509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251778, 40.495697, 18.836231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254756, -0.060773, 0.965094,
		-0.944695, -0.228785, 0.234964,
		0.206520, -0.971578, -0.115696,
		31.313734, 40.204224, 18.801523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100971, 40.790161, 19.549334>,  <31.169170, 40.884327, 18.882509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100971, 40.790161, 19.549334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243111, 40.442719, 19.411201>,  <31.328394, 40.234253, 19.328321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243111, 40.442719, 19.411201>,  <31.100971, 40.790161, 19.549334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243111, 40.442719, 19.411201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245505, -0.269744, 0.931110,
		-0.901918, -0.415647, 0.117394,
		0.355347, -0.868606, -0.345330,
		31.349714, 40.182137, 19.307602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767412, 40.221996, 19.950603>,  <31.100971, 40.790161, 19.549334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767412, 40.221996, 19.950603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111540, 40.086662, 19.798086>,  <31.318016, 40.005463, 19.706575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111540, 40.086662, 19.798086>,  <30.767412, 40.221996, 19.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111540, 40.086662, 19.798086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255678, -0.360698, 0.896954,
		-0.441001, -0.869153, -0.223810,
		0.860318, -0.338334, -0.381291,
		31.369635, 39.985161, 19.683699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792341, 39.536720, 20.193008>,  <30.767412, 40.221996, 19.950603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792341, 39.536720, 20.193008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168070, 39.644104, 20.107590>,  <31.393507, 39.708534, 20.056339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168070, 39.644104, 20.107590>,  <30.792341, 39.536720, 20.193008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168070, 39.644104, 20.107590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312180, -0.410967, 0.856533,
		0.142186, -0.871226, -0.469839,
		0.939322, 0.268461, -0.213546,
		31.449867, 39.724644, 20.043526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120850, 38.999306, 20.395134>,  <30.792341, 39.536720, 20.193008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120850, 38.999306, 20.395134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407019, 39.278378, 20.380087>,  <31.578720, 39.445820, 20.371059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407019, 39.278378, 20.380087>,  <31.120850, 38.999306, 20.395134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407019, 39.278378, 20.380087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419072, -0.385404, 0.822096,
		0.559063, -0.603908, -0.568105,
		0.715421, 0.697681, -0.037616,
		31.621645, 39.487682, 20.368803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750162, 38.657127, 20.557615>,  <31.120850, 38.999306, 20.395134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750162, 38.657127, 20.557615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819342, 39.042297, 20.640436>,  <31.860849, 39.273399, 20.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819342, 39.042297, 20.640436>,  <31.750162, 38.657127, 20.557615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819342, 39.042297, 20.640436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431551, -0.263053, 0.862883,
		0.885354, -0.059880, -0.461045,
		0.172949, 0.962921, 0.207054,
		31.871227, 39.331173, 20.702553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555580, 38.836098, 20.620878>,  <31.750162, 38.657127, 20.557615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555580, 38.836098, 20.620878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343399, 39.106709, 20.825203>,  <32.216091, 39.269077, 20.947798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343399, 39.106709, 20.825203>,  <32.555580, 38.836098, 20.620878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343399, 39.106709, 20.825203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481936, -0.255051, 0.838264,
		0.697393, 0.690838, -0.190751,
		-0.530453, 0.676529, 0.510811,
		32.184261, 39.309666, 20.978447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007080, 39.150928, 20.967676>,  <32.555580, 38.836098, 20.620878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007080, 39.150928, 20.967676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691566, 39.263313, 21.186356>,  <32.502258, 39.330746, 21.317564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691566, 39.263313, 21.186356>,  <33.007080, 39.150928, 20.967676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691566, 39.263313, 21.186356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531691, -0.134403, 0.836206,
		0.308420, 0.950261, -0.043370,
		-0.788785, 0.280962, 0.546698,
		32.454929, 39.347603, 21.350365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260563, 39.456665, 21.580982>,  <33.007080, 39.150928, 20.967676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260563, 39.456665, 21.580982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878685, 39.388103, 21.678284>,  <32.649559, 39.346966, 21.736664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878685, 39.388103, 21.678284>,  <33.260563, 39.456665, 21.580982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878685, 39.388103, 21.678284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260390, -0.085505, 0.961710,
		-0.144042, 0.981483, 0.126264,
		-0.954698, -0.171405, 0.243252,
		32.592274, 39.336681, 21.751259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124184, 39.953529, 22.166191>,  <33.260563, 39.456665, 21.580982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124184, 39.953529, 22.166191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857609, 39.655476, 22.176292>,  <32.697666, 39.476643, 22.182354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857609, 39.655476, 22.176292>,  <33.124184, 39.953529, 22.166191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857609, 39.655476, 22.176292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278278, -0.217175, 0.935626,
		-0.691686, 0.630559, 0.352088,
		-0.666432, -0.745138, 0.025254,
		32.657681, 39.431934, 22.183868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736694, 40.025414, 22.916090>,  <33.124184, 39.953529, 22.166191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736694, 40.025414, 22.916090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670052, 39.649712, 22.796066>,  <32.630066, 39.424290, 22.724052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670052, 39.649712, 22.796066>,  <32.736694, 40.025414, 22.916090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670052, 39.649712, 22.796066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162284, -0.274043, 0.947926,
		-0.972577, 0.206625, -0.106769,
		-0.166606, -0.939258, -0.300060,
		32.620071, 39.367935, 22.706049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238735, 39.874577, 23.365757>,  <32.736694, 40.025414, 22.916090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238735, 39.874577, 23.365757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381298, 39.528790, 23.223959>,  <32.466835, 39.321316, 23.138880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381298, 39.528790, 23.223959>,  <32.238735, 39.874577, 23.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381298, 39.528790, 23.223959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015418, -0.384800, 0.922871,
		-0.934204, -0.323451, -0.150473,
		0.356406, -0.864470, -0.354495,
		32.488220, 39.269447, 23.117611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756514, 39.397747, 23.602804>,  <32.238735, 39.874577, 23.365757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756514, 39.397747, 23.602804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094437, 39.202171, 23.515867>,  <32.297192, 39.084827, 23.463705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094437, 39.202171, 23.515867>,  <31.756514, 39.397747, 23.602804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094437, 39.202171, 23.515867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047919, -0.335428, 0.940846,
		-0.532917, -0.805251, -0.259944,
		0.844810, -0.488936, -0.217342,
		32.347881, 39.055489, 23.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692398, 38.729656, 23.765976>,  <31.756514, 39.397747, 23.602804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692398, 38.729656, 23.765976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084198, 38.806248, 23.791027>,  <32.319279, 38.852203, 23.806057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084198, 38.806248, 23.791027>,  <31.692398, 38.729656, 23.765976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084198, 38.806248, 23.791027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018544, -0.395249, 0.918387,
		0.200601, -0.898396, -0.390696,
		0.979497, 0.191475, 0.062627,
		32.378048, 38.863689, 23.809814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997465, 38.172848, 24.061459>,  <31.692398, 38.729656, 23.765976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997465, 38.172848, 24.061459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323997, 38.403687, 24.052000>,  <32.519917, 38.542191, 24.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323997, 38.403687, 24.052000>,  <31.997465, 38.172848, 24.061459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323997, 38.403687, 24.052000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312098, -0.406291, 0.858791,
		0.485999, -0.708439, -0.511780,
		0.816333, 0.577097, -0.023646,
		32.568897, 38.576817, 24.044907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532494, 37.828751, 24.164358>,  <31.997465, 38.172848, 24.061459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532494, 37.828751, 24.164358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647415, 38.195942, 24.273737>,  <32.716370, 38.416256, 24.339363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647415, 38.195942, 24.273737>,  <32.532494, 37.828751, 24.164358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647415, 38.195942, 24.273737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309161, -0.359077, 0.880615,
		0.906572, -0.168470, -0.386968,
		0.287308, 0.917977, 0.273445,
		32.733608, 38.471336, 24.355770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201431, 37.821716, 24.433132>,  <32.532494, 37.828751, 24.164358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201431, 37.821716, 24.433132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036507, 38.152905, 24.585167>,  <32.937550, 38.351616, 24.676388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036507, 38.152905, 24.585167>,  <33.201431, 37.821716, 24.433132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036507, 38.152905, 24.585167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347720, -0.242599, 0.905669,
		0.842073, 0.505586, -0.187873,
		-0.412315, 0.827967, 0.380088,
		32.912811, 38.401295, 24.699194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797440, 38.171238, 24.944830>,  <33.201431, 37.821716, 24.433132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797440, 38.171238, 24.944830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441582, 38.325874, 25.042055>,  <33.228065, 38.418655, 25.100391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441582, 38.325874, 25.042055>,  <33.797440, 38.171238, 24.944830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441582, 38.325874, 25.042055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205698, -0.135962, 0.969125,
		0.407705, 0.912173, 0.041436,
		-0.889643, 0.386593, 0.243064,
		33.174690, 38.441853, 25.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036633, 38.652554, 25.448406>,  <33.797440, 38.171238, 24.944830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036633, 38.652554, 25.448406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655788, 38.538998, 25.493828>,  <33.427280, 38.470863, 25.521080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655788, 38.538998, 25.493828>,  <34.036633, 38.652554, 25.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655788, 38.538998, 25.493828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151158, -0.114213, 0.981889,
		-0.265778, 0.952031, 0.151655,
		-0.952110, -0.283889, 0.113552,
		33.370155, 38.453831, 25.527893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843613, 39.004360, 25.985495>,  <34.036633, 38.652554, 25.448406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843613, 39.004360, 25.985495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544182, 38.740303, 25.960686>,  <33.364525, 38.581867, 25.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544182, 38.740303, 25.960686>,  <33.843613, 39.004360, 25.985495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544182, 38.740303, 25.960686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056213, -0.156392, 0.986094,
		-0.660666, 0.734676, 0.154180,
		-0.748573, -0.660145, -0.062024,
		33.319611, 38.542259, 25.942078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350613, 39.230740, 26.442940>,  <33.843613, 39.004360, 25.985495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350613, 39.230740, 26.442940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294971, 38.837555, 26.394875>,  <33.261585, 38.601643, 26.366035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294971, 38.837555, 26.394875>,  <33.350613, 39.230740, 26.442940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294971, 38.837555, 26.394875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048953, -0.114368, 0.992232,
		-0.989067, 0.143904, -0.032210,
		-0.139103, -0.982961, -0.120162,
		33.253242, 38.542667, 26.358826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727295, 39.023277, 26.824371>,  <33.350613, 39.230740, 26.442940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727295, 39.023277, 26.824371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922359, 38.679440, 26.763329>,  <33.039398, 38.473137, 26.726704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922359, 38.679440, 26.763329>,  <32.727295, 39.023277, 26.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922359, 38.679440, 26.763329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368038, -0.360923, 0.856903,
		-0.791666, -0.361714, -0.492370,
		0.487662, -0.859592, -0.152606,
		33.068657, 38.421562, 26.717546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204762, 38.546360, 26.930855>,  <32.727295, 39.023277, 26.824371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204762, 38.546360, 26.930855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546707, 38.347492, 26.990227>,  <32.751873, 38.228172, 27.025850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546707, 38.347492, 26.990227>,  <32.204762, 38.546360, 26.930855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546707, 38.347492, 26.990227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377330, -0.399346, 0.835551,
		-0.356128, -0.770293, -0.528982,
		0.854865, -0.497164, 0.148436,
		32.803165, 38.198341, 27.034756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071606, 37.927807, 27.298683>,  <32.204762, 38.546360, 26.930855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071606, 37.927807, 27.298683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467575, 37.953262, 27.349272>,  <32.705158, 37.968536, 27.379625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467575, 37.953262, 27.349272>,  <32.071606, 37.927807, 27.298683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467575, 37.953262, 27.349272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091689, -0.392487, 0.915176,
		0.107881, -0.917553, -0.382698,
		0.989927, 0.063642, 0.126471,
		32.764553, 37.972355, 27.387213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200726, 37.410030, 27.692530>,  <32.071606, 37.927807, 27.298683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200726, 37.410030, 27.692530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549538, 37.592159, 27.764364>,  <32.758823, 37.701435, 27.807465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549538, 37.592159, 27.764364>,  <32.200726, 37.410030, 27.692530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549538, 37.592159, 27.764364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011795, -0.347252, 0.937698,
		0.489312, -0.819818, -0.297444,
		0.872029, 0.455318, 0.179584,
		32.811146, 37.728756, 27.818239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562550, 36.912708, 28.124321>,  <32.200726, 37.410030, 27.692530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562550, 36.912708, 28.124321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745064, 37.261078, 28.197308>,  <32.854572, 37.470100, 28.241098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745064, 37.261078, 28.197308>,  <32.562550, 36.912708, 28.124321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745064, 37.261078, 28.197308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061729, -0.173581, 0.982883,
		0.887692, -0.459734, -0.025440,
		0.456281, 0.870927, 0.182466,
		32.881947, 37.522354, 28.252047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254559, 36.777477, 28.506533>,  <32.562550, 36.912708, 28.124321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254559, 36.777477, 28.506533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128765, 37.147251, 28.592804>,  <33.053288, 37.369118, 28.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128765, 37.147251, 28.592804>,  <33.254559, 36.777477, 28.506533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128765, 37.147251, 28.592804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054897, -0.209113, 0.976349,
		0.947673, 0.318888, 0.015014,
		-0.314486, 0.924436, 0.215677,
		33.034420, 37.424583, 28.657507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664852, 36.876575, 29.158747>,  <33.254559, 36.777477, 28.506533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664852, 36.876575, 29.158747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423660, 37.195534, 29.149197>,  <33.278946, 37.386909, 29.143467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423660, 37.195534, 29.149197>,  <33.664852, 36.876575, 29.158747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423660, 37.195534, 29.149197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115810, 0.117104, 0.986344,
		0.789303, 0.591984, -0.162958,
		-0.602983, 0.797397, -0.023873,
		33.242764, 37.434753, 29.142035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954018, 37.231907, 29.651590>,  <33.664852, 36.876575, 29.158747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954018, 37.231907, 29.651590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596268, 37.406612, 29.612961>,  <33.381618, 37.511436, 29.589783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596268, 37.406612, 29.612961>,  <33.954018, 37.231907, 29.651590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596268, 37.406612, 29.612961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082918, 0.050273, 0.995288,
		0.439563, 0.898169, -0.008748,
		-0.894376, 0.436767, -0.096573,
		33.327953, 37.537643, 29.583988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924885, 37.970036, 29.965096>,  <33.954018, 37.231907, 29.651590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924885, 37.970036, 29.965096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553993, 37.820248, 29.963526>,  <33.331459, 37.730377, 29.962584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553993, 37.820248, 29.963526>,  <33.924885, 37.970036, 29.965096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553993, 37.820248, 29.963526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003509, -0.001789, 0.999992,
		-0.374469, 0.927239, 0.000345,
		-0.927233, -0.374465, -0.003924,
		33.275822, 37.707909, 29.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609371, 38.386456, 30.412743>,  <33.924885, 37.970036, 29.965096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609371, 38.386456, 30.412743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396111, 38.051468, 30.364750>,  <33.268154, 37.850475, 30.335955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396111, 38.051468, 30.364750>,  <33.609371, 38.386456, 30.412743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396111, 38.051468, 30.364750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001022, -0.141183, 0.989983,
		-0.846017, 0.527937, 0.074416,
		-0.533155, -0.837466, -0.119983,
		33.236164, 37.800228, 30.328754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068531, 38.820602, 30.131578>,  <33.609371, 38.386456, 30.412743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068531, 38.820602, 30.131578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232113, 39.140873, 30.306704>,  <33.330261, 39.333035, 30.411777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232113, 39.140873, 30.306704>,  <33.068531, 38.820602, 30.131578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232113, 39.140873, 30.306704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131714, 0.526531, -0.839891,
		-0.902999, 0.285812, 0.320788,
		0.408956, 0.800673, 0.437811,
		33.354801, 39.381073, 30.438047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593319, 39.365211, 30.119337>,  <33.068531, 38.820602, 30.131578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593319, 39.365211, 30.119337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960285, 39.524387, 30.118967>,  <33.180466, 39.619892, 30.118746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960285, 39.524387, 30.118967>,  <32.593319, 39.365211, 30.119337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960285, 39.524387, 30.118967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217760, 0.500077, -0.838155,
		-0.333073, 0.769134, 0.545432,
		0.917411, 0.397939, -0.000925,
		33.235508, 39.643768, 30.118690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480724, 40.036076, 29.838152>,  <32.593319, 39.365211, 30.119337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480724, 40.036076, 29.838152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877483, 39.998535, 29.803919>,  <33.115540, 39.976009, 29.783379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877483, 39.998535, 29.803919>,  <32.480724, 40.036076, 29.838152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877483, 39.998535, 29.803919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021580, 0.539478, -0.841723,
		0.125168, 0.836753, 0.533083,
		0.991901, -0.093853, -0.085583,
		33.175053, 39.970379, 29.778244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611843, 40.658363, 29.610910>,  <32.480724, 40.036076, 29.838152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611843, 40.658363, 29.610910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940197, 40.443207, 29.534147>,  <33.137207, 40.314114, 29.488089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940197, 40.443207, 29.534147>,  <32.611843, 40.658363, 29.610910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940197, 40.443207, 29.534147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116478, 0.486658, -0.865793,
		0.559092, 0.688362, 0.462141,
		0.820883, -0.537887, -0.191907,
		33.186462, 40.281841, 29.476576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013779, 41.146606, 29.228783>,  <32.611843, 40.658363, 29.610910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013779, 41.146606, 29.228783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152672, 40.785088, 29.128712>,  <33.236008, 40.568176, 29.068668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152672, 40.785088, 29.128712>,  <33.013779, 41.146606, 29.228783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152672, 40.785088, 29.128712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091280, 0.298083, -0.950166,
		0.933327, 0.307089, 0.186001,
		0.347229, -0.903794, -0.250178,
		33.256840, 40.513950, 29.053658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554531, 41.293465, 28.856735>,  <33.013779, 41.146606, 29.228783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554531, 41.293465, 28.856735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431477, 40.927979, 28.750542>,  <33.357643, 40.708687, 28.686827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431477, 40.927979, 28.750542>,  <33.554531, 41.293465, 28.856735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431477, 40.927979, 28.750542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062540, 0.258992, -0.963853,
		0.949446, -0.313120, -0.022532,
		-0.307637, -0.913717, -0.265482,
		33.339184, 40.653862, 28.670897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937820, 41.221035, 28.275162>,  <33.554531, 41.293465, 28.856735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937820, 41.221035, 28.275162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625965, 40.971645, 28.251701>,  <33.438850, 40.822010, 28.237625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625965, 40.971645, 28.251701>,  <33.937820, 41.221035, 28.275162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625965, 40.971645, 28.251701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014117, 0.076137, -0.996997,
		0.626067, -0.778129, -0.050558,
		-0.779642, -0.623474, -0.058652,
		33.392071, 40.784603, 28.234106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149338, 40.829708, 27.690268>,  <33.937820, 41.221035, 28.275162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149338, 40.829708, 27.690268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763222, 40.736515, 27.737471>,  <33.531551, 40.680599, 27.765793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763222, 40.736515, 27.737471>,  <34.149338, 40.829708, 27.690268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763222, 40.736515, 27.737471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195685, 0.345982, -0.917608,
		0.172955, -0.908855, -0.379565,
		-0.965295, -0.232980, 0.118010,
		33.473633, 40.666622, 27.772873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956886, 40.261997, 27.144896>,  <34.149338, 40.829708, 27.690268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956886, 40.261997, 27.144896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615498, 40.447720, 27.239553>,  <33.410664, 40.559155, 27.296349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615498, 40.447720, 27.239553>,  <33.956886, 40.261997, 27.144896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615498, 40.447720, 27.239553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164479, 0.190889, -0.967733,
		-0.494501, -0.864857, -0.086550,
		-0.853473, 0.464309, 0.236646,
		33.359455, 40.587013, 27.310547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260048, 39.876694, 26.874582>,  <33.956886, 40.261997, 27.144896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260048, 39.876694, 26.874582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224113, 40.273327, 26.911882>,  <33.202553, 40.511307, 26.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224113, 40.273327, 26.911882>,  <33.260048, 39.876694, 26.874582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224113, 40.273327, 26.911882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072352, 0.086881, -0.993588,
		-0.993325, -0.096011, 0.063938,
		-0.089840, 0.991581, 0.093248,
		33.197163, 40.570801, 26.939857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032829, 40.061546, 26.239685>,  <33.260048, 39.876694, 26.874582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032829, 40.061546, 26.239685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038536, 40.422852, 26.411222>,  <33.041962, 40.639637, 26.514145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038536, 40.422852, 26.411222>,  <33.032829, 40.061546, 26.239685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038536, 40.422852, 26.411222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323616, 0.409976, -0.852756,
		-0.946081, -0.126615, 0.298159,
		0.014266, 0.903265, 0.428846,
		33.042816, 40.693832, 26.539877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426830, 40.431297, 26.106445>,  <33.032829, 40.061546, 26.239685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426830, 40.431297, 26.106445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687344, 40.720749, 26.197826>,  <32.843651, 40.894421, 26.252655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687344, 40.720749, 26.197826>,  <32.426830, 40.431297, 26.106445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687344, 40.720749, 26.197826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209167, 0.460584, -0.862619,
		-0.729440, 0.514022, 0.451329,
		0.651280, 0.723632, 0.228453,
		32.882729, 40.937840, 26.266361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098969, 41.076839, 26.041273>,  <32.426830, 40.431297, 26.106445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098969, 41.076839, 26.041273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488831, 41.140976, 25.978876>,  <32.722748, 41.179459, 25.941439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488831, 41.140976, 25.978876>,  <32.098969, 41.076839, 26.041273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488831, 41.140976, 25.978876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219791, 0.556505, -0.801246,
		-0.041666, 0.815225, 0.577644,
		0.974657, 0.160346, -0.155991,
		32.781227, 41.189079, 25.932079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023468, 41.731548, 26.015280>,  <32.098969, 41.076839, 26.041273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023468, 41.731548, 26.015280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381943, 41.647411, 25.859024>,  <32.597027, 41.596928, 25.765270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381943, 41.647411, 25.859024>,  <32.023468, 41.731548, 26.015280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381943, 41.647411, 25.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206091, 0.582349, -0.786382,
		0.392898, 0.785255, 0.478546,
		0.896191, -0.210344, -0.390638,
		32.650799, 41.584309, 25.741833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199879, 42.369438, 25.725704>,  <32.023468, 41.731548, 26.015280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199879, 42.369438, 25.725704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413483, 42.079628, 25.551395>,  <32.541645, 41.905743, 25.446810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413483, 42.079628, 25.551395>,  <32.199879, 42.369438, 25.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413483, 42.079628, 25.551395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200322, 0.392314, -0.897753,
		0.821407, 0.566700, 0.064359,
		0.534005, -0.724528, -0.435772,
		32.573685, 41.862270, 25.420664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494057, 42.726704, 25.207153>,  <32.199879, 42.369438, 25.725704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494057, 42.726704, 25.207153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518410, 42.342007, 25.100317>,  <32.533020, 42.111187, 25.036215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518410, 42.342007, 25.100317>,  <32.494057, 42.726704, 25.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518410, 42.342007, 25.100317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066516, 0.263082, -0.962478,
		0.995926, 0.076364, -0.047955,
		0.060883, -0.961746, -0.267090,
		32.536674, 42.053482, 25.020189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786713, 42.792683, 24.589155>,  <32.494057, 42.726704, 25.207153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786713, 42.792683, 24.589155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674896, 42.409019, 24.571890>,  <32.607807, 42.178822, 24.561531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674896, 42.409019, 24.571890>,  <32.786713, 42.792683, 24.589155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674896, 42.409019, 24.571890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070292, 0.065281, -0.995388,
		0.957556, -0.275222, -0.085671,
		-0.279545, -0.959162, -0.043164,
		32.591034, 42.121269, 24.558941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149921, 42.504688, 24.028490>,  <32.786713, 42.792683, 24.589155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149921, 42.504688, 24.028490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831188, 42.271656, 24.092567>,  <32.639950, 42.131836, 24.131014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831188, 42.271656, 24.092567>,  <33.149921, 42.504688, 24.028490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831188, 42.271656, 24.092567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134242, -0.087801, -0.987051,
		0.589099, -0.808019, -0.008244,
		-0.796832, -0.582578, 0.160194,
		32.592140, 42.096882, 24.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205563, 41.880604, 23.590946>,  <33.149921, 42.504688, 24.028490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205563, 41.880604, 23.590946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812984, 41.899406, 23.665295>,  <32.577438, 41.910686, 23.709904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812984, 41.899406, 23.665295>,  <33.205563, 41.880604, 23.590946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812984, 41.899406, 23.665295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191090, -0.161037, -0.968273,
		-0.015581, -0.985828, 0.167032,
		-0.981449, 0.047004, 0.185873,
		32.518551, 41.913509, 23.721056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924622, 41.297756, 23.363138>,  <33.205563, 41.880604, 23.590946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924622, 41.297756, 23.363138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630257, 41.568562, 23.359636>,  <32.453636, 41.731045, 23.357534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630257, 41.568562, 23.359636>,  <32.924622, 41.297756, 23.363138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630257, 41.568562, 23.359636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085162, -0.105384, -0.990778,
		-0.671696, -0.728384, 0.135210,
		-0.735915, 0.677016, -0.008755,
		32.409481, 41.771667, 23.357010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428299, 40.947304, 22.859655>,  <32.924622, 41.297756, 23.363138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428299, 40.947304, 22.859655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296719, 41.323132, 22.897589>,  <32.217770, 41.548630, 22.920349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296719, 41.323132, 22.897589>,  <32.428299, 40.947304, 22.859655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296719, 41.323132, 22.897589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068892, 0.124033, -0.989884,
		-0.941830, -0.319090, -0.105530,
		-0.328952, 0.939573, 0.094835,
		32.198032, 41.605003, 22.926039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839834, 40.961056, 22.412615>,  <32.428299, 40.947304, 22.859655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839834, 40.961056, 22.412615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926844, 41.348045, 22.464277>,  <31.979050, 41.580238, 22.495275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926844, 41.348045, 22.464277>,  <31.839834, 40.961056, 22.412615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926844, 41.348045, 22.464277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150099, 0.097593, -0.983842,
		-0.964445, 0.233394, -0.123988,
		0.217522, 0.967472, 0.129156,
		31.992100, 41.638287, 22.503023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417786, 41.380566, 21.897785>,  <31.839834, 40.961056, 22.412615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417786, 41.380566, 21.897785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715479, 41.626816, 22.001413>,  <31.894094, 41.774567, 22.063589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715479, 41.626816, 22.001413>,  <31.417786, 41.380566, 21.897785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715479, 41.626816, 22.001413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165153, 0.206215, -0.964469,
		-0.647179, 0.760576, 0.051799,
		0.744234, 0.615629, 0.259069,
		31.938749, 41.811504, 22.079134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344933, 42.005287, 21.435997>,  <31.417786, 41.380566, 21.897785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344933, 42.005287, 21.435997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723726, 42.007088, 21.564495>,  <31.951002, 42.008167, 21.641594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723726, 42.007088, 21.564495>,  <31.344933, 42.005287, 21.435997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723726, 42.007088, 21.564495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314445, 0.192135, -0.929628,
		-0.065906, 0.981358, 0.180534,
		0.946985, 0.004500, 0.321246,
		32.007820, 42.008438, 21.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601519, 42.563385, 21.207104>,  <31.344933, 42.005287, 21.435997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601519, 42.563385, 21.207104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920956, 42.330826, 21.269365>,  <32.112617, 42.191292, 21.306723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920956, 42.330826, 21.269365>,  <31.601519, 42.563385, 21.207104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920956, 42.330826, 21.269365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400117, 0.319638, -0.858917,
		0.449619, 0.748204, 0.487887,
		0.798592, -0.581397, 0.155654,
		32.160534, 42.156406, 21.316061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159523, 42.974586, 20.887642>,  <31.601519, 42.563385, 21.207104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159523, 42.974586, 20.887642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322750, 42.614925, 20.950886>,  <32.420685, 42.399128, 20.988832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322750, 42.614925, 20.950886>,  <32.159523, 42.974586, 20.887642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322750, 42.614925, 20.950886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398388, 0.019550, -0.917009,
		0.821444, 0.437189, 0.366190,
		0.408065, -0.899157, 0.158112,
		32.445171, 42.345177, 20.998320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871853, 43.050880, 20.818296>,  <32.159523, 42.974586, 20.887642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871853, 43.050880, 20.818296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755516, 42.674469, 20.749165>,  <32.685715, 42.448620, 20.707685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755516, 42.674469, 20.749165>,  <32.871853, 43.050880, 20.818296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755516, 42.674469, 20.749165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230292, 0.106475, -0.967279,
		0.928642, -0.321127, 0.185745,
		-0.290842, -0.941032, -0.172830,
		32.668262, 42.392159, 20.697315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384731, 42.875610, 20.437731>,  <32.871853, 43.050880, 20.818296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384731, 42.875610, 20.437731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091389, 42.607899, 20.389969>,  <32.915382, 42.447273, 20.361311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091389, 42.607899, 20.389969>,  <33.384731, 42.875610, 20.437731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091389, 42.607899, 20.389969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065311, 0.105466, -0.992276,
		0.676699, -0.735491, -0.033633,
		-0.733357, -0.669276, -0.119404,
		32.871380, 42.407116, 20.354147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640121, 42.446075, 19.980127>,  <33.384731, 42.875610, 20.437731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640121, 42.446075, 19.980127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247417, 42.370029, 19.979742>,  <33.011795, 42.324402, 19.979511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247417, 42.370029, 19.979742>,  <33.640121, 42.446075, 19.980127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247417, 42.370029, 19.979742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010521, -0.049273, -0.998730,
		0.189830, -0.980524, 0.050375,
		-0.981761, -0.190119, -0.000963,
		32.952888, 42.312996, 19.979454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534615, 42.099457, 19.407440>,  <33.640121, 42.446075, 19.980127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534615, 42.099457, 19.407440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151653, 42.195454, 19.471676>,  <32.921879, 42.253052, 19.510218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151653, 42.195454, 19.471676>,  <33.534615, 42.099457, 19.407440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151653, 42.195454, 19.471676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204795, -0.172248, -0.963530,
		-0.203577, -0.955372, 0.214059,
		-0.957401, 0.239990, 0.160590,
		32.864433, 42.267448, 19.519854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228245, 41.555725, 19.148329>,  <33.534615, 42.099457, 19.407440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228245, 41.555725, 19.148329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968067, 41.857716, 19.115021>,  <32.811962, 42.038910, 19.095036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968067, 41.857716, 19.115021>,  <33.228245, 41.555725, 19.148329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968067, 41.857716, 19.115021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035659, -0.139864, -0.989529,
		-0.758720, -0.640659, 0.117895,
		-0.650440, 0.754979, -0.083272,
		32.772934, 42.084209, 19.090038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723045, 41.314537, 18.782318>,  <33.228245, 41.555725, 19.148329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723045, 41.314537, 18.782318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684246, 41.709259, 18.730450>,  <32.660969, 41.946091, 18.699329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684246, 41.709259, 18.730450>,  <32.723045, 41.314537, 18.782318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684246, 41.709259, 18.730450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010345, -0.131277, -0.991292,
		-0.995231, -0.094809, 0.022941,
		-0.096995, 0.986802, -0.129670,
		32.655148, 42.005299, 18.691549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148930, 41.371143, 18.406326>,  <32.723045, 41.314537, 18.782318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148930, 41.371143, 18.406326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359608, 41.708504, 18.363884>,  <32.486015, 41.910919, 18.338419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359608, 41.708504, 18.363884>,  <32.148930, 41.371143, 18.406326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359608, 41.708504, 18.363884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183441, -0.009107, -0.982988,
		-0.830023, 0.537202, 0.149918,
		0.526698, 0.843404, -0.106104,
		32.517616, 41.961525, 18.332052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947134, 41.447048, 17.777102>,  <32.148930, 41.371143, 18.406326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947134, 41.447048, 17.777102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197052, 41.751022, 17.848797>,  <32.347004, 41.933407, 17.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197052, 41.751022, 17.848797>,  <31.947134, 41.447048, 17.777102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197052, 41.751022, 17.848797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019246, 0.214505, -0.976533,
		-0.780550, 0.613584, 0.119396,
		0.624797, 0.759936, 0.179241,
		32.384491, 41.979004, 17.902569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634153, 42.115051, 17.566544>,  <31.947134, 41.447048, 17.777102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634153, 42.115051, 17.566544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033478, 42.113323, 17.543371>,  <32.273071, 42.112286, 17.529469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033478, 42.113323, 17.543371>,  <31.634153, 42.115051, 17.566544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033478, 42.113323, 17.543371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056870, 0.130625, -0.989799,
		0.011843, 0.991422, 0.130158,
		0.998311, -0.004321, -0.057929,
		32.332970, 42.112026, 17.525993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787971, 42.703785, 17.144478>,  <31.634153, 42.115051, 17.566544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787971, 42.703785, 17.144478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101295, 42.455132, 17.145140>,  <32.289288, 42.305939, 17.145536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101295, 42.455132, 17.145140>,  <31.787971, 42.703785, 17.144478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101295, 42.455132, 17.145140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087952, 0.108193, -0.990232,
		0.615381, 0.775802, 0.139422,
		0.783308, -0.621632, 0.001653,
		32.336288, 42.268642, 17.145636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252377, 42.954952, 16.664137>,  <31.787971, 42.703785, 17.144478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252377, 42.954952, 16.664137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358356, 42.570190, 16.691078>,  <32.421944, 42.339333, 16.707243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358356, 42.570190, 16.691078>,  <32.252377, 42.954952, 16.664137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358356, 42.570190, 16.691078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176611, -0.020261, -0.984072,
		0.947952, 0.272621, 0.164515,
		0.264946, -0.961908, 0.067355,
		32.437840, 42.281616, 16.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992760, 42.879509, 16.421272>,  <32.252377, 42.954952, 16.664137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992760, 42.879509, 16.421272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747036, 42.569359, 16.362724>,  <32.599602, 42.383270, 16.327597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747036, 42.569359, 16.362724>,  <32.992760, 42.879509, 16.421272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747036, 42.569359, 16.362724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336028, -0.089232, -0.937616,
		0.713940, -0.625169, 0.315363,
		-0.614309, -0.775372, -0.146367,
		32.562744, 42.336746, 16.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607792, 42.523411, 16.385258>,  <32.992760, 42.879509, 16.421272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607792, 42.523411, 16.385258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991570, 42.560204, 16.278671>,  <34.221836, 42.582279, 16.214720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991570, 42.560204, 16.278671>,  <33.607792, 42.523411, 16.385258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991570, 42.560204, 16.278671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270622, -0.035921, 0.962015,
		0.078918, -0.995112, -0.059357,
		0.959446, 0.091984, -0.266465,
		34.279404, 42.587799, 16.198732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000919, 41.985195, 16.849098>,  <33.607792, 42.523411, 16.385258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000919, 41.985195, 16.849098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274227, 42.240772, 16.707731>,  <34.438210, 42.394119, 16.622911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274227, 42.240772, 16.707731>,  <34.000919, 41.985195, 16.849098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274227, 42.240772, 16.707731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492368, -0.045754, 0.869184,
		0.539184, -0.767896, -0.345855,
		0.683267, 0.638938, -0.353417,
		34.479206, 42.432453, 16.601706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591496, 41.721043, 17.132891>,  <34.000919, 41.985195, 16.849098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591496, 41.721043, 17.132891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686413, 42.091789, 17.016533>,  <34.743362, 42.314236, 16.946718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686413, 42.091789, 17.016533>,  <34.591496, 41.721043, 17.132891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686413, 42.091789, 17.016533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613539, 0.089176, 0.784613,
		0.753170, -0.364655, -0.547505,
		0.237289, 0.926863, -0.290895,
		34.757599, 42.369846, 16.929264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348690, 41.791660, 17.124178>,  <34.591496, 41.721043, 17.132891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348690, 41.791660, 17.124178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215015, 42.167042, 17.159105>,  <35.134811, 42.392269, 17.180061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215015, 42.167042, 17.159105>,  <35.348690, 41.791660, 17.124178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215015, 42.167042, 17.159105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611851, 0.145546, 0.777467,
		0.716907, 0.313248, -0.622833,
		-0.334190, 0.938452, 0.087318,
		35.114758, 42.448578, 17.185301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986912, 42.244438, 17.161667>,  <35.348690, 41.791660, 17.124178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986912, 42.244438, 17.161667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683884, 42.456444, 17.314068>,  <35.502068, 42.583649, 17.405508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683884, 42.456444, 17.314068>,  <35.986912, 42.244438, 17.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683884, 42.456444, 17.314068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528359, 0.155159, 0.834723,
		0.383302, 0.833670, -0.397584,
		-0.757573, 0.530018, 0.381004,
		35.456612, 42.615448, 17.428370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281567, 42.719864, 17.581575>,  <35.986912, 42.244438, 17.161667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281567, 42.719864, 17.581575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903801, 42.724499, 17.712997>,  <35.677143, 42.727280, 17.791851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903801, 42.724499, 17.712997>,  <36.281567, 42.719864, 17.581575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903801, 42.724499, 17.712997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319372, 0.269439, 0.908518,
		-0.078001, 0.962948, -0.258161,
		-0.944414, 0.011584, 0.328555,
		35.620476, 42.727974, 17.811563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218533, 43.283031, 18.159342>,  <36.281567, 42.719864, 17.581575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218533, 43.283031, 18.159342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916386, 43.030575, 18.229862>,  <35.735096, 42.879101, 18.272175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916386, 43.030575, 18.229862>,  <36.218533, 43.283031, 18.159342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916386, 43.030575, 18.229862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286115, -0.075610, 0.955208,
		-0.589537, 0.771977, 0.237692,
		-0.755370, -0.631137, 0.176299,
		35.689774, 42.841232, 18.282751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003864, 43.624683, 18.680922>,  <36.218533, 43.283031, 18.159342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003864, 43.624683, 18.680922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892548, 43.240494, 18.683195>,  <35.825756, 43.009979, 18.684559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892548, 43.240494, 18.683195>,  <36.003864, 43.624683, 18.680922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892548, 43.240494, 18.683195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269979, -0.072546, 0.960129,
		-0.921772, 0.268734, 0.279498,
		-0.278296, -0.960479, 0.005682,
		35.809059, 42.952351, 18.684900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534702, 43.583855, 19.171875>,  <36.003864, 43.624683, 18.680922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534702, 43.583855, 19.171875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640110, 43.200695, 19.126293>,  <35.703354, 42.970798, 19.098944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640110, 43.200695, 19.126293>,  <35.534702, 43.583855, 19.171875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640110, 43.200695, 19.126293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011180, -0.115091, 0.993292,
		-0.964589, -0.263028, -0.019620,
		0.263522, -0.957899, -0.113956,
		35.719166, 42.913326, 19.092106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297722, 43.308537, 19.657660>,  <35.534702, 43.583855, 19.171875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297722, 43.308537, 19.657660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541821, 43.008034, 19.557091>,  <35.688282, 42.827732, 19.496750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541821, 43.008034, 19.557091>,  <35.297722, 43.308537, 19.657660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541821, 43.008034, 19.557091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015591, -0.305917, 0.951931,
		-0.792055, -0.584836, -0.174973,
		0.610250, -0.751253, -0.251421,
		35.724895, 42.782658, 19.481665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028759, 42.676960, 20.105602>,  <35.297722, 43.308537, 19.657660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028759, 42.676960, 20.105602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411621, 42.614143, 20.008278>,  <35.641338, 42.576454, 19.949884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411621, 42.614143, 20.008278>,  <35.028759, 42.676960, 20.105602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411621, 42.614143, 20.008278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150245, -0.448956, 0.880832,
		-0.247566, -0.879645, -0.406123,
		0.957151, -0.157046, -0.243309,
		35.698765, 42.567028, 19.935286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104294, 41.937019, 20.180670>,  <35.028759, 42.676960, 20.105602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104294, 41.937019, 20.180670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465115, 42.108299, 20.202396>,  <35.681606, 42.211067, 20.215433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465115, 42.108299, 20.202396>,  <35.104294, 41.937019, 20.180670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465115, 42.108299, 20.202396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129860, -0.389240, 0.911937,
		0.411638, -0.815557, -0.406720,
		0.902048, 0.428204, 0.054318,
		35.735729, 42.236759, 20.218691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526382, 41.510990, 20.424927>,  <35.104294, 41.937019, 20.180670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526382, 41.510990, 20.424927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751198, 41.832424, 20.503267>,  <35.886086, 42.025284, 20.550272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751198, 41.832424, 20.503267>,  <35.526382, 41.510990, 20.424927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751198, 41.832424, 20.503267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084015, -0.291031, 0.953017,
		0.822833, -0.519179, -0.231084,
		0.562039, 0.803589, 0.195852,
		35.919811, 42.073502, 20.562023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120052, 41.253159, 20.791857>,  <35.526382, 41.510990, 20.424927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120052, 41.253159, 20.791857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056549, 41.638096, 20.880116>,  <36.018448, 41.869061, 20.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056549, 41.638096, 20.880116>,  <36.120052, 41.253159, 20.791857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056549, 41.638096, 20.880116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069903, -0.211963, 0.974774,
		0.984839, 0.170179, -0.033619,
		-0.158760, 0.962346, 0.220646,
		36.008923, 41.926800, 20.946310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436172, 41.289146, 21.421566>,  <36.120052, 41.253159, 20.791857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436172, 41.289146, 21.421566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272003, 41.653896, 21.419134>,  <36.173504, 41.872746, 21.417675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272003, 41.653896, 21.419134>,  <36.436172, 41.289146, 21.421566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272003, 41.653896, 21.419134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044779, -0.013495, 0.998906,
		0.910797, 0.410243, 0.046372,
		-0.410420, 0.911876, -0.006080,
		36.148876, 41.927460, 21.417311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782665, 41.752590, 21.873039>,  <36.436172, 41.289146, 21.421566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782665, 41.752590, 21.873039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400253, 41.867004, 21.847160>,  <36.170807, 41.935654, 21.831633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400253, 41.867004, 21.847160>,  <36.782665, 41.752590, 21.873039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400253, 41.867004, 21.847160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031575, 0.118940, 0.992399,
		0.291561, 0.950807, -0.104679,
		-0.956031, 0.286040, -0.064700,
		36.113445, 41.952816, 21.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742863, 42.099850, 22.382809>,  <36.782665, 41.752590, 21.873039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742863, 42.099850, 22.382809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348087, 42.077953, 22.322199>,  <36.111221, 42.064816, 22.285833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348087, 42.077953, 22.322199>,  <36.742863, 42.099850, 22.382809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348087, 42.077953, 22.322199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158174, 0.150565, 0.975864,
		-0.030605, 0.987083, -0.157257,
		-0.986937, -0.054740, -0.151523,
		36.052006, 42.061531, 22.276741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441319, 42.712460, 22.741112>,  <36.742863, 42.099850, 22.382809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441319, 42.712460, 22.741112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155289, 42.438206, 22.686596>,  <35.983673, 42.273655, 22.653887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155289, 42.438206, 22.686596>,  <36.441319, 42.712460, 22.741112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155289, 42.438206, 22.686596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254482, 0.073735, 0.964263,
		-0.651084, 0.724201, -0.227207,
		-0.715073, -0.685636, -0.136288,
		35.940765, 42.232513, 22.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846310, 43.043011, 23.095366>,  <36.441319, 42.712460, 22.741112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846310, 43.043011, 23.095366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780819, 42.652260, 23.040359>,  <35.741524, 42.417809, 23.007357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780819, 42.652260, 23.040359>,  <35.846310, 43.043011, 23.095366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780819, 42.652260, 23.040359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285809, -0.086447, 0.954379,
		-0.944197, 0.195558, -0.265046,
		-0.163724, -0.976875, -0.137516,
		35.731701, 42.359196, 22.999105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265709, 42.946495, 23.421824>,  <35.846310, 43.043011, 23.095366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265709, 42.946495, 23.421824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346832, 42.554958, 23.410927>,  <35.395504, 42.320038, 23.404388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346832, 42.554958, 23.410927>,  <35.265709, 42.946495, 23.421824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346832, 42.554958, 23.410927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309170, -0.090404, 0.946700,
		-0.929130, -0.183575, -0.320963,
		0.202806, -0.978840, -0.027241,
		35.407673, 42.261307, 23.402754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665455, 42.479507, 23.726454>,  <35.265709, 42.946495, 23.421824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665455, 42.479507, 23.726454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017059, 42.291115, 23.756145>,  <35.228024, 42.178078, 23.773960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017059, 42.291115, 23.756145>,  <34.665455, 42.479507, 23.726454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017059, 42.291115, 23.756145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193925, -0.210934, 0.958071,
		-0.435581, -0.856551, -0.276750,
		0.879012, -0.470986, 0.074227,
		35.280762, 42.149818, 23.778414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616325, 41.692352, 23.837217>,  <34.665455, 42.479507, 23.726454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616325, 41.692352, 23.837217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979378, 41.780563, 23.980085>,  <35.197208, 41.833488, 24.065805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979378, 41.780563, 23.980085>,  <34.616325, 41.692352, 23.837217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979378, 41.780563, 23.980085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272539, -0.337558, 0.900987,
		0.319257, -0.915108, -0.246277,
		0.907633, 0.220526, 0.357170,
		35.251667, 41.846722, 24.087236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695602, 41.217564, 24.389847>,  <34.616325, 41.692352, 23.837217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695602, 41.217564, 24.389847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005886, 41.454144, 24.477901>,  <35.192059, 41.596092, 24.530735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005886, 41.454144, 24.477901>,  <34.695602, 41.217564, 24.389847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005886, 41.454144, 24.477901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047624, -0.292969, 0.954935,
		0.629286, -0.751240, -0.199093,
		0.775713, 0.591446, 0.220139,
		35.238602, 41.631577, 24.543943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147346, 40.834820, 24.718582>,  <34.695602, 41.217564, 24.389847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147346, 40.834820, 24.718582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268494, 41.191959, 24.851900>,  <35.341183, 41.406242, 24.931890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268494, 41.191959, 24.851900>,  <35.147346, 40.834820, 24.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268494, 41.191959, 24.851900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030640, -0.340417, 0.939775,
		0.952540, -0.294840, -0.075745,
		0.302868, 0.892853, 0.333295,
		35.359356, 41.459816, 24.951889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666790, 40.636944, 25.156940>,  <35.147346, 40.834820, 24.718582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666790, 40.636944, 25.156940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558765, 41.012566, 25.242023>,  <35.493950, 41.237938, 25.293074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558765, 41.012566, 25.242023>,  <35.666790, 40.636944, 25.156940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558765, 41.012566, 25.242023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013155, -0.217298, 0.976017,
		0.962754, 0.266381, 0.046330,
		-0.270060, 0.939054, 0.212709,
		35.477749, 41.294281, 25.305836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131084, 40.863239, 25.710188>,  <35.666790, 40.636944, 25.156940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131084, 40.863239, 25.710188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838165, 41.132339, 25.752422>,  <35.662415, 41.293800, 25.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838165, 41.132339, 25.752422>,  <36.131084, 40.863239, 25.710188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838165, 41.132339, 25.752422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066104, -0.084091, 0.994263,
		0.677773, 0.735072, 0.017108,
		-0.732293, 0.672754, 0.105586,
		35.618477, 41.334167, 25.784098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345272, 41.641457, 25.954309>,  <36.131084, 40.863239, 25.710188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345272, 41.641457, 25.954309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967552, 41.571842, 26.066031>,  <35.740921, 41.530075, 26.133062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967552, 41.571842, 26.066031>,  <36.345272, 41.641457, 25.954309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967552, 41.571842, 26.066031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272830, 0.060555, 0.960155,
		-0.184016, 0.982875, -0.009700,
		-0.944300, -0.174037, 0.279301,
		35.684261, 41.519630, 26.149820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231186, 42.134289, 26.366552>,  <36.345272, 41.641457, 25.954309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231186, 42.134289, 26.366552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964878, 41.855030, 26.471882>,  <35.805092, 41.687473, 26.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964878, 41.855030, 26.471882>,  <36.231186, 42.134289, 26.366552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964878, 41.855030, 26.471882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327051, 0.044161, 0.943974,
		-0.670663, 0.714590, 0.198929,
		-0.665769, -0.698149, 0.263325,
		35.765148, 41.645584, 26.550879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026684, 42.389080, 27.037163>,  <36.231186, 42.134289, 26.366552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026684, 42.389080, 27.037163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870483, 42.020840, 27.037630>,  <35.776764, 41.799896, 27.037910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870483, 42.020840, 27.037630>,  <36.026684, 42.389080, 27.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870483, 42.020840, 27.037630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142137, 0.061547, 0.987932,
		-0.909565, 0.385620, -0.154886,
		-0.390499, -0.920603, 0.001171,
		35.753334, 41.744659, 27.037981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294422, 42.391327, 27.280178>,  <36.026684, 42.389080, 27.037163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294422, 42.391327, 27.280178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424603, 42.018852, 27.345879>,  <35.502708, 41.795368, 27.385300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424603, 42.018852, 27.345879>,  <35.294422, 42.391327, 27.280178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424603, 42.018852, 27.345879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149294, 0.120926, 0.981370,
		-0.933699, -0.343907, -0.099665,
		0.325448, -0.931185, 0.164252,
		35.522236, 41.739498, 27.395155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012825, 42.250580, 27.973143>,  <35.294422, 42.391327, 27.280178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012825, 42.250580, 27.973143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256584, 41.933537, 27.965065>,  <35.402840, 41.743309, 27.960218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256584, 41.933537, 27.965065>,  <35.012825, 42.250580, 27.973143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256584, 41.933537, 27.965065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030267, -0.002197, 0.999539,
		-0.792286, -0.609729, 0.022651,
		0.609398, -0.792607, -0.020196,
		35.439404, 41.695755, 27.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772831, 41.813477, 28.411175>,  <35.012825, 42.250580, 27.973143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772831, 41.813477, 28.411175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160824, 41.720955, 28.381176>,  <35.393620, 41.665443, 28.363176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160824, 41.720955, 28.381176>,  <34.772831, 41.813477, 28.411175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160824, 41.720955, 28.381176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068055, -0.037854, 0.996963,
		-0.233443, -0.972144, -0.020976,
		0.969986, -0.231306, -0.074996,
		35.451820, 41.651562, 28.358677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852753, 41.501266, 29.004971>,  <34.772831, 41.813477, 28.411175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852753, 41.501266, 29.004971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223370, 41.540565, 28.859722>,  <35.445740, 41.564144, 28.772573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223370, 41.540565, 28.859722>,  <34.852753, 41.501266, 29.004971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223370, 41.540565, 28.859722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374832, -0.159483, 0.913272,
		0.031816, -0.982300, -0.184595,
		0.926547, 0.098249, -0.363123,
		35.501335, 41.570042, 28.750786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228199, 40.895966, 29.246378>,  <34.852753, 41.501266, 29.004971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228199, 40.895966, 29.246378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475952, 41.200874, 29.171219>,  <35.624603, 41.383820, 29.126123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475952, 41.200874, 29.171219>,  <35.228199, 40.895966, 29.246378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475952, 41.200874, 29.171219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478283, -0.176573, 0.860272,
		0.622585, -0.622705, -0.473949,
		0.619382, 0.762273, -0.187897,
		35.661766, 41.429558, 29.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779514, 40.691730, 29.499783>,  <35.228199, 40.895966, 29.246378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779514, 40.691730, 29.499783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876396, 41.077908, 29.461306>,  <35.934525, 41.309616, 29.438219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876396, 41.077908, 29.461306>,  <35.779514, 40.691730, 29.499783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876396, 41.077908, 29.461306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538518, -0.051301, 0.841051,
		0.807055, -0.255503, -0.532335,
		0.242201, 0.965446, -0.096190,
		35.949055, 41.367542, 29.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467815, 40.671070, 29.624384>,  <35.779514, 40.691730, 29.499783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467815, 40.671070, 29.624384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318138, 41.036362, 29.688871>,  <36.228333, 41.255535, 29.727564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318138, 41.036362, 29.688871>,  <36.467815, 40.671070, 29.624384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318138, 41.036362, 29.688871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583728, 0.096868, 0.806150,
		0.720583, 0.395765, -0.569325,
		-0.374195, 0.913229, 0.161218,
		36.205879, 41.310329, 29.737236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005875, 41.093952, 29.667616>,  <36.467815, 40.671070, 29.624384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005875, 41.093952, 29.667616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710335, 41.280624, 29.862062>,  <36.533012, 41.392628, 29.978731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710335, 41.280624, 29.862062>,  <37.005875, 41.093952, 29.667616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710335, 41.280624, 29.862062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548302, -0.003031, 0.836275,
		0.391746, 0.884421, -0.253641,
		-0.738851, 0.466679, 0.486117,
		36.488678, 41.420628, 30.007898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338585, 41.590336, 29.930206>,  <37.005875, 41.093952, 29.667616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338585, 41.590336, 29.930206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023281, 41.558205, 30.174236>,  <36.834099, 41.538925, 30.320654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023281, 41.558205, 30.174236>,  <37.338585, 41.590336, 29.930206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023281, 41.558205, 30.174236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611761, 0.004518, 0.791030,
		-0.066301, 0.996758, 0.045582,
		-0.788259, -0.080332, 0.610077,
		36.786804, 41.534103, 30.357260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383488, 42.133068, 30.494102>,  <37.338585, 41.590336, 29.930206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383488, 42.133068, 30.494102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147232, 41.836811, 30.622223>,  <37.005478, 41.659058, 30.699095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147232, 41.836811, 30.622223>,  <37.383488, 42.133068, 30.494102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147232, 41.836811, 30.622223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519712, -0.045510, 0.853129,
		-0.617287, 0.670355, 0.411801,
		-0.590640, -0.740643, 0.320299,
		36.970039, 41.614616, 30.718313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575352, 42.249050, 31.215446>,  <37.383488, 42.133068, 30.494102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575352, 42.249050, 31.215446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369301, 41.906204, 31.215645>,  <37.245670, 41.700497, 31.215765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369301, 41.906204, 31.215645>,  <37.575352, 42.249050, 31.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369301, 41.906204, 31.215645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480513, -0.288305, 0.828243,
		-0.709757, 0.426887, 0.560369,
		-0.515123, -0.857116, 0.000498,
		37.214764, 41.649071, 31.215794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311417, 42.239075, 31.866585>,  <37.575352, 42.249050, 31.215446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311417, 42.239075, 31.866585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302967, 41.874443, 31.702351>,  <37.297897, 41.655666, 31.603809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302967, 41.874443, 31.702351>,  <37.311417, 42.239075, 31.866585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302967, 41.874443, 31.702351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266117, -0.400989, 0.876579,
		-0.963709, -0.090746, 0.251057,
		-0.021125, -0.911577, -0.410586,
		37.296631, 41.600971, 31.579174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074352, 41.855732, 32.339546>,  <37.311417, 42.239075, 31.866585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074352, 41.855732, 32.339546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239590, 41.573357, 32.109417>,  <37.338730, 41.403931, 31.971338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239590, 41.573357, 32.109417>,  <37.074352, 41.855732, 32.339546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239590, 41.573357, 32.109417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099658, -0.592913, 0.799076,
		-0.905221, -0.387425, -0.174573,
		0.413089, -0.705943, -0.575328,
		37.363518, 41.361572, 31.936819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729652, 41.226051, 32.441006>,  <37.074352, 41.855732, 32.339546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729652, 41.226051, 32.441006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108738, 41.179848, 32.322018>,  <37.336189, 41.152126, 32.250626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108738, 41.179848, 32.322018>,  <36.729652, 41.226051, 32.441006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108738, 41.179848, 32.322018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196604, -0.522899, 0.829411,
		-0.251351, -0.844532, -0.472852,
		0.947718, -0.115508, -0.297470,
		37.393055, 41.145195, 32.232777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017803, 40.502144, 32.413170>,  <36.729652, 41.226051, 32.441006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017803, 40.502144, 32.413170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245861, 40.808743, 32.531433>,  <37.382694, 40.992702, 32.602390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245861, 40.808743, 32.531433>,  <37.017803, 40.502144, 32.413170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245861, 40.808743, 32.531433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108037, -0.426710, 0.897912,
		0.814411, -0.479995, -0.326096,
		0.570142, 0.766501, 0.295660,
		37.416904, 41.038692, 32.620132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404392, 39.852665, 32.689823>,  <37.017803, 40.502144, 32.413170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404392, 39.852665, 32.689823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531013, 40.226021, 32.757442>,  <37.606987, 40.450035, 32.798012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531013, 40.226021, 32.757442>,  <37.404392, 39.852665, 32.689823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531013, 40.226021, 32.757442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947476, -0.302557, -0.103680,
		-0.045628, 0.192986, -0.980140,
		0.316557, 0.933389, 0.169045,
		37.625980, 40.506039, 32.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667824, 40.225544, 32.109943>,  <37.404392, 39.852665, 32.689823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667824, 40.225544, 32.109943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852661, 40.323189, 32.450974>,  <37.963562, 40.381775, 32.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852661, 40.323189, 32.450974>,  <37.667824, 40.225544, 32.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852661, 40.323189, 32.450974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825178, -0.470549, -0.312513,
		0.324891, 0.847935, -0.418870,
		0.462089, 0.244110, 0.852575,
		37.991287, 40.396423, 32.706745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225655, 40.669567, 32.340660>,  <37.667824, 40.225544, 32.109943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225655, 40.669567, 32.340660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313240, 40.364708, 32.584362>,  <38.365791, 40.181793, 32.730583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313240, 40.364708, 32.584362>,  <38.225655, 40.669567, 32.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313240, 40.364708, 32.584362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489646, -0.625919, -0.607020,
		0.843979, -0.165401, -0.510237,
		0.218965, -0.762147, 0.609250,
		38.378929, 40.136063, 32.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579567, 40.077675, 32.017582>,  <38.225655, 40.669567, 32.340660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579567, 40.077675, 32.017582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389038, 39.913036, 32.328377>,  <38.274723, 39.814255, 32.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389038, 39.913036, 32.328377>,  <38.579567, 40.077675, 32.017582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389038, 39.913036, 32.328377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287215, -0.762363, -0.579923,
		0.831040, -0.499390, 0.244911,
		-0.476319, -0.411597, 0.776987,
		38.246143, 39.789558, 32.561474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675568, 39.391148, 32.002029>,  <38.579567, 40.077675, 32.017582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675568, 39.391148, 32.002029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 39.383678, 32.252163>,  <38.176281, 39.379196, 32.402241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 39.383678, 32.252163>,  <38.675568, 39.391148, 32.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363514, 39.383678, 32.252163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311443, -0.855300, -0.414083,
		0.542579, -0.517796, 0.661434,
		-0.780135, -0.018673, 0.625332,
		38.129475, 39.378075, 32.439762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653664, 38.693909, 32.421738>,  <38.675568, 39.391148, 32.002029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653664, 38.693909, 32.421738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297989, 38.873207, 32.385044>,  <38.084583, 38.980789, 32.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297989, 38.873207, 32.385044>,  <38.653664, 38.693909, 32.421738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297989, 38.873207, 32.385044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392241, -0.850029, -0.351564,
		-0.235564, -0.276625, 0.931659,
		-0.889189, 0.448251, -0.091733,
		38.031231, 39.007683, 32.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762562, 38.026699, 31.970375>,  <38.653664, 38.693909, 32.421738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762562, 38.026699, 31.970375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545696, 38.166225, 32.276154>,  <38.415577, 38.249943, 32.459621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545696, 38.166225, 32.276154>,  <38.762562, 38.026699, 31.970375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545696, 38.166225, 32.276154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703285, -0.686237, -0.185659,
		0.459831, -0.638282, 0.617374,
		-0.542168, 0.348818, 0.764447,
		38.383045, 38.270870, 32.505489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650753, 37.601902, 32.557796>,  <38.762562, 38.026699, 31.970375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650753, 37.601902, 32.557796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343517, 37.855114, 32.519218>,  <38.159176, 38.007042, 32.496071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343517, 37.855114, 32.519218>,  <38.650753, 37.601902, 32.557796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343517, 37.855114, 32.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627368, -0.774111, -0.084626,
		-0.128227, -0.004497, 0.991735,
		-0.768094, 0.633034, -0.096440,
		38.113091, 38.045025, 32.490288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242683, 37.311157, 32.999432>,  <38.650753, 37.601902, 32.557796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242683, 37.311157, 32.999432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018795, 37.535400, 32.755322>,  <37.884464, 37.669945, 32.608856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018795, 37.535400, 32.755322>,  <38.242683, 37.311157, 32.999432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018795, 37.535400, 32.755322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582995, -0.789759, -0.190781,
		-0.588925, 0.249005, 0.768872,
		-0.559718, 0.560604, -0.610278,
		37.850880, 37.703583, 32.572239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592915, 37.079628, 33.151653>,  <38.242683, 37.311157, 32.999432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592915, 37.079628, 33.151653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639702, 37.245205, 32.790550>,  <37.667774, 37.344551, 32.573887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639702, 37.245205, 32.790550>,  <37.592915, 37.079628, 33.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639702, 37.245205, 32.790550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546245, -0.732336, -0.406572,
		-0.829419, 0.540682, 0.140456,
		0.116965, 0.413942, -0.902758,
		37.674789, 37.369389, 32.519722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907234, 37.031963, 32.786610>,  <37.592915, 37.079628, 33.151653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907234, 37.031963, 32.786610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158150, 37.129753, 32.490841>,  <37.308701, 37.188427, 32.313381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158150, 37.129753, 32.490841>,  <36.907234, 37.031963, 32.786610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158150, 37.129753, 32.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569068, -0.504287, -0.649505,
		-0.531665, 0.828208, -0.177213,
		0.627291, 0.244473, -0.739418,
		37.346336, 37.203094, 32.269016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240658, 37.186359, 33.040718>,  <36.907234, 37.031963, 32.786610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240658, 37.186359, 33.040718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967281, 36.932274, 32.896824>,  <35.803257, 36.779823, 32.810486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967281, 36.932274, 32.896824>,  <36.240658, 37.186359, 33.040718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967281, 36.932274, 32.896824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414342, -0.068175, 0.907564,
		-0.601022, 0.769322, -0.216602,
		-0.683442, -0.635213, -0.359737,
		35.762249, 36.741711, 32.788902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565037, 37.343731, 33.287376>,  <36.240658, 37.186359, 33.040718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565037, 37.343731, 33.287376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483948, 36.970741, 33.167778>,  <35.435295, 36.746948, 33.096020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483948, 36.970741, 33.167778>,  <35.565037, 37.343731, 33.287376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483948, 36.970741, 33.167778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371516, -0.209268, 0.904534,
		-0.906024, 0.294452, -0.304004,
		-0.202724, -0.932472, -0.298996,
		35.423130, 36.690998, 33.078079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794983, 37.081436, 33.461178>,  <35.565037, 37.343731, 33.287376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794983, 37.081436, 33.461178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074162, 36.794987, 33.463905>,  <35.241669, 36.623119, 33.465542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074162, 36.794987, 33.463905>,  <34.794983, 37.081436, 33.461178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074162, 36.794987, 33.463905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309896, -0.293422, 0.904360,
		-0.645632, -0.633304, -0.426715,
		0.697943, -0.716121, 0.006815,
		35.283543, 36.580151, 33.465950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515312, 36.408646, 33.034996>,  <34.794983, 37.081436, 33.461178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515312, 36.408646, 33.034996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754688, 36.088787, 33.054726>,  <34.898312, 35.896870, 33.066563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754688, 36.088787, 33.054726>,  <34.515312, 36.408646, 33.034996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754688, 36.088787, 33.054726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335912, -0.194545, 0.921583,
		-0.727349, -0.568076, -0.385035,
		0.598436, -0.799651, 0.049322,
		34.934219, 35.848892, 33.069523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143200, 35.691719, 33.366749>,  <34.515312, 36.408646, 33.034996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143200, 35.691719, 33.366749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533321, 35.681805, 33.454544>,  <34.767395, 35.675854, 33.507221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533321, 35.681805, 33.454544>,  <34.143200, 35.691719, 33.366749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533321, 35.681805, 33.454544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220343, -0.178424, 0.958965,
		0.015390, -0.983642, -0.179479,
		0.975301, -0.024788, 0.219484,
		34.825912, 35.674370, 33.520390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345577, 35.098694, 33.801399>,  <34.143200, 35.691719, 33.366749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345577, 35.098694, 33.801399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643047, 35.347813, 33.898624>,  <34.821529, 35.497284, 33.956959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643047, 35.347813, 33.898624>,  <34.345577, 35.098694, 33.801399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643047, 35.347813, 33.898624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149167, -0.199825, 0.968411,
		0.651690, -0.756437, -0.055704,
		0.743673, 0.622795, 0.243059,
		34.866150, 35.534653, 33.971542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729904, 34.768353, 34.388004>,  <34.345577, 35.098694, 33.801399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729904, 34.768353, 34.388004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801178, 35.160957, 34.415974>,  <34.843941, 35.396519, 34.432755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801178, 35.160957, 34.415974>,  <34.729904, 34.768353, 34.388004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801178, 35.160957, 34.415974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016220, -0.068125, 0.997545,
		0.983863, -0.178881, 0.003781,
		0.178185, 0.981509, 0.069928,
		34.854633, 35.455410, 34.436951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267616, 34.815460, 34.895584>,  <34.729904, 34.768353, 34.388004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267616, 34.815460, 34.895584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113785, 35.184689, 34.893188>,  <35.021484, 35.406227, 34.891750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113785, 35.184689, 34.893188>,  <35.267616, 34.815460, 34.895584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113785, 35.184689, 34.893188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122172, -0.044470, 0.991512,
		0.914971, 0.382047, 0.129876,
		-0.384579, 0.923072, -0.005987,
		34.998409, 35.461609, 34.891392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697273, 35.328568, 35.272034>,  <35.267616, 34.815460, 34.895584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697273, 35.328568, 35.272034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299301, 35.362999, 35.292850>,  <35.060520, 35.383656, 35.305340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299301, 35.362999, 35.292850>,  <35.697273, 35.328568, 35.272034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299301, 35.362999, 35.292850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017634, -0.360153, 0.932726,
		0.099029, 0.928914, 0.356809,
		-0.994928, 0.086075, 0.052046,
		35.000824, 35.388821, 35.308464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510414, 35.788975, 35.806076>,  <35.697273, 35.328568, 35.272034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510414, 35.788975, 35.806076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236004, 35.504059, 35.746735>,  <35.071358, 35.333111, 35.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236004, 35.504059, 35.746735>,  <35.510414, 35.788975, 35.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236004, 35.504059, 35.746735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124279, -0.315621, 0.940712,
		-0.716881, 0.626919, 0.305048,
		-0.686029, -0.712289, -0.148349,
		35.030193, 35.290371, 35.702229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004002, 35.789452, 36.335918>,  <35.510414, 35.788975, 35.806076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004002, 35.789452, 36.335918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021317, 35.414055, 36.198887>,  <35.031708, 35.188816, 36.116669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021317, 35.414055, 36.198887>,  <35.004002, 35.789452, 36.335918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021317, 35.414055, 36.198887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090993, -0.345175, 0.934117,
		-0.994910, -0.009266, -0.100339,
		0.043290, -0.938492, -0.342575,
		35.034302, 35.132507, 36.096115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020618, 35.371334, 36.881596>,  <35.004002, 35.789452, 36.335918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020618, 35.371334, 36.881596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273941, 35.232563, 37.158310>,  <35.425934, 35.149300, 37.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273941, 35.232563, 37.158310>,  <35.020618, 35.371334, 36.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273941, 35.232563, 37.158310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382176, -0.637093, -0.669368,
		0.672953, 0.688298, -0.270888,
		0.633306, -0.346926, 0.691784,
		35.463932, 35.128487, 37.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738251, 35.242878, 36.602627>,  <35.020618, 35.371334, 36.881596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738251, 35.242878, 36.602627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711826, 34.987595, 36.909439>,  <35.695972, 34.834427, 37.093525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711826, 34.987595, 36.909439>,  <35.738251, 35.242878, 36.602627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711826, 34.987595, 36.909439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474881, -0.696176, -0.538355,
		0.877567, 0.328683, 0.349061,
		-0.066059, -0.638205, 0.767027,
		35.692009, 34.796131, 37.139545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381168, 34.955570, 36.624535>,  <35.738251, 35.242878, 36.602627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381168, 34.955570, 36.624535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115387, 34.708420, 36.792694>,  <35.955917, 34.560131, 36.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115387, 34.708420, 36.792694>,  <36.381168, 34.955570, 36.624535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115387, 34.708420, 36.792694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418100, -0.773601, -0.476166,
		0.619428, -0.140624, 0.772356,
		-0.664456, -0.617873, 0.420395,
		35.916050, 34.523060, 36.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076469, 34.984802, 36.495750>,  <36.381168, 34.955570, 36.624535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076469, 34.984802, 36.495750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076096, 35.134590, 36.866646>,  <37.075871, 35.224464, 37.089184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076096, 35.134590, 36.866646>,  <37.076469, 34.984802, 36.495750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076096, 35.134590, 36.866646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811885, 0.541621, -0.217920,
		-0.583816, 0.752608, -0.304532,
		-0.000932, 0.374470, 0.927238,
		37.075817, 35.246933, 37.144817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967869, 35.662868, 36.519100>,  <37.076469, 34.984802, 36.495750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967869, 35.662868, 36.519100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177200, 35.586861, 36.851368>,  <37.302799, 35.541256, 37.050728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177200, 35.586861, 36.851368>,  <36.967869, 35.662868, 36.519100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177200, 35.586861, 36.851368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637195, 0.734506, -0.233417,
		-0.565777, 0.651454, 0.505473,
		0.523333, -0.190023, 0.830670,
		37.334202, 35.529854, 37.100571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287315, 36.279022, 36.642681>,  <36.967869, 35.662868, 36.519100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287315, 36.279022, 36.642681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491417, 36.025486, 36.875191>,  <37.613880, 35.873363, 37.014698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491417, 36.025486, 36.875191>,  <37.287315, 36.279022, 36.642681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491417, 36.025486, 36.875191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822983, 0.556084, -0.116060,
		-0.249673, 0.537599, 0.805389,
		0.510257, -0.633844, 0.581273,
		37.644493, 35.835331, 37.049572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625423, 36.595112, 37.308987>,  <37.287315, 36.279022, 36.642681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625423, 36.595112, 37.308987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826099, 36.277641, 37.171360>,  <37.946507, 36.087158, 37.088783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826099, 36.277641, 37.171360>,  <37.625423, 36.595112, 37.308987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826099, 36.277641, 37.171360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838439, 0.544032, -0.032393,
		0.212894, -0.272230, 0.938385,
		0.501694, -0.793675, -0.344069,
		37.976608, 36.039539, 37.068138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991707, 37.269463, 37.425034>,  <37.625423, 36.595112, 37.308987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991707, 37.269463, 37.425034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209225, 37.011345, 37.639652>,  <38.339737, 36.856476, 37.768425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209225, 37.011345, 37.639652>,  <37.991707, 37.269463, 37.425034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209225, 37.011345, 37.639652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837664, 0.378458, -0.393812,
		0.051064, 0.663599, 0.746343,
		0.543793, -0.645295, 0.536548,
		38.372364, 36.817757, 37.800617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511448, 37.660725, 37.909782>,  <37.991707, 37.269463, 37.425034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511448, 37.660725, 37.909782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578724, 37.308605, 37.732338>,  <38.619087, 37.097336, 37.625870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578724, 37.308605, 37.732338>,  <38.511448, 37.660725, 37.909782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578724, 37.308605, 37.732338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744699, 0.408319, -0.527920,
		0.645861, -0.241569, 0.724229,
		0.168187, -0.880296, -0.443613,
		38.629181, 37.044518, 37.599255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112244, 37.775375, 37.534565>,  <38.511448, 37.660725, 37.909782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112244, 37.775375, 37.534565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006077, 37.428108, 37.366837>,  <38.942375, 37.219746, 37.266197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006077, 37.428108, 37.366837>,  <39.112244, 37.775375, 37.534565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006077, 37.428108, 37.366837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903058, -0.071526, -0.423523,
		0.337697, -0.491085, 0.802992,
		-0.265420, -0.868170, -0.419323,
		38.926449, 37.167656, 37.241039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406387, 37.093723, 37.731251>,  <39.112244, 37.775375, 37.534565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406387, 37.093723, 37.731251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311394, 37.128666, 37.344269>,  <39.254398, 37.149632, 37.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311394, 37.128666, 37.344269>,  <39.406387, 37.093723, 37.731251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311394, 37.128666, 37.344269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939193, -0.233652, -0.251641,
		-0.248032, -0.968388, -0.026559,
		-0.237481, 0.087359, -0.967456,
		39.240150, 37.154873, 37.054031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480061, 36.499828, 37.310417>,  <39.406387, 37.093723, 37.731251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480061, 36.499828, 37.310417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525589, 36.842911, 37.109863>,  <39.552906, 37.048759, 36.989529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525589, 36.842911, 37.109863>,  <39.480061, 36.499828, 37.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525589, 36.842911, 37.109863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990515, -0.137068, -0.009620,
		-0.076975, -0.495536, -0.865170,
		0.113820, 0.857704, -0.501386,
		39.559734, 37.100224, 36.959446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989624, 36.508308, 36.762180>,  <39.480061, 36.499828, 37.310417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989624, 36.508308, 36.762180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000351, 36.900116, 36.842010>,  <40.006786, 37.135201, 36.889908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000351, 36.900116, 36.842010>,  <39.989624, 36.508308, 36.762180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000351, 36.900116, 36.842010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989813, 0.001909, -0.142363,
		-0.139827, 0.201362, -0.969485,
		0.026816, 0.979515, 0.199578,
		40.008396, 37.193970, 36.901882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201534, 37.006821, 36.234707>,  <39.989624, 36.508308, 36.762180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201534, 37.006821, 36.234707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331562, 37.141651, 36.588139>,  <40.409580, 37.222549, 36.800198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331562, 37.141651, 36.588139>,  <40.201534, 37.006821, 36.234707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331562, 37.141651, 36.588139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924235, 0.084644, -0.372324,
		-0.200291, 0.937664, -0.284024,
		0.325074, 0.337078, 0.883575,
		40.429085, 37.242775, 36.853210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608540, 37.672062, 36.083801>,  <40.201534, 37.006821, 36.234707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608540, 37.672062, 36.083801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740685, 37.513573, 36.426464>,  <40.819973, 37.418480, 36.632061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740685, 37.513573, 36.426464>,  <40.608540, 37.672062, 36.083801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740685, 37.513573, 36.426464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937680, 0.034129, -0.345820,
		0.107785, 0.917519, 0.382806,
		0.330361, -0.396224, 0.856661,
		40.839794, 37.394707, 36.683464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122467, 38.180481, 36.393150>,  <40.608540, 37.672062, 36.083801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122467, 38.180481, 36.393150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179684, 37.798824, 36.498341>,  <41.214012, 37.569832, 36.561455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179684, 37.798824, 36.498341>,  <41.122467, 38.180481, 36.393150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179684, 37.798824, 36.498341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965886, 0.076619, -0.247374,
		0.215880, 0.289392, 0.932549,
		0.143039, -0.954139, 0.262979,
		41.222595, 37.512581, 36.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629990, 38.136974, 36.958576>,  <41.122467, 38.180481, 36.393150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629990, 38.136974, 36.958576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620514, 37.812359, 36.725048>,  <41.614826, 37.617588, 36.584930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620514, 37.812359, 36.725048>,  <41.629990, 38.136974, 36.958576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620514, 37.812359, 36.725048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984288, 0.083273, -0.155700,
		0.174973, -0.578332, 0.796816,
		-0.023693, -0.811540, -0.583816,
		41.613407, 37.568897, 36.549904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010025, 37.600658, 37.248985>,  <41.629990, 38.136974, 36.958576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010025, 37.600658, 37.248985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023945, 37.561050, 36.851196>,  <42.032295, 37.537285, 36.612522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023945, 37.561050, 36.851196>,  <42.010025, 37.600658, 37.248985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023945, 37.561050, 36.851196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989523, -0.136097, 0.048178,
		-0.140116, -0.985735, 0.093248,
		0.034800, -0.099021, -0.994477,
		42.034386, 37.531345, 36.552853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135654, 36.905228, 37.055119>,  <42.010025, 37.600658, 37.248985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135654, 36.905228, 37.055119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276493, 37.208019, 36.834934>,  <42.360996, 37.389694, 36.702824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276493, 37.208019, 36.834934>,  <42.135654, 36.905228, 37.055119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276493, 37.208019, 36.834934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916130, -0.158308, 0.368299,
		0.191653, -0.633971, -0.749233,
		0.352100, 0.756980, -0.550460,
		42.382122, 37.435112, 36.669796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675358, 37.374828, 37.117409>,  <42.135654, 36.905228, 37.055119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675358, 37.374828, 37.117409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940334, 37.100254, 37.237392>,  <43.099319, 36.935509, 37.309383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940334, 37.100254, 37.237392>,  <42.675358, 37.374828, 37.117409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940334, 37.100254, 37.237392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077068, 0.335847, 0.938758,
		-0.745137, -0.644992, 0.169577,
		0.662444, -0.686435, 0.299960,
		43.139069, 36.894325, 37.327381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510273, 37.058243, 37.895245>,  <42.675358, 37.374828, 37.117409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510273, 37.058243, 37.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899872, 37.035587, 37.807503>,  <43.133633, 37.021996, 37.754860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899872, 37.035587, 37.807503>,  <42.510273, 37.058243, 37.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899872, 37.035587, 37.807503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219718, 0.472043, 0.853756,
		0.055189, -0.879755, 0.472214,
		0.974001, -0.056636, -0.219350,
		43.192074, 37.018597, 37.741699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949116, 36.710396, 38.406418>,  <42.510273, 37.058243, 37.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949116, 36.710396, 38.406418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162457, 36.994324, 38.222378>,  <43.290462, 37.164680, 38.111954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162457, 36.994324, 38.222378>,  <42.949116, 36.710396, 38.406418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162457, 36.994324, 38.222378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208424, 0.416878, 0.884744,
		0.819814, -0.567776, 0.074399,
		0.533352, 0.709820, -0.460100,
		43.322460, 37.207268, 38.084347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525909, 36.790180, 38.788845>,  <42.949116, 36.710396, 38.406418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525909, 36.790180, 38.788845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454124, 37.139477, 38.607632>,  <43.411053, 37.349056, 38.498905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454124, 37.139477, 38.607632>,  <43.525909, 36.790180, 38.788845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454124, 37.139477, 38.607632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287050, 0.486949, 0.824914,
		0.940955, 0.017999, -0.338054,
		-0.179463, 0.873245, -0.453031,
		43.400288, 37.401451, 38.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098942, 37.224808, 38.750923>,  <43.525909, 36.790180, 38.788845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098942, 37.224808, 38.750923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768799, 37.447701, 38.787308>,  <43.570713, 37.581436, 38.809139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768799, 37.447701, 38.787308>,  <44.098942, 37.224808, 38.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768799, 37.447701, 38.787308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403125, 0.468793, 0.785954,
		0.395319, 0.685361, -0.611557,
		-0.825356, 0.557236, 0.090963,
		43.521191, 37.614872, 38.814598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949776, 37.869144, 38.321548>,  <44.098942, 37.224808, 38.750923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949776, 37.869144, 38.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838146, 38.177498, 38.550583>,  <43.771168, 38.362511, 38.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838146, 38.177498, 38.550583>,  <43.949776, 37.869144, 38.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838146, 38.177498, 38.550583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941960, 0.103872, 0.319253,
		0.186631, 0.628450, -0.755129,
		-0.279071, 0.770884, 0.572589,
		43.754425, 38.408764, 38.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403519, 38.454594, 38.226826>,  <43.949776, 37.869144, 38.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403519, 38.454594, 38.226826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256771, 38.552052, 38.585945>,  <44.168724, 38.610527, 38.801418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256771, 38.552052, 38.585945>,  <44.403519, 38.454594, 38.226826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256771, 38.552052, 38.585945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928110, 0.161658, 0.335378,
		-0.063422, 0.956296, -0.285439,
		-0.366865, 0.243649, 0.897801,
		44.146713, 38.625145, 38.855286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690231, 38.174843, 37.598667>,  <44.403519, 38.454594, 38.226826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690231, 38.174843, 37.598667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722389, 37.851109, 37.831390>,  <44.741684, 37.656868, 37.971024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722389, 37.851109, 37.831390>,  <44.690231, 38.174843, 37.598667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722389, 37.851109, 37.831390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205460, -0.557711, -0.804204,
		0.975358, 0.184195, 0.121449,
		0.080397, -0.809340, 0.581812,
		44.746510, 37.608307, 38.005936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886684, 38.026730, 36.990189>,  <44.690231, 38.174843, 37.598667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886684, 38.026730, 36.990189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696651, 38.346943, 37.136311>,  <44.582630, 38.539070, 37.223984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696651, 38.346943, 37.136311>,  <44.886684, 38.026730, 36.990189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696651, 38.346943, 37.136311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226593, -0.289843, 0.929864,
		0.850267, 0.524535, -0.043697,
		-0.475081, 0.800533, 0.365300,
		44.554127, 38.587105, 37.245899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672668, 38.569115, 36.622017>,  <44.886684, 38.026730, 36.990189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672668, 38.569115, 36.622017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333008, 38.747089, 36.735832>,  <44.129211, 38.853874, 36.804123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333008, 38.747089, 36.735832>,  <44.672668, 38.569115, 36.622017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333008, 38.747089, 36.735832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487356, 0.452517, 0.746802,
		0.203522, 0.772824, -0.601101,
		-0.849155, 0.444940, 0.284543,
		44.078262, 38.880573, 36.821194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262733, 37.949501, 36.439415>,  <44.672668, 38.569115, 36.622017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262733, 37.949501, 36.439415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228672, 37.604004, 36.638092>,  <44.208237, 37.396706, 36.757298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228672, 37.604004, 36.638092>,  <44.262733, 37.949501, 36.439415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228672, 37.604004, 36.638092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335827, -0.444454, -0.830470,
		0.938067, -0.237520, -0.252220,
		-0.085153, -0.863739, 0.496693,
		44.203125, 37.344883, 36.787102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627151, 37.295673, 36.136192>,  <44.262733, 37.949501, 36.439415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627151, 37.295673, 36.136192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300171, 37.184456, 36.337967>,  <44.103981, 37.117725, 36.459034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300171, 37.184456, 36.337967>,  <44.627151, 37.295673, 36.136192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300171, 37.184456, 36.337967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366564, -0.424402, -0.827958,
		0.444297, -0.861726, 0.245007,
		-0.817454, -0.278048, 0.504438,
		44.054935, 37.101040, 36.489300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036587, 36.959461, 35.517273>,  <44.627151, 37.295673, 36.136192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036587, 36.959461, 35.517273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780041, 36.806496, 35.251217>,  <44.626114, 36.714714, 35.091583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780041, 36.806496, 35.251217>,  <45.036587, 36.959461, 35.517273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780041, 36.806496, 35.251217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551878, -0.832195, -0.053687,
		-0.532995, -0.401509, 0.744786,
		-0.641363, -0.382416, -0.665140,
		44.587631, 36.691772, 35.051674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687664, 36.254910, 35.717834>,  <45.036587, 36.959461, 35.517273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687664, 36.254910, 35.717834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756531, 36.321228, 35.329430>,  <44.797852, 36.361019, 35.096386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756531, 36.321228, 35.329430>,  <44.687664, 36.254910, 35.717834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756531, 36.321228, 35.329430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680556, -0.732683, -0.004432,
		-0.712180, -0.660067, -0.238980,
		0.172171, 0.165796, -0.971014,
		44.808182, 36.370968, 35.038124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593857, 35.690609, 35.380871>,  <44.687664, 36.254910, 35.717834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593857, 35.690609, 35.380871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852558, 35.890877, 35.150726>,  <45.007778, 36.011036, 35.012638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852558, 35.890877, 35.150726>,  <44.593857, 35.690609, 35.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852558, 35.890877, 35.150726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710350, -0.670075, 0.215411,
		-0.277687, -0.548027, -0.789023,
		0.646755, 0.500666, -0.575362,
		45.046585, 36.041077, 34.978119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199703, 35.421627, 35.455299>,  <44.593857, 35.690609, 35.380871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199703, 35.421627, 35.455299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325684, 35.672501, 35.170357>,  <45.401272, 35.823025, 34.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325684, 35.672501, 35.170357>,  <45.199703, 35.421627, 35.455299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325684, 35.672501, 35.170357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919925, -0.386411, 0.066508,
		-0.233548, -0.676259, -0.698662,
		0.314947, 0.627185, -0.712353,
		45.420166, 35.860657, 34.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551922, 35.026131, 34.898346>,  <45.199703, 35.421627, 35.455299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551922, 35.026131, 34.898346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686043, 35.402569, 34.880890>,  <45.766518, 35.628433, 34.870419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686043, 35.402569, 34.880890>,  <45.551922, 35.026131, 34.898346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686043, 35.402569, 34.880890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942096, -0.335192, 0.010097,
		-0.005125, -0.044496, -0.998996,
		0.335305, 0.941099, -0.043637,
		45.786633, 35.684898, 34.867798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975750, 35.041714, 34.338383>,  <45.551922, 35.026131, 34.898346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975750, 35.041714, 34.338383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072506, 35.344330, 34.581409>,  <46.130558, 35.525898, 34.727226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072506, 35.344330, 34.581409>,  <45.975750, 35.041714, 34.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072506, 35.344330, 34.581409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937005, -0.344757, 0.056248,
		0.252017, 0.555688, -0.792274,
		0.241886, 0.756541, 0.607567,
		46.145073, 35.571293, 34.763680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496490, 35.407024, 34.073166>,  <45.975750, 35.041714, 34.338383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496490, 35.407024, 34.073166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523300, 35.487701, 34.464027>,  <46.539387, 35.536110, 34.698544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523300, 35.487701, 34.464027>,  <46.496490, 35.407024, 34.073166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523300, 35.487701, 34.464027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972066, -0.233988, -0.018378,
		0.224936, 0.951088, -0.211744,
		0.067025, 0.201695, 0.977152,
		46.543407, 35.548210, 34.757172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096630, 35.762238, 34.153694>,  <46.496490, 35.407024, 34.073166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096630, 35.762238, 34.153694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986137, 35.576393, 34.490227>,  <46.919842, 35.464886, 34.692146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986137, 35.576393, 34.490227>,  <47.096630, 35.762238, 34.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986137, 35.576393, 34.490227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854324, -0.519701, -0.006499,
		0.440260, 0.716974, 0.540481,
		-0.276229, -0.464607, 0.841331,
		46.903267, 35.437012, 34.742626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704147, 35.646324, 34.612675>,  <47.096630, 35.762238, 34.153694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704147, 35.646324, 34.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413776, 35.371216, 34.613503>,  <47.239555, 35.206150, 34.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413776, 35.371216, 34.613503>,  <47.704147, 35.646324, 34.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.413776, 35.371216, 34.613503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678997, -0.717137, -0.157091,
		0.109524, -0.112634, 0.987582,
		-0.725925, -0.687770, 0.002065,
		47.195999, 35.164886, 34.614120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.758007, 35.278015, 35.208145>,  <47.704147, 35.646324, 34.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.758007, 35.278015, 35.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608841, 35.055042, 34.911442>,  <47.519341, 34.921257, 34.733421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608841, 35.055042, 34.911442>,  <47.758007, 35.278015, 35.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608841, 35.055042, 34.911442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769743, -0.632239, 0.088147,
		-0.518103, -0.538091, 0.664851,
		-0.372914, -0.557433, -0.741757,
		47.496967, 34.887814, 34.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.167473, 36.241859, 22.408354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787743, 36.145721, 22.327349>,  <37.559906, 36.088039, 22.278746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787743, 36.145721, 22.327349>,  <38.167473, 36.241859, 22.408354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787743, 36.145721, 22.327349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139262, -0.255958, 0.956604,
		-0.281753, 0.936332, 0.209516,
		-0.949327, -0.240349, -0.202513,
		37.502945, 36.073616, 22.266596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798218, 36.609341, 22.890224>,  <38.167473, 36.241859, 22.408354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798218, 36.609341, 22.890224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570602, 36.304913, 22.765669>,  <37.434032, 36.122253, 22.690935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570602, 36.304913, 22.765669>,  <37.798218, 36.609341, 22.890224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570602, 36.304913, 22.765669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103888, -0.309102, 0.945338,
		-0.815723, 0.570282, 0.096824,
		-0.569037, -0.761074, -0.311387,
		37.399891, 36.076591, 22.672253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146996, 36.688457, 23.198580>,  <37.798218, 36.609341, 22.890224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146996, 36.688457, 23.198580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234467, 36.306694, 23.117311>,  <37.286949, 36.077637, 23.068550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234467, 36.306694, 23.117311>,  <37.146996, 36.688457, 23.198580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234467, 36.306694, 23.117311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067673, -0.222542, 0.972572,
		-0.973447, -0.198934, -0.113253,
		0.218681, -0.954411, -0.203171,
		37.300072, 36.020370, 23.056360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811668, 36.355263, 23.730026>,  <37.146996, 36.688457, 23.198580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811668, 36.355263, 23.730026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040543, 36.065727, 23.575798>,  <37.177868, 35.892006, 23.483261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040543, 36.065727, 23.575798>,  <36.811668, 36.355263, 23.730026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040543, 36.065727, 23.575798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035679, -0.447725, 0.893459,
		-0.819347, -0.524982, -0.230356,
		0.572186, -0.723835, -0.385573,
		37.212200, 35.848576, 23.460127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529961, 35.654564, 23.947090>,  <36.811668, 36.355263, 23.730026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529961, 35.654564, 23.947090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921535, 35.631878, 23.868637>,  <37.156479, 35.618267, 23.821566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921535, 35.631878, 23.868637>,  <36.529961, 35.654564, 23.947090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921535, 35.631878, 23.868637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137475, -0.527137, 0.838586,
		-0.150946, -0.847886, -0.508237,
		0.978936, -0.056711, -0.196132,
		37.215218, 35.614864, 23.809797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682327, 35.096443, 24.400608>,  <36.529961, 35.654564, 23.947090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682327, 35.096443, 24.400608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033695, 35.252304, 24.289940>,  <37.244514, 35.345821, 24.223539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033695, 35.252304, 24.289940>,  <36.682327, 35.096443, 24.400608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033695, 35.252304, 24.289940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386732, -0.239510, 0.890547,
		0.280741, -0.889272, -0.361083,
		0.878421, 0.389655, -0.276669,
		37.297222, 35.369202, 24.206940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156376, 34.684929, 24.582952>,  <36.682327, 35.096443, 24.400608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156376, 34.684929, 24.582952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356331, 35.030445, 24.557703>,  <37.476303, 35.237755, 24.542553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356331, 35.030445, 24.557703>,  <37.156376, 34.684929, 24.582952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356331, 35.030445, 24.557703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234705, -0.064951, 0.969894,
		0.833684, -0.499650, -0.235203,
		0.499884, 0.863789, -0.063122,
		37.506294, 35.289581, 24.538767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736423, 34.546669, 25.012201>,  <37.156376, 34.684929, 24.582952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736423, 34.546669, 25.012201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748833, 34.941750, 24.950905>,  <37.756279, 35.178799, 24.914127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748833, 34.941750, 24.950905>,  <37.736423, 34.546669, 25.012201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748833, 34.941750, 24.950905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270872, 0.139270, 0.952487,
		0.962115, -0.071059, -0.263220,
		0.031024, 0.987702, -0.153241,
		37.758141, 35.238060, 24.904932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370354, 34.809734, 25.371422>,  <37.736423, 34.546669, 25.012201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370354, 34.809734, 25.371422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117840, 35.116508, 25.325312>,  <37.966331, 35.300571, 25.297646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117840, 35.116508, 25.325312>,  <38.370354, 34.809734, 25.371422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117840, 35.116508, 25.325312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218354, 0.318388, 0.922470,
		0.744175, 0.557174, -0.368457,
		-0.631288, 0.766933, -0.115276,
		37.928452, 35.346588, 25.290730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716587, 35.342228, 25.583525>,  <38.370354, 34.809734, 25.371422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716587, 35.342228, 25.583525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343334, 35.485813, 25.591566>,  <38.119381, 35.571964, 25.596392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343334, 35.485813, 25.591566>,  <38.716587, 35.342228, 25.583525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343334, 35.485813, 25.591566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211173, 0.501981, 0.838702,
		0.290970, 0.786868, -0.544220,
		-0.933136, 0.358962, 0.020104,
		38.063393, 35.593502, 25.597597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716919, 36.118725, 25.681290>,  <38.716587, 35.342228, 25.583525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716919, 36.118725, 25.681290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358349, 35.996391, 25.809593>,  <38.143208, 35.922993, 25.886576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358349, 35.996391, 25.809593>,  <38.716919, 36.118725, 25.681290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358349, 35.996391, 25.809593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136039, 0.498931, 0.855898,
		-0.421795, 0.810886, -0.405651,
		-0.896428, -0.305829, 0.320759,
		38.089420, 35.904644, 25.905821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537601, 36.694870, 26.045408>,  <38.716919, 36.118725, 25.681290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537601, 36.694870, 26.045408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289303, 36.404518, 26.163914>,  <38.140324, 36.230309, 26.235018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289303, 36.404518, 26.163914>,  <38.537601, 36.694870, 26.045408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289303, 36.404518, 26.163914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066517, 0.425284, 0.902612,
		-0.781181, 0.540591, -0.312279,
		-0.620751, -0.725875, 0.296265,
		38.103077, 36.186756, 26.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960388, 37.058636, 26.325022>,  <38.537601, 36.694870, 26.045408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960388, 37.058636, 26.325022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983738, 36.689285, 26.476793>,  <37.997749, 36.467674, 26.567856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983738, 36.689285, 26.476793>,  <37.960388, 37.058636, 26.325022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983738, 36.689285, 26.476793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084110, 0.383276, 0.919796,
		-0.994745, -0.021783, 0.100040,
		0.058379, -0.923377, 0.379429,
		38.001251, 36.412273, 26.590622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436886, 37.054161, 26.863569>,  <37.960388, 37.058636, 26.325022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436886, 37.054161, 26.863569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660732, 36.730728, 26.936253>,  <37.795040, 36.536667, 26.979862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660732, 36.730728, 26.936253>,  <37.436886, 37.054161, 26.863569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660732, 36.730728, 26.936253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005477, 0.222859, 0.974835,
		-0.828734, -0.544538, 0.129144,
		0.559616, -0.808586, 0.181709,
		37.828617, 36.488152, 26.990765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140045, 36.797314, 27.471336>,  <37.436886, 37.054161, 26.863569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140045, 36.797314, 27.471336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507713, 36.640526, 27.455904>,  <37.728313, 36.546455, 27.446646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507713, 36.640526, 27.455904>,  <37.140045, 36.797314, 27.471336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507713, 36.640526, 27.455904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015484, -0.133837, 0.990883,
		-0.393554, -0.910193, -0.129088,
		0.919171, -0.391965, -0.038579,
		37.783466, 36.522938, 27.444330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128620, 36.105026, 27.921129>,  <37.140045, 36.797314, 27.471336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128620, 36.105026, 27.921129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506924, 36.229076, 27.882429>,  <37.733906, 36.303509, 27.859209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506924, 36.229076, 27.882429>,  <37.128620, 36.105026, 27.921129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506924, 36.229076, 27.882429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134761, -0.103526, 0.985455,
		0.295602, -0.945041, -0.139703,
		0.945759, 0.310129, -0.096752,
		37.790649, 36.322113, 27.853403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403267, 35.713928, 28.399883>,  <37.128620, 36.105026, 27.921129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403267, 35.713928, 28.399883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690708, 35.987183, 28.347830>,  <37.863174, 36.151134, 28.316597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690708, 35.987183, 28.347830>,  <37.403267, 35.713928, 28.399883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690708, 35.987183, 28.347830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031092, 0.218507, 0.975340,
		0.694721, -0.696840, 0.178260,
		0.718607, 0.683132, -0.130135,
		37.906292, 36.192123, 28.308788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830997, 35.567825, 28.902134>,  <37.403267, 35.713928, 28.399883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830997, 35.567825, 28.902134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908131, 35.950314, 28.814089>,  <37.954411, 36.179806, 28.761261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908131, 35.950314, 28.814089>,  <37.830997, 35.567825, 28.902134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908131, 35.950314, 28.814089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116137, 0.244988, 0.962545,
		0.974334, -0.160051, 0.158296,
		0.192837, 0.956224, -0.220112,
		37.965981, 36.237183, 28.748055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336212, 35.736786, 29.403543>,  <37.830997, 35.567825, 28.902134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336212, 35.736786, 29.403543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228176, 36.100208, 29.276066>,  <38.163353, 36.318264, 29.199579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228176, 36.100208, 29.276066>,  <38.336212, 35.736786, 29.403543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228176, 36.100208, 29.276066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080037, 0.308666, 0.947797,
		0.959501, 0.281503, -0.010651,
		-0.270095, 0.908560, -0.318696,
		38.147148, 36.372776, 29.180456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555573, 36.172791, 29.993944>,  <38.336212, 35.736786, 29.403543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555573, 36.172791, 29.993944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301205, 36.390476, 29.775063>,  <38.148582, 36.521088, 29.643734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301205, 36.390476, 29.775063>,  <38.555573, 36.172791, 29.993944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301205, 36.390476, 29.775063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347714, 0.430958, 0.832689,
		0.688984, 0.719796, -0.084824,
		-0.635922, 0.544215, -0.547206,
		38.110428, 36.553741, 29.610901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666759, 36.873726, 30.111191>,  <38.555573, 36.172791, 29.993944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666759, 36.873726, 30.111191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291435, 36.859592, 29.973598>,  <38.066242, 36.851112, 29.891043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291435, 36.859592, 29.973598>,  <38.666759, 36.873726, 30.111191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291435, 36.859592, 29.973598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336688, 0.320110, 0.885534,
		0.078822, 0.946721, -0.312259,
		-0.938311, -0.035334, -0.343982,
		38.009941, 36.848991, 29.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290565, 37.590740, 30.142202>,  <38.666759, 36.873726, 30.111191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290565, 37.590740, 30.142202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024498, 37.292065, 30.142597>,  <37.864857, 37.112858, 30.142834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024498, 37.292065, 30.142597>,  <38.290565, 37.590740, 30.142202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024498, 37.292065, 30.142597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374400, 0.334668, 0.864767,
		-0.646042, 0.574851, -0.502172,
		-0.665173, -0.746689, 0.000986,
		37.824947, 37.068058, 30.142893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600628, 37.893799, 30.197426>,  <38.290565, 37.590740, 30.142202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600628, 37.893799, 30.197426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623417, 38.282021, 30.291039>,  <37.637093, 38.514954, 30.347206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623417, 38.282021, 30.291039>,  <37.600628, 37.893799, 30.197426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623417, 38.282021, 30.291039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462400, 0.233408, -0.855399,
		-0.884839, -0.059478, 0.462085,
		0.056977, 0.970558, 0.234032,
		37.640511, 38.573189, 30.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999844, 38.157200, 29.902130>,  <37.600628, 37.893799, 30.197426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999844, 38.157200, 29.902130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237301, 38.469246, 29.981133>,  <37.379776, 38.656475, 30.028534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237301, 38.469246, 29.981133>,  <36.999844, 38.157200, 29.902130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237301, 38.469246, 29.981133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268858, 0.423596, -0.865033,
		-0.758488, 0.460419, 0.461205,
		0.593642, 0.780116, 0.197505,
		37.415394, 38.703281, 30.040384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574772, 38.694775, 29.755596>,  <36.999844, 38.157200, 29.902130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574772, 38.694775, 29.755596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954369, 38.807022, 29.698103>,  <37.182129, 38.874371, 29.663607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954369, 38.807022, 29.698103>,  <36.574772, 38.694775, 29.755596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954369, 38.807022, 29.698103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244411, 0.366788, -0.897624,
		-0.199174, 0.886971, 0.416667,
		0.948996, 0.280622, -0.143731,
		37.239067, 38.891209, 29.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520847, 39.318283, 29.520430>,  <36.574772, 38.694775, 29.755596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520847, 39.318283, 29.520430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900043, 39.246449, 29.415312>,  <37.127560, 39.203346, 29.352242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900043, 39.246449, 29.415312>,  <36.520847, 39.318283, 29.520430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900043, 39.246449, 29.415312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158532, 0.449534, -0.879083,
		0.276006, 0.875025, 0.397684,
		0.947992, -0.179587, -0.262794,
		37.184441, 39.192574, 29.336473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758041, 39.924000, 29.094271>,  <36.520847, 39.318283, 29.520430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758041, 39.924000, 29.094271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033161, 39.654640, 28.985846>,  <37.198231, 39.493027, 28.920792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033161, 39.654640, 28.985846>,  <36.758041, 39.924000, 29.094271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033161, 39.654640, 28.985846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110792, 0.466419, -0.877598,
		0.717400, 0.573577, 0.395407,
		0.687795, -0.673397, -0.271061,
		37.239498, 39.452621, 28.904528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198860, 40.329376, 28.692389>,  <36.758041, 39.924000, 29.094271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198860, 40.329376, 28.692389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311031, 39.958408, 28.593388>,  <37.378334, 39.735828, 28.533987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311031, 39.958408, 28.593388>,  <37.198860, 40.329376, 28.692389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311031, 39.958408, 28.593388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101432, 0.285037, -0.953134,
		0.954502, 0.242177, 0.174001,
		0.280424, -0.927418, -0.247504,
		37.395157, 39.680183, 28.519136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718578, 40.464214, 28.243069>,  <37.198860, 40.329376, 28.692389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718578, 40.464214, 28.243069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656418, 40.079414, 28.153261>,  <37.619122, 39.848534, 28.099377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656418, 40.079414, 28.153261>,  <37.718578, 40.464214, 28.243069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656418, 40.079414, 28.153261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177276, 0.196433, -0.964358,
		0.971814, -0.189665, 0.140013,
		-0.155402, -0.961998, -0.224520,
		37.609798, 39.790813, 28.085905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365700, 40.113205, 27.910435>,  <37.718578, 40.464214, 28.243069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365700, 40.113205, 27.910435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037460, 39.910652, 27.804462>,  <37.840515, 39.789120, 27.740879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037460, 39.910652, 27.804462>,  <38.365700, 40.113205, 27.910435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037460, 39.910652, 27.804462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169775, 0.226647, -0.959066,
		0.545703, -0.831989, -0.100015,
		-0.820600, -0.506385, -0.264933,
		37.791279, 39.758736, 27.724983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516453, 39.710991, 27.320415>,  <38.365700, 40.113205, 27.910435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516453, 39.710991, 27.320415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120129, 39.765030, 27.317717>,  <37.882336, 39.797451, 27.316097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120129, 39.765030, 27.317717>,  <38.516453, 39.710991, 27.320415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120129, 39.765030, 27.317717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028381, 0.158881, -0.986890,
		-0.132252, -0.978011, -0.161255,
		-0.990810, 0.135095, -0.006745,
		37.822887, 39.805557, 27.315693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399170, 39.405281, 26.683128>,  <38.516453, 39.710991, 27.320415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399170, 39.405281, 26.683128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059460, 39.603603, 26.755680>,  <37.855633, 39.722595, 26.799212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059460, 39.603603, 26.755680>,  <38.399170, 39.405281, 26.683128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059460, 39.603603, 26.755680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191448, 0.030949, -0.981015,
		-0.492007, -0.867881, 0.068637,
		-0.849281, 0.495806, 0.181381,
		37.804676, 39.752346, 26.810095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801731, 39.070332, 26.341908>,  <38.399170, 39.405281, 26.683128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801731, 39.070332, 26.341908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708790, 39.458412, 26.369406>,  <37.653023, 39.691261, 26.385904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708790, 39.458412, 26.369406>,  <37.801731, 39.070332, 26.341908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708790, 39.458412, 26.369406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248506, 0.009117, -0.968587,
		-0.940349, -0.242140, 0.238982,
		-0.232355, 0.970199, 0.068746,
		37.639084, 39.749474, 26.390030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201351, 39.083130, 26.035797>,  <37.801731, 39.070332, 26.341908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201351, 39.083130, 26.035797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350933, 39.454098, 26.038839>,  <37.440681, 39.676678, 26.040665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350933, 39.454098, 26.038839>,  <37.201351, 39.083130, 26.035797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350933, 39.454098, 26.038839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284141, 0.122369, -0.950942,
		-0.882851, 0.353444, 0.309278,
		0.373950, 0.927418, 0.007605,
		37.463120, 39.732323, 26.041121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704861, 39.562271, 25.812300>,  <37.201351, 39.083130, 26.035797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704861, 39.562271, 25.812300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024654, 39.788979, 25.732706>,  <37.216530, 39.925003, 25.684950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024654, 39.788979, 25.732706>,  <36.704861, 39.562271, 25.812300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024654, 39.788979, 25.732706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271783, 0.045893, -0.961264,
		-0.535680, 0.822599, 0.190729,
		0.799488, 0.566766, -0.198985,
		37.264500, 39.959007, 25.673010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383732, 39.984013, 25.276850>,  <36.704861, 39.562271, 25.812300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383732, 39.984013, 25.276850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780926, 40.029705, 25.264614>,  <37.019241, 40.057121, 25.257273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780926, 40.029705, 25.264614>,  <36.383732, 39.984013, 25.276850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780926, 40.029705, 25.264614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045267, 0.128206, -0.990714,
		-0.109248, 0.985147, 0.132477,
		0.992983, 0.114231, -0.030588,
		37.078819, 40.063972, 25.255438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504311, 40.486992, 24.809044>,  <36.383732, 39.984013, 25.276850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504311, 40.486992, 24.809044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852112, 40.289440, 24.811892>,  <37.060791, 40.170910, 24.813601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852112, 40.289440, 24.811892>,  <36.504311, 40.486992, 24.809044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852112, 40.289440, 24.811892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002727, -0.009615, -0.999950,
		0.493920, 0.869479, -0.007013,
		0.869503, -0.493876, 0.007120,
		37.112965, 40.141277, 24.814028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853413, 40.778519, 24.314108>,  <36.504311, 40.486992, 24.809044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853413, 40.778519, 24.314108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007298, 40.412212, 24.360361>,  <37.099628, 40.192429, 24.388113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007298, 40.412212, 24.360361>,  <36.853413, 40.778519, 24.314108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007298, 40.412212, 24.360361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049383, -0.145514, -0.988123,
		0.921714, 0.374433, -0.101204,
		0.384713, -0.915765, 0.115632,
		37.122711, 40.137482, 24.395050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401539, 40.724457, 23.794952>,  <36.853413, 40.778519, 24.314108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401539, 40.724457, 23.794952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302696, 40.347897, 23.886776>,  <37.243389, 40.121960, 23.941870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302696, 40.347897, 23.886776>,  <37.401539, 40.724457, 23.794952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302696, 40.347897, 23.886776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075918, -0.217368, -0.973133,
		0.966009, -0.257898, -0.017756,
		-0.247109, -0.941403, 0.229558,
		37.228565, 40.065475, 23.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762039, 40.233089, 23.354959>,  <37.401539, 40.724457, 23.794952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762039, 40.233089, 23.354959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488815, 39.958080, 23.453552>,  <37.324883, 39.793076, 23.512709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488815, 39.958080, 23.453552>,  <37.762039, 40.233089, 23.354959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488815, 39.958080, 23.453552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108593, -0.429328, -0.896596,
		0.722249, -0.585658, 0.367915,
		-0.683055, -0.687518, 0.246483,
		37.283897, 39.751823, 23.527496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.084770, 39.447578, 23.150171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689262, 39.415905, 23.200865>,  <37.451958, 39.396900, 23.231281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689262, 39.415905, 23.200865>,  <38.084770, 39.447578, 23.150171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689262, 39.415905, 23.200865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077612, -0.452609, -0.888325,
		0.127703, -0.888186, 0.441381,
		-0.988771, -0.079185, 0.126734,
		37.392632, 39.392151, 23.238884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056023, 38.815331, 22.900820>,  <38.084770, 39.447578, 23.150171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056023, 38.815331, 22.900820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681408, 38.954708, 22.916252>,  <37.456638, 39.038334, 22.925510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681408, 38.954708, 22.916252>,  <38.056023, 38.815331, 22.900820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681408, 38.954708, 22.916252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217465, -0.491102, -0.843521,
		-0.274972, -0.798378, 0.535708,
		-0.936536, 0.348443, 0.038580,
		37.400448, 39.059242, 22.927826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582710, 38.191280, 22.854841>,  <38.056023, 38.815331, 22.900820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582710, 38.191280, 22.854841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372181, 38.508831, 22.733023>,  <37.245865, 38.699360, 22.659931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372181, 38.508831, 22.733023>,  <37.582710, 38.191280, 22.854841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372181, 38.508831, 22.733023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104563, -0.415882, -0.903387,
		-0.843833, -0.443627, 0.301897,
		-0.526320, 0.793875, -0.304548,
		37.214283, 38.746994, 22.641659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945004, 37.915623, 22.420473>,  <37.582710, 38.191280, 22.854841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945004, 37.915623, 22.420473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973003, 38.296612, 22.301889>,  <36.989803, 38.525208, 22.230740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973003, 38.296612, 22.301889>,  <36.945004, 37.915623, 22.420473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973003, 38.296612, 22.301889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026927, -0.298886, -0.953909,
		-0.997183, 0.058794, -0.046571,
		0.070004, 0.952476, -0.296461,
		36.994003, 38.582355, 22.212952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565338, 37.909096, 21.878544>,  <36.945004, 37.915623, 22.420473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565338, 37.909096, 21.878544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825191, 38.211124, 21.843138>,  <36.981106, 38.392342, 21.821894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825191, 38.211124, 21.843138>,  <36.565338, 37.909096, 21.878544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825191, 38.211124, 21.843138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039346, -0.082882, -0.995782,
		-0.759227, 0.650378, -0.024134,
		0.649635, 0.755075, -0.088516,
		37.020081, 38.437649, 21.816584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237347, 38.519375, 21.374565>,  <36.565338, 37.909096, 21.878544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237347, 38.519375, 21.374565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637276, 38.516445, 21.381405>,  <36.877235, 38.514687, 21.385509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637276, 38.516445, 21.381405>,  <36.237347, 38.519375, 21.374565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637276, 38.516445, 21.381405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017488, 0.056531, -0.998248,
		0.006345, 0.998374, 0.056650,
		0.999827, -0.007325, 0.017101,
		36.937225, 38.514248, 21.386536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323231, 38.975967, 20.876854>,  <36.237347, 38.519375, 21.374565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323231, 38.975967, 20.876854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677044, 38.799465, 20.937372>,  <36.889332, 38.693562, 20.973682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677044, 38.799465, 20.937372>,  <36.323231, 38.975967, 20.876854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677044, 38.799465, 20.937372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185696, 0.035553, -0.981964,
		0.427922, 0.896675, 0.113388,
		0.884534, -0.441260, 0.151295,
		36.942406, 38.667088, 20.982761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761574, 39.421768, 20.601330>,  <36.323231, 38.975967, 20.876854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761574, 39.421768, 20.601330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989590, 39.093178, 20.607481>,  <37.126400, 38.896023, 20.611172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989590, 39.093178, 20.607481>,  <36.761574, 39.421768, 20.601330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989590, 39.093178, 20.607481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331974, 0.213164, -0.918888,
		0.751562, 0.528909, 0.394220,
		0.570042, -0.821472, 0.015378,
		37.160603, 38.846737, 20.612095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405388, 39.544544, 20.389164>,  <36.761574, 39.421768, 20.601330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405388, 39.544544, 20.389164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401527, 39.153000, 20.307436>,  <37.399212, 38.918076, 20.258398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401527, 39.153000, 20.307436>,  <37.405388, 39.544544, 20.389164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401527, 39.153000, 20.307436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312933, 0.191111, -0.930349,
		0.949726, -0.072915, 0.304472,
		-0.009648, -0.978856, -0.204321,
		37.398632, 38.859344, 20.246140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972862, 39.512070, 20.054842>,  <37.405388, 39.544544, 20.389164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972862, 39.512070, 20.054842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782013, 39.170280, 19.972645>,  <37.667503, 38.965206, 19.923326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782013, 39.170280, 19.972645>,  <37.972862, 39.512070, 20.054842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782013, 39.170280, 19.972645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329233, 0.043008, -0.943269,
		0.814839, -0.517707, 0.260801,
		-0.477120, -0.854476, -0.205491,
		37.638878, 38.913937, 19.910997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471127, 39.017426, 19.664160>,  <37.972862, 39.512070, 20.054842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471127, 39.017426, 19.664160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091209, 38.920574, 19.584898>,  <37.863258, 38.862465, 19.537340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091209, 38.920574, 19.584898>,  <38.471127, 39.017426, 19.664160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091209, 38.920574, 19.584898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150330, 0.202276, -0.967722,
		0.274394, -0.948925, -0.155722,
		-0.949794, -0.242128, -0.198156,
		37.806271, 38.847935, 19.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527725, 38.608440, 19.063520>,  <38.471127, 39.017426, 19.664160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527725, 38.608440, 19.063520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143059, 38.718132, 19.063599>,  <37.912258, 38.783947, 19.063646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143059, 38.718132, 19.063599>,  <38.527725, 38.608440, 19.063520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143059, 38.718132, 19.063599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039394, 0.138855, -0.989529,
		-0.271388, -0.951586, -0.144335,
		-0.961663, 0.274232, 0.000197,
		37.854561, 38.800400, 19.063658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204468, 38.194874, 18.473763>,  <38.527725, 38.608440, 19.063520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204468, 38.194874, 18.473763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983738, 38.516350, 18.562817>,  <37.851299, 38.709236, 18.616249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983738, 38.516350, 18.562817>,  <38.204468, 38.194874, 18.473763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983738, 38.516350, 18.562817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089823, 0.208133, -0.973968,
		-0.829110, -0.557456, -0.042662,
		-0.551823, 0.803694, 0.222637,
		37.818192, 38.757458, 18.629608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576263, 38.188969, 18.108187>,  <38.204468, 38.194874, 18.473763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576263, 38.188969, 18.108187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597519, 38.576237, 18.206022>,  <37.610271, 38.808598, 18.264723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597519, 38.576237, 18.206022>,  <37.576263, 38.188969, 18.108187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597519, 38.576237, 18.206022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343556, 0.247707, -0.905876,
		-0.937628, -0.035891, 0.345784,
		0.053140, 0.968170, 0.244587,
		37.613461, 38.866688, 18.279398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989731, 38.551918, 17.880434>,  <37.576263, 38.188969, 18.108187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989731, 38.551918, 17.880434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255886, 38.849442, 17.905750>,  <37.415581, 39.027954, 17.920940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255886, 38.849442, 17.905750>,  <36.989731, 38.551918, 17.880434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255886, 38.849442, 17.905750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312334, 0.354405, -0.881388,
		-0.678013, 0.566700, 0.468134,
		0.665392, 0.743806, 0.063291,
		37.455505, 39.072582, 17.924738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561771, 39.211750, 17.771515>,  <36.989731, 38.551918, 17.880434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561771, 39.211750, 17.771515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950039, 39.288704, 17.713831>,  <37.182999, 39.334877, 17.679220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950039, 39.288704, 17.713831>,  <36.561771, 39.211750, 17.771515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950039, 39.288704, 17.713831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230231, 0.570858, -0.788109,
		-0.069296, 0.798192, 0.598405,
		0.970666, 0.192384, -0.144211,
		37.241238, 39.346420, 17.670568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579300, 39.950375, 17.696316>,  <36.561771, 39.211750, 17.771515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579300, 39.950375, 17.696316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939693, 39.853348, 17.552427>,  <37.155930, 39.795132, 17.466095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939693, 39.853348, 17.552427>,  <36.579300, 39.950375, 17.696316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939693, 39.853348, 17.552427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108502, 0.676790, -0.728136,
		0.420076, 0.695065, 0.583455,
		0.900979, -0.242566, -0.359719,
		37.209988, 39.780579, 17.444511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014412, 40.583313, 17.602201>,  <36.579300, 39.950375, 17.696316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014412, 40.583313, 17.602201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118164, 40.285378, 17.356297>,  <37.180416, 40.106617, 17.208754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118164, 40.285378, 17.356297>,  <37.014412, 40.583313, 17.602201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118164, 40.285378, 17.356297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275707, 0.552949, -0.786278,
		0.925584, 0.373442, -0.061932,
		0.259384, -0.744841, -0.614761,
		37.195980, 40.061924, 17.171867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400780, 40.931316, 17.109505>,  <37.014412, 40.583313, 17.602201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400780, 40.931316, 17.109505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272991, 40.587666, 16.949581>,  <37.196320, 40.381477, 16.853628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272991, 40.587666, 16.949581>,  <37.400780, 40.931316, 17.109505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272991, 40.587666, 16.949581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135178, 0.458921, -0.878134,
		0.937905, -0.226491, -0.262746,
		-0.319469, -0.859124, -0.399807,
		37.177151, 40.329929, 16.829639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707729, 40.981434, 16.476650>,  <37.400780, 40.931316, 17.109505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707729, 40.981434, 16.476650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413891, 40.712627, 16.439196>,  <37.237587, 40.551346, 16.416723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.413891, 40.712627, 16.439196>,  <37.707729, 40.981434, 16.476650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413891, 40.712627, 16.439196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272066, 0.418164, -0.866671,
		0.621572, -0.611175, -0.490013,
		-0.734594, -0.672014, -0.093639,
		37.193512, 40.511024, 16.411104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573391, 40.808071, 15.766053>,  <37.707729, 40.981434, 16.476650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573391, 40.808071, 15.766053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231174, 40.663395, 15.914230>,  <37.025845, 40.576591, 16.003136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231174, 40.663395, 15.914230>,  <37.573391, 40.808071, 15.766053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231174, 40.663395, 15.914230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464406, 0.219849, -0.857901,
		0.228848, -0.906008, -0.356059,
		-0.855544, -0.361684, 0.370443,
		36.974510, 40.554890, 16.025364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268608, 40.614704, 15.178642>,  <37.573391, 40.808071, 15.766053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268608, 40.614704, 15.178642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959389, 40.592968, 15.431447>,  <36.773857, 40.579926, 15.583130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959389, 40.592968, 15.431447>,  <37.268608, 40.614704, 15.178642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959389, 40.592968, 15.431447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632054, 0.150567, -0.760156,
		-0.053854, -0.987105, -0.150741,
		-0.773051, -0.054339, 0.632012,
		36.727474, 40.576664, 15.621051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937595, 39.981091, 15.135998>,  <37.268608, 40.614704, 15.178642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937595, 39.981091, 15.135998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666325, 40.253494, 15.246490>,  <36.503563, 40.416939, 15.312784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666325, 40.253494, 15.246490>,  <36.937595, 39.981091, 15.135998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666325, 40.253494, 15.246490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424061, -0.055647, -0.903923,
		-0.600212, -0.730154, 0.326529,
		-0.678173, 0.681013, 0.276230,
		36.462872, 40.457798, 15.329358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467590, 39.432026, 15.261642>,  <36.937595, 39.981091, 15.135998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467590, 39.432026, 15.261642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356426, 39.629978, 15.590970>,  <37.289726, 39.748749, 15.788567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356426, 39.629978, 15.590970>,  <37.467590, 39.432026, 15.261642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356426, 39.629978, 15.590970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347433, 0.850843, -0.394152,
		-0.895575, 0.176508, -0.408400,
		-0.277914, 0.494885, 0.823318,
		37.273052, 39.778442, 15.837966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543728, 38.728798, 15.421353>,  <37.467590, 39.432026, 15.261642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543728, 38.728798, 15.421353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341972, 38.485306, 15.176391>,  <37.220921, 38.339211, 15.029413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341972, 38.485306, 15.176391>,  <37.543728, 38.728798, 15.421353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341972, 38.485306, 15.176391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440517, -0.428589, 0.788832,
		-0.742654, 0.667655, -0.051979,
		-0.504390, -0.608727, -0.612407,
		37.190655, 38.302689, 14.992668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945381, 38.607975, 15.781842>,  <37.543728, 38.728798, 15.421353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945381, 38.607975, 15.781842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904732, 38.301849, 15.527607>,  <36.880341, 38.118176, 15.375066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904732, 38.301849, 15.527607>,  <36.945381, 38.607975, 15.781842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904732, 38.301849, 15.527607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441254, -0.537933, 0.718277,
		-0.891610, 0.353449, -0.283030,
		-0.101623, -0.765311, -0.635588,
		36.874245, 38.072254, 15.336930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190193, 38.295628, 15.716294>,  <36.945381, 38.607975, 15.781842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190193, 38.295628, 15.716294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470158, 38.029125, 15.613361>,  <36.638138, 37.869225, 15.551601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470158, 38.029125, 15.613361>,  <36.190193, 38.295628, 15.716294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470158, 38.029125, 15.613361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305670, -0.605059, 0.735167,
		-0.645515, -0.435892, -0.627143,
		0.699912, -0.666260, -0.257335,
		36.680130, 37.829247, 15.536161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780777, 37.679646, 15.872531>,  <36.190193, 38.295628, 15.716294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780777, 37.679646, 15.872531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168125, 37.580059, 15.865970>,  <36.400536, 37.520309, 15.862033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168125, 37.580059, 15.865970>,  <35.780777, 37.679646, 15.872531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168125, 37.580059, 15.865970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187679, -0.770174, 0.609597,
		-0.164400, -0.587240, -0.792542,
		0.968374, -0.248961, -0.016404,
		36.458637, 37.505371, 15.861049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677616, 36.979824, 15.977279>,  <35.780777, 37.679646, 15.872531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677616, 36.979824, 15.977279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077015, 36.991173, 15.996027>,  <36.316654, 36.997982, 16.007277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077015, 36.991173, 15.996027>,  <35.677616, 36.979824, 15.977279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077015, 36.991173, 15.996027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015704, -0.671345, 0.740979,
		0.052492, -0.740602, -0.669891,
		0.998498, 0.028375, 0.046871,
		36.376564, 36.999687, 16.010088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929535, 36.318096, 16.138420>,  <35.677616, 36.979824, 15.977279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929535, 36.318096, 16.138420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203903, 36.570698, 16.283035>,  <36.368526, 36.722260, 16.369804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203903, 36.570698, 16.283035>,  <35.929535, 36.318096, 16.138420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203903, 36.570698, 16.283035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082257, -0.426366, 0.900803,
		0.723008, -0.647622, -0.240509,
		0.685925, 0.631505, 0.361538,
		36.409679, 36.760151, 16.391497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077976, 35.970131, 16.705557>,  <35.929535, 36.318096, 16.138420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077976, 35.970131, 16.705557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230034, 36.333794, 16.773586>,  <36.321270, 36.551991, 16.814404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230034, 36.333794, 16.773586>,  <36.077976, 35.970131, 16.705557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230034, 36.333794, 16.773586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173183, -0.110664, 0.978653,
		0.908570, -0.401482, 0.115383,
		0.380142, 0.909157, 0.170075,
		36.344078, 36.606541, 16.824610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515770, 35.953514, 17.260469>,  <36.077976, 35.970131, 16.705557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515770, 35.953514, 17.260469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404022, 36.337391, 17.248144>,  <36.336975, 36.567715, 17.240749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404022, 36.337391, 17.248144>,  <36.515770, 35.953514, 17.260469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404022, 36.337391, 17.248144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133980, -0.007185, 0.990958,
		0.950791, 0.280969, 0.130586,
		-0.279367, 0.959690, -0.030813,
		36.320213, 36.625298, 17.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969807, 36.272121, 17.736635>,  <36.515770, 35.953514, 17.260469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969807, 36.272121, 17.736635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663574, 36.525139, 17.689692>,  <36.479836, 36.676949, 17.661526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663574, 36.525139, 17.689692>,  <36.969807, 36.272121, 17.736635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663574, 36.525139, 17.689692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199721, -0.060275, 0.977997,
		0.611551, 0.772177, 0.172477,
		-0.765583, 0.632542, -0.117359,
		36.433899, 36.714901, 17.654484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205048, 36.886200, 17.898277>,  <36.969807, 36.272121, 17.736635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205048, 36.886200, 17.898277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809692, 36.868172, 17.956318>,  <36.572479, 36.857353, 17.991142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809692, 36.868172, 17.956318>,  <37.205048, 36.886200, 17.898277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809692, 36.868172, 17.956318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145894, -0.014820, 0.989189,
		-0.042434, 0.998874, 0.021224,
		-0.988390, -0.045072, 0.145101,
		36.513176, 36.854649, 17.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239063, 37.328266, 18.501947>,  <37.205048, 36.886200, 17.898277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239063, 37.328266, 18.501947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885654, 37.148773, 18.448236>,  <36.673611, 37.041077, 18.416010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885654, 37.148773, 18.448236>,  <37.239063, 37.328266, 18.501947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885654, 37.148773, 18.448236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101380, -0.096678, 0.990139,
		-0.457286, 0.888423, 0.039925,
		-0.883522, -0.448729, -0.134278,
		36.620598, 37.014156, 18.407953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796894, 37.597775, 19.013817>,  <37.239063, 37.328266, 18.501947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796894, 37.597775, 19.013817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648140, 37.240997, 18.910942>,  <36.558887, 37.026932, 18.849218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648140, 37.240997, 18.910942>,  <36.796894, 37.597775, 19.013817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648140, 37.240997, 18.910942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101259, -0.236425, 0.966359,
		-0.922739, 0.385418, -0.002394,
		-0.371887, -0.891939, -0.257185,
		36.536575, 36.973415, 18.833786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181503, 37.515327, 19.337145>,  <36.796894, 37.597775, 19.013817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181503, 37.515327, 19.337145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304199, 37.142265, 19.261171>,  <36.377815, 36.918430, 19.215588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304199, 37.142265, 19.261171>,  <36.181503, 37.515327, 19.337145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304199, 37.142265, 19.261171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031764, -0.209471, 0.977299,
		-0.951264, -0.293741, -0.093877,
		0.306737, -0.932651, -0.189932,
		36.396221, 36.862469, 19.204191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807186, 37.107319, 19.828171>,  <36.181503, 37.515327, 19.337145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807186, 37.107319, 19.828171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085693, 36.844563, 19.712440>,  <36.252796, 36.686909, 19.643002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085693, 36.844563, 19.712440>,  <35.807186, 37.107319, 19.828171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085693, 36.844563, 19.712440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175313, -0.235244, 0.955994,
		-0.696046, -0.716348, -0.048631,
		0.696265, -0.656891, -0.289326,
		36.294575, 36.647495, 19.625643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750793, 36.575756, 20.258303>,  <35.807186, 37.107319, 19.828171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750793, 36.575756, 20.258303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102631, 36.466991, 20.102158>,  <36.313732, 36.401733, 20.008471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102631, 36.466991, 20.102158>,  <35.750793, 36.575756, 20.258303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102631, 36.466991, 20.102158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296047, -0.329460, 0.896556,
		-0.372391, -0.904169, -0.209292,
		0.879592, -0.271910, -0.390365,
		36.366508, 36.385418, 19.985048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000862, 35.805882, 20.472477>,  <35.750793, 36.575756, 20.258303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000862, 35.805882, 20.472477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336281, 36.007519, 20.389797>,  <36.537533, 36.128502, 20.340189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336281, 36.007519, 20.389797>,  <36.000862, 35.805882, 20.472477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336281, 36.007519, 20.389797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419294, -0.354843, 0.835631,
		0.347890, -0.787386, -0.508916,
		0.838549, 0.504093, -0.206700,
		36.587845, 36.158745, 20.327787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583591, 35.380257, 20.480848>,  <36.000862, 35.805882, 20.472477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583591, 35.380257, 20.480848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755787, 35.734104, 20.552553>,  <36.859104, 35.946411, 20.595575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755787, 35.734104, 20.552553>,  <36.583591, 35.380257, 20.480848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755787, 35.734104, 20.552553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379406, -0.357561, 0.853347,
		0.818980, -0.299345, -0.489555,
		0.430491, 0.884615, 0.179262,
		36.884933, 35.999489, 20.606331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209560, 35.203125, 20.837465>,  <36.583591, 35.380257, 20.480848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209560, 35.203125, 20.837465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.171425, 35.593994, 20.913404>,  <37.148544, 35.828514, 20.958967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.171425, 35.593994, 20.913404>,  <37.209560, 35.203125, 20.837465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171425, 35.593994, 20.913404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270791, -0.158067, 0.949572,
		0.957906, 0.141936, -0.249541,
		-0.095335, 0.977174, 0.189848,
		37.142826, 35.887146, 20.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840252, 35.483631, 21.201147>,  <37.209560, 35.203125, 20.837465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840252, 35.483631, 21.201147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548340, 35.738358, 21.300663>,  <37.373192, 35.891193, 21.360373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548340, 35.738358, 21.300663>,  <37.840252, 35.483631, 21.201147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548340, 35.738358, 21.300663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203959, -0.144539, 0.968251,
		0.652554, 0.757349, -0.024402,
		-0.729777, 0.636813, 0.248788,
		37.329407, 35.929401, 21.375299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121513, 35.848770, 21.742670>,  <37.840252, 35.483631, 21.201147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121513, 35.848770, 21.742670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732189, 35.921700, 21.798416>,  <37.498596, 35.965458, 21.831863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732189, 35.921700, 21.798416>,  <38.121513, 35.848770, 21.742670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732189, 35.921700, 21.798416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150506, 0.048704, 0.987409,
		0.173243, 0.982031, -0.074845,
		-0.973311, 0.182326, 0.139364,
		37.440197, 35.976398, 21.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.600777, 41.063332, 26.213831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559357, 40.670578, 26.150358>,  <37.534504, 40.434925, 26.112274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559357, 40.670578, 26.150358>,  <37.600777, 41.063332, 26.213831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559357, 40.670578, 26.150358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066016, -0.165974, 0.983918,
		-0.992431, 0.091409, 0.082007,
		-0.103549, -0.981884, -0.158683,
		37.528294, 40.376011, 26.102753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026073, 40.878826, 26.511372>,  <37.600777, 41.063332, 26.213831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026073, 40.878826, 26.511372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245743, 40.545898, 26.481304>,  <37.377544, 40.346142, 26.463263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245743, 40.545898, 26.481304>,  <37.026073, 40.878826, 26.511372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245743, 40.545898, 26.481304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034156, -0.067518, 0.997133,
		-0.835009, -0.550169, -0.008651,
		0.549176, -0.832319, -0.075170,
		37.410496, 40.296204, 26.458754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726971, 40.505974, 27.045267>,  <37.026073, 40.878826, 26.511372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726971, 40.505974, 27.045267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037846, 40.269966, 26.957771>,  <37.224373, 40.128361, 26.905273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.037846, 40.269966, 26.957771>,  <36.726971, 40.505974, 27.045267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037846, 40.269966, 26.957771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016149, -0.366198, 0.930397,
		-0.629059, -0.719562, -0.294134,
		0.777190, -0.590025, -0.218740,
		37.271004, 40.092960, 26.892149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556911, 39.871887, 27.261553>,  <36.726971, 40.505974, 27.045267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556911, 39.871887, 27.261553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956486, 39.854885, 27.268768>,  <37.196228, 39.844685, 27.273098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956486, 39.854885, 27.268768>,  <36.556911, 39.871887, 27.261553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956486, 39.854885, 27.268768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035503, -0.457285, 0.888611,
		-0.029522, -0.888304, -0.458306,
		0.998933, -0.042505, 0.018037,
		37.256165, 39.842133, 27.274179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687748, 39.181301, 27.374039>,  <36.556911, 39.871887, 27.261553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687748, 39.181301, 27.374039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024513, 39.366638, 27.484667>,  <37.226574, 39.477840, 27.551043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024513, 39.366638, 27.484667>,  <36.687748, 39.181301, 27.374039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024513, 39.366638, 27.484667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076540, -0.404815, 0.911190,
		0.534150, -0.788315, -0.305357,
		0.841918, 0.463340, 0.276569,
		37.277088, 39.505642, 27.567638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185268, 38.674984, 27.636568>,  <36.687748, 39.181301, 27.374039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185268, 38.674984, 27.636568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280243, 39.027546, 27.799908>,  <37.337227, 39.239082, 27.897911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280243, 39.027546, 27.799908>,  <37.185268, 38.674984, 27.636568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280243, 39.027546, 27.799908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093126, -0.439090, 0.893604,
		0.966928, -0.174148, -0.186339,
		0.237439, 0.881404, 0.408351,
		37.351475, 39.291965, 27.922413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676823, 38.533329, 28.137886>,  <37.185268, 38.674984, 27.636568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676823, 38.533329, 28.137886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564224, 38.896721, 28.261446>,  <37.496666, 39.114758, 28.335583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564224, 38.896721, 28.261446>,  <37.676823, 38.533329, 28.137886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564224, 38.896721, 28.261446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208122, -0.256449, 0.943885,
		0.936720, 0.329989, -0.116886,
		-0.281496, 0.908483, 0.308899,
		37.479774, 39.169266, 28.354116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136017, 38.594841, 28.628716>,  <37.676823, 38.533329, 28.137886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136017, 38.594841, 28.628716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857780, 38.869816, 28.712225>,  <37.690838, 39.034801, 28.762331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857780, 38.869816, 28.712225>,  <38.136017, 38.594841, 28.628716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857780, 38.869816, 28.712225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107236, -0.187994, 0.976299,
		0.710394, 0.701488, 0.057048,
		-0.695586, 0.687440, 0.208774,
		37.649105, 39.076046, 28.774857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451149, 38.924870, 29.150331>,  <38.136017, 38.594841, 28.628716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451149, 38.924870, 29.150331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068764, 39.034683, 29.191816>,  <37.839333, 39.100571, 29.216707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068764, 39.034683, 29.191816>,  <38.451149, 38.924870, 29.150331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068764, 39.034683, 29.191816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067856, -0.137043, 0.988238,
		0.285521, 0.951761, 0.112380,
		-0.955967, 0.274537, 0.103712,
		37.781975, 39.117043, 29.222929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449535, 39.365551, 29.765005>,  <38.451149, 38.924870, 29.150331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449535, 39.365551, 29.765005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077614, 39.229698, 29.708281>,  <37.854462, 39.148186, 29.674246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077614, 39.229698, 29.708281>,  <38.449535, 39.365551, 29.765005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077614, 39.229698, 29.708281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097455, -0.144355, 0.984715,
		-0.354909, 0.929415, 0.101123,
		-0.929807, -0.339630, -0.141809,
		37.798672, 39.127808, 29.665737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082771, 39.795326, 30.145521>,  <38.449535, 39.365551, 29.765005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082771, 39.795326, 30.145521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902245, 39.438839, 30.127420>,  <37.793930, 39.224945, 30.116560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902245, 39.438839, 30.127420>,  <38.082771, 39.795326, 30.145521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902245, 39.438839, 30.127420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184692, -0.142898, 0.972353,
		-0.873043, 0.430480, 0.229092,
		-0.451315, -0.891217, -0.045250,
		37.766850, 39.171474, 30.113846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732357, 39.801262, 30.742758>,  <38.082771, 39.795326, 30.145521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732357, 39.801262, 30.742758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740940, 39.416832, 30.632576>,  <37.746090, 39.186172, 30.566467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.740940, 39.416832, 30.632576>,  <37.732357, 39.801262, 30.742758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740940, 39.416832, 30.632576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167930, -0.268137, 0.948632,
		-0.985565, -0.066617, 0.155639,
		0.021462, -0.961075, -0.275453,
		37.747379, 39.128510, 30.549940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922348, 40.352566, 31.330568>,  <37.732357, 39.801262, 30.742758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922348, 40.352566, 31.330568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614639, 40.514095, 31.528622>,  <37.430016, 40.611012, 31.647453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614639, 40.514095, 31.528622>,  <37.922348, 40.352566, 31.330568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614639, 40.514095, 31.528622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313475, 0.436722, -0.843213,
		-0.556742, -0.803868, -0.209369,
		-0.769268, 0.403820, 0.495133,
		37.383858, 40.635242, 31.677162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191635, 40.265514, 31.062202>,  <37.922348, 40.352566, 31.330568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191635, 40.265514, 31.062202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.146675, 40.580379, 31.304770>,  <37.119701, 40.769299, 31.450310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.146675, 40.580379, 31.304770>,  <37.191635, 40.265514, 31.062202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146675, 40.580379, 31.304770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406983, 0.520281, -0.750781,
		-0.906494, -0.331189, 0.261882,
		-0.112398, 0.787160, 0.606420,
		37.112957, 40.816528, 31.486696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497147, 40.530807, 31.105482>,  <37.191635, 40.265514, 31.062202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497147, 40.530807, 31.105482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.697578, 40.870186, 31.173672>,  <36.817837, 41.073814, 31.214586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.697578, 40.870186, 31.173672>,  <36.497147, 40.530807, 31.105482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697578, 40.870186, 31.173672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521550, 0.453262, -0.722869,
		-0.690584, 0.273303, 0.669626,
		0.501078, 0.848445, 0.170474,
		36.847900, 41.124718, 31.224813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986004, 41.008263, 31.268599>,  <36.497147, 40.530807, 31.105482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986004, 41.008263, 31.268599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305454, 41.173565, 31.093592>,  <36.497124, 41.272747, 30.988588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305454, 41.173565, 31.093592>,  <35.986004, 41.008263, 31.268599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305454, 41.173565, 31.093592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579800, 0.333430, -0.743409,
		-0.161334, 0.847377, 0.505889,
		0.798626, 0.413251, -0.437516,
		36.545044, 41.297539, 30.962337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642490, 41.512936, 31.005379>,  <35.986004, 41.008263, 31.268599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642490, 41.512936, 31.005379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990685, 41.537640, 30.810057>,  <36.199600, 41.552464, 30.692863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990685, 41.537640, 30.810057>,  <35.642490, 41.512936, 31.005379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990685, 41.537640, 30.810057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491241, 0.170825, -0.854108,
		0.030664, 0.983364, 0.179040,
		0.870484, 0.061762, -0.488307,
		36.251831, 41.556168, 30.663565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578438, 42.062763, 30.569105>,  <35.642490, 41.512936, 31.005379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578438, 42.062763, 30.569105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871750, 41.856159, 30.392233>,  <36.047737, 41.732197, 30.286110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871750, 41.856159, 30.392233>,  <35.578438, 42.062763, 30.569105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871750, 41.856159, 30.392233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372185, 0.239335, -0.896770,
		0.569019, 0.822154, -0.016738,
		0.733277, -0.516509, -0.442180,
		36.091732, 41.701206, 30.259579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843849, 42.501293, 30.073952>,  <35.578438, 42.062763, 30.569105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843849, 42.501293, 30.073952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.962120, 42.138046, 29.955364>,  <36.033085, 41.920097, 29.884212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.962120, 42.138046, 29.955364>,  <35.843849, 42.501293, 30.073952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962120, 42.138046, 29.955364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266073, 0.219777, -0.938565,
		0.917485, 0.356398, -0.176642,
		0.295681, -0.908118, -0.296469,
		36.050823, 41.865612, 29.866423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251015, 42.600353, 29.469282>,  <35.843849, 42.501293, 30.073952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251015, 42.600353, 29.469282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.154221, 42.213646, 29.436293>,  <36.096142, 41.981621, 29.416498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.154221, 42.213646, 29.436293>,  <36.251015, 42.600353, 29.469282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154221, 42.213646, 29.436293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189033, 0.130348, -0.973281,
		0.951687, -0.219933, -0.214294,
		-0.241990, -0.966767, -0.082476,
		36.081623, 41.923615, 29.411551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595779, 42.312832, 28.863991>,  <36.251015, 42.600353, 29.469282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595779, 42.312832, 28.863991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312267, 42.044827, 28.952267>,  <36.142159, 41.884022, 29.005232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312267, 42.044827, 28.952267>,  <36.595779, 42.312832, 28.863991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312267, 42.044827, 28.952267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136108, -0.177080, -0.974740,
		0.692173, -0.720915, 0.034316,
		-0.708781, -0.670018, 0.220692,
		36.099632, 41.843822, 29.018475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668640, 41.893440, 28.367750>,  <36.595779, 42.312832, 28.863991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668640, 41.893440, 28.367750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306293, 41.774158, 28.488068>,  <36.088886, 41.702587, 28.560257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306293, 41.774158, 28.488068>,  <36.668640, 41.893440, 28.367750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306293, 41.774158, 28.488068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241291, -0.220328, -0.945111,
		0.348114, -0.928723, 0.127633,
		-0.905867, -0.298210, 0.300792,
		36.034534, 41.684696, 28.578304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656807, 41.229687, 28.256693>,  <36.668640, 41.893440, 28.367750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656807, 41.229687, 28.256693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278927, 41.360382, 28.267899>,  <36.052200, 41.438801, 28.274622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278927, 41.360382, 28.267899>,  <36.656807, 41.229687, 28.256693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278927, 41.360382, 28.267899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161560, -0.389373, -0.906800,
		-0.285378, -0.861180, 0.420629,
		-0.944700, 0.326737, 0.028014,
		35.995518, 41.458405, 28.276302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396248, 40.739491, 27.903582>,  <36.656807, 41.229687, 28.256693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396248, 40.739491, 27.903582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121387, 41.029743, 27.917953>,  <35.956470, 41.203896, 27.926577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121387, 41.029743, 27.917953>,  <36.396248, 40.739491, 27.903582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121387, 41.029743, 27.917953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185987, -0.127887, -0.974194,
		-0.702309, -0.676096, 0.222835,
		-0.687146, 0.725630, 0.035928,
		35.915245, 41.247433, 27.928732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871784, 40.510815, 27.587524>,  <36.396248, 40.739491, 27.903582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871784, 40.510815, 27.587524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797787, 40.902294, 27.551920>,  <35.753387, 41.137180, 27.530558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797787, 40.902294, 27.551920>,  <35.871784, 40.510815, 27.587524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797787, 40.902294, 27.551920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162963, -0.119871, -0.979323,
		-0.969134, -0.166664, 0.181667,
		-0.184995, 0.978700, -0.089011,
		35.742287, 41.195904, 27.525217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313526, 40.589939, 27.202633>,  <35.871784, 40.510815, 27.587524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313526, 40.589939, 27.202633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.468746, 40.949879, 27.122936>,  <35.561878, 41.165840, 27.075117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.468746, 40.949879, 27.122936>,  <35.313526, 40.589939, 27.202633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468746, 40.949879, 27.122936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239841, -0.110141, -0.964544,
		-0.889885, 0.422076, 0.173080,
		0.388048, 0.899845, -0.199244,
		35.585159, 41.219833, 27.063164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749176, 40.914253, 26.790539>,  <35.313526, 40.589939, 27.202633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749176, 40.914253, 26.790539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080223, 41.129810, 26.727747>,  <35.278851, 41.259144, 26.690071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080223, 41.129810, 26.727747>,  <34.749176, 40.914253, 26.790539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080223, 41.129810, 26.727747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320641, 0.224363, -0.920245,
		-0.460691, 0.811947, 0.358477,
		0.827619, 0.538891, -0.156981,
		35.328510, 41.291477, 26.680653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476757, 41.423508, 26.433554>,  <34.749176, 40.914253, 26.790539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476757, 41.423508, 26.433554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865860, 41.448971, 26.344385>,  <35.099323, 41.464249, 26.290884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865860, 41.448971, 26.344385>,  <34.476757, 41.423508, 26.433554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865860, 41.448971, 26.344385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231395, 0.207542, -0.950465,
		-0.014236, 0.976153, 0.216617,
		0.972756, 0.063654, -0.222922,
		35.157688, 41.468067, 26.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768272, 41.810390, 26.504522>,  <34.476757, 41.423508, 26.433554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768272, 41.810390, 26.504522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496429, 41.530281, 26.417120>,  <33.333324, 41.362213, 26.364677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496429, 41.530281, 26.417120>,  <33.768272, 41.810390, 26.504522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496429, 41.530281, 26.417120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032479, -0.268851, 0.962634,
		-0.732855, 0.661312, 0.159970,
		-0.679609, -0.700276, -0.218507,
		33.292545, 41.320198, 26.351568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231770, 41.915676, 26.987602>,  <33.768272, 41.810390, 26.504522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231770, 41.915676, 26.987602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.187279, 41.538277, 26.862745>,  <33.160583, 41.311836, 26.787832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.187279, 41.538277, 26.862745>,  <33.231770, 41.915676, 26.987602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187279, 41.538277, 26.862745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179603, -0.289834, 0.940074,
		-0.977431, 0.160619, -0.137220,
		-0.111223, -0.943503, -0.312140,
		33.153912, 41.255226, 26.769104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723804, 41.732368, 27.263632>,  <33.231770, 41.915676, 26.987602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723804, 41.732368, 27.263632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.888126, 41.379314, 27.172243>,  <32.986721, 41.167484, 27.117409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.888126, 41.379314, 27.172243>,  <32.723804, 41.732368, 27.263632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888126, 41.379314, 27.172243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162473, -0.317455, 0.934251,
		-0.897130, -0.346673, -0.273816,
		0.410804, -0.882633, -0.228473,
		33.011368, 41.114525, 27.103701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212749, 41.177727, 27.553192>,  <32.723804, 41.732368, 27.263632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212749, 41.177727, 27.553192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.565651, 41.001019, 27.488129>,  <32.777393, 40.894993, 27.449091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.565651, 41.001019, 27.488129>,  <32.212749, 41.177727, 27.553192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565651, 41.001019, 27.488129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078770, -0.479176, 0.874177,
		-0.464119, -0.758442, -0.457558,
		0.882263, -0.441764, -0.162652,
		32.830326, 40.868484, 27.439331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190266, 40.533775, 27.941334>,  <32.212749, 41.177727, 27.553192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190266, 40.533775, 27.941334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578098, 40.561554, 27.847443>,  <32.810799, 40.578220, 27.791107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578098, 40.561554, 27.847443>,  <32.190266, 40.533775, 27.941334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578098, 40.561554, 27.847443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235482, -0.526466, 0.816934,
		-0.066846, -0.847355, -0.526802,
		0.969577, 0.069444, -0.234729,
		32.868973, 40.582386, 27.777023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410946, 39.937565, 28.181858>,  <32.190266, 40.533775, 27.941334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410946, 39.937565, 28.181858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731907, 40.175991, 28.170212>,  <32.924484, 40.319046, 28.163225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731907, 40.175991, 28.170212>,  <32.410946, 39.937565, 28.181858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731907, 40.175991, 28.170212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284155, -0.338711, 0.896956,
		0.524785, -0.727997, -0.441159,
		0.802407, 0.596067, -0.029114,
		32.972630, 40.354813, 28.161478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011929, 39.511795, 28.236591>,  <32.410946, 39.937565, 28.181858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011929, 39.511795, 28.236591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.116268, 39.869846, 28.381203>,  <33.178871, 40.084679, 28.467970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.116268, 39.869846, 28.381203>,  <33.011929, 39.511795, 28.236591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116268, 39.869846, 28.381203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016058, -0.378463, 0.925477,
		0.965245, -0.235607, -0.113097,
		0.260852, 0.895129, 0.361526,
		33.194523, 40.138386, 28.489660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631439, 39.370506, 28.595621>,  <33.011929, 39.511795, 28.236591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631439, 39.370506, 28.595621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.509491, 39.724335, 28.736805>,  <33.436321, 39.936634, 28.821516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.509491, 39.724335, 28.736805>,  <33.631439, 39.370506, 28.595621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509491, 39.724335, 28.736805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353875, -0.238858, 0.904278,
		0.884210, 0.400592, -0.240208,
		-0.304871, 0.884575, 0.352960,
		33.418030, 39.989708, 28.842693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243366, 39.655533, 29.016010>,  <33.631439, 39.370506, 28.595621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243366, 39.655533, 29.016010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921658, 39.837452, 29.169012>,  <33.728634, 39.946602, 29.260813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921658, 39.837452, 29.169012>,  <34.243366, 39.655533, 29.016010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921658, 39.837452, 29.169012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160050, -0.454103, 0.876456,
		0.572306, 0.766127, 0.292431,
		-0.804270, 0.454798, 0.382504,
		33.680378, 39.973892, 29.283764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446362, 40.015903, 29.682558>,  <34.243366, 39.655533, 29.016010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446362, 40.015903, 29.682558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049358, 39.984119, 29.719675>,  <33.811157, 39.965050, 29.741945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049358, 39.984119, 29.719675>,  <34.446362, 40.015903, 29.682558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049358, 39.984119, 29.719675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094832, -0.022255, 0.995245,
		-0.077022, 0.996589, 0.029625,
		-0.992509, -0.079465, 0.092795,
		33.751606, 39.960281, 29.747513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377453, 40.309071, 30.218510>,  <34.446362, 40.015903, 29.682558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377453, 40.309071, 30.218510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.038006, 40.099682, 30.187983>,  <33.834339, 39.974049, 30.169666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.038006, 40.099682, 30.187983>,  <34.377453, 40.309071, 30.218510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038006, 40.099682, 30.187983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053202, -0.227984, 0.972210,
		-0.526324, 0.820975, 0.221321,
		-0.848618, -0.523472, -0.076316,
		33.783421, 39.942638, 30.165089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896507, 40.633270, 30.623585>,  <34.377453, 40.309071, 30.218510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896507, 40.633270, 30.623585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759991, 40.259220, 30.585489>,  <33.678082, 40.034790, 30.562632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759991, 40.259220, 30.585489>,  <33.896507, 40.633270, 30.623585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759991, 40.259220, 30.585489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193480, -0.029265, 0.980668,
		-0.919830, 0.353119, -0.170939,
		-0.341290, -0.935121, -0.095240,
		33.657604, 39.978683, 30.556917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.587063, 42.814445, 22.894501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806150, 42.483753, 22.945910>,  <31.937603, 42.285339, 22.976755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806150, 42.483753, 22.945910>,  <31.587063, 42.814445, 22.894501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806150, 42.483753, 22.945910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287758, -0.041904, 0.956786,
		-0.785619, -0.561034, -0.260850,
		0.547720, -0.826731, 0.128522,
		31.970467, 42.235733, 22.984467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328217, 42.459171, 23.386164>,  <31.587063, 42.814445, 22.894501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328217, 42.459171, 23.386164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669296, 42.250294, 23.380199>,  <31.873943, 42.124969, 23.376621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669296, 42.250294, 23.380199>,  <31.328217, 42.459171, 23.386164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669296, 42.250294, 23.380199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001355, -0.030749, 0.999526,
		-0.522404, -0.852273, -0.026927,
		0.852697, -0.522193, -0.014908,
		31.925106, 42.093636, 23.375727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233313, 41.990051, 23.947292>,  <31.328217, 42.459171, 23.386164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233313, 41.990051, 23.947292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625578, 41.956165, 23.876732>,  <31.860937, 41.935833, 23.834394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625578, 41.956165, 23.876732>,  <31.233313, 41.990051, 23.947292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625578, 41.956165, 23.876732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169252, -0.085297, 0.981875,
		-0.098238, -0.992746, -0.069307,
		0.980664, -0.084727, -0.176404,
		31.919777, 41.930752, 23.823811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474758, 41.429256, 24.321783>,  <31.233313, 41.990051, 23.947292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474758, 41.429256, 24.321783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815098, 41.626751, 24.249914>,  <32.019302, 41.745247, 24.206793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815098, 41.626751, 24.249914>,  <31.474758, 41.429256, 24.321783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815098, 41.626751, 24.249914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325943, -0.227804, 0.917533,
		0.412085, -0.839246, -0.354756,
		0.850851, 0.493732, -0.179672,
		32.070354, 41.774872, 24.196012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954735, 41.020958, 24.578896>,  <31.474758, 41.429256, 24.321783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954735, 41.020958, 24.578896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174347, 41.354477, 24.555754>,  <32.306114, 41.554588, 24.541868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174347, 41.354477, 24.555754>,  <31.954735, 41.020958, 24.578896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174347, 41.354477, 24.555754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455929, -0.240765, 0.856832,
		0.700494, -0.496806, -0.512339,
		0.549032, 0.833796, -0.057854,
		32.339058, 41.604614, 24.538397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652115, 40.797501, 24.692818>,  <31.954735, 41.020958, 24.578896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652115, 40.797501, 24.692818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632851, 41.190907, 24.762541>,  <32.621292, 41.426949, 24.804375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632851, 41.190907, 24.762541>,  <32.652115, 40.797501, 24.692818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632851, 41.190907, 24.762541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582872, -0.114043, 0.804521,
		0.811135, 0.140349, -0.567769,
		-0.048164, 0.983512, 0.174309,
		32.618401, 41.485962, 24.814833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307915, 41.034748, 24.775042>,  <32.652115, 40.797501, 24.692818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307915, 41.034748, 24.775042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113598, 41.315994, 24.982746>,  <32.997005, 41.484741, 25.107368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113598, 41.315994, 24.982746>,  <33.307915, 41.034748, 24.775042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113598, 41.315994, 24.982746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537634, -0.228037, 0.811757,
		0.689169, 0.673520, -0.267239,
		-0.485795, 0.703114, 0.519263,
		32.967861, 41.526928, 25.138525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799717, 41.167896, 25.234230>,  <33.307915, 41.034748, 24.775042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799717, 41.167896, 25.234230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459003, 41.309917, 25.388317>,  <33.254574, 41.395130, 25.480768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459003, 41.309917, 25.388317>,  <33.799717, 41.167896, 25.234230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459003, 41.309917, 25.388317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203112, -0.453977, 0.867554,
		0.482910, 0.817214, 0.314576,
		-0.851788, 0.355057, 0.385217,
		33.203468, 41.416435, 25.503881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027214, 41.400368, 25.843344>,  <33.799717, 41.167896, 25.234230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027214, 41.400368, 25.843344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629566, 41.368591, 25.872799>,  <33.390980, 41.349525, 25.890472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629566, 41.368591, 25.872799>,  <34.027214, 41.400368, 25.843344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629566, 41.368591, 25.872799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096008, -0.331400, 0.938593,
		-0.050156, 0.940140, 0.337077,
		-0.994116, -0.079438, 0.073639,
		33.331333, 41.344761, 25.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593372, 42.093754, 25.944706>,  <34.027214, 41.400368, 25.843344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593372, 42.093754, 25.944706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908607, 41.851570, 25.900274>,  <35.097748, 41.706261, 25.873615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908607, 41.851570, 25.900274>,  <34.593372, 42.093754, 25.944706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908607, 41.851570, 25.900274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017507, 0.158334, -0.987230,
		0.615316, 0.779967, 0.114181,
		0.788086, -0.605460, -0.111081,
		35.145035, 41.669933, 25.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988213, 42.491077, 25.603149>,  <34.593372, 42.093754, 25.944706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988213, 42.491077, 25.603149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140179, 42.132336, 25.512543>,  <35.231358, 41.917091, 25.458179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140179, 42.132336, 25.512543>,  <34.988213, 42.491077, 25.603149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140179, 42.132336, 25.512543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083466, 0.277114, -0.957205,
		0.921247, 0.344753, 0.180138,
		0.379917, -0.896858, -0.226516,
		35.254154, 41.863277, 25.444588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612312, 42.672527, 25.301788>,  <34.988213, 42.491077, 25.603149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612312, 42.672527, 25.301788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519474, 42.300201, 25.188850>,  <35.463772, 42.076805, 25.121088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519474, 42.300201, 25.188850>,  <35.612312, 42.672527, 25.301788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519474, 42.300201, 25.188850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311216, 0.203949, -0.928197,
		0.921562, -0.303299, 0.242349,
		-0.232094, -0.930814, -0.282343,
		35.449844, 42.020958, 25.104147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148026, 42.430790, 24.916990>,  <35.612312, 42.672527, 25.301788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148026, 42.430790, 24.916990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855827, 42.193928, 24.780918>,  <35.680508, 42.051811, 24.699276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855827, 42.193928, 24.780918>,  <36.148026, 42.430790, 24.916990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855827, 42.193928, 24.780918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314460, 0.150509, -0.937263,
		0.606208, -0.791642, 0.076264,
		-0.730498, -0.592158, -0.340179,
		35.636677, 42.016281, 24.678864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511433, 42.086975, 24.412174>,  <36.148026, 42.430790, 24.916990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511433, 42.086975, 24.412174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122528, 42.042686, 24.329758>,  <35.889187, 42.016113, 24.280308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122528, 42.042686, 24.329758>,  <36.511433, 42.086975, 24.412174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122528, 42.042686, 24.329758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217845, -0.107841, -0.970007,
		0.085182, -0.987983, 0.128970,
		-0.972259, -0.110723, -0.206041,
		35.830849, 42.009468, 24.267946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418015, 41.604870, 23.804956>,  <36.511433, 42.086975, 24.412174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418015, 41.604870, 23.804956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046947, 41.752182, 23.829588>,  <35.824306, 41.840569, 23.844366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046947, 41.752182, 23.829588>,  <36.418015, 41.604870, 23.804956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046947, 41.752182, 23.829588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083743, -0.044489, -0.995494,
		-0.363885, -0.928648, 0.072113,
		-0.927672, 0.368284, 0.061578,
		35.768646, 41.862667, 23.848061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912338, 41.077477, 23.348846>,  <36.418015, 41.604870, 23.804956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912338, 41.077477, 23.348846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783169, 41.455978, 23.356035>,  <35.705666, 41.683079, 23.360350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783169, 41.455978, 23.356035>,  <35.912338, 41.077477, 23.348846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783169, 41.455978, 23.356035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008459, 0.016105, -0.999834,
		-0.946387, -0.323024, 0.002803,
		-0.322925, 0.946254, 0.017974,
		35.686291, 41.739853, 23.361427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464153, 41.080765, 22.830379>,  <35.912338, 41.077477, 23.348846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464153, 41.080765, 22.830379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520237, 41.473923, 22.878136>,  <35.553886, 41.709820, 22.906790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520237, 41.473923, 22.878136>,  <35.464153, 41.080765, 22.830379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520237, 41.473923, 22.878136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139255, 0.138960, -0.980458,
		-0.980280, 0.120844, 0.156357,
		0.140209, 0.982897, 0.119392,
		35.562302, 41.768791, 22.913954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902508, 41.411358, 22.340998>,  <35.464153, 41.080765, 22.830379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902508, 41.411358, 22.340998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203369, 41.660942, 22.425791>,  <35.383888, 41.810692, 22.476667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203369, 41.660942, 22.425791>,  <34.902508, 41.411358, 22.340998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203369, 41.660942, 22.425791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043137, 0.274374, -0.960655,
		-0.657571, 0.731707, 0.179457,
		0.752157, 0.623958, 0.211984,
		35.429016, 41.848129, 22.489386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849678, 41.941418, 21.899843>,  <34.902508, 41.411358, 22.340998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849678, 41.941418, 21.899843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230587, 41.973587, 22.017630>,  <35.459133, 41.992889, 22.088301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230587, 41.973587, 22.017630>,  <34.849678, 41.941418, 21.899843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230587, 41.973587, 22.017630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257078, 0.308822, -0.915718,
		-0.164586, 0.947713, 0.273407,
		0.952272, 0.080427, 0.294464,
		35.516270, 41.997715, 22.105968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980251, 42.623245, 21.760599>,  <34.849678, 41.941418, 21.899843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980251, 42.623245, 21.760599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326195, 42.423080, 21.776690>,  <35.533760, 42.302982, 21.786343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326195, 42.423080, 21.776690>,  <34.980251, 42.623245, 21.760599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326195, 42.423080, 21.776690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198664, 0.267563, -0.942838,
		0.461042, 0.823408, 0.330816,
		0.864854, -0.500409, 0.040224,
		35.585651, 42.272957, 21.788757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417759, 42.950871, 21.230612>,  <34.980251, 42.623245, 21.760599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417759, 42.950871, 21.230612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631901, 42.621895, 21.307545>,  <35.760387, 42.424511, 21.353704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631901, 42.621895, 21.307545>,  <35.417759, 42.950871, 21.230612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631901, 42.621895, 21.307545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441996, 0.078751, -0.893554,
		0.719745, 0.563379, 0.405674,
		0.535356, -0.822437, 0.192330,
		35.792507, 42.375164, 21.365244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075958, 43.179211, 21.288214>,  <35.417759, 42.950871, 21.230612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075958, 43.179211, 21.288214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051735, 42.801308, 21.159361>,  <36.037201, 42.574566, 21.082048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051735, 42.801308, 21.159361>,  <36.075958, 43.179211, 21.288214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051735, 42.801308, 21.159361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413434, 0.270000, -0.869582,
		0.908518, -0.185846, 0.374242,
		-0.060563, -0.944755, -0.322134,
		36.033566, 42.517879, 21.062721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635410, 43.117924, 20.790157>,  <36.075958, 43.179211, 21.288214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635410, 43.117924, 20.790157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397522, 42.804405, 20.718643>,  <36.254787, 42.616295, 20.675735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397522, 42.804405, 20.718643>,  <36.635410, 43.117924, 20.790157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397522, 42.804405, 20.718643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273594, 0.011786, -0.961773,
		0.755942, -0.620905, 0.207433,
		-0.594725, -0.783797, -0.178785,
		36.219105, 42.569267, 20.665007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.390633, 35.483837, 20.918253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536949, 35.854740, 20.950207>,  <33.624741, 36.077282, 20.969379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536949, 35.854740, 20.950207>,  <33.390633, 35.483837, 20.918253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536949, 35.854740, 20.950207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305192, -0.200593, 0.930925,
		0.879235, -0.316146, -0.356368,
		0.365793, 0.927262, 0.079883,
		33.646687, 36.132919, 20.974173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015255, 35.377357, 21.189938>,  <33.390633, 35.483837, 20.918253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015255, 35.377357, 21.189938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945389, 35.765202, 21.258455>,  <33.903469, 35.997910, 21.299566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.945389, 35.765202, 21.258455>,  <34.015255, 35.377357, 21.189938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945389, 35.765202, 21.258455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344633, -0.102764, 0.933096,
		0.922346, 0.222010, -0.316212,
		-0.174662, 0.969614, 0.171296,
		33.892990, 36.056087, 21.309843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719757, 35.665382, 21.407114>,  <34.015255, 35.377357, 21.189938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719757, 35.665382, 21.407114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415623, 35.878620, 21.555546>,  <34.233143, 36.006561, 21.644606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415623, 35.878620, 21.555546>,  <34.719757, 35.665382, 21.407114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415623, 35.878620, 21.555546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408448, -0.051795, 0.911311,
		0.505034, 0.844469, -0.178360,
		-0.760336, 0.533094, 0.371080,
		34.187523, 36.038548, 21.666870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073334, 36.146980, 21.862249>,  <34.719757, 35.665382, 21.407114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073334, 36.146980, 21.862249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689476, 36.167419, 21.972862>,  <34.459160, 36.179684, 22.039230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689476, 36.167419, 21.972862>,  <35.073334, 36.146980, 21.862249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689476, 36.167419, 21.972862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271693, -0.085215, 0.958604,
		0.072544, 0.995052, 0.067894,
		-0.959646, 0.051095, 0.276530,
		34.401581, 36.182747, 22.055820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095863, 36.509575, 22.516159>,  <35.073334, 36.146980, 21.862249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095863, 36.509575, 22.516159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.741074, 36.326195, 22.538397>,  <34.528198, 36.216167, 22.551739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.741074, 36.326195, 22.538397>,  <35.095863, 36.509575, 22.516159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741074, 36.326195, 22.538397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168808, -0.209809, 0.963060,
		-0.429852, 0.863598, 0.263486,
		-0.886979, -0.458452, 0.055595,
		34.474979, 36.188660, 22.555075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856010, 36.684555, 23.206823>,  <35.095863, 36.509575, 22.516159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856010, 36.684555, 23.206823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.640244, 36.371368, 23.082895>,  <34.510784, 36.183456, 23.008539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.640244, 36.371368, 23.082895>,  <34.856010, 36.684555, 23.206823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640244, 36.371368, 23.082895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137923, -0.445127, 0.884782,
		-0.830664, 0.434538, 0.348100,
		-0.539420, -0.782968, -0.309818,
		34.478416, 36.136478, 22.989950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273544, 36.585995, 23.696354>,  <34.856010, 36.684555, 23.206823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273544, 36.585995, 23.696354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373291, 36.228401, 23.547430>,  <34.433140, 36.013847, 23.458076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373291, 36.228401, 23.547430>,  <34.273544, 36.585995, 23.696354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373291, 36.228401, 23.547430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213630, -0.324202, 0.921551,
		-0.944551, -0.309343, 0.110135,
		0.249369, -0.893980, -0.372310,
		34.448101, 35.960209, 23.435738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898163, 36.050198, 24.078093>,  <34.273544, 36.585995, 23.696354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898163, 36.050198, 24.078093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189232, 35.854725, 23.885561>,  <34.363873, 35.737442, 23.770042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189232, 35.854725, 23.885561>,  <33.898163, 36.050198, 24.078093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189232, 35.854725, 23.885561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363323, -0.320596, 0.874765,
		-0.581797, -0.811422, -0.055739,
		0.727673, -0.488685, -0.481330,
		34.407536, 35.708118, 23.741161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961033, 35.343681, 24.453257>,  <33.898163, 36.050198, 24.078093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961033, 35.343681, 24.453257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298504, 35.420250, 24.252628>,  <34.500984, 35.466190, 24.132252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298504, 35.420250, 24.252628>,  <33.961033, 35.343681, 24.453257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298504, 35.420250, 24.252628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532756, -0.413747, 0.738231,
		-0.066211, -0.890041, -0.451047,
		0.843675, 0.191419, -0.501569,
		34.551605, 35.477676, 24.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371872, 34.801464, 24.647520>,  <33.961033, 35.343681, 24.453257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371872, 34.801464, 24.647520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664162, 35.052452, 24.539946>,  <34.839535, 35.203045, 24.475401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.664162, 35.052452, 24.539946>,  <34.371872, 34.801464, 24.647520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664162, 35.052452, 24.539946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466109, -0.170743, 0.868095,
		0.498784, -0.759691, -0.417234,
		0.730724, 0.627468, -0.268935,
		34.883381, 35.240692, 24.459265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980740, 34.460102, 24.924128>,  <34.371872, 34.801464, 24.647520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980740, 34.460102, 24.924128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.086399, 34.840984, 24.862776>,  <35.149796, 35.069515, 24.825964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.086399, 34.840984, 24.862776>,  <34.980740, 34.460102, 24.924128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086399, 34.840984, 24.862776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528044, -0.009700, 0.849162,
		0.807090, -0.305298, -0.505370,
		0.264149, 0.952208, -0.153382,
		35.165646, 35.126648, 24.816761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648727, 34.453575, 25.153639>,  <34.980740, 34.460102, 24.924128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648727, 34.453575, 25.153639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554565, 34.842335, 25.154345>,  <35.498066, 35.075588, 25.154768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554565, 34.842335, 25.154345>,  <35.648727, 34.453575, 25.153639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554565, 34.842335, 25.154345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388080, 0.092336, 0.916988,
		0.891053, 0.216552, -0.398910,
		-0.235409, 0.971895, 0.001763,
		35.483944, 35.133904, 25.154873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170967, 34.813156, 25.379072>,  <35.648727, 34.453575, 25.153639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170967, 34.813156, 25.379072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874912, 35.069801, 25.459604>,  <35.697281, 35.223789, 25.507923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874912, 35.069801, 25.459604>,  <36.170967, 34.813156, 25.379072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874912, 35.069801, 25.459604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283044, 0.025658, 0.958764,
		0.609991, 0.766598, -0.200595,
		-0.740133, 0.641615, 0.201330,
		35.652874, 35.262287, 25.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454025, 35.247814, 25.866550>,  <36.170967, 34.813156, 25.379072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454025, 35.247814, 25.866550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060791, 35.311443, 25.902843>,  <35.824848, 35.349621, 25.924620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.060791, 35.311443, 25.902843>,  <36.454025, 35.247814, 25.866550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060791, 35.311443, 25.902843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110111, 0.117575, 0.986940,
		0.146325, 0.980241, -0.133102,
		-0.983089, 0.159070, 0.090731,
		35.765865, 35.359165, 25.930063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757072, 35.808243, 25.616936>,  <36.454025, 35.247814, 25.866550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757072, 35.808243, 25.616936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156590, 35.799957, 25.634771>,  <37.396297, 35.794987, 25.645473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156590, 35.799957, 25.634771>,  <36.757072, 35.808243, 25.616936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156590, 35.799957, 25.634771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046038, 0.075687, -0.996068,
		0.017255, 0.996917, 0.076549,
		0.998791, -0.020711, 0.044590,
		37.456226, 35.793743, 25.648148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074322, 36.316380, 25.170359>,  <36.757072, 35.808243, 25.616936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074322, 36.316380, 25.170359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344284, 36.024170, 25.211992>,  <37.506264, 35.848843, 25.236973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344284, 36.024170, 25.211992>,  <37.074322, 36.316380, 25.170359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344284, 36.024170, 25.211992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233780, 0.077894, -0.969164,
		0.699890, 0.678430, 0.223353,
		0.674908, -0.730524, 0.104086,
		37.546757, 35.805012, 25.243217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656151, 36.550583, 24.697178>,  <37.074322, 36.316380, 25.170359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656151, 36.550583, 24.697178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677868, 36.158016, 24.770807>,  <37.690899, 35.922478, 24.814985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677868, 36.158016, 24.770807>,  <37.656151, 36.550583, 24.697178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677868, 36.158016, 24.770807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030930, -0.185908, -0.982080,
		0.998046, 0.047625, -0.040448,
		0.054291, -0.981412, 0.184072,
		37.694157, 35.863594, 24.826029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181297, 36.369110, 24.251810>,  <37.656151, 36.550583, 24.697178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181297, 36.369110, 24.251810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951839, 36.054295, 24.342590>,  <37.814163, 35.865406, 24.397058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951839, 36.054295, 24.342590>,  <38.181297, 36.369110, 24.251810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951839, 36.054295, 24.342590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097601, -0.209419, -0.972943,
		0.813270, -0.580273, 0.043316,
		-0.573643, -0.787037, 0.226949,
		37.779747, 35.818184, 24.410675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495197, 35.761791, 23.895227>,  <38.181297, 36.369110, 24.251810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495197, 35.761791, 23.895227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120998, 35.654160, 23.986820>,  <37.896477, 35.589581, 24.041777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120998, 35.654160, 23.986820>,  <38.495197, 35.761791, 23.895227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120998, 35.654160, 23.986820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168769, -0.229061, -0.958670,
		0.310408, -0.935483, 0.168875,
		-0.935502, -0.269078, 0.228983,
		37.840347, 35.573437, 24.055515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374390, 35.118061, 23.579552>,  <38.495197, 35.761791, 23.895227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374390, 35.118061, 23.579552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023815, 35.303303, 23.632313>,  <37.813469, 35.414448, 23.663969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023815, 35.303303, 23.632313>,  <38.374390, 35.118061, 23.579552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023815, 35.303303, 23.632313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197520, -0.095937, -0.975593,
		-0.439144, -0.881098, 0.175554,
		-0.876435, 0.463101, 0.131905,
		37.760883, 35.442234, 23.671885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950226, 34.884892, 22.995165>,  <38.374390, 35.118061, 23.579552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950226, 34.884892, 22.995165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734634, 35.188416, 23.141430>,  <37.605278, 35.370529, 23.229189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734634, 35.188416, 23.141430>,  <37.950226, 34.884892, 22.995165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734634, 35.188416, 23.141430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357879, 0.186687, -0.914916,
		-0.762513, -0.623982, 0.170942,
		-0.538978, 0.758812, 0.365660,
		37.572941, 35.416058, 23.251127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380669, 34.748528, 22.681400>,  <37.950226, 34.884892, 22.995165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380669, 34.748528, 22.681400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330547, 35.126129, 22.803484>,  <37.300476, 35.352692, 22.876734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330547, 35.126129, 22.803484>,  <37.380669, 34.748528, 22.681400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330547, 35.126129, 22.803484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145390, 0.286841, -0.946881,
		-0.981408, -0.163019, 0.101308,
		-0.125300, 0.944006, 0.305209,
		37.292957, 35.409332, 22.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764610, 35.008320, 22.369923>,  <37.380669, 34.748528, 22.681400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764610, 35.008320, 22.369923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946236, 35.353912, 22.456982>,  <37.055210, 35.561268, 22.509218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946236, 35.353912, 22.456982>,  <36.764610, 35.008320, 22.369923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946236, 35.353912, 22.456982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108351, 0.296015, -0.949018,
		-0.884358, 0.407330, 0.228022,
		0.454061, 0.863978, 0.217649,
		37.082455, 35.613106, 22.522276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372269, 35.532928, 22.147493>,  <36.764610, 35.008320, 22.369923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372269, 35.532928, 22.147493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739857, 35.690224, 22.159176>,  <36.960411, 35.784599, 22.166185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739857, 35.690224, 22.159176>,  <36.372269, 35.532928, 22.147493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739857, 35.690224, 22.159176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145348, 0.406653, -0.901946,
		-0.366555, 0.824620, 0.430860,
		0.918973, 0.393237, 0.029204,
		37.015549, 35.808193, 22.167936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216507, 36.239548, 22.052948>,  <36.372269, 35.532928, 22.147493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216507, 36.239548, 22.052948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601269, 36.158218, 21.979837>,  <36.832127, 36.109421, 21.935970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601269, 36.158218, 21.979837>,  <36.216507, 36.239548, 22.052948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601269, 36.158218, 21.979837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071137, 0.459378, -0.885388,
		0.263985, 0.864657, 0.427411,
		0.961900, -0.203324, -0.182778,
		36.889839, 36.097221, 21.925005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342403, 36.714264, 21.590736>,  <36.216507, 36.239548, 22.052948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342403, 36.714264, 21.590736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659241, 36.474686, 21.543650>,  <36.849342, 36.330940, 21.515398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659241, 36.474686, 21.543650>,  <36.342403, 36.714264, 21.590736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659241, 36.474686, 21.543650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129682, 0.353576, -0.926373,
		0.596466, 0.718507, 0.357737,
		0.792093, -0.598942, -0.117718,
		36.896870, 36.295002, 21.508333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862366, 37.097012, 21.296700>,  <36.342403, 36.714264, 21.590736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862366, 37.097012, 21.296700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925594, 36.714176, 21.199537>,  <36.963531, 36.484474, 21.141239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925594, 36.714176, 21.199537>,  <36.862366, 37.097012, 21.296700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925594, 36.714176, 21.199537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109195, 0.261433, -0.959025,
		0.981371, 0.125072, 0.145835,
		0.158073, -0.957084, -0.242906,
		36.973015, 36.427052, 21.126665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433586, 37.086147, 20.809290>,  <36.862366, 37.097012, 21.296700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433586, 37.086147, 20.809290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209656, 36.760525, 20.747433>,  <37.075298, 36.565151, 20.710318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209656, 36.760525, 20.747433>,  <37.433586, 37.086147, 20.809290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209656, 36.760525, 20.747433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012448, 0.178346, -0.983889,
		0.828517, -0.552731, -0.089709,
		-0.559825, -0.814053, -0.154643,
		37.041710, 36.516308, 20.701040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812389, 37.719482, 20.698948>,  <37.433586, 37.086147, 20.809290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812389, 37.719482, 20.698948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619736, 38.068146, 20.662638>,  <37.504143, 38.277344, 20.640852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619736, 38.068146, 20.662638>,  <37.812389, 37.719482, 20.698948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619736, 38.068146, 20.662638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059236, 0.070965, 0.995718,
		0.874370, 0.484945, 0.017455,
		-0.481630, 0.871661, -0.090776,
		37.475246, 38.329643, 20.635405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096066, 38.106640, 21.081127>,  <37.812389, 37.719482, 20.698948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096066, 38.106640, 21.081127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752747, 38.304817, 21.027668>,  <37.546757, 38.423725, 20.995592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752747, 38.304817, 21.027668>,  <38.096066, 38.106640, 21.081127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752747, 38.304817, 21.027668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004664, 0.252907, 0.967479,
		0.513132, 0.831008, -0.214759,
		-0.858297, 0.495443, -0.133650,
		37.495258, 38.453449, 20.987574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183056, 38.882458, 21.272999>,  <38.096066, 38.106640, 21.081127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183056, 38.882458, 21.272999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802753, 38.765553, 21.314266>,  <37.574574, 38.695408, 21.339025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802753, 38.765553, 21.314266>,  <38.183056, 38.882458, 21.272999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802753, 38.765553, 21.314266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018744, 0.386474, 0.922110,
		-0.309369, 0.874769, -0.372921,
		-0.950757, -0.292263, 0.103166,
		37.517525, 38.677876, 21.345217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863743, 39.417023, 21.639259>,  <38.183056, 38.882458, 21.272999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863743, 39.417023, 21.639259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604736, 39.121693, 21.714727>,  <37.449333, 38.944492, 21.760008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604736, 39.121693, 21.714727>,  <37.863743, 39.417023, 21.639259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604736, 39.121693, 21.714727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298246, 0.473365, 0.828840,
		-0.701266, 0.480416, -0.526714,
		-0.647515, -0.738327, 0.188672,
		37.410480, 38.900196, 21.771330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316990, 39.827190, 21.962475>,  <37.863743, 39.417023, 21.639259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316990, 39.827190, 21.962475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215748, 39.445404, 22.025627>,  <37.155003, 39.216331, 22.063519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215748, 39.445404, 22.025627>,  <37.316990, 39.827190, 21.962475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215748, 39.445404, 22.025627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218597, 0.215397, 0.951746,
		-0.942420, 0.206375, -0.263161,
		-0.253101, -0.954470, 0.157881,
		37.139816, 39.159061, 22.072992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626461, 39.874207, 22.321291>,  <37.316990, 39.827190, 21.962475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626461, 39.874207, 22.321291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800694, 39.525928, 22.412642>,  <36.905235, 39.316963, 22.467453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800694, 39.525928, 22.412642>,  <36.626461, 39.874207, 22.321291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800694, 39.525928, 22.412642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206111, 0.150497, 0.966886,
		-0.876233, -0.468231, -0.113906,
		0.435584, -0.870695, 0.228379,
		36.931370, 39.264721, 22.481155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189171, 39.625774, 22.877657>,  <36.626461, 39.874207, 22.321291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189171, 39.625774, 22.877657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541531, 39.437817, 22.900352>,  <36.752945, 39.325043, 22.913969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541531, 39.437817, 22.900352>,  <36.189171, 39.625774, 22.877657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541531, 39.437817, 22.900352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029869, 0.064443, 0.997474,
		-0.472367, -0.880365, 0.042732,
		0.880896, -0.469898, 0.056737,
		36.805798, 39.296848, 22.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123138, 39.217941, 23.444433>,  <36.189171, 39.625774, 22.877657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123138, 39.217941, 23.444433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513351, 39.272026, 23.375090>,  <36.747478, 39.304478, 23.333483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513351, 39.272026, 23.375090>,  <36.123138, 39.217941, 23.444433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513351, 39.272026, 23.375090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157292, 0.121673, 0.980028,
		0.153615, -0.983316, 0.097426,
		0.975531, 0.135222, -0.173359,
		36.806011, 39.312592, 23.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422668, 38.962399, 23.996428>,  <36.123138, 39.217941, 23.444433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422668, 38.962399, 23.996428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681656, 39.223110, 23.838461>,  <36.837048, 39.379539, 23.743681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681656, 39.223110, 23.838461>,  <36.422668, 38.962399, 23.996428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681656, 39.223110, 23.838461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502148, 0.024930, 0.864422,
		0.573261, -0.757995, -0.311150,
		0.647471, 0.651783, -0.394917,
		36.875896, 39.418644, 23.719986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050747, 38.797207, 24.167553>,  <36.422668, 38.962399, 23.996428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050747, 38.797207, 24.167553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106812, 39.188705, 24.107662>,  <37.140450, 39.423603, 24.071728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106812, 39.188705, 24.107662>,  <37.050747, 38.797207, 24.167553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106812, 39.188705, 24.107662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481132, 0.064841, 0.874247,
		0.865371, -0.194570, -0.461817,
		0.140157, 0.978743, -0.149726,
		37.148857, 39.482327, 24.062744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581665, 38.953651, 24.634918>,  <37.050747, 38.797207, 24.167553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581665, 38.953651, 24.634918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449978, 39.321201, 24.547941>,  <37.370964, 39.541733, 24.495754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449978, 39.321201, 24.547941>,  <37.581665, 38.953651, 24.634918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449978, 39.321201, 24.547941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339954, 0.330180, 0.880575,
		0.880934, 0.215983, -0.421078,
		-0.329220, 0.918876, -0.217443,
		37.351212, 39.596863, 24.482708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147266, 39.446167, 24.840061>,  <37.581665, 38.953651, 24.634918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147266, 39.446167, 24.840061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839165, 39.701263, 24.839777>,  <37.654305, 39.854321, 24.839605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839165, 39.701263, 24.839777>,  <38.147266, 39.446167, 24.840061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839165, 39.701263, 24.839777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296284, 0.358837, 0.885128,
		0.564734, 0.681563, -0.465347,
		-0.770254, 0.637736, -0.000711,
		37.608089, 39.892586, 24.839563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416744, 40.136784, 25.029896>,  <38.147266, 39.446167, 24.840061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416744, 40.136784, 25.029896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024899, 40.130383, 25.110003>,  <37.789791, 40.126541, 25.158066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024899, 40.130383, 25.110003>,  <38.416744, 40.136784, 25.029896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024899, 40.130383, 25.110003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192115, 0.217017, 0.957076,
		-0.058776, 0.976036, -0.209518,
		-0.979611, -0.016002, 0.200267,
		37.731014, 40.125584, 25.170082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254276, 40.702724, 25.383789>,  <38.416744, 40.136784, 25.029896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254276, 40.702724, 25.383789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974575, 40.433468, 25.480068>,  <37.806755, 40.271915, 25.537836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974575, 40.433468, 25.480068>,  <38.254276, 40.702724, 25.383789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974575, 40.433468, 25.480068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153681, 0.187280, 0.970210,
		-0.698163, 0.715410, -0.027507,
		-0.699249, -0.673138, 0.240698,
		37.764801, 40.231525, 25.552277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.997028, 42.675682, 20.250814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611504, 42.569580, 20.240173>,  <36.380188, 42.505920, 20.233789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611504, 42.569580, 20.240173>,  <36.997028, 42.675682, 20.250814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611504, 42.569580, 20.240173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038962, -0.041447, -0.998381,
		0.263722, -0.963287, 0.050282,
		-0.963812, -0.265254, -0.026601,
		36.322361, 42.490005, 20.232193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927628, 42.182129, 19.697508>,  <36.997028, 42.675682, 20.250814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927628, 42.182129, 19.697508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.556656, 42.312565, 19.770771>,  <36.334072, 42.390827, 19.814728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.556656, 42.312565, 19.770771>,  <36.927628, 42.182129, 19.697508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556656, 42.312565, 19.770771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182509, 0.032864, -0.982655,
		-0.326450, -0.944768, 0.029035,
		-0.927427, 0.326087, 0.183157,
		36.278427, 42.410389, 19.825718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521381, 41.814636, 19.207415>,  <36.927628, 42.182129, 19.697508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521381, 41.814636, 19.207415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297607, 42.129036, 19.312670>,  <36.163345, 42.317677, 19.375822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297607, 42.129036, 19.312670>,  <36.521381, 41.814636, 19.207415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297607, 42.129036, 19.312670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339791, 0.072089, -0.937734,
		-0.756029, -0.614008, 0.226747,
		-0.559431, 0.786001, 0.263136,
		36.129780, 42.364838, 19.391611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976032, 41.628193, 18.839102>,  <36.521381, 41.814636, 19.207415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976032, 41.628193, 18.839102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901615, 42.009727, 18.933413>,  <35.856964, 42.238647, 18.989998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901615, 42.009727, 18.933413>,  <35.976032, 41.628193, 18.839102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901615, 42.009727, 18.933413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510571, 0.111169, -0.852619,
		-0.839466, -0.279007, 0.466317,
		-0.186047, 0.953833, 0.235775,
		35.845802, 42.295876, 19.004145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390072, 41.711521, 18.680103>,  <35.976032, 41.628193, 18.839102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390072, 41.711521, 18.680103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489189, 42.098484, 18.700933>,  <35.548660, 42.330662, 18.713432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489189, 42.098484, 18.700933>,  <35.390072, 41.711521, 18.680103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489189, 42.098484, 18.700933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534667, 0.181383, -0.825367,
		-0.807915, 0.176681, 0.562189,
		0.247798, 0.967411, 0.052076,
		35.563530, 42.388706, 18.716557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716248, 42.104881, 18.618473>,  <35.390072, 41.711521, 18.680103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716248, 42.104881, 18.618473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020451, 42.332375, 18.493145>,  <35.202972, 42.468868, 18.417948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020451, 42.332375, 18.493145>,  <34.716248, 42.104881, 18.618473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020451, 42.332375, 18.493145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448296, 0.110809, -0.886990,
		-0.469739, 0.815026, 0.339231,
		0.760510, 0.568730, -0.313322,
		35.248604, 42.502995, 18.399149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401585, 42.718266, 18.302959>,  <34.716248, 42.104881, 18.618473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401585, 42.718266, 18.302959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776340, 42.724468, 18.163250>,  <35.001194, 42.728188, 18.079424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776340, 42.724468, 18.163250>,  <34.401585, 42.718266, 18.302959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776340, 42.724468, 18.163250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343362, 0.228924, -0.910877,
		0.065836, 0.973321, 0.219800,
		0.936893, 0.015503, -0.349273,
		35.057407, 42.729118, 18.058468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416832, 43.235210, 17.870855>,  <34.401585, 42.718266, 18.302959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416832, 43.235210, 17.870855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.736958, 43.027283, 17.751331>,  <34.929031, 42.902527, 17.679617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.736958, 43.027283, 17.751331>,  <34.416832, 43.235210, 17.870855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736958, 43.027283, 17.751331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301579, 0.081743, -0.949931,
		0.518219, 0.850356, -0.091347,
		0.800312, -0.519821, -0.298810,
		34.977051, 42.871338, 17.661688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662056, 43.631126, 17.284618>,  <34.416832, 43.235210, 17.870855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662056, 43.631126, 17.284618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821819, 43.264790, 17.268124>,  <34.917679, 43.044987, 17.258226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821819, 43.264790, 17.268124>,  <34.662056, 43.631126, 17.284618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821819, 43.264790, 17.268124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284872, -0.081230, -0.955118,
		0.871390, 0.393229, -0.293343,
		0.399408, -0.915846, -0.041237,
		34.941643, 42.990036, 17.255753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141407, 43.592804, 16.748848>,  <34.662056, 43.631126, 17.284618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141407, 43.592804, 16.748848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008251, 43.217911, 16.790386>,  <34.928356, 42.992977, 16.815310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008251, 43.217911, 16.790386>,  <35.141407, 43.592804, 16.748848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008251, 43.217911, 16.790386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234589, -0.024354, -0.971790,
		0.913319, -0.347861, -0.211756,
		-0.332891, -0.937230, 0.103847,
		34.908382, 42.936741, 16.821541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403587, 43.316948, 16.158539>,  <35.141407, 43.592804, 16.748848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403587, 43.316948, 16.158539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137180, 43.047878, 16.287489>,  <34.977337, 42.886436, 16.364859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137180, 43.047878, 16.287489>,  <35.403587, 43.316948, 16.158539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137180, 43.047878, 16.287489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273143, -0.182230, -0.944556,
		0.694125, -0.717148, -0.062368,
		-0.666021, -0.672675, 0.322374,
		34.937374, 42.846077, 16.384201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495590, 42.682667, 15.772052>,  <35.403587, 43.316948, 16.158539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495590, 42.682667, 15.772052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120842, 42.665932, 15.910913>,  <34.895992, 42.655891, 15.994229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120842, 42.665932, 15.910913>,  <35.495590, 42.682667, 15.772052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120842, 42.665932, 15.910913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333933, -0.187380, -0.923784,
		0.103700, -0.981396, 0.161580,
		-0.936875, -0.041840, 0.347152,
		34.839779, 42.653381, 16.015059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232224, 41.910957, 15.688578>,  <35.495590, 42.682667, 15.772052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232224, 41.910957, 15.688578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995338, 42.233250, 15.684935>,  <34.853207, 42.426624, 15.682749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995338, 42.233250, 15.684935>,  <35.232224, 41.910957, 15.688578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995338, 42.233250, 15.684935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231321, -0.180828, -0.955925,
		-0.771864, -0.564004, 0.293471,
		-0.592213, 0.805730, -0.009109,
		34.817673, 42.474968, 15.682202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420021, 41.170055, 15.995003>,  <35.232224, 41.910957, 15.688578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420021, 41.170055, 15.995003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756264, 41.049572, 15.814937>,  <35.958012, 40.977283, 15.706897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756264, 41.049572, 15.814937>,  <35.420021, 41.170055, 15.995003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756264, 41.049572, 15.814937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151514, -0.667174, 0.729330,
		-0.520017, -0.681289, -0.515197,
		0.840611, -0.301205, -0.450166,
		36.008446, 40.959209, 15.679887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738392, 40.647038, 16.494812>,  <35.420021, 41.170055, 15.995003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738392, 40.647038, 16.494812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043308, 40.654922, 16.236036>,  <36.226257, 40.659653, 16.080770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043308, 40.654922, 16.236036>,  <35.738392, 40.647038, 16.494812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043308, 40.654922, 16.236036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471805, -0.701168, 0.534568,
		-0.443075, -0.712723, -0.543792,
		0.762288, 0.019710, -0.646937,
		36.271996, 40.660835, 16.041956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915516, 39.999668, 16.437263>,  <35.738392, 40.647038, 16.494812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915516, 39.999668, 16.437263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247902, 40.185532, 16.314899>,  <36.447334, 40.297050, 16.241480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247902, 40.185532, 16.314899>,  <35.915516, 39.999668, 16.437263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247902, 40.185532, 16.314899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554299, -0.738387, 0.384107,
		-0.047400, -0.488747, -0.871137,
		0.830967, 0.464663, -0.305911,
		36.497192, 40.324932, 16.223125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250877, 39.499844, 16.310476>,  <35.915516, 39.999668, 16.437263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250877, 39.499844, 16.310476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.523952, 39.790951, 16.336679>,  <36.687798, 39.965614, 16.352402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.523952, 39.790951, 16.336679>,  <36.250877, 39.499844, 16.310476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523952, 39.790951, 16.336679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665549, -0.656310, 0.355388,
		0.301635, -0.199020, -0.932420,
		0.682686, 0.727769, 0.065508,
		36.728760, 40.009281, 16.356333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007778, 39.239792, 16.156815>,  <36.250877, 39.499844, 16.310476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007778, 39.239792, 16.156815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.032463, 39.577801, 16.369280>,  <37.047276, 39.780605, 16.496759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.032463, 39.577801, 16.369280>,  <37.007778, 39.239792, 16.156815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032463, 39.577801, 16.369280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650478, -0.437686, 0.620733,
		0.757014, 0.307204, -0.576676,
		0.061712, 0.845019, 0.531164,
		37.050976, 39.831306, 16.528629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613476, 39.124603, 16.423651>,  <37.007778, 39.239792, 16.156815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613476, 39.124603, 16.423651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488316, 39.427971, 16.652349>,  <37.413219, 39.609993, 16.789568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488316, 39.427971, 16.652349>,  <37.613476, 39.124603, 16.423651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488316, 39.427971, 16.652349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516329, -0.369425, 0.772612,
		0.797182, 0.536959, -0.276001,
		-0.312899, 0.758420, 0.571746,
		37.394447, 39.655499, 16.823874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281631, 39.307991, 16.946457>,  <37.613476, 39.124603, 16.423651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281631, 39.307991, 16.946457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947144, 39.458206, 17.106316>,  <37.746452, 39.548336, 17.202230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947144, 39.458206, 17.106316>,  <38.281631, 39.307991, 16.946457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947144, 39.458206, 17.106316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282034, -0.330496, 0.900683,
		0.470319, 0.865879, 0.170452,
		-0.836216, 0.375535, 0.399646,
		37.696278, 39.570866, 17.226210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443012, 39.788414, 17.546576>,  <38.281631, 39.307991, 16.946457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443012, 39.788414, 17.546576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072971, 39.640594, 17.581501>,  <37.850948, 39.551903, 17.602455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072971, 39.640594, 17.581501>,  <38.443012, 39.788414, 17.546576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072971, 39.640594, 17.581501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175974, -0.213475, 0.960969,
		-0.336488, 0.904357, 0.262517,
		-0.925099, -0.369551, 0.087311,
		37.795441, 39.529728, 17.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265217, 40.076752, 18.177876>,  <38.443012, 39.788414, 17.546576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265217, 40.076752, 18.177876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025509, 39.767990, 18.092993>,  <37.881683, 39.582733, 18.042063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025509, 39.767990, 18.092993>,  <38.265217, 40.076752, 18.177876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025509, 39.767990, 18.092993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049711, -0.300446, 0.952503,
		-0.799001, 0.560259, 0.218421,
		-0.599272, -0.771908, -0.212206,
		37.845726, 39.536419, 18.029331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724415, 40.133194, 18.634224>,  <38.265217, 40.076752, 18.177876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724415, 40.133194, 18.634224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685814, 39.752098, 18.519003>,  <37.662655, 39.523441, 18.449869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685814, 39.752098, 18.519003>,  <37.724415, 40.133194, 18.634224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685814, 39.752098, 18.519003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106451, -0.277865, 0.954704,
		-0.989624, 0.122792, -0.074606,
		-0.096499, -0.952740, -0.288054,
		37.656864, 39.466274, 18.432587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069473, 39.796387, 18.861761>,  <37.724415, 40.133194, 18.634224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069473, 39.796387, 18.861761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311611, 39.486122, 18.790304>,  <37.456894, 39.299965, 18.747431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311611, 39.486122, 18.790304>,  <37.069473, 39.796387, 18.861761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311611, 39.486122, 18.790304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181982, -0.353358, 0.917617,
		-0.774885, -0.522961, -0.355058,
		0.605340, -0.775661, -0.178642,
		37.493214, 39.253426, 18.736712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604088, 39.173935, 19.123543>,  <37.069473, 39.796387, 18.861761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604088, 39.173935, 19.123543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986626, 39.060562, 19.095079>,  <37.216148, 38.992538, 19.078001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986626, 39.060562, 19.095079>,  <36.604088, 39.173935, 19.123543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986626, 39.060562, 19.095079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131546, -0.634981, 0.761245,
		-0.260943, -0.718656, -0.644548,
		0.956349, -0.283430, -0.071158,
		37.273529, 38.975533, 19.073732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614025, 38.457581, 19.193497>,  <36.604088, 39.173935, 19.123543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614025, 38.457581, 19.193497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.980156, 38.579174, 19.299147>,  <37.199837, 38.652130, 19.362537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.980156, 38.579174, 19.299147>,  <36.614025, 38.457581, 19.193497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980156, 38.579174, 19.299147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103680, -0.455883, 0.883980,
		0.389126, -0.836519, -0.385767,
		0.915331, 0.303983, 0.264127,
		37.254757, 38.670368, 19.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803967, 37.935936, 19.741325>,  <36.614025, 38.457581, 19.193497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803967, 37.935936, 19.741325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096798, 38.206875, 19.770321>,  <37.272499, 38.369438, 19.787718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096798, 38.206875, 19.770321>,  <36.803967, 37.935936, 19.741325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096798, 38.206875, 19.770321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005104, -0.111863, 0.993711,
		0.681198, -0.727107, -0.085350,
		0.732082, 0.677349, 0.072489,
		37.316422, 38.410080, 19.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324211, 37.579594, 20.207350>,  <36.803967, 37.935936, 19.741325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324211, 37.579594, 20.207350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333839, 37.979477, 20.207224>,  <37.339615, 38.219406, 20.207148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333839, 37.979477, 20.207224>,  <37.324211, 37.579594, 20.207350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333839, 37.979477, 20.207224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008720, 0.000525, 0.999962,
		0.999672, -0.024064, 0.008731,
		0.024068, 0.999710, -0.000315,
		37.341061, 38.279388, 20.207129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618351, 36.899376, 20.153423>,  <37.324211, 37.579594, 20.207350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618351, 36.899376, 20.153423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281776, 36.690884, 20.210426>,  <37.079834, 36.565788, 20.244629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281776, 36.690884, 20.210426>,  <37.618351, 36.899376, 20.153423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281776, 36.690884, 20.210426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237666, 0.120135, -0.963889,
		0.485291, -0.844916, -0.224965,
		-0.841432, -0.521234, 0.142507,
		37.029346, 36.534515, 20.253178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608727, 36.373985, 19.576189>,  <37.618351, 36.899376, 20.153423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608727, 36.373985, 19.576189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227970, 36.391026, 19.697578>,  <36.999516, 36.401249, 19.770412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227970, 36.391026, 19.697578>,  <37.608727, 36.373985, 19.576189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227970, 36.391026, 19.697578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298778, 0.091172, -0.949958,
		-0.068135, -0.994924, -0.074058,
		-0.951888, 0.042599, 0.303473,
		36.942406, 36.403805, 19.788620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265739, 35.929729, 19.184193>,  <37.608727, 36.373985, 19.576189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265739, 35.929729, 19.184193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970974, 36.156990, 19.330704>,  <36.794113, 36.293346, 19.418610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970974, 36.156990, 19.330704>,  <37.265739, 35.929729, 19.184193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970974, 36.156990, 19.330704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226738, 0.302704, -0.925721,
		-0.636825, -0.765226, -0.094245,
		-0.736915, 0.568154, 0.366276,
		36.749901, 36.327435, 19.440586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642429, 35.722984, 18.738123>,  <37.265739, 35.929729, 19.184193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642429, 35.722984, 18.738123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564011, 36.081249, 18.897799>,  <36.516960, 36.296207, 18.993605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564011, 36.081249, 18.897799>,  <36.642429, 35.722984, 18.738123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564011, 36.081249, 18.897799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410014, 0.294924, -0.863081,
		-0.890760, -0.332878, 0.309416,
		-0.196047, 0.895663, 0.399191,
		36.505196, 36.349949, 19.017555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008038, 35.834812, 18.539179>,  <36.642429, 35.722984, 18.738123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008038, 35.834812, 18.539179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149147, 36.194324, 18.643291>,  <36.233814, 36.410030, 18.705759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149147, 36.194324, 18.643291>,  <36.008038, 35.834812, 18.539179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149147, 36.194324, 18.643291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403421, 0.397075, -0.824368,
		-0.844276, 0.185814, 0.502665,
		0.352775, 0.898779, 0.260280,
		36.254978, 36.463959, 18.721375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503048, 36.244282, 18.205463>,  <36.008038, 35.834812, 18.539179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503048, 36.244282, 18.205463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809425, 36.485512, 18.294579>,  <35.993252, 36.630249, 18.348047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809425, 36.485512, 18.294579>,  <35.503048, 36.244282, 18.205463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809425, 36.485512, 18.294579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107857, 0.462158, -0.880214,
		-0.633796, 0.650165, 0.419032,
		0.765943, 0.603072, 0.222789,
		36.039207, 36.666435, 18.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238659, 36.941216, 18.172821>,  <35.503048, 36.244282, 18.205463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238659, 36.941216, 18.172821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630962, 36.904331, 18.103989>,  <35.866344, 36.882198, 18.062689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630962, 36.904331, 18.103989>,  <35.238659, 36.941216, 18.172821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630962, 36.904331, 18.103989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117709, 0.423907, -0.898024,
		0.155756, 0.900999, 0.404895,
		0.980757, -0.092213, -0.172082,
		35.925190, 36.876667, 18.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542366, 37.311069, 18.266539>,  <35.238659, 36.941216, 18.172821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542366, 37.311069, 18.266539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189240, 37.130474, 18.214708>,  <33.977364, 37.022118, 18.183611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189240, 37.130474, 18.214708>,  <34.542366, 37.311069, 18.266539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189240, 37.130474, 18.214708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031746, -0.217877, 0.975460,
		-0.468643, 0.865266, 0.178012,
		-0.882817, -0.451491, -0.129575,
		33.924393, 36.995026, 18.175837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214195, 37.507614, 18.856573>,  <34.542366, 37.311069, 18.266539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214195, 37.507614, 18.856573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972809, 37.206825, 18.750462>,  <33.827976, 37.026352, 18.686794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972809, 37.206825, 18.750462>,  <34.214195, 37.507614, 18.856573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972809, 37.206825, 18.750462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228587, -0.155579, 0.961012,
		-0.763921, 0.640578, -0.078003,
		-0.603467, -0.751967, -0.265278,
		33.791767, 36.981236, 18.670877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686825, 37.713528, 19.228832>,  <34.214195, 37.507614, 18.856573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686825, 37.713528, 19.228832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.677334, 37.325069, 19.133913>,  <33.671638, 37.091995, 19.076962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.677334, 37.325069, 19.133913>,  <33.686825, 37.713528, 19.228832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677334, 37.325069, 19.133913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160467, -0.230590, 0.959729,
		-0.986756, 0.060850, -0.150366,
		-0.023726, -0.971146, -0.237300,
		33.670216, 37.033726, 19.062723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175747, 37.486374, 19.676798>,  <33.686825, 37.713528, 19.228832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175747, 37.486374, 19.676798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373463, 37.163982, 19.546524>,  <33.492092, 36.970547, 19.468359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373463, 37.163982, 19.546524>,  <33.175747, 37.486374, 19.676798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373463, 37.163982, 19.546524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131898, -0.439853, 0.888331,
		-0.859232, -0.396136, -0.323723,
		0.494291, -0.805981, -0.325686,
		33.521751, 36.922188, 19.448818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722260, 36.990257, 19.791052>,  <33.175747, 37.486374, 19.676798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722260, 36.990257, 19.791052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074215, 36.800934, 19.774160>,  <33.285389, 36.687340, 19.764025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074215, 36.800934, 19.774160>,  <32.722260, 36.990257, 19.791052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074215, 36.800934, 19.774160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066566, -0.210761, 0.975269,
		-0.470500, -0.855314, -0.216951,
		0.879886, -0.473305, -0.042228,
		33.338181, 36.658943, 19.761492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660984, 36.350174, 20.045311>,  <32.722260, 36.990257, 19.791052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660984, 36.350174, 20.045311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056900, 36.391747, 20.084318>,  <33.294449, 36.416691, 20.107721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056900, 36.391747, 20.084318>,  <32.660984, 36.350174, 20.045311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056900, 36.391747, 20.084318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067381, -0.261671, 0.962802,
		0.125580, -0.959545, -0.251997,
		0.989793, 0.103928, 0.097516,
		33.353836, 36.422924, 20.113573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867710, 35.868374, 20.554590>,  <32.660984, 36.350174, 20.045311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867710, 35.868374, 20.554590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177219, 36.121677, 20.561079>,  <33.362923, 36.273659, 20.564972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177219, 36.121677, 20.561079>,  <32.867710, 35.868374, 20.554590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177219, 36.121677, 20.561079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189405, -0.255717, 0.948016,
		0.604487, -0.730474, -0.317808,
		0.773771, 0.633258, 0.016222,
		33.409351, 36.311653, 20.565945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.253738, 41.197483, 16.370613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514168, 41.501041, 16.365294>,  <32.670425, 41.683178, 16.362101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514168, 41.501041, 16.365294>,  <32.253738, 41.197483, 16.370613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514168, 41.501041, 16.365294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065711, -0.038900, 0.997080,
		0.756164, -0.650047, -0.075195,
		0.651074, 0.758897, -0.013300,
		32.709492, 41.728710, 16.361303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898357, 41.101875, 16.826635>,  <32.253738, 41.197483, 16.370613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898357, 41.101875, 16.826635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.800880, 41.485065, 16.766119>,  <32.742393, 41.714981, 16.729809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.800880, 41.485065, 16.766119>,  <32.898357, 41.101875, 16.826635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800880, 41.485065, 16.766119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062977, 0.171294, 0.983205,
		0.967806, 0.230073, -0.102074,
		-0.243694, 0.957980, -0.151290,
		32.727772, 41.772461, 16.720732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410519, 41.521404, 17.136509>,  <32.898357, 41.101875, 16.826635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410519, 41.521404, 17.136509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.066051, 41.723858, 17.117685>,  <32.859371, 41.845329, 17.106390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.066051, 41.723858, 17.117685>,  <33.410519, 41.521404, 17.136509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066051, 41.723858, 17.117685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028264, 0.140118, 0.989731,
		0.507529, 0.850998, -0.134971,
		-0.861171, 0.506132, -0.047061,
		32.807701, 41.875698, 17.103567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624134, 42.125805, 17.659035>,  <33.410519, 41.521404, 17.136509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624134, 42.125805, 17.659035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229198, 42.140472, 17.597301>,  <32.992237, 42.149273, 17.560261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229198, 42.140472, 17.597301>,  <33.624134, 42.125805, 17.659035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229198, 42.140472, 17.597301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149376, 0.112542, 0.982355,
		0.053388, 0.992970, -0.105640,
		-0.987338, 0.036666, -0.154335,
		32.932999, 42.151474, 17.551001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456295, 42.719730, 17.903793>,  <33.624134, 42.125805, 17.659035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456295, 42.719730, 17.903793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.110661, 42.518509, 17.910608>,  <32.903278, 42.397774, 17.914698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.110661, 42.518509, 17.910608>,  <33.456295, 42.719730, 17.903793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110661, 42.518509, 17.910608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212963, 0.396051, 0.893191,
		-0.456073, 0.768166, -0.449354,
		-0.864086, -0.503056, 0.017037,
		32.851437, 42.367592, 17.915720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906612, 43.164494, 18.159733>,  <33.456295, 42.719730, 17.903793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906612, 43.164494, 18.159733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791340, 42.785732, 18.216768>,  <32.722176, 42.558475, 18.250990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791340, 42.785732, 18.216768>,  <32.906612, 43.164494, 18.159733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791340, 42.785732, 18.216768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164325, 0.195600, 0.966818,
		-0.943372, 0.255184, -0.211967,
		-0.288178, -0.946901, 0.142591,
		32.704887, 42.501663, 18.259546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412151, 43.300377, 18.593061>,  <32.906612, 43.164494, 18.159733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412151, 43.300377, 18.593061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516491, 42.916439, 18.634359>,  <32.579094, 42.686077, 18.659138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516491, 42.916439, 18.634359>,  <32.412151, 43.300377, 18.593061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516491, 42.916439, 18.634359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187448, 0.054553, 0.980758,
		-0.947006, -0.275182, -0.165691,
		0.260848, -0.959843, 0.103244,
		32.594746, 42.628487, 18.665333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913336, 43.063461, 19.119413>,  <32.412151, 43.300377, 18.593061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913336, 43.063461, 19.119413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176895, 42.763283, 19.098679>,  <32.335030, 42.583176, 19.086239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176895, 42.763283, 19.098679>,  <31.913336, 43.063461, 19.119413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176895, 42.763283, 19.098679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098914, -0.154746, 0.982990,
		-0.745700, -0.642564, -0.176192,
		0.658899, -0.750443, -0.051836,
		32.374565, 42.538151, 19.083128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694956, 42.754120, 19.748690>,  <31.913336, 43.063461, 19.119413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694956, 42.754120, 19.748690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056995, 42.603310, 19.670053>,  <32.274220, 42.512825, 19.622871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.056995, 42.603310, 19.670053>,  <31.694956, 42.754120, 19.748690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056995, 42.603310, 19.670053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065399, -0.333407, 0.940512,
		-0.420138, -0.864115, -0.277110,
		0.905100, -0.377022, -0.196589,
		32.328526, 42.490204, 19.611076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667633, 42.046593, 19.911728>,  <31.694956, 42.754120, 19.748690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667633, 42.046593, 19.911728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057999, 42.131756, 19.930750>,  <32.292217, 42.182854, 19.942163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057999, 42.131756, 19.930750>,  <31.667633, 42.046593, 19.911728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057999, 42.131756, 19.930750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059398, -0.469079, 0.881156,
		0.209912, -0.857108, -0.470427,
		0.975914, 0.212908, 0.047555,
		32.350773, 42.195629, 19.945017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010216, 41.434052, 19.973040>,  <31.667633, 42.046593, 19.911728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010216, 41.434052, 19.973040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.229786, 41.734375, 20.119989>,  <32.361526, 41.914570, 20.208160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.229786, 41.734375, 20.119989>,  <32.010216, 41.434052, 19.973040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229786, 41.734375, 20.119989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023405, -0.425532, 0.904641,
		0.835546, -0.505175, -0.216011,
		0.548922, 0.750813, 0.367375,
		32.394463, 41.959618, 20.230202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360310, 41.120308, 20.520103>,  <32.010216, 41.434052, 19.973040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360310, 41.120308, 20.520103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.448723, 41.507206, 20.570032>,  <32.501770, 41.739346, 20.599989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.448723, 41.507206, 20.570032>,  <32.360310, 41.120308, 20.520103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448723, 41.507206, 20.570032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078187, -0.145149, 0.986316,
		0.972126, -0.208253, -0.107709,
		0.221037, 0.967245, 0.124821,
		32.515034, 41.797379, 20.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562443, 40.394463, 20.388479>,  <32.360310, 41.120308, 20.520103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562443, 40.394463, 20.388479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266087, 40.125889, 20.382185>,  <32.088272, 39.964745, 20.378408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266087, 40.125889, 20.382185>,  <32.562443, 40.394463, 20.388479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266087, 40.125889, 20.382185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074383, 0.105316, -0.991653,
		0.667492, -0.733538, -0.127971,
		-0.740893, -0.671439, -0.015735,
		32.043819, 39.924458, 20.377464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682709, 39.972755, 19.821667>,  <32.562443, 40.394463, 20.388479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682709, 39.972755, 19.821667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299740, 39.873775, 19.881147>,  <32.069958, 39.814388, 19.916836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299740, 39.873775, 19.881147>,  <32.682709, 39.972755, 19.821667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299740, 39.873775, 19.881147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170226, 0.067865, -0.983065,
		0.233173, -0.966520, -0.107099,
		-0.957420, -0.247455, 0.148702,
		32.012512, 39.799538, 19.925758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514698, 39.576847, 19.253529>,  <32.682709, 39.972755, 19.821667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514698, 39.576847, 19.253529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.159340, 39.684368, 19.402388>,  <31.946125, 39.748882, 19.491703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.159340, 39.684368, 19.402388>,  <32.514698, 39.576847, 19.253529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159340, 39.684368, 19.402388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343748, 0.147803, -0.927357,
		-0.304286, -0.951786, -0.038905,
		-0.888396, 0.268808, 0.372149,
		31.892820, 39.765011, 19.514032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043316, 39.073769, 18.994864>,  <32.514698, 39.576847, 19.253529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043316, 39.073769, 18.994864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831579, 39.402100, 19.080688>,  <31.704536, 39.599098, 19.132183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831579, 39.402100, 19.080688>,  <32.043316, 39.073769, 18.994864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831579, 39.402100, 19.080688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380035, -0.003298, -0.924966,
		-0.758531, -0.571166, 0.313689,
		-0.529344, 0.820828, 0.214561,
		31.672775, 39.648350, 19.145058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411928, 38.907249, 18.769299>,  <32.043316, 39.073769, 18.994864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411928, 38.907249, 18.769299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385740, 39.306343, 18.775473>,  <31.370028, 39.545799, 18.779177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385740, 39.306343, 18.775473>,  <31.411928, 38.907249, 18.769299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385740, 39.306343, 18.775473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449744, -0.015696, -0.893020,
		-0.890755, -0.065406, 0.449753,
		-0.065468, 0.997735, 0.015434,
		31.366100, 39.605663, 18.780104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652056, 39.049175, 18.646055>,  <31.411928, 38.907249, 18.769299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652056, 39.049175, 18.646055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862423, 39.376858, 18.554577>,  <30.988644, 39.573467, 18.499689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.862423, 39.376858, 18.554577>,  <30.652056, 39.049175, 18.646055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862423, 39.376858, 18.554577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564135, 0.134754, -0.814612,
		-0.636521, 0.557436, 0.533016,
		0.525920, 0.819211, -0.228695,
		31.020199, 39.622620, 18.485968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105492, 39.463875, 18.370241>,  <30.652056, 39.049175, 18.646055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105492, 39.463875, 18.370241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441765, 39.650421, 18.260147>,  <30.643528, 39.762348, 18.194090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441765, 39.650421, 18.260147>,  <30.105492, 39.463875, 18.370241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441765, 39.650421, 18.260147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337736, 0.054242, -0.939676,
		-0.423307, 0.882925, 0.203110,
		0.840681, 0.466369, -0.275235,
		30.693970, 39.790333, 18.177576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987581, 40.092632, 17.836843>,  <30.105492, 39.463875, 18.370241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987581, 40.092632, 17.836843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356735, 39.941402, 17.807617>,  <30.578228, 39.850662, 17.790081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356735, 39.941402, 17.807617>,  <29.987581, 40.092632, 17.836843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356735, 39.941402, 17.807617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142699, -0.159556, -0.976821,
		0.357655, 0.911921, -0.201203,
		0.922887, -0.378076, -0.073065,
		30.633602, 39.827980, 17.785698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237253, 40.377239, 17.219992>,  <29.987581, 40.092632, 17.836843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237253, 40.377239, 17.219992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485096, 40.066170, 17.262516>,  <30.633802, 39.879528, 17.288031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485096, 40.066170, 17.262516>,  <30.237253, 40.377239, 17.219992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485096, 40.066170, 17.262516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018843, -0.120665, -0.992514,
		0.784685, 0.616974, -0.060111,
		0.619609, -0.777678, 0.106309,
		30.670979, 39.832867, 17.294409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569960, 40.449436, 16.676266>,  <30.237253, 40.377239, 17.219992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569960, 40.449436, 16.676266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659567, 40.073128, 16.778063>,  <30.713331, 39.847343, 16.839142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659567, 40.073128, 16.778063>,  <30.569960, 40.449436, 16.676266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659567, 40.073128, 16.778063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118450, -0.232912, -0.965257,
		0.967360, 0.246382, 0.059257,
		0.224020, -0.940770, 0.254493,
		30.726772, 39.790897, 16.854410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005777, 40.350758, 16.087408>,  <30.569960, 40.449436, 16.676266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005777, 40.350758, 16.087408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909698, 39.995712, 16.244604>,  <30.852051, 39.782684, 16.338923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909698, 39.995712, 16.244604>,  <31.005777, 40.350758, 16.087408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909698, 39.995712, 16.244604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145650, -0.433216, -0.889444,
		0.959735, -0.156404, 0.233339,
		-0.240199, -0.887616, 0.392992,
		30.837639, 39.729427, 16.362501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484228, 39.930637, 15.821028>,  <31.005777, 40.350758, 16.087408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484228, 39.930637, 15.821028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181828, 39.693115, 15.931197>,  <31.000387, 39.550602, 15.997299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181828, 39.693115, 15.931197>,  <31.484228, 39.930637, 15.821028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181828, 39.693115, 15.931197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039614, -0.461504, -0.886253,
		0.653371, -0.659097, 0.372420,
		-0.756001, -0.593805, 0.275424,
		30.955027, 39.514973, 16.013824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731405, 39.218014, 15.762088>,  <31.484228, 39.930637, 15.821028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731405, 39.218014, 15.762088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331938, 39.226021, 15.743090>,  <31.092257, 39.230827, 15.731691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331938, 39.226021, 15.743090>,  <31.731405, 39.218014, 15.762088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331938, 39.226021, 15.743090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035173, -0.408843, -0.911927,
		-0.037675, -0.912385, 0.407595,
		-0.998671, 0.020020, -0.047494,
		31.032337, 39.232025, 15.728842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518064, 38.548000, 15.525752>,  <31.731405, 39.218014, 15.762088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518064, 38.548000, 15.525752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.213690, 38.786892, 15.424333>,  <31.031065, 38.930229, 15.363482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.213690, 38.786892, 15.424333>,  <31.518064, 38.548000, 15.525752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213690, 38.786892, 15.424333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077499, -0.304320, -0.949412,
		-0.644179, -0.742093, 0.185284,
		-0.760938, 0.597232, -0.253548,
		30.985409, 38.966061, 15.348269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077900, 38.253155, 16.018188>,  <31.518064, 38.548000, 15.525752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077900, 38.253155, 16.018188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390869, 38.090866, 15.829208>,  <32.578651, 37.993492, 15.715820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.390869, 38.090866, 15.829208>,  <32.077900, 38.253155, 16.018188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390869, 38.090866, 15.829208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305980, -0.410307, 0.859083,
		-0.542395, -0.816726, -0.196892,
		0.782422, -0.405718, -0.472450,
		32.625595, 37.969151, 15.687473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071308, 37.582840, 16.229078>,  <32.077900, 38.253155, 16.018188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071308, 37.582840, 16.229078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449875, 37.643818, 16.115200>,  <32.677017, 37.680405, 16.046873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449875, 37.643818, 16.115200>,  <32.071308, 37.582840, 16.229078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449875, 37.643818, 16.115200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319111, -0.576813, 0.751968,
		-0.049584, -0.802526, -0.594553,
		0.946419, 0.152442, -0.284696,
		32.733799, 37.689552, 16.029791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396706, 36.900703, 16.335997>,  <32.071308, 37.582840, 16.229078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396706, 36.900703, 16.335997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689953, 37.171543, 16.310484>,  <32.865902, 37.334049, 16.295176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689953, 37.171543, 16.310484>,  <32.396706, 36.900703, 16.335997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689953, 37.171543, 16.310484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403925, -0.358047, 0.841812,
		0.547156, -0.642912, -0.535990,
		0.733120, 0.677102, -0.063781,
		32.909889, 37.374672, 16.291349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193935, 36.512329, 16.327517>,  <32.396706, 36.900703, 16.335997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193935, 36.512329, 16.327517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.214649, 36.885685, 16.469563>,  <33.227077, 37.109699, 16.554790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.214649, 36.885685, 16.469563>,  <33.193935, 36.512329, 16.327517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214649, 36.885685, 16.469563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449368, -0.339338, 0.826388,
		0.891844, 0.116780, -0.437008,
		0.051788, 0.933387, 0.355114,
		33.230186, 37.165703, 16.576097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814472, 36.506882, 16.663895>,  <33.193935, 36.512329, 16.327517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814472, 36.506882, 16.663895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665112, 36.853989, 16.795080>,  <33.575497, 37.062252, 16.873791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665112, 36.853989, 16.795080>,  <33.814472, 36.506882, 16.663895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665112, 36.853989, 16.795080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292888, -0.225173, 0.929254,
		0.880221, 0.443040, -0.170077,
		-0.373400, 0.867763, 0.327963,
		33.553093, 37.114319, 16.893469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368462, 36.758110, 17.009113>,  <33.814472, 36.506882, 16.663895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368462, 36.758110, 17.009113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.042828, 36.929855, 17.165529>,  <33.847446, 37.032902, 17.259378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.042828, 36.929855, 17.165529>,  <34.368462, 36.758110, 17.009113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042828, 36.929855, 17.165529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291675, -0.279969, 0.914627,
		0.502190, 0.858639, 0.102682,
		-0.814083, 0.429367, 0.391041,
		33.798603, 37.058666, 17.282841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609695, 37.105450, 17.554583>,  <34.368462, 36.758110, 17.009113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609695, 37.105450, 17.554583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219444, 37.056309, 17.627304>,  <33.985294, 37.026825, 17.670937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219444, 37.056309, 17.627304>,  <34.609695, 37.105450, 17.554583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219444, 37.056309, 17.627304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203989, -0.202613, 0.957777,
		-0.080826, 0.971523, 0.222735,
		-0.975631, -0.122849, 0.181804,
		33.926754, 37.019455, 17.681845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338997, 37.424076, 17.557266>,  <34.609695, 37.105450, 17.554583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338997, 37.424076, 17.557266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671185, 37.207928, 17.611406>,  <35.870499, 37.078239, 17.643890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671185, 37.207928, 17.611406>,  <35.338997, 37.424076, 17.557266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671185, 37.207928, 17.611406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365238, 0.344727, -0.864734,
		0.420616, 0.767571, 0.483649,
		0.830472, -0.540368, 0.135348,
		35.920326, 37.045818, 17.652010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866741, 37.851566, 17.247047>,  <35.338997, 37.424076, 17.557266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866741, 37.851566, 17.247047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.006886, 37.476921, 17.248354>,  <36.090973, 37.252136, 17.249138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.006886, 37.476921, 17.248354>,  <35.866741, 37.851566, 17.247047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006886, 37.476921, 17.248354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413004, 0.151364, -0.898063,
		0.840639, 0.315995, 0.439856,
		0.350362, -0.936609, 0.003265,
		36.111996, 37.195938, 17.249334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564716, 37.883755, 17.034428>,  <35.866741, 37.851566, 17.247047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564716, 37.883755, 17.034428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.518589, 37.491398, 16.971746>,  <36.490913, 37.255985, 16.934137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.518589, 37.491398, 16.971746>,  <36.564716, 37.883755, 17.034428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518589, 37.491398, 16.971746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534544, 0.071686, -0.842095,
		0.837237, -0.180872, 0.516062,
		-0.115317, -0.980891, -0.156702,
		36.483994, 37.197132, 16.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238773, 37.524311, 16.919436>,  <36.564716, 37.883755, 17.034428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238773, 37.524311, 16.919436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960609, 37.293945, 16.747511>,  <36.793713, 37.155727, 16.644356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960609, 37.293945, 16.747511>,  <37.238773, 37.524311, 16.919436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960609, 37.293945, 16.747511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379693, 0.213341, -0.900177,
		0.610119, -0.789184, 0.070312,
		-0.695405, -0.575911, -0.429811,
		36.751987, 37.121170, 16.618568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617981, 37.281532, 16.277897>,  <37.238773, 37.524311, 16.919436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617981, 37.281532, 16.277897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226093, 37.228558, 16.217752>,  <36.990959, 37.196774, 16.181665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226093, 37.228558, 16.217752>,  <37.617981, 37.281532, 16.277897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226093, 37.228558, 16.217752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107468, 0.286033, -0.952174,
		0.169112, -0.949023, -0.266000,
		-0.979720, -0.132437, -0.150361,
		36.932178, 37.188828, 16.172644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657089, 36.975128, 15.629987>,  <37.617981, 37.281532, 16.277897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657089, 36.975128, 15.629987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.303841, 37.150547, 15.696660>,  <37.091892, 37.255798, 15.736664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.303841, 37.150547, 15.696660>,  <37.657089, 36.975128, 15.629987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303841, 37.150547, 15.696660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029532, 0.406546, -0.913153,
		-0.468221, -0.801499, -0.371978,
		-0.883118, 0.438543, 0.166684,
		37.038906, 37.282108, 15.746665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396202, 36.913628, 15.021702>,  <37.657089, 36.975128, 15.629987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396202, 36.913628, 15.021702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.154057, 37.179420, 15.196969>,  <37.008770, 37.338898, 15.302130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.154057, 37.179420, 15.196969>,  <37.396202, 36.913628, 15.021702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154057, 37.179420, 15.196969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154024, 0.637890, -0.754568,
		-0.780902, -0.389302, -0.488503,
		-0.605366, 0.664485, 0.438168,
		36.972446, 37.378765, 15.328420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932232, 37.139362, 14.465444>,  <37.396202, 36.913628, 15.021702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932232, 37.139362, 14.465444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898628, 37.430538, 14.737636>,  <36.878468, 37.605244, 14.900950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898628, 37.430538, 14.737636>,  <36.932232, 37.139362, 14.465444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898628, 37.430538, 14.737636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073466, 0.685559, -0.724301,
		-0.993753, -0.010856, -0.111072,
		-0.084009, 0.727936, 0.680479,
		36.873425, 37.648918, 14.941779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448814, 37.527081, 14.288449>,  <36.932232, 37.139362, 14.465444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448814, 37.527081, 14.288449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677883, 37.776802, 14.500973>,  <36.815323, 37.926636, 14.628487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677883, 37.776802, 14.500973>,  <36.448814, 37.527081, 14.288449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677883, 37.776802, 14.500973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080758, 0.601992, -0.794408,
		-0.815798, 0.497841, 0.294326,
		0.572671, 0.624307, 0.531308,
		36.849686, 37.964096, 14.660365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.885796, 36.230453, 30.049288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167870, 36.512074, 30.082817>,  <37.337116, 36.681046, 30.102934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167870, 36.512074, 30.082817>,  <36.885796, 36.230453, 30.049288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167870, 36.512074, 30.082817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094767, 0.023568, -0.995220,
		-0.702659, 0.709761, -0.050101,
		0.705188, 0.704048, 0.083822,
		37.379425, 36.723289, 30.107964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830990, 36.511978, 29.427147>,  <36.885796, 36.230453, 30.049288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830990, 36.511978, 29.427147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176353, 36.659584, 29.564756>,  <37.383572, 36.748150, 29.647322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176353, 36.659584, 29.564756>,  <36.830990, 36.511978, 29.427147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176353, 36.659584, 29.564756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356959, 0.035038, -0.933463,
		-0.356517, 0.928762, -0.101471,
		0.863410, 0.369016, 0.344022,
		37.435375, 36.770290, 29.667963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078209, 37.126289, 28.948927>,  <36.830990, 36.511978, 29.427147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078209, 37.126289, 28.948927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379707, 36.944668, 29.138962>,  <37.560604, 36.835693, 29.252983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379707, 36.944668, 29.138962>,  <37.078209, 37.126289, 28.948927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379707, 36.944668, 29.138962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556772, 0.057176, -0.828695,
		0.349109, 0.889138, 0.295901,
		0.753743, -0.454054, 0.475086,
		37.605831, 36.808453, 29.281488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593876, 37.434616, 28.651649>,  <37.078209, 37.126289, 28.948927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593876, 37.434616, 28.651649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.760792, 37.109921, 28.815086>,  <37.860943, 36.915104, 28.913149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.760792, 37.109921, 28.815086>,  <37.593876, 37.434616, 28.651649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760792, 37.109921, 28.815086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501377, -0.169349, -0.848494,
		0.757953, 0.558924, 0.336321,
		0.417288, -0.811742, 0.408590,
		37.885979, 36.866398, 28.937664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239727, 37.475838, 28.495058>,  <37.593876, 37.434616, 28.651649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239727, 37.475838, 28.495058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144169, 37.094421, 28.568478>,  <38.086834, 36.865570, 28.612530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144169, 37.094421, 28.568478>,  <38.239727, 37.475838, 28.495058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144169, 37.094421, 28.568478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478911, -0.280129, -0.831969,
		0.844734, -0.110847, 0.523582,
		-0.238891, -0.953541, 0.183548,
		38.072502, 36.808357, 28.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735836, 37.192352, 28.192770>,  <38.239727, 37.475838, 28.495058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735836, 37.192352, 28.192770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478912, 36.889313, 28.239227>,  <38.324757, 36.707489, 28.267101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478912, 36.889313, 28.239227>,  <38.735836, 37.192352, 28.192770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478912, 36.889313, 28.239227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093029, -0.227477, -0.969329,
		0.760780, -0.611803, 0.216589,
		-0.642308, -0.757596, 0.116144,
		38.286221, 36.662033, 28.274071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997097, 36.739166, 27.793888>,  <38.735836, 37.192352, 28.192770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997097, 36.739166, 27.793888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620239, 36.605167, 27.798557>,  <38.394123, 36.524769, 27.801359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620239, 36.605167, 27.798557>,  <38.997097, 36.739166, 27.793888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620239, 36.605167, 27.798557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074245, -0.242507, -0.967305,
		0.326878, -0.910475, 0.253349,
		-0.942146, -0.335001, 0.011672,
		38.337597, 36.504669, 27.802059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989685, 36.134586, 27.495771>,  <38.997097, 36.739166, 27.793888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989685, 36.134586, 27.495771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602318, 36.231091, 27.470585>,  <38.369896, 36.288994, 27.455473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602318, 36.231091, 27.470585>,  <38.989685, 36.134586, 27.495771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602318, 36.231091, 27.470585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029086, -0.360118, -0.932453,
		-0.247634, -0.901172, 0.355761,
		-0.968417, 0.241255, -0.062966,
		38.311794, 36.303467, 27.451694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637600, 35.485317, 27.289351>,  <38.989685, 36.134586, 27.495771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637600, 35.485317, 27.289351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389717, 35.787724, 27.205072>,  <38.240986, 35.969170, 27.154505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389717, 35.787724, 27.205072>,  <38.637600, 35.485317, 27.289351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389717, 35.787724, 27.205072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288173, -0.468902, -0.834918,
		-0.730010, -0.456691, 0.508448,
		-0.619711, 0.756019, -0.210697,
		38.203804, 36.014530, 27.141863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134285, 35.194527, 26.978542>,  <38.637600, 35.485317, 27.289351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134285, 35.194527, 26.978542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061886, 35.575737, 26.881395>,  <38.018448, 35.804462, 26.823107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061886, 35.575737, 26.881395>,  <38.134285, 35.194527, 26.978542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061886, 35.575737, 26.881395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295563, -0.288238, -0.910803,
		-0.938021, -0.093068, 0.333849,
		-0.180994, 0.953026, -0.242865,
		38.007587, 35.861645, 26.808537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530350, 35.118137, 26.750820>,  <38.134285, 35.194527, 26.978542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530350, 35.118137, 26.750820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657394, 35.456108, 26.578667>,  <37.733620, 35.658890, 26.475374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657394, 35.456108, 26.578667>,  <37.530350, 35.118137, 26.750820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657394, 35.456108, 26.578667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452966, -0.263553, -0.851681,
		-0.833033, 0.465452, 0.299014,
		0.317611, 0.844922, -0.430382,
		37.752678, 35.709583, 26.449553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984600, 35.442795, 26.348459>,  <37.530350, 35.118137, 26.750820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984600, 35.442795, 26.348459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334858, 35.570160, 26.203203>,  <37.545013, 35.646580, 26.116051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334858, 35.570160, 26.203203>,  <36.984600, 35.442795, 26.348459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334858, 35.570160, 26.203203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274442, -0.290659, -0.916624,
		-0.397411, 0.902293, -0.167127,
		0.875640, 0.318410, -0.363138,
		37.597549, 35.665684, 26.094261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361034, 35.841225, 26.344755>,  <36.984600, 35.442795, 26.348459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361034, 35.841225, 26.344755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011688, 35.647064, 26.360826>,  <35.802078, 35.530567, 26.370468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011688, 35.647064, 26.360826>,  <36.361034, 35.841225, 26.344755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011688, 35.647064, 26.360826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090874, 0.243436, 0.965650,
		-0.478507, 0.839718, -0.256719,
		-0.873368, -0.485400, 0.040177,
		35.749680, 35.501446, 26.372879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938774, 36.306923, 26.635742>,  <36.361034, 35.841225, 26.344755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938774, 36.306923, 26.635742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821484, 35.929104, 26.694862>,  <35.751110, 35.702412, 26.730333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821484, 35.929104, 26.694862>,  <35.938774, 36.306923, 26.635742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821484, 35.929104, 26.694862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017594, 0.149236, 0.988645,
		-0.955880, 0.292501, -0.027142,
		-0.293230, -0.944549, 0.147798,
		35.733513, 35.645741, 26.739202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488708, 36.457977, 27.166471>,  <35.938774, 36.306923, 26.635742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488708, 36.457977, 27.166471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.513199, 36.058765, 27.171831>,  <35.527893, 35.819237, 27.175047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.513199, 36.058765, 27.171831>,  <35.488708, 36.457977, 27.166471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513199, 36.058765, 27.171831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212353, 0.000092, 0.977193,
		-0.975273, -0.062678, -0.211930,
		0.061229, -0.998034, 0.013400,
		35.531567, 35.759354, 27.175852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776825, 36.200191, 27.502260>,  <35.488708, 36.457977, 27.166471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776825, 36.200191, 27.502260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034954, 35.896450, 27.535585>,  <35.189831, 35.714207, 27.555580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034954, 35.896450, 27.535585>,  <34.776825, 36.200191, 27.502260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034954, 35.896450, 27.535585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095948, 0.027625, 0.995003,
		-0.757861, -0.650091, -0.055032,
		0.645322, -0.759354, 0.083311,
		35.228550, 35.668644, 27.560579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476421, 35.836040, 27.943525>,  <34.776825, 36.200191, 27.502260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476421, 35.836040, 27.943525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853817, 35.708633, 27.980141>,  <35.080254, 35.632191, 28.002110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853817, 35.708633, 27.980141>,  <34.476421, 35.836040, 27.943525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853817, 35.708633, 27.980141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093493, 0.009181, 0.995578,
		-0.317952, -0.947872, -0.021117,
		0.943486, -0.318520, 0.091539,
		35.136864, 35.613079, 28.007603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578510, 35.167404, 28.375950>,  <34.476421, 35.836040, 27.943525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578510, 35.167404, 28.375950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922318, 35.371765, 28.370155>,  <35.128601, 35.494381, 28.366678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922318, 35.371765, 28.370155>,  <34.578510, 35.167404, 28.375950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922318, 35.371765, 28.370155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018247, -0.002346, 0.999831,
		0.510784, -0.859635, -0.011338,
		0.859516, 0.510904, -0.014487,
		35.180172, 35.525036, 28.365808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851185, 35.035019, 28.973158>,  <34.578510, 35.167404, 28.375950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851185, 35.035019, 28.973158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060024, 35.355759, 28.856918>,  <35.185329, 35.548203, 28.787174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060024, 35.355759, 28.856918>,  <34.851185, 35.035019, 28.973158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060024, 35.355759, 28.856918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030158, 0.323154, 0.945866,
		0.852351, -0.502601, 0.144536,
		0.522100, 0.801851, -0.290598,
		35.216656, 35.596313, 28.769739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512577, 35.066883, 29.417166>,  <34.851185, 35.035019, 28.973158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512577, 35.066883, 29.417166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411839, 35.426720, 29.274441>,  <35.351395, 35.642620, 29.188807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411839, 35.426720, 29.274441>,  <35.512577, 35.066883, 29.417166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411839, 35.426720, 29.274441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195151, 0.408330, 0.891730,
		0.947886, 0.154948, -0.278392,
		-0.251848, 0.899588, -0.356812,
		35.336285, 35.696594, 29.167397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932659, 35.533642, 29.737856>,  <35.512577, 35.066883, 29.417166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932659, 35.533642, 29.737856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634472, 35.769299, 29.613155>,  <35.455559, 35.910694, 29.538334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634472, 35.769299, 29.613155>,  <35.932659, 35.533642, 29.737856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634472, 35.769299, 29.613155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106468, 0.566957, 0.816838,
		0.657985, 0.575734, -0.485372,
		-0.745467, 0.589144, -0.311752,
		35.410831, 35.946041, 29.519630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207123, 36.218201, 29.795034>,  <35.932659, 35.533642, 29.737856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207123, 36.218201, 29.795034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809616, 36.262733, 29.792795>,  <35.571114, 36.289452, 29.791451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809616, 36.262733, 29.792795>,  <36.207123, 36.218201, 29.795034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809616, 36.262733, 29.792795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047130, 0.465156, 0.883973,
		0.101017, 0.878200, -0.467504,
		-0.993768, 0.111330, -0.005599,
		35.511486, 36.296131, 29.791115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059635, 36.928741, 30.091814>,  <36.207123, 36.218201, 29.795034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059635, 36.928741, 30.091814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711761, 36.733250, 30.119492>,  <35.503036, 36.615955, 30.136099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711761, 36.733250, 30.119492>,  <36.059635, 36.928741, 30.091814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711761, 36.733250, 30.119492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153326, 0.400730, 0.903275,
		-0.469187, 0.774957, -0.423445,
		-0.869687, -0.488730, 0.069196,
		35.450855, 36.586632, 30.140251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475552, 37.511593, 30.217552>,  <36.059635, 36.928741, 30.091814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475552, 37.511593, 30.217552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332233, 37.154331, 30.326286>,  <35.246243, 36.939972, 30.391527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332233, 37.154331, 30.326286>,  <35.475552, 37.511593, 30.217552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332233, 37.154331, 30.326286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312913, 0.389208, 0.866373,
		-0.879608, 0.225357, -0.418932,
		-0.358295, -0.893158, 0.271834,
		35.224747, 36.886383, 30.407837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907024, 37.780491, 30.670465>,  <35.475552, 37.511593, 30.217552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907024, 37.780491, 30.670465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914799, 37.388458, 30.749523>,  <34.919464, 37.153240, 30.796957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914799, 37.388458, 30.749523>,  <34.907024, 37.780491, 30.670465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914799, 37.388458, 30.749523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281495, 0.184320, 0.941694,
		-0.959366, -0.073937, -0.272305,
		0.019435, -0.980081, 0.197643,
		34.920628, 37.094433, 30.808817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308804, 37.583164, 30.944010>,  <34.907024, 37.780491, 30.670465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308804, 37.583164, 30.944010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610607, 37.353775, 31.071657>,  <34.791691, 37.216141, 31.148247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610607, 37.353775, 31.071657>,  <34.308804, 37.583164, 30.944010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610607, 37.353775, 31.071657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235020, 0.217902, 0.947251,
		-0.612763, -0.789711, 0.029631,
		0.754511, -0.573476, 0.319120,
		34.836960, 37.181732, 31.167393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826599, 36.997917, 30.572218>,  <34.308804, 37.583164, 30.944010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826599, 36.997917, 30.572218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529610, 37.062412, 30.832289>,  <33.351414, 37.101109, 30.988331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529610, 37.062412, 30.832289>,  <33.826599, 36.997917, 30.572218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529610, 37.062412, 30.832289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573819, 0.347706, -0.741507,
		-0.345633, -0.923635, -0.165640,
		-0.742476, 0.161242, 0.650178,
		33.306866, 37.110786, 31.027342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199230, 36.615028, 30.459841>,  <33.826599, 36.997917, 30.572218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199230, 36.615028, 30.459841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097584, 36.974026, 30.604025>,  <33.036594, 37.189423, 30.690535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097584, 36.974026, 30.604025>,  <33.199230, 36.615028, 30.459841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097584, 36.974026, 30.604025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359563, 0.258315, -0.896654,
		-0.897853, -0.357461, 0.257064,
		-0.254115, 0.897494, 0.360459,
		33.021351, 37.243275, 30.712162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444210, 36.795254, 30.289387>,  <33.199230, 36.615028, 30.459841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444210, 36.795254, 30.289387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696175, 37.105728, 30.300362>,  <32.847351, 37.292011, 30.306948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696175, 37.105728, 30.300362>,  <32.444210, 36.795254, 30.289387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696175, 37.105728, 30.300362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300682, 0.276287, -0.912828,
		-0.716103, 0.566749, 0.407421,
		0.629909, 0.776184, 0.027439,
		32.885147, 37.338585, 30.308594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037331, 37.392822, 29.999762>,  <32.444210, 36.795254, 30.289387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037331, 37.392822, 29.999762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432186, 37.455414, 29.986713>,  <32.669102, 37.492970, 29.978886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432186, 37.455414, 29.986713>,  <32.037331, 37.392822, 29.999762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432186, 37.455414, 29.986713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063495, 0.196590, -0.978428,
		-0.146694, 0.967918, 0.203998,
		0.987142, 0.156482, -0.032619,
		32.728329, 37.502357, 29.976927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005020, 37.835938, 29.439816>,  <32.037331, 37.392822, 29.999762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005020, 37.835938, 29.439816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387836, 37.737064, 29.500443>,  <32.617527, 37.677742, 29.536818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387836, 37.737064, 29.500443>,  <32.005020, 37.835938, 29.439816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387836, 37.737064, 29.500443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169622, 0.053342, -0.984065,
		0.235159, 0.967500, 0.092978,
		0.957042, -0.247183, 0.151566,
		32.674950, 37.662910, 29.545912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361355, 38.413380, 29.129034>,  <32.005020, 37.835938, 29.439816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361355, 38.413380, 29.129034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634499, 38.121933, 29.150246>,  <32.798386, 37.947063, 29.162973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634499, 38.121933, 29.150246>,  <32.361355, 38.413380, 29.129034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634499, 38.121933, 29.150246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316193, 0.229338, -0.920558,
		0.658574, 0.645383, 0.386990,
		0.682864, -0.728619, 0.053029,
		32.839359, 37.903347, 29.166155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967609, 38.681717, 28.949158>,  <32.361355, 38.413380, 29.129034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967609, 38.681717, 28.949158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987907, 38.289444, 28.873590>,  <33.000084, 38.054081, 28.828251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987907, 38.289444, 28.873590>,  <32.967609, 38.681717, 28.949158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987907, 38.289444, 28.873590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166166, 0.194814, -0.966662,
		0.984791, 0.017659, 0.172842,
		0.050742, -0.980681, -0.188917,
		33.003132, 37.995239, 28.816916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375347, 38.706791, 28.418144>,  <32.967609, 38.681717, 28.949158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375347, 38.706791, 28.418144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231087, 38.336750, 28.370626>,  <33.144531, 38.114723, 28.342115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231087, 38.336750, 28.370626>,  <33.375347, 38.706791, 28.418144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231087, 38.336750, 28.370626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173775, 0.058488, -0.983047,
		0.916371, -0.375177, 0.139667,
		-0.360648, -0.925106, -0.118793,
		33.122890, 38.059219, 28.334988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926434, 38.288361, 28.100040>,  <33.375347, 38.706791, 28.418144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926434, 38.288361, 28.100040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571106, 38.131596, 28.004292>,  <33.357910, 38.037537, 27.946842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571106, 38.131596, 28.004292>,  <33.926434, 38.288361, 28.100040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571106, 38.131596, 28.004292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210889, 0.114902, -0.970733,
		0.407949, -0.912798, -0.019419,
		-0.888315, -0.391914, -0.239373,
		33.304611, 38.014023, 27.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037163, 38.116524, 27.460371>,  <33.926434, 38.288361, 28.100040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037163, 38.116524, 27.460371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641739, 38.056431, 27.454914>,  <33.404484, 38.020374, 27.451639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641739, 38.056431, 27.454914>,  <34.037163, 38.116524, 27.460371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641739, 38.056431, 27.454914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002378, 0.074908, -0.997188,
		0.150834, -0.985809, -0.073693,
		-0.988556, -0.150234, -0.013643,
		33.345173, 38.011360, 27.450821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926769, 37.488956, 27.073481>,  <34.037163, 38.116524, 27.460371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926769, 37.488956, 27.073481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612583, 37.736389, 27.065516>,  <33.424072, 37.884850, 27.060736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612583, 37.736389, 27.065516>,  <33.926769, 37.488956, 27.073481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612583, 37.736389, 27.065516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025908, -0.065010, -0.997548,
		-0.618358, -0.783028, 0.067090,
		-0.785470, 0.618580, -0.019913,
		33.376942, 37.921963, 27.059542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489513, 37.202854, 26.554399>,  <33.926769, 37.488956, 27.073481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489513, 37.202854, 26.554399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355183, 37.578587, 26.582314>,  <33.274582, 37.804028, 26.599062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355183, 37.578587, 26.582314>,  <33.489513, 37.202854, 26.554399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355183, 37.578587, 26.582314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121882, 0.030128, -0.992087,
		-0.934004, -0.341678, 0.104370,
		-0.335831, 0.939334, 0.069784,
		33.254433, 37.860386, 26.603249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928967, 37.240131, 26.083828>,  <33.489513, 37.202854, 26.554399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928967, 37.240131, 26.083828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996719, 37.625328, 26.167690>,  <33.037369, 37.856445, 26.218008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996719, 37.625328, 26.167690>,  <32.928967, 37.240131, 26.083828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996719, 37.625328, 26.167690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194187, 0.241167, -0.950857,
		-0.966231, 0.120345, 0.227850,
		0.169380, 0.962993, 0.209654,
		33.047535, 37.914227, 26.230587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384090, 37.632332, 25.797918>,  <32.928967, 37.240131, 26.083828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384090, 37.632332, 25.797918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659435, 37.918720, 25.844473>,  <32.824642, 38.090553, 25.872406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659435, 37.918720, 25.844473>,  <32.384090, 37.632332, 25.797918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659435, 37.918720, 25.844473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183786, 0.327366, -0.926852,
		-0.701696, 0.616622, 0.356932,
		0.688364, 0.715967, 0.116385,
		32.865944, 38.133511, 25.879389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029106, 38.334545, 25.667423>,  <32.384090, 37.632332, 25.797918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029106, 38.334545, 25.667423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423981, 38.374737, 25.617853>,  <32.660908, 38.398853, 25.588112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423981, 38.374737, 25.617853>,  <32.029106, 38.334545, 25.667423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423981, 38.374737, 25.617853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158275, 0.519065, -0.839952,
		-0.020073, 0.848808, 0.528320,
		0.987191, 0.100481, -0.123926,
		32.720139, 38.404881, 25.580675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101727, 39.061314, 25.453545>,  <32.029106, 38.334545, 25.667423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101727, 39.061314, 25.453545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410366, 38.837326, 25.332836>,  <32.595551, 38.702934, 25.260410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410366, 38.837326, 25.332836>,  <32.101727, 39.061314, 25.453545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410366, 38.837326, 25.332836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033066, 0.438452, -0.898146,
		0.635249, 0.702987, 0.319793,
		0.771599, -0.559972, -0.301772,
		32.641846, 38.669334, 25.242304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585514, 39.608795, 25.058237>,  <32.101727, 39.061314, 25.453545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585514, 39.608795, 25.058237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663906, 39.229759, 24.957304>,  <32.710941, 39.002338, 24.896744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663906, 39.229759, 24.957304>,  <32.585514, 39.608795, 25.058237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663906, 39.229759, 24.957304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144939, 0.282487, -0.948258,
		0.969837, 0.149270, 0.192705,
		0.195984, -0.947586, -0.252331,
		32.722702, 38.945484, 24.881605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053040, 39.676376, 24.532656>,  <32.585514, 39.608795, 25.058237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053040, 39.676376, 24.532656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951408, 39.292934, 24.481247>,  <32.890430, 39.062870, 24.450401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951408, 39.292934, 24.481247>,  <33.053040, 39.676376, 24.532656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951408, 39.292934, 24.481247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076693, 0.112495, -0.990688,
		0.964137, -0.261572, 0.044936,
		-0.254081, -0.958606, -0.128522,
		32.875183, 39.005352, 24.442690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608219, 39.342621, 24.159111>,  <33.053040, 39.676376, 24.532656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608219, 39.342621, 24.159111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295654, 39.099884, 24.100954>,  <33.108116, 38.954243, 24.066061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295654, 39.099884, 24.100954>,  <33.608219, 39.342621, 24.159111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295654, 39.099884, 24.100954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105967, 0.100565, -0.989271,
		0.614948, -0.788438, -0.014278,
		-0.781415, -0.606838, -0.145391,
		33.061230, 38.917831, 24.057337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616787, 38.938465, 23.574232>,  <33.608219, 39.342621, 24.159111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616787, 38.938465, 23.574232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228924, 38.869461, 23.643520>,  <32.996208, 38.828056, 23.685093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228924, 38.869461, 23.643520>,  <33.616787, 38.938465, 23.574232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228924, 38.869461, 23.643520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176460, 0.003503, -0.984301,
		0.169202, -0.985000, -0.033839,
		-0.969656, -0.172517, 0.173221,
		32.938026, 38.817707, 23.695486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485641, 38.395535, 23.125650>,  <33.616787, 38.938465, 23.574232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485641, 38.395535, 23.125650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167084, 38.609810, 23.237926>,  <32.975948, 38.738377, 23.305292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167084, 38.609810, 23.237926>,  <33.485641, 38.395535, 23.125650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167084, 38.609810, 23.237926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200788, 0.203590, -0.958246,
		-0.570470, -0.819503, -0.054578,
		-0.796397, 0.535692, 0.280688,
		32.928165, 38.770519, 23.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978649, 38.150574, 22.625257>,  <33.485641, 38.395535, 23.125650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978649, 38.150574, 22.625257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821205, 38.482559, 22.783367>,  <32.726738, 38.681751, 22.878233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821205, 38.482559, 22.783367>,  <32.978649, 38.150574, 22.625257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821205, 38.482559, 22.783367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298645, 0.291213, -0.908849,
		-0.869417, -0.475774, 0.133240,
		-0.393605, 0.829960, 0.395274,
		32.703125, 38.731548, 22.901949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187069, 38.226696, 22.513430>,  <32.978649, 38.150574, 22.625257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187069, 38.226696, 22.513430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354877, 38.587673, 22.552618>,  <32.455563, 38.804260, 22.576132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354877, 38.587673, 22.552618>,  <32.187069, 38.226696, 22.513430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354877, 38.587673, 22.552618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401010, 0.281075, -0.871888,
		-0.814366, 0.326490, 0.479805,
		0.419524, 0.902442, 0.097972,
		32.480736, 38.858406, 22.582010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657545, 38.554581, 22.201349>,  <32.187069, 38.226696, 22.513430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657545, 38.554581, 22.201349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963795, 38.811707, 22.211166>,  <32.147545, 38.965984, 22.217056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.963795, 38.811707, 22.211166>,  <31.657545, 38.554581, 22.201349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963795, 38.811707, 22.211166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436942, 0.547658, -0.713549,
		-0.472123, 0.535588, 0.700175,
		0.765625, 0.642819, 0.024541,
		32.193481, 39.004551, 22.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272919, 39.140518, 22.035067>,  <31.657545, 38.554581, 22.201349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272919, 39.140518, 22.035067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659103, 39.222363, 21.970541>,  <31.890814, 39.271469, 21.931826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659103, 39.222363, 21.970541>,  <31.272919, 39.140518, 22.035067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659103, 39.222363, 21.970541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250605, 0.559810, -0.789817,
		-0.071298, 0.802962, 0.591750,
		0.965460, 0.204608, -0.161313,
		31.948742, 39.283745, 21.922148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459236, 39.889992, 22.005533>,  <31.272919, 39.140518, 22.035067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459236, 39.889992, 22.005533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754887, 39.716095, 21.799742>,  <31.932278, 39.611755, 21.676266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754887, 39.716095, 21.799742>,  <31.459236, 39.889992, 22.005533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754887, 39.716095, 21.799742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282552, 0.493243, -0.822725,
		0.611438, 0.753465, 0.241731,
		0.739126, -0.434744, -0.514480,
		31.976625, 39.585670, 21.645397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644634, 40.369122, 21.589628>,  <31.459236, 39.889992, 22.005533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644634, 40.369122, 21.589628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801538, 40.049870, 21.406710>,  <31.895681, 39.858318, 21.296959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801538, 40.049870, 21.406710>,  <31.644634, 40.369122, 21.589628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801538, 40.049870, 21.406710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291942, 0.363418, -0.884702,
		0.872297, 0.480537, -0.090454,
		0.392259, -0.798130, -0.457297,
		31.919216, 39.810429, 21.269520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163727, 40.561314, 21.067720>,  <31.644634, 40.369122, 21.589628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163727, 40.561314, 21.067720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030666, 40.202553, 20.951164>,  <31.950830, 39.987297, 20.881231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030666, 40.202553, 20.951164>,  <32.163727, 40.561314, 21.067720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030666, 40.202553, 20.951164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253281, 0.382604, -0.888517,
		0.908400, -0.221764, -0.354442,
		-0.332652, -0.896903, -0.291389,
		31.930870, 39.933483, 20.863749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767403, 41.088188, 21.124594>,  <32.163727, 40.561314, 21.067720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767403, 41.088188, 21.124594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623222, 41.460823, 21.105753>,  <32.536716, 41.684406, 21.094448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623222, 41.460823, 21.105753>,  <32.767403, 41.088188, 21.124594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623222, 41.460823, 21.105753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157300, 0.110481, 0.981352,
		0.919420, 0.346317, -0.186361,
		-0.360448, 0.931589, -0.047102,
		32.515087, 41.740299, 21.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206802, 41.435753, 21.623003>,  <32.767403, 41.088188, 21.124594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206802, 41.435753, 21.623003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897984, 41.677727, 21.545025>,  <32.712692, 41.822910, 21.498238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897984, 41.677727, 21.545025>,  <33.206802, 41.435753, 21.623003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897984, 41.677727, 21.545025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016808, 0.287184, 0.957728,
		0.635349, 0.742683, -0.211550,
		-0.772042, 0.604935, -0.194945,
		32.666370, 41.859207, 21.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237217, 41.980503, 22.080509>,  <33.206802, 41.435753, 21.623003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237217, 41.980503, 22.080509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855137, 41.981899, 21.962137>,  <32.625889, 41.982738, 21.891115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855137, 41.981899, 21.962137>,  <33.237217, 41.980503, 22.080509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855137, 41.981899, 21.962137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291819, 0.155343, 0.943774,
		0.049266, 0.987855, -0.147365,
		-0.955204, 0.003492, -0.295928,
		32.568577, 41.982948, 21.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967190, 42.452240, 22.504515>,  <33.237217, 41.980503, 22.080509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967190, 42.452240, 22.504515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651379, 42.249649, 22.365879>,  <32.461891, 42.128094, 22.282698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651379, 42.249649, 22.365879>,  <32.967190, 42.452240, 22.504515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651379, 42.249649, 22.365879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469836, 0.135487, 0.872294,
		-0.394840, 0.851541, -0.344933,
		-0.789529, -0.506479, -0.346589,
		32.414520, 42.097706, 22.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347450, 42.888809, 22.710024>,  <32.967190, 42.452240, 22.504515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347450, 42.888809, 22.710024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263332, 42.504295, 22.638790>,  <32.212864, 42.273586, 22.596050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263332, 42.504295, 22.638790>,  <32.347450, 42.888809, 22.710024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263332, 42.504295, 22.638790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479783, -0.057235, 0.875518,
		-0.851813, 0.269556, -0.449171,
		-0.210293, -0.961282, -0.178082,
		32.200245, 42.215912, 22.585365>
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
