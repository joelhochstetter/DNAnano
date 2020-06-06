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
	<24.587772, 35.340359, 35.100632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295343, 35.072441, 35.048607>,  <24.119886, 34.911690, 35.017391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295343, 35.072441, 35.048607>,  <24.587772, 35.340359, 35.100632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295343, 35.072441, 35.048607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403928, 0.578492, -0.708653,
		0.549883, -0.465546, -0.693467,
		-0.731075, -0.669787, -0.130055,
		24.076021, 34.871506, 35.009590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659147, 34.908600, 34.432121>,  <24.587772, 35.340359, 35.100632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659147, 34.908600, 34.432121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267490, 34.896454, 34.512474>,  <24.032495, 34.889168, 34.560688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267490, 34.896454, 34.512474>,  <24.659147, 34.908600, 34.432121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267490, 34.896454, 34.512474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193835, 0.435835, -0.878906,
		-0.060866, -0.899514, -0.432631,
		-0.979144, -0.030363, 0.200885,
		23.973747, 34.887344, 34.572739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460218, 34.639442, 33.904789>,  <24.659147, 34.908600, 34.432121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460218, 34.639442, 33.904789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172604, 34.882225, 34.040192>,  <24.000034, 35.027893, 34.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172604, 34.882225, 34.040192>,  <24.460218, 34.639442, 33.904789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.172604, 34.882225, 34.040192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073921, 0.417525, -0.905653,
		-0.691028, -0.676223, -0.255350,
		-0.719038, 0.606956, 0.338509,
		23.956892, 35.064312, 34.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267403, 35.074688, 33.293739>,  <24.460218, 34.639442, 33.904789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267403, 35.074688, 33.293739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238186, 35.202106, 32.915703>,  <24.220655, 35.278557, 32.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238186, 35.202106, 32.915703>,  <24.267403, 35.074688, 33.293739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238186, 35.202106, 32.915703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085597, 0.946125, 0.312284,
		0.993649, -0.058086, -0.096376,
		-0.073044, 0.318550, -0.945088,
		24.216272, 35.297672, 32.632175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748573, 35.685116, 33.317619>,  <24.267403, 35.074688, 33.293739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748573, 35.685116, 33.317619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471880, 35.716728, 33.030491>,  <24.305864, 35.735695, 32.858215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471880, 35.716728, 33.030491>,  <24.748573, 35.685116, 33.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471880, 35.716728, 33.030491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068242, 0.996700, 0.043969,
		0.718922, -0.018571, -0.694843,
		-0.691733, 0.079028, -0.717817,
		24.264360, 35.740437, 32.815147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415100, 35.498764, 33.092957>,  <24.748573, 35.685116, 33.317619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415100, 35.498764, 33.092957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502920, 35.479496, 33.482719>,  <25.555613, 35.467934, 33.716579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502920, 35.479496, 33.482719>,  <25.415100, 35.498764, 33.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502920, 35.479496, 33.482719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945320, -0.236404, -0.224683,
		0.241178, 0.970460, -0.006367,
		0.219551, -0.048170, 0.974411,
		25.568785, 35.465046, 33.775043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976517, 35.974533, 33.188007>,  <25.415100, 35.498764, 33.092957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976517, 35.974533, 33.188007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969963, 35.662834, 33.438610>,  <25.966030, 35.475815, 33.588970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969963, 35.662834, 33.438610>,  <25.976517, 35.974533, 33.188007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969963, 35.662834, 33.438610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948341, -0.210661, -0.237216,
		0.316830, 0.590254, 0.742441,
		-0.016386, -0.779245, 0.626505,
		25.965048, 35.429062, 33.626560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464874, 36.002930, 33.883560>,  <25.976517, 35.974533, 33.188007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464874, 36.002930, 33.883560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405930, 35.634285, 33.739944>,  <26.370564, 35.413097, 33.653774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405930, 35.634285, 33.739944>,  <26.464874, 36.002930, 33.883560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405930, 35.634285, 33.739944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985979, -0.108147, -0.127079,
		0.078289, -0.372730, 0.924631,
		-0.147362, -0.921616, -0.359037,
		26.361721, 35.357800, 33.632233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822149, 35.467224, 34.305180>,  <26.464874, 36.002930, 33.883560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822149, 35.467224, 34.305180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762455, 35.346989, 33.928379>,  <26.726639, 35.274849, 33.702297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762455, 35.346989, 33.928379>,  <26.822149, 35.467224, 34.305180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762455, 35.346989, 33.928379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978819, -0.179934, -0.097654,
		-0.140145, -0.936627, 0.321074,
		-0.149238, -0.300588, -0.942006,
		26.717684, 35.256813, 33.645779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322145, 34.995838, 34.196762>,  <26.822149, 35.467224, 34.305180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322145, 34.995838, 34.196762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227543, 35.068630, 33.814987>,  <27.170780, 35.112305, 33.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227543, 35.068630, 33.814987>,  <27.322145, 34.995838, 34.196762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227543, 35.068630, 33.814987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971129, 0.075814, -0.226188,
		0.031197, -0.980375, -0.194659,
		-0.236507, 0.181983, -0.954435,
		27.156591, 35.123226, 33.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737270, 34.501331, 33.895966>,  <27.322145, 34.995838, 34.196762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737270, 34.501331, 33.895966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630840, 34.741276, 33.594139>,  <27.566982, 34.885242, 33.413044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630840, 34.741276, 33.594139>,  <27.737270, 34.501331, 33.895966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630840, 34.741276, 33.594139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943688, 0.002438, -0.330826,
		-0.196610, -0.800102, -0.566729,
		-0.266076, 0.599859, -0.754567,
		27.551018, 34.921234, 33.367767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240435, 34.337791, 33.243599>,  <27.737270, 34.501331, 33.895966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240435, 34.337791, 33.243599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084511, 34.688408, 33.130650>,  <27.990957, 34.898777, 33.062881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084511, 34.688408, 33.130650>,  <28.240435, 34.337791, 33.243599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084511, 34.688408, 33.130650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844899, 0.218437, -0.488294,
		-0.366327, -0.428916, -0.825733,
		-0.389808, 0.876537, -0.282371,
		27.967569, 34.951370, 33.045937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298197, 34.326805, 32.500053>,  <28.240435, 34.337791, 33.243599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298197, 34.326805, 32.500053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298798, 34.688175, 32.671555>,  <28.299158, 34.904995, 32.774456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298798, 34.688175, 32.671555>,  <28.298197, 34.326805, 32.500053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298798, 34.688175, 32.671555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879639, 0.202739, -0.430270,
		-0.475640, 0.377791, -0.794381,
		0.001500, 0.903422, 0.428750,
		28.299248, 34.959202, 32.800179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554739, 34.660675, 31.896963>,  <28.298197, 34.326805, 32.500053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554739, 34.660675, 31.896963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589312, 34.940842, 32.180355>,  <28.610054, 35.108944, 32.350391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589312, 34.940842, 32.180355>,  <28.554739, 34.660675, 31.896963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589312, 34.940842, 32.180355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862403, 0.303442, -0.405196,
		-0.498789, 0.646016, -0.577817,
		0.086429, 0.700418, 0.708480,
		28.615240, 35.150967, 32.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651390, 35.295689, 31.544743>,  <28.554739, 34.660675, 31.896963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651390, 35.295689, 31.544743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781303, 35.336422, 31.920858>,  <28.859251, 35.360863, 32.146526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781303, 35.336422, 31.920858>,  <28.651390, 35.295689, 31.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781303, 35.336422, 31.920858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882548, 0.324804, -0.340017,
		-0.340035, 0.940283, 0.015619,
		0.324785, 0.101833, 0.940290,
		28.878738, 35.366970, 32.202946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151052, 35.802700, 31.492159>,  <28.651390, 35.295689, 31.544743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151052, 35.802700, 31.492159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268024, 35.666946, 31.849775>,  <29.338207, 35.585495, 32.064346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268024, 35.666946, 31.849775>,  <29.151052, 35.802700, 31.492159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268024, 35.666946, 31.849775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946845, 0.233813, -0.220945,
		-0.134054, 0.911127, 0.389713,
		0.292429, -0.339379, 0.894040,
		29.355753, 35.565132, 32.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623697, 36.230598, 31.846910>,  <29.151052, 35.802700, 31.492159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623697, 36.230598, 31.846910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699270, 35.895153, 32.051273>,  <29.744614, 35.693886, 32.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699270, 35.895153, 32.051273>,  <29.623697, 36.230598, 31.846910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699270, 35.895153, 32.051273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980758, 0.135082, -0.140952,
		0.049190, 0.527705, 0.848002,
		0.188931, -0.838618, 0.510906,
		29.755949, 35.643566, 32.204544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225145, 36.384106, 32.341312>,  <29.623697, 36.230598, 31.846910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225145, 36.384106, 32.341312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197474, 35.988705, 32.287518>,  <30.180870, 35.751465, 32.255241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197474, 35.988705, 32.287518>,  <30.225145, 36.384106, 32.341312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197474, 35.988705, 32.287518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930674, -0.015403, -0.365525,
		0.359249, -0.150449, 0.921035,
		-0.069180, -0.988498, -0.134485,
		30.176720, 35.692154, 32.247173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866703, 36.097347, 32.614639>,  <30.225145, 36.384106, 32.341312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866703, 36.097347, 32.614639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707947, 35.813538, 32.381725>,  <30.612694, 35.643253, 32.241978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707947, 35.813538, 32.381725>,  <30.866703, 36.097347, 32.614639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707947, 35.813538, 32.381725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845606, -0.035920, -0.532598,
		0.356973, -0.703769, 0.614231,
		-0.396889, -0.709520, -0.582288,
		30.588881, 35.600681, 32.207039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359261, 35.748543, 32.410797>,  <30.866703, 36.097347, 32.614639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359261, 35.748543, 32.410797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108437, 35.622746, 32.125732>,  <30.957941, 35.547268, 31.954695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108437, 35.622746, 32.125732>,  <31.359261, 35.748543, 32.410797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108437, 35.622746, 32.125732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773441, -0.142572, -0.617626,
		0.092636, -0.938491, 0.332647,
		-0.627062, -0.314497, -0.712660,
		30.920319, 35.528397, 31.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647879, 35.112511, 32.093220>,  <31.359261, 35.748543, 32.410797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647879, 35.112511, 32.093220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415300, 35.285759, 31.817734>,  <31.275753, 35.389706, 31.652441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415300, 35.285759, 31.817734>,  <31.647879, 35.112511, 32.093220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415300, 35.285759, 31.817734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724245, -0.110123, -0.680692,
		-0.370664, -0.894585, -0.249653,
		-0.581444, 0.433118, -0.688717,
		31.240868, 35.415695, 31.611118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872442, 34.757004, 31.631163>,  <31.647879, 35.112511, 32.093220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872442, 34.757004, 31.631163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704023, 35.081722, 31.469320>,  <31.602972, 35.276554, 31.372215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704023, 35.081722, 31.469320>,  <31.872442, 34.757004, 31.631163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704023, 35.081722, 31.469320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753553, 0.064787, -0.654187,
		-0.504852, -0.580338, -0.639009,
		-0.421048, 0.811795, -0.404608,
		31.577709, 35.325260, 31.347939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764404, 34.687733, 30.987055>,  <31.872442, 34.757004, 31.631163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764404, 34.687733, 30.987055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769485, 35.087666, 30.992437>,  <31.772533, 35.327625, 30.995667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769485, 35.087666, 30.992437>,  <31.764404, 34.687733, 30.987055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769485, 35.087666, 30.992437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600609, 0.003132, -0.799537,
		-0.799442, 0.018237, -0.600466,
		0.012701, 0.999829, 0.013457,
		31.773296, 35.387615, 30.996475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033230, 34.436668, 30.251925>,  <31.764404, 34.687733, 30.987055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033230, 34.436668, 30.251925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399364, 34.414944, 30.092318>,  <32.619045, 34.401909, 29.996553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399364, 34.414944, 30.092318>,  <32.033230, 34.436668, 30.251925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399364, 34.414944, 30.092318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054300, -0.998460, 0.011336,
		-0.399018, 0.011290, -0.916874,
		0.915334, -0.054310, -0.399016,
		32.673965, 34.398651, 29.972612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980879, 34.064259, 29.557131>,  <32.033230, 34.436668, 30.251925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980879, 34.064259, 29.557131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342472, 34.032482, 29.725180>,  <32.559429, 34.013416, 29.826008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342472, 34.032482, 29.725180>,  <31.980879, 34.064259, 29.557131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342472, 34.032482, 29.725180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039859, -0.993967, -0.102183,
		0.425704, 0.075626, -0.901697,
		0.903984, -0.079440, 0.420121,
		32.613667, 34.008652, 29.851215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498348, 33.702862, 29.100273>,  <31.980879, 34.064259, 29.557131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498348, 33.702862, 29.100273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557121, 33.643604, 29.491468>,  <32.592384, 33.608047, 29.726185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557121, 33.643604, 29.491468>,  <32.498348, 33.702862, 29.100273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557121, 33.643604, 29.491468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112851, -0.984775, -0.132221,
		0.982687, -0.090939, -0.161418,
		0.146937, -0.148148, 0.977989,
		32.601204, 33.599159, 29.784864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931259, 33.151321, 29.177658>,  <32.498348, 33.702862, 29.100273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931259, 33.151321, 29.177658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741390, 33.140526, 29.529558>,  <32.627468, 33.134048, 29.740698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741390, 33.140526, 29.529558>,  <32.931259, 33.151321, 29.177658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741390, 33.140526, 29.529558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143108, -0.983863, -0.107398,
		0.868453, -0.176878, 0.463146,
		-0.474668, -0.026990, 0.879751,
		32.598991, 33.132427, 29.793484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249775, 32.997890, 29.327553>,  <32.931259, 33.151321, 29.177658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249775, 32.997890, 29.327553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314121, 33.148243, 28.962515>,  <32.352730, 33.238457, 28.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314121, 33.148243, 28.962515>,  <32.249775, 32.997890, 29.327553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314121, 33.148243, 28.962515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166610, -0.901027, -0.400489,
		-0.972812, 0.216473, -0.082320,
		0.160867, 0.375885, -0.912596,
		32.362381, 33.261009, 28.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703402, 33.076706, 28.825676>,  <32.249775, 32.997890, 29.327553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703402, 33.076706, 28.825676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065647, 32.949093, 28.713903>,  <32.282993, 32.872524, 28.646839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065647, 32.949093, 28.713903>,  <31.703402, 33.076706, 28.825676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065647, 32.949093, 28.713903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359682, -0.926864, -0.107481,
		-0.224705, 0.197843, -0.954131,
		0.905614, -0.319032, -0.279432,
		32.337330, 32.853382, 28.630074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791428, 32.671028, 28.077526>,  <31.703402, 33.076706, 28.825676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791428, 32.671028, 28.077526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087734, 32.571198, 28.327000>,  <32.265518, 32.511299, 28.476685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087734, 32.571198, 28.327000>,  <31.791428, 32.671028, 28.077526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087734, 32.571198, 28.327000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279167, -0.958828, -0.052109,
		0.611010, -0.135511, -0.779938,
		0.740765, -0.249572, 0.623683,
		32.309963, 32.496326, 28.514105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362274, 32.225586, 27.747190>,  <31.791428, 32.671028, 28.077526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362274, 32.225586, 27.747190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280167, 32.158127, 28.132816>,  <32.230904, 32.117653, 28.364193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280167, 32.158127, 28.132816>,  <32.362274, 32.225586, 27.747190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280167, 32.158127, 28.132816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289267, -0.930580, -0.224379,
		0.934981, -0.324930, 0.142233,
		-0.205267, -0.168647, 0.964066,
		32.218586, 32.107533, 28.422035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927277, 31.657776, 27.719151>,  <32.362274, 32.225586, 27.747190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927277, 31.657776, 27.719151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671700, 31.674412, 28.026403>,  <32.518353, 31.684393, 28.210754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671700, 31.674412, 28.026403>,  <32.927277, 31.657776, 27.719151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671700, 31.674412, 28.026403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071220, -0.997447, -0.005233,
		0.765953, -0.058050, 0.640270,
		-0.638939, 0.041591, 0.768132,
		32.480019, 31.686890, 28.256844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190609, 31.104734, 28.182854>,  <32.927277, 31.657776, 27.719151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190609, 31.104734, 28.182854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803886, 31.188587, 28.241287>,  <32.571854, 31.238899, 28.276348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803886, 31.188587, 28.241287>,  <33.190609, 31.104734, 28.182854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803886, 31.188587, 28.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191103, -0.972766, 0.131174,
		0.169603, 0.098903, 0.980537,
		-0.966806, 0.209631, 0.146083,
		32.513844, 31.251476, 28.285112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860588, 30.699682, 28.777882>,  <33.190609, 31.104734, 28.182854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860588, 30.699682, 28.777882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598331, 30.782150, 28.487328>,  <32.440979, 30.831631, 28.312996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598331, 30.782150, 28.487328>,  <32.860588, 30.699682, 28.777882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598331, 30.782150, 28.487328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409163, -0.905525, 0.112296,
		-0.634606, 0.370835, 0.678054,
		-0.655638, 0.206171, -0.726383,
		32.401642, 30.844002, 28.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427273, 30.208960, 28.356167>,  <32.860588, 30.699682, 28.777882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427273, 30.208960, 28.356167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366142, 30.204691, 27.960888>,  <32.329464, 30.202129, 27.723721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366142, 30.204691, 27.960888>,  <32.427273, 30.208960, 28.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366142, 30.204691, 27.960888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514398, 0.854664, 0.070320,
		0.843825, 0.519072, -0.136101,
		-0.152822, -0.010673, -0.988196,
		32.320297, 30.201488, 27.664429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299377, 30.317270, 29.152075>,  <32.427273, 30.208960, 28.356167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299377, 30.317270, 29.152075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085609, 30.236015, 28.823896>,  <31.957350, 30.187262, 28.626989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085609, 30.236015, 28.823896>,  <32.299377, 30.317270, 29.152075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085609, 30.236015, 28.823896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836105, 0.269229, 0.477959,
		0.123796, 0.941409, -0.313726,
		-0.534419, -0.203139, -0.820446,
		31.925283, 30.175074, 28.577763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886202, 30.889265, 29.040096>,  <32.299377, 30.317270, 29.152075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886202, 30.889265, 29.040096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738367, 30.547707, 28.893524>,  <31.649666, 30.342772, 28.805582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738367, 30.547707, 28.893524>,  <31.886202, 30.889265, 29.040096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738367, 30.547707, 28.893524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806911, 0.099391, 0.582250,
		-0.460761, 0.510866, -0.725751,
		-0.369586, -0.853895, -0.366428,
		31.627491, 30.291538, 28.783596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185106, 31.068066, 28.862661>,  <31.886202, 30.889265, 29.040096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185106, 31.068066, 28.862661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193230, 30.671598, 28.915081>,  <31.198103, 30.433718, 28.946533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193230, 30.671598, 28.915081>,  <31.185106, 31.068066, 28.862661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193230, 30.671598, 28.915081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835591, 0.055146, 0.546577,
		-0.548976, -0.120605, -0.827091,
		0.020309, -0.991168, 0.131050,
		31.199322, 30.374249, 28.954395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545946, 30.868555, 28.744827>,  <31.185106, 31.068066, 28.862661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545946, 30.868555, 28.744827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703228, 30.559830, 28.944706>,  <30.797598, 30.374596, 29.064632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703228, 30.559830, 28.944706>,  <30.545946, 30.868555, 28.744827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703228, 30.559830, 28.944706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862965, -0.122241, 0.490253,
		-0.317299, -0.623991, -0.714112,
		0.393207, -0.771811, 0.499696,
		30.821190, 30.328287, 29.094614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065617, 30.274597, 28.695459>,  <30.545946, 30.868555, 28.744827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065617, 30.274597, 28.695459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302443, 30.246378, 29.016579>,  <30.444538, 30.229446, 29.209249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302443, 30.246378, 29.016579>,  <30.065617, 30.274597, 28.695459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302443, 30.246378, 29.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805668, -0.075247, 0.587569,
		0.018961, -0.994667, -0.101382,
		0.592064, -0.070540, 0.802798,
		30.480062, 30.225214, 29.257418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663698, 29.819244, 29.071102>,  <30.065617, 30.274597, 28.695459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663698, 29.819244, 29.071102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917997, 29.980402, 29.334465>,  <30.070578, 30.077097, 29.492483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917997, 29.980402, 29.334465>,  <29.663698, 29.819244, 29.071102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917997, 29.980402, 29.334465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749658, 0.118995, 0.651040,
		0.183957, -0.907475, 0.377688,
		0.635746, 0.402900, 0.658406,
		30.108721, 30.101271, 29.531988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494761, 29.514698, 29.673082>,  <29.663698, 29.819244, 29.071102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494761, 29.514698, 29.673082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690763, 29.829121, 29.823818>,  <29.808365, 30.017775, 29.914259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690763, 29.829121, 29.823818>,  <29.494761, 29.514698, 29.673082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690763, 29.829121, 29.823818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697098, 0.093784, 0.710816,
		0.523401, -0.610997, 0.593914,
		0.490006, 0.786058, 0.376838,
		29.837765, 30.064938, 29.936871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558670, 29.417902, 30.469404>,  <29.494761, 29.514698, 29.673082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558670, 29.417902, 30.469404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578936, 29.801334, 30.357292>,  <29.591095, 30.031393, 30.290026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578936, 29.801334, 30.357292>,  <29.558670, 29.417902, 30.469404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578936, 29.801334, 30.357292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700148, 0.234217, 0.674488,
		0.712197, 0.162064, 0.683015,
		0.050664, 0.958581, -0.280278,
		29.594135, 30.088909, 30.273209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619242, 29.787277, 31.085814>,  <29.558670, 29.417902, 30.469404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619242, 29.787277, 31.085814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522518, 30.074566, 30.824837>,  <29.464483, 30.246939, 30.668251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522518, 30.074566, 30.824837>,  <29.619242, 29.787277, 31.085814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522518, 30.074566, 30.824837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550046, 0.452466, 0.701943,
		0.799360, 0.528612, 0.285645,
		-0.241811, 0.718223, -0.652444,
		29.449974, 30.290033, 30.629103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589846, 30.389000, 31.470348>,  <29.619242, 29.787277, 31.085814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589846, 30.389000, 31.470348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389458, 30.459629, 31.131445>,  <29.269224, 30.502007, 30.928102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389458, 30.459629, 31.131445>,  <29.589846, 30.389000, 31.470348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389458, 30.459629, 31.131445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744991, 0.410258, 0.526001,
		0.440473, 0.894712, -0.073981,
		-0.500971, 0.176574, -0.847260,
		29.239166, 30.512602, 30.877266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264797, 30.910583, 31.629452>,  <29.589846, 30.389000, 31.470348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264797, 30.910583, 31.629452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055563, 30.801279, 31.306538>,  <28.930023, 30.735697, 31.112789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055563, 30.801279, 31.306538>,  <29.264797, 30.910583, 31.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055563, 30.801279, 31.306538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836336, 0.346934, 0.424474,
		0.164083, 0.897198, -0.410014,
		-0.523085, -0.273261, -0.807286,
		28.898638, 30.719301, 31.064352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927635, 31.507351, 31.376251>,  <29.264797, 30.910583, 31.629452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927635, 31.507351, 31.376251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721239, 31.192139, 31.241932>,  <28.597403, 31.003012, 31.161341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721239, 31.192139, 31.241932>,  <28.927635, 31.507351, 31.376251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721239, 31.192139, 31.241932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814539, 0.330055, 0.477064,
		-0.265109, 0.519682, -0.812187,
		-0.515988, -0.788032, -0.335800,
		28.566442, 30.955729, 31.141191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358337, 31.735876, 30.985197>,  <28.927635, 31.507351, 31.376251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358337, 31.735876, 30.985197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272261, 31.365175, 31.108372>,  <28.220613, 31.142756, 31.182276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272261, 31.365175, 31.108372>,  <28.358337, 31.735876, 30.985197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272261, 31.365175, 31.108372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803351, 0.347280, 0.483760,
		-0.555265, -0.143278, -0.819239,
		-0.215193, -0.926751, 0.307935,
		28.207703, 31.087151, 31.200752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632494, 31.642944, 30.949574>,  <28.358337, 31.735876, 30.985197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632494, 31.642944, 30.949574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767435, 31.375511, 31.214659>,  <27.848400, 31.215052, 31.373709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767435, 31.375511, 31.214659>,  <27.632494, 31.642944, 30.949574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767435, 31.375511, 31.214659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708330, 0.283404, 0.646491,
		-0.620050, -0.687514, -0.377971,
		0.337353, -0.668585, 0.662712,
		27.868641, 31.174936, 31.413473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992641, 31.321102, 31.277100>,  <27.632494, 31.642944, 30.949574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992641, 31.321102, 31.277100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273844, 31.191713, 31.530445>,  <27.442564, 31.114080, 31.682453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273844, 31.191713, 31.530445>,  <26.992641, 31.321102, 31.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273844, 31.191713, 31.530445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558895, 0.299449, 0.773283,
		-0.439797, -0.897605, 0.029726,
		0.703004, -0.323474, 0.633364,
		27.484745, 31.094671, 31.720453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624878, 30.924824, 31.792715>,  <26.992641, 31.321102, 31.277100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624878, 30.924824, 31.792715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975393, 31.012259, 31.964453>,  <27.185703, 31.064718, 32.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975393, 31.012259, 31.964453>,  <26.624878, 30.924824, 31.792715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975393, 31.012259, 31.964453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481167, 0.351959, 0.802872,
		0.024384, -0.910135, 0.413594,
		0.876290, 0.218585, 0.429345,
		27.238279, 31.077835, 32.093258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590961, 30.629902, 32.479031>,  <26.624878, 30.924824, 31.792715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590961, 30.629902, 32.479031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882927, 30.903276, 32.483765>,  <27.058107, 31.067301, 32.486607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882927, 30.903276, 32.483765>,  <26.590961, 30.629902, 32.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882927, 30.903276, 32.483765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379279, 0.390543, 0.838823,
		0.568658, -0.616759, 0.544276,
		0.729915, 0.683435, 0.011838,
		27.101902, 31.108307, 32.487316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790983, 30.564287, 33.173988>,  <26.590961, 30.629902, 32.479031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790983, 30.564287, 33.173988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935850, 30.922348, 33.070034>,  <27.022770, 31.137184, 33.007664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935850, 30.922348, 33.070034>,  <26.790983, 30.564287, 33.173988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935850, 30.922348, 33.070034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133415, 0.325722, 0.936005,
		0.922517, -0.304316, 0.237392,
		0.362165, 0.895152, -0.259884,
		27.044500, 31.190893, 32.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174665, 30.690023, 33.749325>,  <26.790983, 30.564287, 33.173988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174665, 30.690023, 33.749325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075411, 31.023174, 33.551437>,  <27.015858, 31.223064, 33.432705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075411, 31.023174, 33.551437>,  <27.174665, 30.690023, 33.749325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075411, 31.023174, 33.551437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293346, 0.422111, 0.857771,
		0.923243, 0.357966, 0.139580,
		-0.248135, 0.832876, -0.494719,
		27.000971, 31.273037, 33.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429325, 31.184870, 34.185730>,  <27.174665, 30.690023, 33.749325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429325, 31.184870, 34.185730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142138, 31.342768, 33.956402>,  <26.969824, 31.437506, 33.818806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142138, 31.342768, 33.956402>,  <27.429325, 31.184870, 34.185730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142138, 31.342768, 33.956402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308738, 0.557605, 0.770556,
		0.623858, 0.730243, -0.278473,
		-0.717971, 0.394743, -0.573320,
		26.926746, 31.461191, 33.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596527, 31.880466, 34.113590>,  <27.429325, 31.184870, 34.185730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596527, 31.880466, 34.113590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210436, 31.778551, 34.090214>,  <26.978781, 31.717402, 34.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210436, 31.778551, 34.090214>,  <27.596527, 31.880466, 34.113590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210436, 31.778551, 34.090214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188581, 0.523872, 0.830660,
		-0.181026, 0.812798, -0.553705,
		-0.965229, -0.254789, -0.058444,
		26.920868, 31.702114, 34.072681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248184, 32.016354, 34.503670>,  <27.596527, 31.880466, 34.113590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248184, 32.016354, 34.503670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419212, 31.887184, 34.841404>,  <28.521830, 31.809681, 35.044044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419212, 31.887184, 34.841404>,  <28.248184, 32.016354, 34.503670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419212, 31.887184, 34.841404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487812, 0.868777, 0.085247,
		-0.761067, 0.375427, 0.528991,
		0.427571, -0.322927, 0.844335,
		28.547483, 31.790306, 35.094704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173285, 32.492996, 35.120129>,  <28.248184, 32.016354, 34.503670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173285, 32.492996, 35.120129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516970, 32.288506, 35.112103>,  <28.723181, 32.165810, 35.107288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516970, 32.288506, 35.112103>,  <28.173285, 32.492996, 35.120129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516970, 32.288506, 35.112103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509464, 0.858530, -0.058069,
		0.046912, 0.039672, 0.998111,
		0.859212, -0.511226, -0.020064,
		28.774733, 32.135139, 35.106083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604458, 32.508099, 35.804546>,  <28.173285, 32.492996, 35.120129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604458, 32.508099, 35.804546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835003, 32.507305, 35.477669>,  <28.973330, 32.506828, 35.281544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835003, 32.507305, 35.477669>,  <28.604458, 32.508099, 35.804546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835003, 32.507305, 35.477669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464572, 0.823478, 0.325664,
		0.672295, -0.567345, 0.475541,
		0.576361, -0.001980, -0.817193,
		29.007912, 32.506710, 35.232510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255383, 32.548065, 36.015686>,  <28.604458, 32.508099, 35.804546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255383, 32.548065, 36.015686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203548, 32.717106, 35.656883>,  <29.172447, 32.818531, 35.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203548, 32.717106, 35.656883>,  <29.255383, 32.548065, 36.015686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203548, 32.717106, 35.656883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533275, 0.792367, 0.296264,
		0.835958, -0.439957, -0.328043,
		-0.129587, 0.422601, -0.897004,
		29.164673, 32.843887, 35.387783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551352, 32.671185, 36.648376>,  <29.255383, 32.548065, 36.015686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551352, 32.671185, 36.648376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569221, 32.774445, 37.034405>,  <29.579943, 32.836399, 37.266022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569221, 32.774445, 37.034405>,  <29.551352, 32.671185, 36.648376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569221, 32.774445, 37.034405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749926, 0.629566, -0.203119,
		-0.660011, 0.732807, -0.165466,
		0.044675, 0.258148, 0.965072,
		29.582624, 32.851891, 37.323925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592932, 33.427498, 36.742687>,  <29.551352, 32.671185, 36.648376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592932, 33.427498, 36.742687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776443, 33.275658, 37.064041>,  <29.886551, 33.184555, 37.256855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776443, 33.275658, 37.064041>,  <29.592932, 33.427498, 36.742687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776443, 33.275658, 37.064041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823411, 0.521431, -0.223838,
		-0.333942, 0.764209, 0.551786,
		0.458777, -0.379598, 0.803386,
		29.914076, 33.161777, 37.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984219, 34.057308, 36.966438>,  <29.592932, 33.427498, 36.742687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984219, 34.057308, 36.966438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159065, 33.704384, 37.036243>,  <30.263973, 33.492630, 37.078129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159065, 33.704384, 37.036243>,  <29.984219, 34.057308, 36.966438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159065, 33.704384, 37.036243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867685, 0.362608, -0.340056,
		0.236753, 0.300070, 0.924070,
		0.437116, -0.882311, 0.174517,
		30.290199, 33.439690, 37.088600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384996, 34.033390, 37.549294>,  <29.984219, 34.057308, 36.966438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384996, 34.033390, 37.549294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525843, 33.786720, 37.267662>,  <30.610352, 33.638718, 37.098682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525843, 33.786720, 37.267662>,  <30.384996, 34.033390, 37.549294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525843, 33.786720, 37.267662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888943, 0.455763, 0.045385,
		0.292906, -0.641867, 0.708670,
		0.352117, -0.616674, -0.704079,
		30.631477, 33.601719, 37.056438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494062, 33.282402, 37.694225>,  <30.384996, 34.033390, 37.549294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494062, 33.282402, 37.694225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769978, 33.538509, 37.559021>,  <30.935526, 33.692173, 37.477898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769978, 33.538509, 37.559021>,  <30.494062, 33.282402, 37.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769978, 33.538509, 37.559021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604707, -0.252754, 0.755278,
		0.398148, -0.725376, -0.561522,
		0.689788, 0.640269, -0.338007,
		30.976913, 33.730591, 37.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219950, 33.020634, 37.765251>,  <30.494062, 33.282402, 37.694225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219950, 33.020634, 37.765251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339687, 33.402039, 37.751343>,  <31.411530, 33.630882, 37.743000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339687, 33.402039, 37.751343>,  <31.219950, 33.020634, 37.765251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339687, 33.402039, 37.751343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653524, -0.178343, 0.735596,
		0.695199, -0.242916, -0.676529,
		0.299342, 0.953512, -0.034768,
		31.429489, 33.688091, 37.740913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882435, 32.973457, 37.889038>,  <31.219950, 33.020634, 37.765251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882435, 32.973457, 37.889038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822063, 33.358757, 37.977917>,  <31.785841, 33.589935, 38.031242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822063, 33.358757, 37.977917>,  <31.882435, 32.973457, 37.889038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822063, 33.358757, 37.977917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541697, -0.107429, 0.833681,
		0.826913, 0.246188, -0.505575,
		-0.150929, 0.963250, 0.222194,
		31.776785, 33.647732, 38.044575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541630, 33.280266, 37.985306>,  <31.882435, 32.973457, 37.889038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541630, 33.280266, 37.985306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273922, 33.499317, 38.186172>,  <32.113297, 33.630749, 38.306694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273922, 33.499317, 38.186172>,  <32.541630, 33.280266, 37.985306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273922, 33.499317, 38.186172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555561, -0.079956, 0.827623,
		0.493382, 0.832892, -0.250730,
		-0.669273, 0.547630, 0.502171,
		32.073139, 33.663605, 38.336823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980480, 33.703491, 38.359802>,  <32.541630, 33.280266, 37.985306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980480, 33.703491, 38.359802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617443, 33.692524, 38.527386>,  <32.399620, 33.685944, 38.627937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617443, 33.692524, 38.527386>,  <32.980480, 33.703491, 38.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617443, 33.692524, 38.527386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419853, -0.055272, 0.905908,
		-0.001680, 0.998095, 0.061675,
		-0.907591, -0.027417, 0.418960,
		32.345165, 33.684299, 38.653072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099216, 34.052261, 38.941185>,  <32.980480, 33.703491, 38.359802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099216, 34.052261, 38.941185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764828, 33.846512, 39.017677>,  <32.564194, 33.723061, 39.063572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764828, 33.846512, 39.017677>,  <33.099216, 34.052261, 38.941185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764828, 33.846512, 39.017677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377886, -0.286876, 0.880287,
		-0.397934, 0.808161, 0.434194,
		-0.835973, -0.514372, 0.191235,
		32.514034, 33.692200, 39.075047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084400, 34.037678, 39.705921>,  <33.099216, 34.052261, 38.941185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084400, 34.037678, 39.705921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797997, 33.774811, 39.611717>,  <32.626156, 33.617092, 39.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797997, 33.774811, 39.611717>,  <33.084400, 34.037678, 39.705921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797997, 33.774811, 39.611717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010123, -0.327548, 0.944780,
		-0.698017, 0.678856, 0.227876,
		-0.716010, -0.657166, -0.235506,
		32.583195, 33.577660, 39.541065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567032, 34.142426, 40.204582>,  <33.084400, 34.037678, 39.705921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567032, 34.142426, 40.204582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464615, 33.780010, 40.069801>,  <32.403164, 33.562561, 39.988934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464615, 33.780010, 40.069801>,  <32.567032, 34.142426, 40.204582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464615, 33.780010, 40.069801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168200, -0.301498, 0.938514,
		-0.951918, 0.296979, -0.075197,
		-0.256047, -0.906037, -0.336953,
		32.387802, 33.508198, 39.968716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884214, 34.053967, 40.405567>,  <32.567032, 34.142426, 40.204582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884214, 34.053967, 40.405567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021706, 33.683064, 40.346188>,  <32.104202, 33.460522, 40.310562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021706, 33.683064, 40.346188>,  <31.884214, 34.053967, 40.405567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021706, 33.683064, 40.346188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247811, -0.242041, 0.938086,
		-0.905782, -0.285660, -0.312982,
		0.343729, -0.927262, -0.148447,
		32.124825, 33.404884, 40.301655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325663, 33.501488, 40.644852>,  <31.884214, 34.053967, 40.405567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325663, 33.501488, 40.644852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679583, 33.315838, 40.661427>,  <31.891935, 33.204449, 40.671371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679583, 33.315838, 40.661427>,  <31.325663, 33.501488, 40.644852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679583, 33.315838, 40.661427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150637, -0.200746, 0.967992,
		-0.440948, -0.862723, -0.247534,
		0.884802, -0.464122, 0.041440,
		31.945023, 33.176601, 40.673859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164112, 32.930538, 41.048782>,  <31.325663, 33.501488, 40.644852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164112, 32.930538, 41.048782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558912, 32.994606, 41.054131>,  <31.795792, 33.033047, 41.057339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558912, 32.994606, 41.054131>,  <31.164112, 32.930538, 41.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558912, 32.994606, 41.054131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006708, -0.124168, 0.992238,
		0.160588, -0.979249, -0.123628,
		0.986999, 0.160171, 0.013371,
		31.855011, 33.042656, 41.058144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350351, 32.474464, 41.481228>,  <31.164112, 32.930538, 41.048782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350351, 32.474464, 41.481228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672823, 32.711098, 41.485432>,  <31.866306, 32.853077, 41.487953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672823, 32.711098, 41.485432>,  <31.350351, 32.474464, 41.481228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672823, 32.711098, 41.485432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123278, -0.185322, 0.974915,
		0.578690, -0.784657, -0.222331,
		0.806177, 0.591582, 0.010513,
		31.914677, 32.888573, 41.488586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780102, 32.146053, 41.743546>,  <31.350351, 32.474464, 41.481228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780102, 32.146053, 41.743546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925215, 32.512089, 41.813980>,  <32.012283, 32.731709, 41.856239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925215, 32.512089, 41.813980>,  <31.780102, 32.146053, 41.743546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925215, 32.512089, 41.813980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085917, -0.220996, 0.971483,
		0.927904, -0.337311, -0.158796,
		0.362785, 0.915086, 0.176082,
		32.034050, 32.786613, 41.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374695, 31.989494, 42.177608>,  <31.780102, 32.146053, 41.743546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374695, 31.989494, 42.177608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257088, 32.367748, 42.233219>,  <32.186523, 32.594700, 42.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257088, 32.367748, 42.233219>,  <32.374695, 31.989494, 42.177608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257088, 32.367748, 42.233219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084381, -0.119211, 0.989277,
		0.952069, 0.302592, -0.044744,
		-0.294013, 0.945636, 0.139031,
		32.168884, 32.651440, 42.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643482, 32.161556, 42.830132>,  <32.374695, 31.989494, 42.177608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643482, 32.161556, 42.830132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376087, 32.457012, 42.795391>,  <32.215652, 32.634285, 42.774548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376087, 32.457012, 42.795391>,  <32.643482, 32.161556, 42.830132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376087, 32.457012, 42.795391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280882, -0.142605, 0.949089,
		0.688646, 0.658847, 0.302799,
		-0.668485, 0.738637, -0.086854,
		32.175541, 32.678604, 42.769337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780319, 32.655132, 43.388344>,  <32.643482, 32.161556, 42.830132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780319, 32.655132, 43.388344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408295, 32.718903, 43.255939>,  <32.185081, 32.757164, 43.176495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408295, 32.718903, 43.255939>,  <32.780319, 32.655132, 43.388344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408295, 32.718903, 43.255939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332853, 0.015816, 0.942846,
		0.155547, 0.987084, 0.038355,
		-0.930061, 0.159423, -0.331014,
		32.129276, 32.766731, 43.156635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496414, 33.219681, 43.850933>,  <32.780319, 32.655132, 43.388344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496414, 33.219681, 43.850933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181305, 33.036156, 43.686539>,  <31.992239, 32.926041, 43.587902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181305, 33.036156, 43.686539>,  <32.496414, 33.219681, 43.850933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181305, 33.036156, 43.686539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518284, 0.133176, 0.844775,
		-0.332859, 0.878497, -0.342706,
		-0.787773, -0.458810, -0.410983,
		31.944973, 32.898514, 43.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890932, 33.574654, 44.031422>,  <32.496414, 33.219681, 43.850933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890932, 33.574654, 44.031422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757481, 33.207767, 43.944328>,  <31.677410, 32.987637, 43.892071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757481, 33.207767, 43.944328>,  <31.890932, 33.574654, 44.031422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757481, 33.207767, 43.944328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550094, 0.001850, 0.835101,
		-0.765564, 0.398390, -0.505171,
		-0.333630, -0.917214, -0.217735,
		31.657393, 32.932602, 43.879009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224245, 33.527245, 44.256683>,  <31.890932, 33.574654, 44.031422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224245, 33.527245, 44.256683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313334, 33.139183, 44.218334>,  <31.366787, 32.906345, 44.195324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313334, 33.139183, 44.218334>,  <31.224245, 33.527245, 44.256683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313334, 33.139183, 44.218334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518566, -0.201175, 0.831035,
		-0.825521, -0.135372, -0.547896,
		0.222721, -0.970156, -0.095875,
		31.380150, 32.848137, 44.189571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572994, 33.212753, 44.287804>,  <31.224245, 33.527245, 44.256683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572994, 33.212753, 44.287804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850155, 32.938457, 44.376923>,  <31.016451, 32.773880, 44.430393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850155, 32.938457, 44.376923>,  <30.572994, 33.212753, 44.287804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850155, 32.938457, 44.376923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504459, -0.240272, 0.829331,
		-0.515175, -0.687040, -0.512415,
		0.692903, -0.685744, 0.222802,
		31.058025, 32.732735, 44.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221626, 32.725040, 44.803730>,  <30.572994, 33.212753, 44.287804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221626, 32.725040, 44.803730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602654, 32.603859, 44.815292>,  <30.831270, 32.531151, 44.822231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602654, 32.603859, 44.815292>,  <30.221626, 32.725040, 44.803730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602654, 32.603859, 44.815292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172964, -0.460785, 0.870494,
		-0.250394, -0.834206, -0.491329,
		0.952568, -0.302949, 0.028910,
		30.888424, 32.512974, 44.823963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214006, 32.055489, 45.078323>,  <30.221626, 32.725040, 44.803730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214006, 32.055489, 45.078323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586601, 32.192657, 45.126884>,  <30.810158, 32.274960, 45.156021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586601, 32.192657, 45.126884>,  <30.214006, 32.055489, 45.078323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586601, 32.192657, 45.126884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047847, -0.446330, 0.893588,
		0.360614, -0.826557, -0.432159,
		0.931487, 0.342918, 0.121405,
		30.866047, 32.295532, 45.163307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525700, 31.470346, 45.321732>,  <30.214006, 32.055489, 45.078323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525700, 31.470346, 45.321732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705109, 31.803616, 45.451134>,  <30.812754, 32.003578, 45.528774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705109, 31.803616, 45.451134>,  <30.525700, 31.470346, 45.321732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705109, 31.803616, 45.451134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038294, -0.343704, 0.938297,
		0.892951, -0.433235, -0.122253,
		0.448522, 0.833171, 0.323502,
		30.839666, 32.053566, 45.548183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855587, 31.237684, 45.832180>,  <30.525700, 31.470346, 45.321732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855587, 31.237684, 45.832180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888769, 31.629837, 45.903702>,  <30.908678, 31.865129, 45.946613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888769, 31.629837, 45.903702>,  <30.855587, 31.237684, 45.832180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888769, 31.629837, 45.903702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139143, -0.189058, 0.972058,
		0.986792, -0.055758, -0.152097,
		0.082955, 0.980382, 0.178802,
		30.913656, 31.923952, 45.957344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472574, 31.311499, 46.211056>,  <30.855587, 31.237684, 45.832180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472574, 31.311499, 46.211056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252863, 31.637421, 46.285233>,  <31.121037, 31.832973, 46.329739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252863, 31.637421, 46.285233>,  <31.472574, 31.311499, 46.211056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252863, 31.637421, 46.285233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087711, -0.164469, 0.982475,
		0.831024, 0.555916, 0.018872,
		-0.549277, 0.814805, 0.185438,
		31.088079, 31.881863, 46.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857843, 31.601828, 46.815147>,  <31.472574, 31.311499, 46.211056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857843, 31.601828, 46.815147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492369, 31.764360, 46.818638>,  <31.273085, 31.861879, 46.820732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492369, 31.764360, 46.818638>,  <31.857843, 31.601828, 46.815147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492369, 31.764360, 46.818638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003457, -0.029243, 0.999566,
		0.406409, 0.913258, 0.028123,
		-0.913685, 0.406330, 0.008727,
		31.218264, 31.886259, 46.821255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867800, 32.219406, 47.219818>,  <31.857843, 31.601828, 46.815147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867800, 32.219406, 47.219818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497562, 32.069542, 47.198250>,  <31.275421, 31.979622, 47.185310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497562, 32.069542, 47.198250>,  <31.867800, 32.219406, 47.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497562, 32.069542, 47.198250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020058, -0.093704, 0.995398,
		-0.377992, 0.922413, 0.079216,
		-0.925591, -0.374664, -0.053921,
		31.219885, 31.957142, 47.182072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577599, 32.668427, 47.508396>,  <31.867800, 32.219406, 47.219818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577599, 32.668427, 47.508396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329731, 32.356323, 47.542339>,  <31.181011, 32.169060, 47.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329731, 32.356323, 47.542339>,  <31.577599, 32.668427, 47.508396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329731, 32.356323, 47.542339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003526, 0.110887, 0.993827,
		-0.784855, 0.615545, -0.071465,
		-0.619670, -0.780262, 0.084860,
		31.143829, 32.122246, 47.567799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933697, 32.791798, 47.795681>,  <31.577599, 32.668427, 47.508396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933697, 32.791798, 47.795681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965807, 32.400791, 47.873684>,  <30.985073, 32.166187, 47.920486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965807, 32.400791, 47.873684>,  <30.933697, 32.791798, 47.795681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965807, 32.400791, 47.873684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255783, 0.168884, 0.951868,
		-0.963396, -0.126289, -0.236475,
		0.080273, -0.977512, 0.195004,
		30.989889, 32.107536, 47.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470678, 32.701496, 48.274422>,  <30.933697, 32.791798, 47.795681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470678, 32.701496, 48.274422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696405, 32.376961, 48.335449>,  <30.831842, 32.182240, 48.372066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696405, 32.376961, 48.335449>,  <30.470678, 32.701496, 48.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696405, 32.376961, 48.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044257, 0.154811, 0.986952,
		-0.824369, -0.563709, 0.051456,
		0.564320, -0.811335, 0.152570,
		30.865702, 32.133560, 48.381222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205383, 32.452496, 49.001835>,  <30.470678, 32.701496, 48.274422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205383, 32.452496, 49.001835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523670, 32.222595, 48.925426>,  <30.714643, 32.084656, 48.879581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523670, 32.222595, 48.925426>,  <30.205383, 32.452496, 49.001835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523670, 32.222595, 48.925426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227746, -0.008304, 0.973685,
		-0.561217, -0.818283, 0.124291,
		0.795718, -0.574756, -0.191020,
		30.762386, 32.050167, 48.868122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148647, 31.853617, 49.545589>,  <30.205383, 32.452496, 49.001835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148647, 31.853617, 49.545589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520462, 31.908688, 49.408764>,  <30.743551, 31.941730, 49.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520462, 31.908688, 49.408764>,  <30.148647, 31.853617, 49.545589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520462, 31.908688, 49.408764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359238, -0.129034, 0.924283,
		0.083114, -0.982036, -0.169400,
		0.929538, 0.137676, -0.342060,
		30.799324, 31.949989, 49.306145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512529, 31.296938, 49.852165>,  <30.148647, 31.853617, 49.545589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512529, 31.296938, 49.852165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794695, 31.556271, 49.737579>,  <30.963993, 31.711870, 49.668827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794695, 31.556271, 49.737579>,  <30.512529, 31.296938, 49.852165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794695, 31.556271, 49.737579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517156, -0.194398, 0.833522,
		0.484710, -0.736123, -0.472419,
		0.705412, 0.648331, -0.286464,
		31.006319, 31.750771, 49.651642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088146, 30.963993, 49.934654>,  <30.512529, 31.296938, 49.852165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088146, 30.963993, 49.934654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196699, 31.347971, 49.962528>,  <31.261831, 31.578358, 49.979252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196699, 31.347971, 49.962528>,  <31.088146, 30.963993, 49.934654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196699, 31.347971, 49.962528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306558, -0.154842, 0.939173,
		0.912346, -0.233511, -0.336300,
		0.271380, 0.959946, 0.069685,
		31.278112, 31.635956, 49.983433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834185, 31.078081, 50.051029>,  <31.088146, 30.963993, 49.934654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834185, 31.078081, 50.051029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629873, 31.383352, 50.209351>,  <31.507286, 31.566515, 50.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629873, 31.383352, 50.209351>,  <31.834185, 31.078081, 50.051029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629873, 31.383352, 50.209351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524091, -0.088536, 0.847048,
		0.681492, 0.640093, -0.354753,
		-0.510781, 0.763180, 0.395803,
		31.476639, 31.612307, 50.328091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307140, 31.491951, 50.412773>,  <31.834185, 31.078081, 50.051029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307140, 31.491951, 50.412773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944324, 31.545307, 50.572517>,  <31.726635, 31.577322, 50.668365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944324, 31.545307, 50.572517>,  <32.307140, 31.491951, 50.412773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944324, 31.545307, 50.572517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400944, -0.015982, 0.915963,
		0.128565, 0.990934, -0.038987,
		-0.907036, 0.133393, 0.399364,
		31.672215, 31.585325, 50.692326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416473, 31.884846, 51.110767>,  <32.307140, 31.491951, 50.412773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416473, 31.884846, 51.110767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046749, 31.735321, 51.141541>,  <31.824915, 31.645607, 51.160004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046749, 31.735321, 51.141541>,  <32.416473, 31.884846, 51.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046749, 31.735321, 51.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117255, -0.086329, 0.989343,
		-0.363186, 0.923478, 0.123626,
		-0.924309, -0.373811, 0.076929,
		31.769457, 31.623178, 51.164619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210518, 32.011810, 51.797905>,  <32.416473, 31.884846, 51.110767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210518, 32.011810, 51.797905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956537, 31.721596, 51.691746>,  <31.804148, 31.547468, 51.628052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956537, 31.721596, 51.691746>,  <32.210518, 32.011810, 51.797905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956537, 31.721596, 51.691746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113209, -0.427206, 0.897039,
		-0.764210, 0.539534, 0.353393,
		-0.634955, -0.725533, -0.265395,
		31.766050, 31.503935, 51.612129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819229, 31.862934, 52.367413>,  <32.210518, 32.011810, 51.797905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819229, 31.862934, 52.367413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817619, 31.525410, 52.152763>,  <31.816654, 31.322895, 52.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817619, 31.525410, 52.152763>,  <31.819229, 31.862934, 52.367413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817619, 31.525410, 52.152763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039958, -0.536333, 0.843060,
		-0.999193, -0.018050, 0.035875,
		-0.004024, -0.843813, -0.536622,
		31.816412, 31.272266, 51.991776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550016, 31.383551, 52.864307>,  <31.819229, 31.862934, 52.367413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550016, 31.383551, 52.864307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667461, 31.130539, 52.577618>,  <31.737928, 30.978731, 52.405602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667461, 31.130539, 52.577618>,  <31.550016, 31.383551, 52.864307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667461, 31.130539, 52.577618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006955, -0.751167, 0.660075,
		-0.955900, -0.188820, -0.224951,
		0.293611, -0.632530, -0.716727,
		31.755545, 30.940781, 52.362598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084803, 30.753914, 52.937225>,  <31.550016, 31.383551, 52.864307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084803, 30.753914, 52.937225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428221, 30.681799, 52.745228>,  <31.634272, 30.638531, 52.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428221, 30.681799, 52.745228>,  <31.084803, 30.753914, 52.937225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428221, 30.681799, 52.745228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151651, -0.804976, 0.573599,
		-0.489799, -0.565252, -0.663767,
		0.858544, -0.180287, -0.479998,
		31.685783, 30.627712, 52.601227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200172, 30.088095, 52.734886>,  <31.084803, 30.753914, 52.937225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200172, 30.088095, 52.734886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577322, 30.213057, 52.781174>,  <31.803612, 30.288034, 52.808945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577322, 30.213057, 52.781174>,  <31.200172, 30.088095, 52.734886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577322, 30.213057, 52.781174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171195, -0.752325, 0.636160,
		0.285796, -0.580009, -0.762831,
		0.942875, 0.312405, 0.115717,
		31.860184, 30.306778, 52.815887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666580, 29.544952, 52.580502>,  <31.200172, 30.088095, 52.734886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666580, 29.544952, 52.580502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814922, 29.803341, 52.847393>,  <31.903927, 29.958374, 53.007526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814922, 29.803341, 52.847393>,  <31.666580, 29.544952, 52.580502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814922, 29.803341, 52.847393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015964, -0.713917, 0.700048,
		0.928554, -0.270268, -0.254447,
		0.370855, 0.645971, 0.667225,
		31.926178, 29.997131, 53.047562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255562, 29.234434, 52.984398>,  <31.666580, 29.544952, 52.580502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255562, 29.234434, 52.984398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022106, 29.489117, 53.185978>,  <31.882032, 29.641926, 53.306927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022106, 29.489117, 53.185978>,  <32.255562, 29.234434, 52.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022106, 29.489117, 53.185978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229387, -0.724621, 0.649850,
		0.778939, 0.263679, 0.568971,
		-0.583640, 0.636708, 0.503951,
		31.847013, 29.680130, 53.337162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455074, 29.149107, 53.750729>,  <32.255562, 29.234434, 52.984398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455074, 29.149107, 53.750729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099236, 29.325134, 53.701809>,  <31.885733, 29.430750, 53.672455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099236, 29.325134, 53.701809>,  <32.455074, 29.149107, 53.750729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099236, 29.325134, 53.701809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351878, -0.489601, 0.797793,
		0.291202, 0.752750, 0.590397,
		-0.889597, 0.440066, -0.122303,
		31.832355, 29.457153, 53.665119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334961, 29.496428, 54.424656>,  <32.455074, 29.149107, 53.750729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334961, 29.496428, 54.424656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015518, 29.390526, 54.208458>,  <31.823853, 29.326984, 54.078739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015518, 29.390526, 54.208458>,  <32.334961, 29.496428, 54.424656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015518, 29.390526, 54.208458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301460, -0.601317, 0.739959,
		-0.520917, 0.753873, 0.400402,
		-0.798604, -0.264752, -0.540499,
		31.775938, 29.311100, 54.046307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965698, 29.146910, 54.558502>,  <32.334961, 29.496428, 54.424656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965698, 29.146910, 54.558502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284256, 29.388235, 54.575352>,  <33.475391, 29.533030, 54.585461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284256, 29.388235, 54.575352>,  <32.965698, 29.146910, 54.558502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284256, 29.388235, 54.575352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257096, -0.274690, -0.926524,
		-0.547414, 0.748705, -0.373870,
		0.796392, 0.603313, 0.042120,
		33.523174, 29.569229, 54.587986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017838, 29.644136, 54.058357>,  <32.965698, 29.146910, 54.558502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017838, 29.644136, 54.058357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394325, 29.550589, 54.155849>,  <33.620220, 29.494459, 54.214344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394325, 29.550589, 54.155849>,  <33.017838, 29.644136, 54.058357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394325, 29.550589, 54.155849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089488, -0.523119, -0.847549,
		0.325715, 0.819543, -0.471443,
		0.941224, -0.233871, 0.243727,
		33.676693, 29.480427, 54.228966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393719, 29.786955, 53.525780>,  <33.017838, 29.644136, 54.058357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393719, 29.786955, 53.525780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604794, 29.503223, 53.712711>,  <33.731438, 29.332985, 53.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604794, 29.503223, 53.712711>,  <33.393719, 29.786955, 53.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604794, 29.503223, 53.712711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240967, -0.402562, -0.883107,
		0.814543, 0.578617, -0.041503,
		0.527688, -0.709328, 0.467332,
		33.763100, 29.290424, 53.852909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117931, 29.913912, 53.326523>,  <33.393719, 29.786955, 53.525780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117931, 29.913912, 53.326523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985703, 29.544168, 53.402718>,  <33.906364, 29.322323, 53.448437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985703, 29.544168, 53.402718>,  <34.117931, 29.913912, 53.326523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985703, 29.544168, 53.402718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226669, -0.273688, -0.934728,
		0.916156, -0.265818, 0.299997,
		-0.330573, -0.924357, 0.190489,
		33.886532, 29.266861, 53.459866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653709, 29.447607, 53.392120>,  <34.117931, 29.913912, 53.326523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653709, 29.447607, 53.392120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318211, 29.299671, 53.232258>,  <34.116913, 29.210909, 53.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318211, 29.299671, 53.232258>,  <34.653709, 29.447607, 53.392120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318211, 29.299671, 53.232258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414538, 0.042235, -0.909051,
		0.353085, -0.928135, 0.117889,
		-0.838743, -0.369841, -0.399660,
		34.066589, 29.188719, 53.112358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681484, 28.722927, 53.080746>,  <34.653709, 29.447607, 53.392120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681484, 28.722927, 53.080746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432808, 28.962286, 52.878590>,  <34.283600, 29.105902, 52.757298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432808, 28.962286, 52.878590>,  <34.681484, 28.722927, 53.080746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432808, 28.962286, 52.878590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495241, -0.199582, -0.845520,
		-0.606822, -0.775945, -0.172271,
		-0.621695, 0.598395, -0.505390,
		34.246300, 29.141804, 52.726974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739643, 28.523575, 52.468540>,  <34.681484, 28.722927, 53.080746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739643, 28.523575, 52.468540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558510, 28.873018, 52.397263>,  <34.449829, 29.082684, 52.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558510, 28.873018, 52.397263>,  <34.739643, 28.523575, 52.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558510, 28.873018, 52.397263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447309, 0.049709, -0.892997,
		-0.771271, -0.484085, -0.413282,
		-0.452830, 0.873608, -0.178196,
		34.422661, 29.135101, 52.343803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602921, 28.536047, 51.669243>,  <34.739643, 28.523575, 52.468540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602921, 28.536047, 51.669243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591942, 28.908354, 51.815075>,  <34.585354, 29.131739, 51.902576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591942, 28.908354, 51.815075>,  <34.602921, 28.536047, 51.669243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591942, 28.908354, 51.815075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455309, 0.336331, -0.824363,
		-0.889910, 0.143371, -0.433018,
		-0.027448, 0.930766, 0.364582,
		34.583706, 29.187584, 51.924450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297485, 28.963177, 51.105434>,  <34.602921, 28.536047, 51.669243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297485, 28.963177, 51.105434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535759, 29.208990, 51.312321>,  <34.678722, 29.356478, 51.436451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535759, 29.208990, 51.312321>,  <34.297485, 28.963177, 51.105434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535759, 29.208990, 51.312321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407403, 0.323783, -0.853925,
		-0.692231, 0.719382, -0.057491,
		0.595684, 0.614535, 0.517211,
		34.714462, 29.393351, 51.467484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298847, 29.650686, 50.858437>,  <34.297485, 28.963177, 51.105434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298847, 29.650686, 50.858437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640469, 29.657232, 51.066410>,  <34.845440, 29.661160, 51.191193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640469, 29.657232, 51.066410>,  <34.298847, 29.650686, 50.858437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640469, 29.657232, 51.066410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451535, 0.472973, -0.756580,
		-0.258295, 0.880925, 0.396553,
		0.854049, 0.016363, 0.519935,
		34.896683, 29.662142, 51.222389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535526, 30.292955, 50.644341>,  <34.298847, 29.650686, 50.858437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535526, 30.292955, 50.644341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857883, 30.102526, 50.785133>,  <35.051296, 29.988268, 50.869610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857883, 30.102526, 50.785133>,  <34.535526, 30.292955, 50.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857883, 30.102526, 50.785133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576196, 0.493937, -0.651171,
		0.136151, 0.727583, 0.672373,
		0.805892, -0.476076, 0.351980,
		35.099651, 29.959703, 50.890728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962967, 30.774078, 50.669067>,  <34.535526, 30.292955, 50.644341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962967, 30.774078, 50.669067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165298, 30.429062, 50.663960>,  <35.286697, 30.222052, 50.660896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165298, 30.429062, 50.663960>,  <34.962967, 30.774078, 50.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165298, 30.429062, 50.663960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583841, 0.353208, -0.731009,
		0.635033, 0.362311, 0.682249,
		0.505828, -0.862540, -0.012767,
		35.317047, 30.170300, 50.660130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631962, 30.887220, 50.811546>,  <34.962967, 30.774078, 50.669067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631962, 30.887220, 50.811546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637558, 30.535406, 50.621292>,  <35.640915, 30.324318, 50.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637558, 30.535406, 50.621292>,  <35.631962, 30.887220, 50.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637558, 30.535406, 50.621292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586612, 0.392437, -0.708435,
		0.809747, -0.269098, 0.521436,
		0.013993, -0.879534, -0.475631,
		35.641754, 30.271545, 50.478603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366409, 30.837255, 50.493763>,  <35.631962, 30.887220, 50.811546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366409, 30.837255, 50.493763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140015, 30.556587, 50.320644>,  <36.004177, 30.388186, 50.216774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140015, 30.556587, 50.320644>,  <36.366409, 30.837255, 50.493763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140015, 30.556587, 50.320644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450319, 0.176611, -0.875226,
		0.690558, -0.690266, 0.216016,
		-0.565988, -0.701671, -0.432800,
		35.970219, 30.346087, 50.190804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824799, 30.322638, 50.136856>,  <36.366409, 30.837255, 50.493763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824799, 30.322638, 50.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452488, 30.307169, 49.991444>,  <36.229099, 30.297888, 49.904194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452488, 30.307169, 49.991444>,  <36.824799, 30.322638, 50.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452488, 30.307169, 49.991444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344789, 0.237740, -0.908075,
		0.121541, -0.970559, -0.207951,
		-0.930779, -0.038669, -0.363533,
		36.173256, 30.295568, 49.882385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877846, 30.101189, 49.418690>,  <36.824799, 30.322638, 50.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877846, 30.101189, 49.418690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514137, 30.267611, 49.423264>,  <36.295914, 30.367464, 49.426006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514137, 30.267611, 49.423264>,  <36.877846, 30.101189, 49.418690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514137, 30.267611, 49.423264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226550, 0.517788, -0.824967,
		-0.349153, -0.747525, -0.565066,
		-0.909267, 0.416056, 0.011436,
		36.241356, 30.392427, 49.426693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690300, 29.873158, 48.836674>,  <36.877846, 30.101189, 49.418690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690300, 29.873158, 48.836674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452209, 30.180897, 48.929466>,  <36.309357, 30.365540, 48.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452209, 30.180897, 48.929466>,  <36.690300, 29.873158, 48.836674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452209, 30.180897, 48.929466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023969, 0.305563, -0.951870,
		-0.803204, -0.561013, -0.200318,
		-0.595221, 0.769347, 0.231982,
		36.273643, 30.411701, 48.999062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232544, 30.047483, 48.251503>,  <36.690300, 29.873158, 48.836674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232544, 30.047483, 48.251503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205135, 30.393057, 48.451073>,  <36.188690, 30.600401, 48.570812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205135, 30.393057, 48.451073>,  <36.232544, 30.047483, 48.251503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205135, 30.393057, 48.451073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100669, 0.491557, -0.865007,
		-0.992557, -0.109500, 0.053288,
		-0.068525, 0.863934, 0.498921,
		36.184578, 30.652237, 48.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794025, 30.398991, 47.905991>,  <36.232544, 30.047483, 48.251503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794025, 30.398991, 47.905991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968342, 30.696444, 48.108810>,  <36.072929, 30.874916, 48.230503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968342, 30.696444, 48.108810>,  <35.794025, 30.398991, 47.905991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968342, 30.696444, 48.108810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086325, 0.526226, -0.845951,
		-0.895899, 0.412428, 0.165130,
		0.435789, 0.743633, 0.507049,
		36.099079, 30.919533, 48.260925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369770, 30.967339, 47.780743>,  <35.794025, 30.398991, 47.905991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369770, 30.967339, 47.780743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756443, 31.056246, 47.831543>,  <35.988445, 31.109591, 47.862022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756443, 31.056246, 47.831543>,  <35.369770, 30.967339, 47.780743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756443, 31.056246, 47.831543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061260, 0.280845, -0.957796,
		-0.248553, 0.933661, 0.257871,
		0.966679, 0.222266, 0.127002,
		36.046448, 31.122925, 47.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462353, 31.632547, 47.488007>,  <35.369770, 30.967339, 47.780743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462353, 31.632547, 47.488007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819126, 31.451927, 47.497429>,  <36.033192, 31.343555, 47.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819126, 31.451927, 47.497429>,  <35.462353, 31.632547, 47.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819126, 31.451927, 47.497429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201841, 0.350988, -0.914367,
		0.404614, 0.820311, 0.404200,
		0.891935, -0.451550, 0.023557,
		36.086708, 31.316462, 47.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789066, 32.038010, 47.046432>,  <35.462353, 31.632547, 47.488007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789066, 32.038010, 47.046432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008305, 31.703987, 47.065498>,  <36.139847, 31.503574, 47.076939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008305, 31.703987, 47.065498>,  <35.789066, 32.038010, 47.046432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008305, 31.703987, 47.065498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252766, 0.111047, -0.961134,
		0.797308, 0.538841, 0.271938,
		0.548096, -0.835056, 0.047662,
		36.172733, 31.453470, 47.079796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440529, 32.196632, 46.799850>,  <35.789066, 32.038010, 47.046432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440529, 32.196632, 46.799850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409283, 31.802267, 46.740704>,  <36.390533, 31.565647, 46.705215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409283, 31.802267, 46.740704>,  <36.440529, 32.196632, 46.799850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409283, 31.802267, 46.740704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054973, 0.143839, -0.988073,
		0.995427, -0.085316, 0.042963,
		-0.078118, -0.985916, -0.147871,
		36.385849, 31.506493, 46.696342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953403, 32.049652, 46.310726>,  <36.440529, 32.196632, 46.799850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953403, 32.049652, 46.310726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723621, 31.723186, 46.285816>,  <36.585751, 31.527308, 46.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723621, 31.723186, 46.285816>,  <36.953403, 32.049652, 46.310726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723621, 31.723186, 46.285816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334401, -0.164558, -0.927953,
		0.747114, -0.553892, 0.367457,
		-0.574454, -0.816164, -0.062279,
		36.551285, 31.478336, 46.267132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435143, 31.520535, 46.090950>,  <36.953403, 32.049652, 46.310726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435143, 31.520535, 46.090950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060646, 31.413731, 45.999592>,  <36.835949, 31.349648, 45.944778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060646, 31.413731, 45.999592>,  <37.435143, 31.520535, 46.090950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060646, 31.413731, 45.999592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236915, 0.000318, -0.971531,
		0.259483, -0.963693, 0.062961,
		-0.936237, -0.267012, -0.228395,
		36.779774, 31.333628, 45.931072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479927, 30.944418, 45.705750>,  <37.435143, 31.520535, 46.090950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479927, 30.944418, 45.705750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124340, 31.099569, 45.608349>,  <36.910988, 31.192659, 45.549908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124340, 31.099569, 45.608349>,  <37.479927, 30.944418, 45.705750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124340, 31.099569, 45.608349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243496, -0.050014, -0.968611,
		-0.387883, -0.920352, -0.049986,
		-0.888964, 0.387879, -0.243501,
		36.857651, 31.215933, 45.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320972, 30.573706, 44.994194>,  <37.479927, 30.944418, 45.705750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320972, 30.573706, 44.994194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062836, 30.874298, 45.049065>,  <36.907955, 31.054653, 45.081985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062836, 30.874298, 45.049065>,  <37.320972, 30.573706, 44.994194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062836, 30.874298, 45.049065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036384, 0.209608, -0.977108,
		-0.763031, -0.625573, -0.162610,
		-0.645337, 0.751480, 0.137177,
		36.869236, 31.099743, 45.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841248, 30.532095, 44.458786>,  <37.320972, 30.573706, 44.994194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841248, 30.532095, 44.458786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826057, 30.912554, 44.581345>,  <36.816944, 31.140829, 44.654881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826057, 30.912554, 44.581345>,  <36.841248, 30.532095, 44.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826057, 30.912554, 44.581345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063331, 0.308293, -0.949181,
		-0.997270, -0.016637, -0.071943,
		-0.037971, 0.951146, 0.306398,
		36.814667, 31.197897, 44.673264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242485, 30.862017, 44.152870>,  <36.841248, 30.532095, 44.458786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242485, 30.862017, 44.152870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510860, 31.150064, 44.223595>,  <36.671886, 31.322893, 44.266029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510860, 31.150064, 44.223595>,  <36.242485, 30.862017, 44.152870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510860, 31.150064, 44.223595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133011, 0.351459, -0.926707,
		-0.729482, 0.598250, 0.331593,
		0.670943, 0.720121, 0.176809,
		36.712143, 31.366100, 44.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926640, 31.453337, 44.073631>,  <36.242485, 30.862017, 44.152870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926640, 31.453337, 44.073631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313553, 31.545614, 44.031410>,  <36.545700, 31.600981, 44.006077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313553, 31.545614, 44.031410>,  <35.926640, 31.453337, 44.073631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313553, 31.545614, 44.031410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197754, 0.425002, -0.883327,
		-0.158917, 0.875302, 0.456718,
		0.967284, 0.230693, -0.105554,
		36.603737, 31.614822, 43.999744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863815, 32.116291, 43.790905>,  <35.926640, 31.453337, 44.073631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863815, 32.116291, 43.790905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246262, 32.013645, 43.734341>,  <36.475727, 31.952057, 43.700401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246262, 32.013645, 43.734341>,  <35.863815, 32.116291, 43.790905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246262, 32.013645, 43.734341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049310, 0.334822, -0.940990,
		0.288824, 0.906665, 0.307473,
		0.956112, -0.256619, -0.141412,
		36.533096, 31.936659, 43.691917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208946, 32.690365, 43.577198>,  <35.863815, 32.116291, 43.790905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208946, 32.690365, 43.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444042, 32.380814, 43.482819>,  <36.585102, 32.195084, 43.426189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444042, 32.380814, 43.482819>,  <36.208946, 32.690365, 43.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444042, 32.380814, 43.482819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000646, 0.291187, -0.956666,
		0.809048, 0.562425, 0.170643,
		0.587742, -0.773879, -0.235948,
		36.620365, 32.148651, 43.412033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700489, 33.135429, 43.220112>,  <36.208946, 32.690365, 43.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700489, 33.135429, 43.220112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771992, 32.756306, 43.114510>,  <36.814892, 32.528831, 43.051147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771992, 32.756306, 43.114510>,  <36.700489, 33.135429, 43.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771992, 32.756306, 43.114510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046704, 0.259854, -0.964518,
		0.982785, 0.184742, 0.002183,
		0.178754, -0.947811, -0.264009,
		36.825619, 32.471962, 43.035309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206596, 33.158703, 42.649410>,  <36.700489, 33.135429, 43.220112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206596, 33.158703, 42.649410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033791, 32.802654, 42.591370>,  <36.930107, 32.589027, 42.556545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033791, 32.802654, 42.591370>,  <37.206596, 33.158703, 42.649410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033791, 32.802654, 42.591370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210973, 0.256165, -0.943329,
		0.876844, -0.376917, -0.298458,
		-0.432012, -0.890120, -0.145097,
		36.904186, 32.535618, 42.547840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403255, 32.955135, 41.956165>,  <37.206596, 33.158703, 42.649410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403255, 32.955135, 41.956165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098518, 32.712593, 42.047314>,  <36.915676, 32.567070, 42.102005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098518, 32.712593, 42.047314>,  <37.403255, 32.955135, 41.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098518, 32.712593, 42.047314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361916, 0.106694, -0.926085,
		0.537221, -0.788006, -0.300733,
		-0.761847, -0.606352, 0.227873,
		36.869965, 32.530689, 42.115677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409081, 32.587132, 41.439774>,  <37.403255, 32.955135, 41.956165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409081, 32.587132, 41.439774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043083, 32.553963, 41.597713>,  <36.823483, 32.534061, 41.692478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043083, 32.553963, 41.597713>,  <37.409081, 32.587132, 41.439774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043083, 32.553963, 41.597713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400640, 0.071196, -0.913465,
		0.047616, -0.994011, -0.098358,
		-0.914998, -0.082902, 0.394851,
		36.768585, 32.529083, 41.716167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021500, 31.997612, 41.131817>,  <37.409081, 32.587132, 41.439774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021500, 31.997612, 41.131817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761436, 32.266434, 41.273598>,  <36.605396, 32.427727, 41.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761436, 32.266434, 41.273598>,  <37.021500, 31.997612, 41.131817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761436, 32.266434, 41.273598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406769, 0.086145, -0.909460,
		-0.641741, -0.735474, 0.217362,
		-0.650160, 0.672054, 0.354451,
		36.566387, 32.468048, 41.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334312, 31.798969, 40.846684>,  <37.021500, 31.997612, 41.131817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334312, 31.798969, 40.846684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265331, 32.178192, 40.953602>,  <36.223942, 32.405727, 41.017754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265331, 32.178192, 40.953602>,  <36.334312, 31.798969, 40.846684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265331, 32.178192, 40.953602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661870, 0.089445, -0.744263,
		-0.729512, -0.305269, 0.612065,
		-0.172454, 0.948056, 0.267300,
		36.213596, 32.462608, 41.033791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609634, 31.922979, 40.719044>,  <36.334312, 31.798969, 40.846684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609634, 31.922979, 40.719044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776234, 32.286129, 40.738194>,  <35.876194, 32.504021, 40.749683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776234, 32.286129, 40.738194>,  <35.609634, 31.922979, 40.719044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776234, 32.286129, 40.738194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524316, 0.282892, -0.803159,
		-0.742713, 0.309411, 0.593837,
		0.416499, 0.907875, 0.047879,
		35.901184, 32.558491, 40.752556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109856, 32.430527, 40.734383>,  <35.609634, 31.922979, 40.719044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109856, 32.430527, 40.734383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438660, 32.615597, 40.601578>,  <35.635941, 32.726639, 40.521893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438660, 32.615597, 40.601578>,  <35.109856, 32.430527, 40.734383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438660, 32.615597, 40.601578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496146, 0.295665, -0.816347,
		-0.279535, 0.835774, 0.472592,
		0.822010, 0.462672, -0.332017,
		35.685261, 32.754398, 40.501972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772591, 32.874840, 40.355976>,  <35.109856, 32.430527, 40.734383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772591, 32.874840, 40.355976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147449, 32.957020, 40.243160>,  <35.372364, 33.006329, 40.175472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147449, 32.957020, 40.243160>,  <34.772591, 32.874840, 40.355976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147449, 32.957020, 40.243160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348782, 0.527952, -0.774350,
		-0.010187, 0.824050, 0.566426,
		0.937148, 0.205448, -0.282036,
		35.428593, 33.018654, 40.158550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879986, 33.611156, 40.262165>,  <34.772591, 32.874840, 40.355976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879986, 33.611156, 40.262165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129269, 33.425285, 40.010551>,  <35.278839, 33.313763, 39.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129269, 33.425285, 40.010551>,  <34.879986, 33.611156, 40.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129269, 33.425285, 40.010551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384928, 0.517902, -0.763942,
		0.680766, 0.718229, 0.143893,
		0.623208, -0.464677, -0.629037,
		35.316231, 33.285881, 39.821842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114239, 34.134815, 39.739307>,  <34.879986, 33.611156, 40.262165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114239, 34.134815, 39.739307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235714, 33.793972, 39.568810>,  <35.308601, 33.589466, 39.466511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235714, 33.793972, 39.568810>,  <35.114239, 34.134815, 39.739307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235714, 33.793972, 39.568810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254626, 0.358514, -0.898127,
		0.918116, 0.381287, -0.108091,
		0.303692, -0.852108, -0.426243,
		35.326820, 33.538342, 39.440937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573185, 34.307716, 39.225151>,  <35.114239, 34.134815, 39.739307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573185, 34.307716, 39.225151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402855, 33.953911, 39.148941>,  <35.300655, 33.741627, 39.103214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402855, 33.953911, 39.148941>,  <35.573185, 34.307716, 39.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402855, 33.953911, 39.148941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141298, 0.273000, -0.951581,
		0.893703, -0.378288, -0.241231,
		-0.425828, -0.884516, -0.190530,
		35.275108, 33.688557, 39.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102459, 34.068138, 38.709965>,  <35.573185, 34.307716, 39.225151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102459, 34.068138, 38.709965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754978, 33.870247, 38.700127>,  <35.546490, 33.751511, 38.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754978, 33.870247, 38.700127>,  <36.102459, 34.068138, 38.709965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754978, 33.870247, 38.700127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057829, 0.150596, -0.986903,
		0.491955, -0.855898, -0.159432,
		-0.868698, -0.494731, -0.024591,
		35.494370, 33.721828, 38.692749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715923, 33.830872, 39.144001>,  <36.102459, 34.068138, 38.709965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715923, 33.830872, 39.144001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002296, 34.103336, 39.082741>,  <37.174122, 34.266815, 39.045986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002296, 34.103336, 39.082741>,  <36.715923, 33.830872, 39.144001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002296, 34.103336, 39.082741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195073, 0.015455, 0.980667,
		0.670363, -0.731966, -0.121813,
		0.715932, 0.681166, -0.153147,
		37.217075, 34.307686, 39.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420380, 33.617718, 39.382408>,  <36.715923, 33.830872, 39.144001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420380, 33.617718, 39.382408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397980, 34.016533, 39.403484>,  <37.384541, 34.255821, 39.416130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397980, 34.016533, 39.403484>,  <37.420380, 33.617718, 39.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397980, 34.016533, 39.403484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325426, -0.031659, 0.945037,
		0.943908, 0.070071, -0.322689,
		-0.056004, 0.997039, 0.052686,
		37.381180, 34.315643, 39.419289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108868, 33.877747, 39.501144>,  <37.420380, 33.617718, 39.382408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108868, 33.877747, 39.501144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873260, 34.182800, 39.608063>,  <37.731895, 34.365833, 39.672215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873260, 34.182800, 39.608063>,  <38.108868, 33.877747, 39.501144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873260, 34.182800, 39.608063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543075, 0.128606, 0.829777,
		0.598441, 0.633914, -0.489920,
		-0.589014, 0.762636, 0.267300,
		37.696556, 34.411591, 39.688251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490471, 34.338280, 39.726868>,  <38.108868, 33.877747, 39.501144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490471, 34.338280, 39.726868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153324, 34.467297, 39.899166>,  <37.951035, 34.544708, 40.002544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153324, 34.467297, 39.899166>,  <38.490471, 34.338280, 39.726868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153324, 34.467297, 39.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453822, -0.004093, 0.891083,
		0.289176, 0.946546, -0.142928,
		-0.842866, 0.322544, 0.430746,
		37.900463, 34.564060, 40.028389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758034, 34.718243, 40.236500>,  <38.490471, 34.338280, 39.726868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758034, 34.718243, 40.236500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377781, 34.690971, 40.357590>,  <38.149628, 34.674606, 40.430244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377781, 34.690971, 40.357590>,  <38.758034, 34.718243, 40.236500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377781, 34.690971, 40.357590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301419, 0.028947, 0.953052,
		-0.073744, 0.997253, -0.006966,
		-0.950636, -0.068182, 0.302726,
		38.092590, 34.670517, 40.448406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659863, 35.235954, 40.568951>,  <38.758034, 34.718243, 40.236500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659863, 35.235954, 40.568951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355663, 35.014973, 40.705441>,  <38.173141, 34.882385, 40.787334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355663, 35.014973, 40.705441>,  <38.659863, 35.235954, 40.568951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355663, 35.014973, 40.705441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304286, 0.161013, 0.938874,
		-0.573627, 0.817844, 0.045654,
		-0.760501, -0.552455, 0.341220,
		38.127514, 34.849236, 40.807808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389851, 35.640099, 41.133537>,  <38.659863, 35.235954, 40.568951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389851, 35.640099, 41.133537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283234, 35.259823, 41.196964>,  <38.219265, 35.031658, 41.235020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283234, 35.259823, 41.196964>,  <38.389851, 35.640099, 41.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283234, 35.259823, 41.196964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122516, 0.129766, 0.983946,
		-0.956005, 0.281688, 0.081887,
		-0.266540, -0.950691, 0.158568,
		38.203270, 34.974617, 41.244534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963047, 35.566479, 41.833565>,  <38.389851, 35.640099, 41.133537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963047, 35.566479, 41.833565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134026, 35.213013, 41.757225>,  <38.236610, 35.000931, 41.711422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134026, 35.213013, 41.757225>,  <37.963047, 35.566479, 41.833565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134026, 35.213013, 41.757225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144411, -0.141654, 0.979326,
		-0.892433, -0.446168, 0.067062,
		0.427444, -0.883668, -0.190848,
		38.262260, 34.947914, 41.699970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674793, 35.270828, 42.389019>,  <37.963047, 35.566479, 41.833565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674793, 35.270828, 42.389019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954365, 35.015041, 42.260902>,  <38.122108, 34.861568, 42.184032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954365, 35.015041, 42.260902>,  <37.674793, 35.270828, 42.389019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954365, 35.015041, 42.260902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101637, -0.354486, 0.929521,
		-0.707933, -0.682222, -0.182768,
		0.698928, -0.639463, -0.320291,
		38.164043, 34.823204, 42.164814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588135, 34.576904, 42.753597>,  <37.674793, 35.270828, 42.389019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588135, 34.576904, 42.753597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968700, 34.589825, 42.631115>,  <38.197041, 34.597576, 42.557625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968700, 34.589825, 42.631115>,  <37.588135, 34.576904, 42.753597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968700, 34.589825, 42.631115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295644, -0.373678, 0.879181,
		-0.086019, -0.926996, -0.365074,
		0.951417, 0.032305, -0.306204,
		38.254128, 34.599518, 42.539253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695942, 33.963570, 42.972466>,  <37.588135, 34.576904, 42.753597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695942, 33.963570, 42.972466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037109, 34.167488, 42.927494>,  <38.241810, 34.289841, 42.900513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037109, 34.167488, 42.927494>,  <37.695942, 33.963570, 42.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037109, 34.167488, 42.927494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385877, -0.470598, 0.793496,
		0.351614, -0.720170, -0.598100,
		0.852917, 0.509797, -0.112428,
		38.292984, 34.320427, 42.893764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227665, 33.510773, 43.105648>,  <37.695942, 33.963570, 42.972466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227665, 33.510773, 43.105648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416557, 33.862495, 43.130371>,  <38.529892, 34.073528, 43.145206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416557, 33.862495, 43.130371>,  <38.227665, 33.510773, 43.105648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416557, 33.862495, 43.130371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418793, -0.285507, 0.862032,
		0.775637, -0.381190, -0.503072,
		0.472229, 0.879306, 0.061810,
		38.558228, 34.126286, 43.148914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937359, 33.341068, 43.305164>,  <38.227665, 33.510773, 43.105648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937359, 33.341068, 43.305164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849659, 33.717258, 43.409031>,  <38.797039, 33.942974, 43.471352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849659, 33.717258, 43.409031>,  <38.937359, 33.341068, 43.305164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849659, 33.717258, 43.409031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251144, -0.202778, 0.946471,
		0.942792, 0.272726, -0.191738,
		-0.219247, 0.940479, 0.259671,
		38.783886, 33.999401, 43.486931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655666, 33.472904, 43.638058>,  <38.937359, 33.341068, 43.305164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655666, 33.472904, 43.638058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373714, 33.718914, 43.779419>,  <39.204544, 33.866520, 43.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373714, 33.718914, 43.779419>,  <39.655666, 33.472904, 43.638058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373714, 33.718914, 43.779419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144888, -0.362883, 0.920502,
		0.694376, 0.700043, 0.166677,
		-0.704875, 0.615025, 0.353405,
		39.162251, 33.903423, 43.885441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900139, 33.756485, 44.213974>,  <39.655666, 33.472904, 43.638058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900139, 33.756485, 44.213974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504280, 33.787735, 44.262142>,  <39.266766, 33.806484, 44.291042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504280, 33.787735, 44.262142>,  <39.900139, 33.756485, 44.213974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504280, 33.787735, 44.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073394, -0.445560, 0.892238,
		0.123357, 0.891837, 0.435213,
		-0.989645, 0.078122, 0.120418,
		39.207386, 33.811172, 44.298267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835941, 33.943188, 44.863277>,  <39.900139, 33.756485, 44.213974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835941, 33.943188, 44.863277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471493, 33.816963, 44.757240>,  <39.252823, 33.741230, 44.693619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471493, 33.816963, 44.757240>,  <39.835941, 33.943188, 44.863277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471493, 33.816963, 44.757240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195616, -0.235022, 0.952102,
		-0.362746, 0.919341, 0.152406,
		-0.911125, -0.315558, -0.265092,
		39.198154, 33.722294, 44.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378700, 34.152073, 45.352497>,  <39.835941, 33.943188, 44.863277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378700, 34.152073, 45.352497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176342, 33.851406, 45.183235>,  <39.054928, 33.671005, 45.081676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176342, 33.851406, 45.183235>,  <39.378700, 34.152073, 45.352497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176342, 33.851406, 45.183235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278228, -0.322151, 0.904880,
		-0.816491, 0.575510, -0.046160,
		-0.505897, -0.751670, -0.423156,
		39.024574, 33.625904, 45.056290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784161, 34.108955, 45.670933>,  <39.378700, 34.152073, 45.352497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784161, 34.108955, 45.670933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815430, 33.754250, 45.488708>,  <38.834190, 33.541428, 45.379372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815430, 33.754250, 45.488708>,  <38.784161, 34.108955, 45.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815430, 33.754250, 45.488708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256844, -0.459449, 0.850257,
		-0.963286, 0.050541, -0.263677,
		0.078173, -0.886765, -0.455563,
		38.838882, 33.488220, 45.352039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131996, 33.828526, 45.693256>,  <38.784161, 34.108955, 45.670933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131996, 33.828526, 45.693256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403446, 33.536568, 45.660484>,  <38.566319, 33.361393, 45.640820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403446, 33.536568, 45.660484>,  <38.131996, 33.828526, 45.693256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403446, 33.536568, 45.660484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310761, -0.386412, 0.868397,
		-0.665502, -0.563857, -0.489053,
		0.678627, -0.729898, -0.081933,
		38.607033, 33.317596, 45.635906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759014, 33.202240, 45.899002>,  <38.131996, 33.828526, 45.693256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759014, 33.202240, 45.899002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135700, 33.067806, 45.904919>,  <38.361713, 32.987144, 45.908470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135700, 33.067806, 45.904919>,  <37.759014, 33.202240, 45.899002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135700, 33.067806, 45.904919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181473, -0.470480, 0.863549,
		-0.283270, -0.815900, -0.504048,
		0.941714, -0.336088, 0.014791,
		38.418213, 32.966980, 45.909355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720406, 32.537766, 46.071663>,  <37.759014, 33.202240, 45.899002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720406, 32.537766, 46.071663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087616, 32.659359, 46.173508>,  <38.307941, 32.732315, 46.234615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087616, 32.659359, 46.173508>,  <37.720406, 32.537766, 46.071663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087616, 32.659359, 46.173508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145136, -0.339950, 0.929177,
		0.369008, -0.889960, -0.267963,
		0.918024, 0.303983, 0.254609,
		38.363022, 32.750553, 46.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946144, 31.904165, 46.491962>,  <37.720406, 32.537766, 46.071663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946144, 31.904165, 46.491962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149734, 32.238327, 46.574955>,  <38.271889, 32.438824, 46.624752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149734, 32.238327, 46.574955>,  <37.946144, 31.904165, 46.491962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149734, 32.238327, 46.574955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191768, -0.124934, 0.973456,
		0.839149, -0.535251, 0.096616,
		0.508973, 0.835403, 0.207482,
		38.302425, 32.488949, 46.637199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449409, 31.696922, 46.956181>,  <37.946144, 31.904165, 46.491962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449409, 31.696922, 46.956181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382755, 32.086327, 47.018806>,  <38.342762, 32.319969, 47.056381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382755, 32.086327, 47.018806>,  <38.449409, 31.696922, 46.956181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382755, 32.086327, 47.018806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060839, -0.168632, 0.983800,
		0.984140, 0.154411, 0.087328,
		-0.166636, 0.973509, 0.156563,
		38.332764, 32.378380, 47.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797962, 31.864986, 47.481228>,  <38.449409, 31.696922, 46.956181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797962, 31.864986, 47.481228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535690, 32.167000, 47.481483>,  <38.378326, 32.348209, 47.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535690, 32.167000, 47.481483>,  <38.797962, 31.864986, 47.481228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535690, 32.167000, 47.481483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110873, -0.097118, 0.989078,
		0.746850, 0.648453, 0.147391,
		-0.655685, 0.755035, 0.000636,
		38.338985, 32.393509, 47.481674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068836, 32.331413, 47.971478>,  <38.797962, 31.864986, 47.481228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068836, 32.331413, 47.971478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681507, 32.425159, 47.937035>,  <38.449108, 32.481407, 47.916367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681507, 32.425159, 47.937035>,  <39.068836, 32.331413, 47.971478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681507, 32.425159, 47.937035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066545, 0.090157, 0.993702,
		0.240654, 0.967959, -0.071705,
		-0.968327, 0.234367, -0.086109,
		38.391010, 32.495468, 47.911201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830494, 32.978680, 48.385067>,  <39.068836, 32.331413, 47.971478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830494, 32.978680, 48.385067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478603, 32.794281, 48.338490>,  <38.267467, 32.683643, 48.310543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478603, 32.794281, 48.338490>,  <38.830494, 32.978680, 48.385067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478603, 32.794281, 48.338490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171107, 0.078456, 0.982124,
		-0.443619, 0.883928, -0.147899,
		-0.879730, -0.460995, -0.116442,
		38.214684, 32.655983, 48.303558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285156, 33.376545, 48.586487>,  <38.830494, 32.978680, 48.385067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285156, 33.376545, 48.586487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101475, 33.023018, 48.622276>,  <37.991268, 32.810902, 48.643749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101475, 33.023018, 48.622276>,  <38.285156, 33.376545, 48.586487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101475, 33.023018, 48.622276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303806, 0.250894, 0.919105,
		-0.834767, 0.394872, -0.383719,
		-0.459201, -0.883815, 0.089474,
		37.963715, 32.757874, 48.649117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627438, 33.465340, 48.873154>,  <38.285156, 33.376545, 48.586487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627438, 33.465340, 48.873154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705345, 33.079144, 48.942303>,  <37.752090, 32.847424, 48.983791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705345, 33.079144, 48.942303>,  <37.627438, 33.465340, 48.873154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705345, 33.079144, 48.942303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419891, 0.077206, 0.904284,
		-0.886429, -0.248714, -0.390366,
		0.194770, -0.965495, 0.172870,
		37.763775, 32.789494, 48.994164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051880, 33.242851, 49.174843>,  <37.627438, 33.465340, 48.873154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051880, 33.242851, 49.174843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324150, 32.980576, 49.305531>,  <37.487514, 32.823212, 49.383942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324150, 32.980576, 49.305531>,  <37.051880, 33.242851, 49.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324150, 32.980576, 49.305531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424531, 0.010411, 0.905353,
		-0.597033, -0.754958, -0.271274,
		0.680680, -0.655690, 0.326719,
		37.528355, 32.783867, 49.403545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696514, 32.650829, 49.413586>,  <37.051880, 33.242851, 49.174843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696514, 32.650829, 49.413586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041454, 32.615734, 49.613045>,  <37.248417, 32.594677, 49.732719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041454, 32.615734, 49.613045>,  <36.696514, 32.650829, 49.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041454, 32.615734, 49.613045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506302, -0.144169, 0.850219,
		-0.002699, -0.985657, -0.168742,
		0.862352, -0.087729, 0.498651,
		37.300159, 32.589413, 49.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570908, 32.082050, 49.728577>,  <36.696514, 32.650829, 49.413586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570908, 32.082050, 49.728577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857410, 32.288334, 49.916626>,  <37.029312, 32.412102, 50.029457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857410, 32.288334, 49.916626>,  <36.570908, 32.082050, 49.728577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857410, 32.288334, 49.916626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480996, -0.123245, 0.868017,
		0.505582, -0.847855, 0.159776,
		0.716261, 0.515705, 0.470126,
		37.072289, 32.443047, 50.057663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668869, 31.735420, 50.335381>,  <36.570908, 32.082050, 49.728577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668869, 31.735420, 50.335381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833744, 32.089504, 50.421638>,  <36.932667, 32.301956, 50.473392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833744, 32.089504, 50.421638>,  <36.668869, 31.735420, 50.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833744, 32.089504, 50.421638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557257, 0.057688, 0.828334,
		0.720811, -0.461596, 0.517069,
		0.412184, 0.885212, 0.215646,
		36.957401, 32.355068, 50.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569286, 31.719036, 50.988792>,  <36.668869, 31.735420, 50.335381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569286, 31.719036, 50.988792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696407, 32.094578, 50.935787>,  <36.772678, 32.319901, 50.903984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696407, 32.094578, 50.935787>,  <36.569286, 31.719036, 50.988792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696407, 32.094578, 50.935787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325479, 0.239291, 0.914769,
		0.890543, -0.247582, 0.381624,
		0.317800, 0.938852, -0.132516,
		36.791748, 32.376232, 50.896034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027634, 31.908709, 51.548809>,  <36.569286, 31.719036, 50.988792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027634, 31.908709, 51.548809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865051, 32.237263, 51.388748>,  <36.767502, 32.434395, 51.292713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865051, 32.237263, 51.388748>,  <37.027634, 31.908709, 51.548809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865051, 32.237263, 51.388748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446240, 0.203706, 0.871421,
		0.797286, 0.532755, 0.283738,
		-0.406454, 0.821387, -0.400148,
		36.743114, 32.483681, 51.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084644, 32.497295, 52.067688>,  <37.027634, 31.908709, 51.548809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084644, 32.497295, 52.067688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786781, 32.614506, 51.827812>,  <36.608063, 32.684830, 51.683887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786781, 32.614506, 51.827812>,  <37.084644, 32.497295, 52.067688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786781, 32.614506, 51.827812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543781, 0.254653, 0.799659,
		0.387032, 0.921569, -0.030287,
		-0.744653, 0.293024, -0.599690,
		36.563385, 32.702412, 51.647903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753674, 33.033421, 52.380909>,  <37.084644, 32.497295, 52.067688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753674, 33.033421, 52.380909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477741, 32.920609, 52.114197>,  <36.312183, 32.852921, 51.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477741, 32.920609, 52.114197>,  <36.753674, 33.033421, 52.380909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477741, 32.920609, 52.114197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723961, 0.273947, 0.633114,
		0.004104, 0.919462, -0.393156,
		-0.689829, -0.282031, -0.666779,
		36.270794, 32.835999, 51.914162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267788, 33.594875, 52.510075>,  <36.753674, 33.033421, 52.380909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267788, 33.594875, 52.510075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066811, 33.320541, 52.299480>,  <35.946224, 33.155941, 52.173126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066811, 33.320541, 52.299480>,  <36.267788, 33.594875, 52.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066811, 33.320541, 52.299480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853202, 0.294696, 0.430348,
		-0.139996, 0.665421, -0.733223,
		-0.502441, -0.685835, -0.526483,
		35.916077, 33.114792, 52.141537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589752, 33.871902, 52.292149>,  <36.267788, 33.594875, 52.510075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589752, 33.871902, 52.292149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540974, 33.475040, 52.303207>,  <35.511707, 33.236923, 52.309841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540974, 33.475040, 52.303207>,  <35.589752, 33.871902, 52.292149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540974, 33.475040, 52.303207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836145, 0.117702, 0.535731,
		-0.534780, 0.042218, -0.843936,
		-0.121951, -0.992151, 0.027644,
		35.504387, 33.177395, 52.311501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973480, 33.556450, 52.171341>,  <35.589752, 33.871902, 52.292149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973480, 33.556450, 52.171341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067501, 33.795738, 52.477772>,  <35.123913, 33.939312, 52.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067501, 33.795738, 52.477772>,  <34.973480, 33.556450, 52.171341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067501, 33.795738, 52.477772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306341, 0.702399, -0.642488,
		-0.922445, 0.385703, -0.018157,
		0.235055, 0.598222, 0.766081,
		35.138016, 33.975204, 52.707596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577358, 34.178123, 52.129395>,  <34.973480, 33.556450, 52.171341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577358, 34.178123, 52.129395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889866, 34.285961, 52.354584>,  <35.077370, 34.350662, 52.489697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889866, 34.285961, 52.354584>,  <34.577358, 34.178123, 52.129395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889866, 34.285961, 52.354584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307236, 0.619013, -0.722792,
		-0.543346, 0.737661, 0.400787,
		0.781269, 0.269590, 0.562975,
		35.124245, 34.366837, 52.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571228, 34.810452, 52.139481>,  <34.577358, 34.178123, 52.129395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571228, 34.810452, 52.139481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954556, 34.742439, 52.231312>,  <35.184551, 34.701633, 52.286411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954556, 34.742439, 52.231312>,  <34.571228, 34.810452, 52.139481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954556, 34.742439, 52.231312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285353, 0.608554, -0.740429,
		-0.013819, 0.775082, 0.631709,
		0.958323, -0.170028, 0.229582,
		35.242054, 34.691429, 52.300186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916744, 35.455639, 52.201492>,  <34.571228, 34.810452, 52.139481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916744, 35.455639, 52.201492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208408, 35.187057, 52.148609>,  <35.383408, 35.025909, 52.116879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208408, 35.187057, 52.148609>,  <34.916744, 35.455639, 52.201492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208408, 35.187057, 52.148609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289072, 0.477306, -0.829829,
		0.620291, 0.566862, 0.542131,
		0.729161, -0.671451, -0.132205,
		35.427158, 34.985622, 52.108948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492775, 35.899849, 52.099457>,  <34.916744, 35.455639, 52.201492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492775, 35.899849, 52.099457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602791, 35.546368, 51.947971>,  <35.668800, 35.334278, 51.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602791, 35.546368, 51.947971>,  <35.492775, 35.899849, 52.099457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602791, 35.546368, 51.947971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407839, 0.463950, -0.786396,
		0.870644, 0.061834, 0.488012,
		0.275039, -0.883701, -0.378717,
		35.685303, 35.281258, 51.834358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141994, 36.087749, 51.907936>,  <35.492775, 35.899849, 52.099457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141994, 36.087749, 51.907936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029060, 35.751411, 51.723213>,  <35.961300, 35.549610, 51.612377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029060, 35.751411, 51.723213>,  <36.141994, 36.087749, 51.907936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029060, 35.751411, 51.723213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571723, 0.239083, -0.784839,
		0.770338, -0.485613, 0.413229,
		-0.282332, -0.840844, -0.461811,
		35.944359, 35.499157, 51.584671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744652, 35.815411, 51.648830>,  <36.141994, 36.087749, 51.907936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744652, 35.815411, 51.648830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425602, 35.679771, 51.449306>,  <36.234173, 35.598389, 51.329594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425602, 35.679771, 51.449306>,  <36.744652, 35.815411, 51.648830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425602, 35.679771, 51.449306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412493, 0.296685, -0.861294,
		0.440055, -0.892742, -0.096766,
		-0.797623, -0.339101, -0.498807,
		36.186314, 35.578041, 51.299664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082317, 35.412086, 51.127476>,  <36.744652, 35.815411, 51.648830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082317, 35.412086, 51.127476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708355, 35.474064, 50.999763>,  <36.483978, 35.511250, 50.923138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708355, 35.474064, 50.999763>,  <37.082317, 35.412086, 51.127476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708355, 35.474064, 50.999763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347858, 0.221914, -0.910906,
		-0.070287, -0.962677, -0.261367,
		-0.934909, 0.154944, -0.319277,
		36.427883, 35.520546, 50.903980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044861, 35.004089, 50.491066>,  <37.082317, 35.412086, 51.127476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044861, 35.004089, 50.491066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728443, 35.246807, 50.459972>,  <36.538593, 35.392437, 50.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728443, 35.246807, 50.459972>,  <37.044861, 35.004089, 50.491066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728443, 35.246807, 50.459972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230861, 0.178433, -0.956485,
		-0.566524, -0.774569, -0.281235,
		-0.791046, 0.606798, -0.077731,
		36.491131, 35.428848, 50.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796131, 34.807755, 49.854221>,  <37.044861, 35.004089, 50.491066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796131, 34.807755, 49.854221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617756, 35.164284, 49.886890>,  <36.510731, 35.378201, 49.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617756, 35.164284, 49.886890>,  <36.796131, 34.807755, 49.854221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617756, 35.164284, 49.886890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121920, 0.150890, -0.981003,
		-0.886719, -0.427513, -0.175959,
		-0.445942, 0.891328, 0.081675,
		36.483974, 35.431683, 49.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301971, 34.838295, 49.292931>,  <36.796131, 34.807755, 49.854221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301971, 34.838295, 49.292931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376595, 35.209560, 49.421741>,  <36.421368, 35.432320, 49.499027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376595, 35.209560, 49.421741>,  <36.301971, 34.838295, 49.292931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376595, 35.209560, 49.421741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248247, 0.272611, -0.929546,
		-0.950563, 0.253356, -0.179557,
		0.186557, 0.928167, 0.322029,
		36.432560, 35.488010, 49.518349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347305, 35.223717, 48.729401>,  <36.301971, 34.838295, 49.292931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347305, 35.223717, 48.729401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474300, 35.525414, 48.959293>,  <36.550499, 35.706432, 49.097229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474300, 35.525414, 48.959293>,  <36.347305, 35.223717, 48.729401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474300, 35.525414, 48.959293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178695, 0.547643, -0.817407,
		-0.931273, 0.362218, 0.039090,
		0.317488, 0.754244, 0.574732,
		36.569546, 35.751686, 49.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070068, 35.941727, 48.556080>,  <36.347305, 35.223717, 48.729401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070068, 35.941727, 48.556080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423264, 36.000481, 48.734409>,  <36.635181, 36.035732, 48.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423264, 36.000481, 48.734409>,  <36.070068, 35.941727, 48.556080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423264, 36.000481, 48.734409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330535, 0.479815, -0.812726,
		-0.333287, 0.864988, 0.375121,
		0.882987, 0.146881, 0.445825,
		36.688160, 36.044544, 48.868156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241844, 36.680389, 48.492935>,  <36.070068, 35.941727, 48.556080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241844, 36.680389, 48.492935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591465, 36.493111, 48.544815>,  <36.801239, 36.380741, 48.575943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591465, 36.493111, 48.544815>,  <36.241844, 36.680389, 48.492935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591465, 36.493111, 48.544815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410965, 0.570140, -0.711370,
		0.259116, 0.675077, 0.690746,
		0.874052, -0.468200, 0.129700,
		36.853680, 36.352650, 48.583725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706074, 37.119972, 48.280857>,  <36.241844, 36.680389, 48.492935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706074, 37.119972, 48.280857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923351, 36.784576, 48.298203>,  <37.053719, 36.583340, 48.308609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923351, 36.784576, 48.298203>,  <36.706074, 37.119972, 48.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923351, 36.784576, 48.298203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467520, 0.259164, -0.845138,
		0.697398, 0.479350, 0.532786,
		0.543196, -0.838486, 0.043366,
		37.086311, 36.533031, 48.311211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332474, 37.325665, 48.200363>,  <36.706074, 37.119972, 48.280857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332474, 37.325665, 48.200363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352825, 36.940979, 48.092651>,  <37.365036, 36.710167, 48.028027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352825, 36.940979, 48.092651>,  <37.332474, 37.325665, 48.200363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352825, 36.940979, 48.092651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455265, 0.262315, -0.850838,
		0.888901, -0.079302, 0.451183,
		0.050879, -0.961718, -0.269275,
		37.368088, 36.652462, 48.011868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109173, 37.225117, 47.988350>,  <37.332474, 37.325665, 48.200363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109173, 37.225117, 47.988350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871754, 36.946857, 47.826473>,  <37.729301, 36.779903, 47.729347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871754, 36.946857, 47.826473>,  <38.109173, 37.225117, 47.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871754, 36.946857, 47.826473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497733, 0.077853, -0.863829,
		0.632429, -0.714150, 0.300038,
		-0.593545, -0.695649, -0.404693,
		37.693691, 36.738163, 47.705067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572430, 36.901951, 47.609798>,  <38.109173, 37.225117, 47.988350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572430, 36.901951, 47.609798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215881, 36.775505, 47.479858>,  <38.001953, 36.699638, 47.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215881, 36.775505, 47.479858>,  <38.572430, 36.901951, 47.609798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215881, 36.775505, 47.479858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375189, -0.112411, -0.920107,
		0.254346, -0.942036, 0.218804,
		-0.891370, -0.316119, -0.324850,
		37.948471, 36.680668, 47.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636715, 36.230949, 47.319279>,  <38.572430, 36.901951, 47.609798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636715, 36.230949, 47.319279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315777, 36.385376, 47.137203>,  <38.123215, 36.478031, 47.027958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315777, 36.385376, 47.137203>,  <38.636715, 36.230949, 47.319279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315777, 36.385376, 47.137203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452617, -0.103598, -0.885667,
		-0.389082, -0.916636, -0.091619,
		-0.802342, 0.386065, -0.455193,
		38.075073, 36.501194, 47.000645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417118, 35.840691, 46.758194>,  <38.636715, 36.230949, 47.319279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417118, 35.840691, 46.758194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212597, 36.163948, 46.641254>,  <38.089882, 36.357903, 46.571091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212597, 36.163948, 46.641254>,  <38.417118, 35.840691, 46.758194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212597, 36.163948, 46.641254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209741, -0.212551, -0.954375,
		-0.833412, -0.549296, -0.060822,
		-0.511306, 0.808144, -0.292352,
		38.059204, 36.406391, 46.553547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083294, 35.536060, 46.186844>,  <38.417118, 35.840691, 46.758194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083294, 35.536060, 46.186844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070675, 35.933567, 46.144077>,  <38.063103, 36.172070, 46.118416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070675, 35.933567, 46.144077>,  <38.083294, 35.536060, 46.186844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070675, 35.933567, 46.144077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362151, -0.088336, -0.927924,
		-0.931586, -0.067990, -0.357107,
		-0.031544, 0.993768, -0.106915,
		38.061211, 36.231697, 46.112003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727570, 35.629318, 45.540825>,  <38.083294, 35.536060, 46.186844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727570, 35.629318, 45.540825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921425, 35.971230, 45.615089>,  <38.037739, 36.176376, 45.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921425, 35.971230, 45.615089>,  <37.727570, 35.629318, 45.540825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921425, 35.971230, 45.615089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129881, 0.139583, -0.981655,
		-0.865017, 0.499863, -0.043373,
		0.484639, 0.854783, 0.185664,
		38.066818, 36.227665, 45.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454815, 36.232906, 45.101482>,  <37.727570, 35.629318, 45.540825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454815, 36.232906, 45.101482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838432, 36.306183, 45.187897>,  <38.068604, 36.350147, 45.239746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838432, 36.306183, 45.187897>,  <37.454815, 36.232906, 45.101482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838432, 36.306183, 45.187897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181186, 0.189481, -0.965022,
		-0.217716, 0.964644, 0.148530,
		0.959047, 0.183189, 0.216033,
		38.126148, 36.361141, 45.252708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666683, 36.660770, 44.589619>,  <37.454815, 36.232906, 45.101482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666683, 36.660770, 44.589619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035439, 36.573399, 44.717628>,  <38.256691, 36.520973, 44.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035439, 36.573399, 44.717628>,  <37.666683, 36.660770, 44.589619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035439, 36.573399, 44.717628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365167, 0.213650, -0.906094,
		0.129548, 0.952176, 0.276726,
		0.921884, -0.218434, 0.320026,
		38.312004, 36.507870, 44.813637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149746, 37.272213, 44.375656>,  <37.666683, 36.660770, 44.589619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149746, 37.272213, 44.375656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394798, 36.962692, 44.440052>,  <38.541832, 36.776981, 44.478691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394798, 36.962692, 44.440052>,  <38.149746, 37.272213, 44.375656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394798, 36.962692, 44.440052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495089, 0.216933, -0.841324,
		0.616091, 0.595128, 0.515999,
		0.612633, -0.773798, 0.160990,
		38.578587, 36.730553, 44.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740597, 37.492275, 44.187134>,  <38.149746, 37.272213, 44.375656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740597, 37.492275, 44.187134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842381, 37.105446, 44.185143>,  <38.903450, 36.873348, 44.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842381, 37.105446, 44.185143>,  <38.740597, 37.492275, 44.187134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842381, 37.105446, 44.185143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497307, 0.135265, -0.856965,
		0.829419, 0.215588, 0.515351,
		0.254461, -0.967070, -0.004978,
		38.918720, 36.815323, 44.183651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450474, 37.406025, 43.996628>,  <38.740597, 37.492275, 44.187134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450474, 37.406025, 43.996628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276165, 37.055656, 43.913822>,  <39.171577, 36.845436, 43.864140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276165, 37.055656, 43.913822>,  <39.450474, 37.406025, 43.996628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276165, 37.055656, 43.913822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320325, 0.064009, -0.945143,
		0.841125, -0.478182, 0.252687,
		-0.435776, -0.875925, -0.207013,
		39.145432, 36.792877, 43.851719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998272, 37.046169, 43.594013>,  <39.450474, 37.406025, 43.996628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998272, 37.046169, 43.594013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640224, 36.880215, 43.528744>,  <39.425396, 36.780640, 43.489582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640224, 36.880215, 43.528744>,  <39.998272, 37.046169, 43.594013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640224, 36.880215, 43.528744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154438, 0.054780, -0.986483,
		0.418222, -0.908220, 0.015040,
		-0.895120, -0.414891, -0.163174,
		39.371689, 36.755749, 43.479790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247948, 36.706684, 43.160023>,  <39.998272, 37.046169, 43.594013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247948, 36.706684, 43.160023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853935, 36.702118, 43.091225>,  <39.617527, 36.699379, 43.049946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853935, 36.702118, 43.091225>,  <40.247948, 36.706684, 43.160023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853935, 36.702118, 43.091225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166885, 0.186579, -0.968162,
		0.043138, -0.982374, -0.181882,
		-0.985032, -0.011412, -0.171992,
		39.558426, 36.698692, 43.039627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975746, 36.094875, 42.643475>,  <40.247948, 36.706684, 43.160023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975746, 36.094875, 42.643475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711174, 36.392017, 42.602150>,  <39.552429, 36.570301, 42.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711174, 36.392017, 42.602150>,  <39.975746, 36.094875, 42.643475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711174, 36.392017, 42.602150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094259, -0.054316, -0.994065,
		-0.744056, -0.667246, -0.034094,
		-0.661434, 0.742854, -0.103308,
		39.512745, 36.614872, 42.571159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570675, 35.908405, 42.062233>,  <39.975746, 36.094875, 42.643475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570675, 35.908405, 42.062233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489231, 36.295910, 42.118855>,  <39.440365, 36.528412, 42.152828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489231, 36.295910, 42.118855>,  <39.570675, 35.908405, 42.062233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489231, 36.295910, 42.118855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057560, 0.132492, -0.989511,
		-0.977358, -0.209625, 0.028785,
		-0.203612, 0.968764, 0.141558,
		39.428146, 36.586540, 42.161324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997066, 36.028141, 41.669971>,  <39.570675, 35.908405, 42.062233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997066, 36.028141, 41.669971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146160, 36.396240, 41.717659>,  <39.235615, 36.617100, 41.746269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146160, 36.396240, 41.717659>,  <38.997066, 36.028141, 41.669971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146160, 36.396240, 41.717659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077531, 0.158907, -0.984245,
		-0.924695, 0.357616, 0.130578,
		0.372732, 0.920249, 0.119214,
		39.257980, 36.672314, 41.753422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566895, 36.569321, 41.374226>,  <38.997066, 36.028141, 41.669971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566895, 36.569321, 41.374226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920719, 36.753666, 41.402939>,  <39.133015, 36.864273, 41.420166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920719, 36.753666, 41.402939>,  <38.566895, 36.569321, 41.374226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920719, 36.753666, 41.402939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004781, 0.162850, -0.986639,
		-0.466399, 0.872400, 0.146254,
		0.884561, 0.460867, 0.071782,
		39.186089, 36.891926, 41.424473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432446, 37.194748, 41.022987>,  <38.566895, 36.569321, 41.374226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432446, 37.194748, 41.022987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827969, 37.135082, 41.023010>,  <39.065285, 37.099281, 41.023026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827969, 37.135082, 41.023010>,  <38.432446, 37.194748, 41.022987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827969, 37.135082, 41.023010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002760, 0.017899, -0.999836,
		0.149139, 0.988650, 0.018111,
		0.988812, -0.149165, 0.000059,
		39.124611, 37.090332, 41.023029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742577, 37.572006, 40.388565>,  <38.432446, 37.194748, 41.022987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742577, 37.572006, 40.388565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062767, 37.364319, 40.508331>,  <39.254883, 37.239704, 40.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062767, 37.364319, 40.508331>,  <38.742577, 37.572006, 40.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062767, 37.364319, 40.508331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458653, 0.209047, -0.863677,
		0.385847, 0.828679, 0.405479,
		0.800475, -0.519221, 0.299416,
		39.302910, 37.208553, 40.598156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385769, 37.995487, 40.257950>,  <38.742577, 37.572006, 40.388565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385769, 37.995487, 40.257950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482418, 37.607365, 40.262562>,  <39.540405, 37.374493, 40.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482418, 37.607365, 40.262562>,  <39.385769, 37.995487, 40.257950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482418, 37.607365, 40.262562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350075, 0.076076, -0.933627,
		0.905023, 0.229620, 0.358060,
		0.241620, -0.970303, 0.011534,
		39.554905, 37.316273, 40.266022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940434, 37.989609, 39.849102>,  <39.385769, 37.995487, 40.257950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940434, 37.989609, 39.849102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861462, 37.597485, 39.850609>,  <39.814079, 37.362209, 39.851513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861462, 37.597485, 39.850609>,  <39.940434, 37.989609, 39.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861462, 37.597485, 39.850609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321733, -0.068423, -0.944355,
		0.926017, -0.185235, 0.328907,
		-0.197433, -0.980309, 0.003764,
		39.802231, 37.303391, 39.851738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572449, 37.597523, 39.613735>,  <39.940434, 37.989609, 39.849102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572449, 37.597523, 39.613735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234314, 37.396477, 39.541306>,  <40.031433, 37.275848, 39.497849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234314, 37.396477, 39.541306>,  <40.572449, 37.597523, 39.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234314, 37.396477, 39.541306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187382, 0.038451, -0.981534,
		0.500299, -0.863653, 0.061677,
		-0.845334, -0.502618, -0.181070,
		39.980713, 37.245693, 39.486984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843563, 37.108757, 39.244240>,  <40.572449, 37.597523, 39.613735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843563, 37.108757, 39.244240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454735, 37.151791, 39.160805>,  <40.221439, 37.177612, 39.110744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454735, 37.151791, 39.160805>,  <40.843563, 37.108757, 39.244240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454735, 37.151791, 39.160805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197526, -0.104937, -0.974665,
		-0.126760, -0.988641, 0.080752,
		-0.972067, 0.107598, -0.208584,
		40.163113, 37.184067, 39.098228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546467, 36.581600, 38.702274>,  <40.843563, 37.108757, 39.244240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546467, 36.581600, 38.702274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382450, 36.945381, 38.674683>,  <40.284042, 37.163651, 38.658127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382450, 36.945381, 38.674683>,  <40.546467, 36.581600, 38.702274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382450, 36.945381, 38.674683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219737, 0.025104, -0.975236,
		-0.885203, -0.415041, -0.210134,
		-0.410038, 0.909456, -0.068978,
		40.259438, 37.218220, 38.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031494, 36.628563, 38.164658>,  <40.546467, 36.581600, 38.702274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031494, 36.628563, 38.164658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168732, 36.997375, 38.236374>,  <40.251072, 37.218662, 38.279404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168732, 36.997375, 38.236374>,  <40.031494, 36.628563, 38.164658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168732, 36.997375, 38.236374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376294, 0.039968, -0.925638,
		-0.860635, 0.385042, -0.333243,
		0.343090, 0.922033, 0.179287,
		40.271660, 37.273987, 38.290161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974525, 36.866405, 37.513599>,  <40.031494, 36.628563, 38.164658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974525, 36.866405, 37.513599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211605, 37.115551, 37.717854>,  <40.353851, 37.265038, 37.840405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211605, 37.115551, 37.717854>,  <39.974525, 36.866405, 37.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211605, 37.115551, 37.717854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580103, 0.109681, -0.807125,
		-0.558737, 0.774602, -0.296318,
		0.592700, 0.622865, 0.510632,
		40.389416, 37.302410, 37.871044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105659, 37.670410, 37.276024>,  <39.974525, 36.866405, 37.513599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105659, 37.670410, 37.276024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420040, 37.480537, 37.434498>,  <40.608669, 37.366615, 37.529583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420040, 37.480537, 37.434498>,  <40.105659, 37.670410, 37.276024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420040, 37.480537, 37.434498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547458, 0.236468, -0.802728,
		0.287353, 0.847799, 0.445719,
		0.785951, -0.474678, 0.396184,
		40.655827, 37.338135, 37.553352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768238, 38.132778, 37.246277>,  <40.105659, 37.670410, 37.276024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768238, 38.132778, 37.246277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784958, 37.733677, 37.225368>,  <40.794991, 37.494217, 37.212826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784958, 37.733677, 37.225368>,  <40.768238, 38.132778, 37.246277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784958, 37.733677, 37.225368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383343, 0.064325, -0.921363,
		0.922660, 0.018480, 0.385173,
		0.041803, -0.997758, -0.052266,
		40.797497, 37.434349, 37.209690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521687, 37.906956, 37.057346>,  <40.768238, 38.132778, 37.246277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521687, 37.906956, 37.057346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190571, 37.702271, 36.965336>,  <40.991901, 37.579460, 36.910130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190571, 37.702271, 36.965336>,  <41.521687, 37.906956, 37.057346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190571, 37.702271, 36.965336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095296, 0.275802, -0.956479,
		0.552883, -0.813686, -0.179542,
		-0.827792, -0.511711, -0.230028,
		40.942234, 37.548756, 36.896328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578423, 37.809422, 36.297073>,  <41.521687, 37.906956, 37.057346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578423, 37.809422, 36.297073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 37.722427, 36.408554>,  <40.979748, 37.670231, 36.475445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 37.722427, 36.408554>,  <41.578423, 37.809422, 36.297073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204250, 37.722427, 36.408554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320118, 0.186577, -0.928824,
		0.150010, -0.958064, -0.244151,
		-0.935426, -0.217489, 0.278705,
		40.923622, 37.657181, 36.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343906, 37.204342, 35.967743>,  <41.578423, 37.809422, 36.297073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343906, 37.204342, 35.967743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061878, 37.469090, 36.069569>,  <40.892662, 37.627937, 36.130665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061878, 37.469090, 36.069569>,  <41.343906, 37.204342, 35.967743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061878, 37.469090, 36.069569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267788, 0.083896, -0.959818,
		-0.656627, -0.744914, 0.118087,
		-0.705075, 0.661865, 0.254567,
		40.850357, 37.667648, 36.145939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115616, 36.675499, 35.532673>,  <41.343906, 37.204342, 35.967743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115616, 36.675499, 35.532673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447380, 36.534550, 35.359276>,  <41.646439, 36.449982, 35.255238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447380, 36.534550, 35.359276>,  <41.115616, 36.675499, 35.532673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447380, 36.534550, 35.359276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318478, -0.935775, 0.151317,
		-0.458973, 0.012555, -0.888362,
		0.829407, -0.352374, -0.433494,
		41.696201, 36.428837, 35.229229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955200, 36.310162, 34.886688>,  <41.115616, 36.675499, 35.532673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955200, 36.310162, 34.886688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289780, 36.157154, 35.043678>,  <41.490528, 36.065350, 35.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289780, 36.157154, 35.043678>,  <40.955200, 36.310162, 34.886688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289780, 36.157154, 35.043678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375666, -0.921602, -0.097594,
		0.399033, -0.065805, -0.914572,
		0.836450, -0.382517, 0.392471,
		41.540714, 36.042400, 35.161419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053402, 35.596687, 34.537258>,  <40.955200, 36.310162, 34.886688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053402, 35.596687, 34.537258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356346, 35.565350, 34.796570>,  <41.538113, 35.546547, 34.952156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356346, 35.565350, 34.796570>,  <41.053402, 35.596687, 34.537258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356346, 35.565350, 34.796570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092768, -0.995616, -0.011941,
		0.646373, -0.051096, -0.761309,
		0.757361, -0.078344, 0.648279,
		41.583553, 35.541847, 34.991055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522507, 34.967129, 34.399628>,  <41.053402, 35.596687, 34.537258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522507, 34.967129, 34.399628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642471, 35.023483, 34.777031>,  <41.714451, 35.057297, 35.003471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642471, 35.023483, 34.777031>,  <41.522507, 34.967129, 34.399628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642471, 35.023483, 34.777031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017416, -0.989678, 0.142245,
		0.953807, -0.026230, -0.299273,
		0.299915, 0.140886, 0.943505,
		41.732445, 35.065750, 35.060081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013981, 34.456726, 34.482143>,  <41.522507, 34.967129, 34.399628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013981, 34.456726, 34.482143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860146, 34.552670, 34.838696>,  <41.767845, 34.610237, 35.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860146, 34.552670, 34.838696>,  <42.013981, 34.456726, 34.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860146, 34.552670, 34.838696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002426, -0.965910, 0.258867,
		0.923086, 0.097394, 0.372058,
		-0.384586, 0.239859, 0.891382,
		41.744770, 34.624626, 35.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411507, 34.032070, 34.962227>,  <42.013981, 34.456726, 34.482143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411507, 34.032070, 34.962227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056499, 34.131180, 35.117622>,  <41.843494, 34.190647, 35.210861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056499, 34.131180, 35.117622>,  <42.411507, 34.032070, 34.962227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056499, 34.131180, 35.117622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137122, -0.946938, 0.290698,
		0.439902, 0.204729, 0.874398,
		-0.887515, 0.247778, 0.388487,
		41.790245, 34.205513, 35.234169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417423, 33.684944, 35.570210>,  <42.411507, 34.032070, 34.962227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417423, 33.684944, 35.570210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031563, 33.770615, 35.508781>,  <41.800049, 33.822018, 35.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031563, 33.770615, 35.508781>,  <42.417423, 33.684944, 35.570210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031563, 33.770615, 35.508781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237004, -0.959841, 0.150113,
		-0.115255, 0.181204, 0.976668,
		-0.964648, 0.214173, -0.153573,
		41.742168, 33.834866, 35.462711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072750, 33.418442, 36.151119>,  <42.417423, 33.684944, 35.570210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072750, 33.418442, 36.151119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771198, 33.436295, 35.888924>,  <41.590267, 33.447006, 35.731606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771198, 33.436295, 35.888924>,  <42.072750, 33.418442, 36.151119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771198, 33.436295, 35.888924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359454, -0.863148, 0.354638,
		-0.549960, 0.502975, 0.666754,
		-0.753881, 0.044631, -0.655493,
		41.545033, 33.449684, 35.692276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529758, 33.197971, 36.550274>,  <42.072750, 33.418442, 36.151119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529758, 33.197971, 36.550274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402824, 33.145870, 36.174541>,  <41.326664, 33.114609, 35.949104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402824, 33.145870, 36.174541>,  <41.529758, 33.197971, 36.550274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402824, 33.145870, 36.174541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372169, -0.893949, 0.249689,
		-0.872233, 0.428823, 0.235204,
		-0.317333, -0.130251, -0.939327,
		41.307625, 33.106796, 35.892742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776421, 32.984921, 36.563461>,  <41.529758, 33.197971, 36.550274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776421, 32.984921, 36.563461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926170, 32.887142, 36.205669>,  <41.016018, 32.828476, 35.990993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926170, 32.887142, 36.205669>,  <40.776421, 32.984921, 36.563461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926170, 32.887142, 36.205669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235080, -0.958134, 0.163450,
		-0.896986, 0.149083, -0.416161,
		0.374371, -0.244444, -0.894480,
		41.038483, 32.813808, 35.937325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337826, 32.563515, 36.224934>,  <40.776421, 32.984921, 36.563461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337826, 32.563515, 36.224934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677662, 32.469128, 36.036251>,  <40.881565, 32.412495, 35.923042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677662, 32.469128, 36.036251>,  <40.337826, 32.563515, 36.224934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677662, 32.469128, 36.036251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177544, -0.970095, 0.165509,
		-0.496658, -0.056866, -0.866081,
		0.849593, -0.235969, -0.471709,
		40.932541, 32.398338, 35.894737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128212, 32.155483, 35.735165>,  <40.337826, 32.563515, 36.224934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128212, 32.155483, 35.735165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510994, 32.082905, 35.825779>,  <40.740662, 32.039360, 35.880150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510994, 32.082905, 35.825779>,  <40.128212, 32.155483, 35.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510994, 32.082905, 35.825779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236592, -0.939760, 0.246731,
		0.168124, -0.289707, -0.942234,
		0.956953, -0.181444, 0.226539,
		40.798080, 32.028473, 35.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222450, 31.568954, 35.400143>,  <40.128212, 32.155483, 35.735165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222450, 31.568954, 35.400143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509502, 31.563873, 35.678665>,  <40.681736, 31.560823, 35.845779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509502, 31.563873, 35.678665>,  <40.222450, 31.568954, 35.400143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509502, 31.563873, 35.678665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120276, -0.987070, 0.105951,
		0.685954, -0.159783, -0.709884,
		0.717635, -0.012704, 0.696303,
		40.724792, 31.560062, 35.887558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609474, 30.864265, 35.265694>,  <40.222450, 31.568954, 35.400143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609474, 30.864265, 35.265694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711529, 30.984716, 35.633221>,  <40.772762, 31.056988, 35.853737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711529, 30.984716, 35.633221>,  <40.609474, 30.864265, 35.265694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711529, 30.984716, 35.633221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110094, -0.953135, 0.281804,
		0.960618, 0.029259, -0.276329,
		0.255133, 0.301128, 0.918819,
		40.788067, 31.075054, 35.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106567, 30.426367, 35.454292>,  <40.609474, 30.864265, 35.265694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106567, 30.426367, 35.454292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004433, 30.571871, 35.812618>,  <40.943150, 30.659174, 36.027615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004433, 30.571871, 35.812618>,  <41.106567, 30.426367, 35.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004433, 30.571871, 35.812618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153351, -0.899560, 0.408993,
		0.954612, 0.241806, 0.173910,
		-0.255340, 0.363761, 0.895812,
		40.927830, 30.681000, 36.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609020, 30.141731, 35.913506>,  <41.106567, 30.426367, 35.454292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609020, 30.141731, 35.913506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304512, 30.229326, 36.157642>,  <41.121807, 30.281883, 36.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304512, 30.229326, 36.157642>,  <41.609020, 30.141731, 35.913506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304512, 30.229326, 36.157642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230850, -0.788051, 0.570687,
		0.605949, 0.575344, 0.549368,
		-0.761271, 0.218985, 0.610337,
		41.076130, 30.295021, 36.340744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865482, 30.085594, 36.603748>,  <41.609020, 30.141731, 35.913506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865482, 30.085594, 36.603748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469154, 30.031649, 36.600143>,  <41.231358, 29.999281, 36.597980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469154, 30.031649, 36.600143>,  <41.865482, 30.085594, 36.603748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469154, 30.031649, 36.600143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120130, -0.909219, 0.398609,
		-0.061954, 0.393868, 0.917077,
		-0.990823, -0.134864, -0.009015,
		41.171906, 29.991190, 36.597439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795795, 29.682112, 37.084156>,  <41.865482, 30.085594, 36.603748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795795, 29.682112, 37.084156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424931, 29.638350, 36.940819>,  <41.202412, 29.612091, 36.854816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424931, 29.638350, 36.940819>,  <41.795795, 29.682112, 37.084156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424931, 29.638350, 36.940819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021536, -0.939272, 0.342497,
		-0.374049, 0.325266, 0.868498,
		-0.927159, -0.109407, -0.358339,
		41.146782, 29.605528, 36.833317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311283, 29.385458, 37.669552>,  <41.795795, 29.682112, 37.084156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311283, 29.385458, 37.669552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136288, 29.312454, 37.317348>,  <41.031292, 29.268652, 37.106026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136288, 29.312454, 37.317348>,  <41.311283, 29.385458, 37.669552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136288, 29.312454, 37.317348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275562, -0.904866, 0.324474,
		-0.855963, 0.384588, 0.345572,
		-0.437485, -0.182512, -0.880509,
		41.005043, 29.257700, 37.053196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681931, 28.900843, 37.871601>,  <41.311283, 29.385458, 37.669552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681931, 28.900843, 37.871601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742004, 28.874620, 37.477009>,  <40.778049, 28.858887, 37.240253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742004, 28.874620, 37.477009>,  <40.681931, 28.900843, 37.871601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742004, 28.874620, 37.477009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009172, -0.997849, 0.064916,
		-0.988615, -0.000701, -0.150467,
		0.150189, -0.065557, -0.986482,
		40.787060, 28.854954, 37.181065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160873, 28.439411, 37.489777>,  <40.681931, 28.900843, 37.871601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160873, 28.439411, 37.489777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506393, 28.452686, 37.288685>,  <40.713707, 28.460651, 37.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506393, 28.452686, 37.288685>,  <40.160873, 28.439411, 37.489777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506393, 28.452686, 37.288685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072798, -0.995579, 0.059359,
		-0.498540, -0.087872, -0.862401,
		0.863804, 0.033189, -0.502733,
		40.765533, 28.462643, 37.137863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129635, 27.988684, 37.040157>,  <40.160873, 28.439411, 37.489777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129635, 27.988684, 37.040157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516701, 28.049147, 37.120934>,  <40.748940, 28.085424, 37.169399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516701, 28.049147, 37.120934>,  <40.129635, 27.988684, 37.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516701, 28.049147, 37.120934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119688, -0.979849, 0.159908,
		0.222044, -0.130567, -0.966255,
		0.967663, 0.151156, 0.201942,
		40.806999, 28.094494, 37.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002682, 27.637859, 37.690647>,  <40.129635, 27.988684, 37.040157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002682, 27.637859, 37.690647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874733, 27.985048, 37.842598>,  <39.797962, 28.193361, 37.933769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874733, 27.985048, 37.842598>,  <40.002682, 27.637859, 37.690647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874733, 27.985048, 37.842598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532182, -0.167124, 0.829971,
		0.783878, 0.467649, -0.408460,
		-0.319872, 0.867971, 0.379879,
		39.778770, 28.245440, 37.956562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574066, 28.019783, 37.990349>,  <40.002682, 27.637859, 37.690647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574066, 28.019783, 37.990349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228298, 28.094076, 38.177235>,  <40.020840, 28.138653, 38.289368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228298, 28.094076, 38.177235>,  <40.574066, 28.019783, 37.990349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228298, 28.094076, 38.177235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452569, -0.117354, 0.883974,
		0.219013, 0.975567, 0.017386,
		-0.864416, 0.185733, 0.467214,
		39.968975, 28.149796, 38.317398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060997, 27.658371, 38.546196>,  <40.574066, 28.019783, 37.990349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060997, 27.658371, 38.546196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184525, 27.792454, 38.190159>,  <41.258640, 27.872904, 37.976536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184525, 27.792454, 38.190159>,  <41.060997, 27.658371, 38.546196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184525, 27.792454, 38.190159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824331, 0.372505, 0.426285,
		0.474458, -0.865376, -0.161286,
		0.308817, 0.335208, -0.890094,
		41.277168, 27.893017, 37.923130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693363, 27.347879, 38.547413>,  <41.060997, 27.658371, 38.546196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693363, 27.347879, 38.547413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678753, 27.652086, 38.288097>,  <41.669987, 27.834610, 38.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678753, 27.652086, 38.288097>,  <41.693363, 27.347879, 38.547413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678753, 27.652086, 38.288097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869669, 0.343757, 0.354270,
		0.492282, -0.550858, -0.673954,
		-0.036524, 0.760517, -0.648290,
		41.667797, 27.880241, 38.093609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204212, 27.267149, 38.038822>,  <41.693363, 27.347879, 38.547413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204212, 27.267149, 38.038822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114979, 27.643450, 38.140972>,  <42.061440, 27.869230, 38.202263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114979, 27.643450, 38.140972>,  <42.204212, 27.267149, 38.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114979, 27.643450, 38.140972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968409, 0.183931, 0.168381,
		0.111433, 0.284875, -0.952066,
		-0.223082, 0.940753, 0.255379,
		42.048054, 27.925676, 38.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958649, 27.182825, 38.139244>,  <42.204212, 27.267149, 38.038822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958649, 27.182825, 38.139244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326229, 27.118713, 37.995113>,  <43.546780, 27.080246, 37.908634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326229, 27.118713, 37.995113>,  <42.958649, 27.182825, 38.139244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326229, 27.118713, 37.995113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221584, 0.965672, 0.135566,
		0.326227, -0.204422, 0.922924,
		0.918954, -0.160280, -0.360325,
		43.601913, 27.070629, 37.887016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506203, 27.394476, 38.637650>,  <42.958649, 27.182825, 38.139244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506203, 27.394476, 38.637650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645012, 27.433580, 38.264549>,  <43.728298, 27.457043, 38.040691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645012, 27.433580, 38.264549>,  <43.506203, 27.394476, 38.637650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645012, 27.433580, 38.264549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060347, 0.994819, 0.081817,
		0.935912, 0.027896, 0.351127,
		0.347025, 0.097764, -0.932747,
		43.749119, 27.462910, 37.984726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133343, 27.881344, 38.540920>,  <43.506203, 27.394476, 38.637650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133343, 27.881344, 38.540920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948116, 27.871967, 38.186516>,  <43.836979, 27.866341, 37.973873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948116, 27.871967, 38.186516>,  <44.133343, 27.881344, 38.540920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948116, 27.871967, 38.186516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021501, 0.999059, -0.037670,
		0.886061, -0.036494, -0.462130,
		-0.463070, -0.023442, -0.886012,
		43.809196, 27.864935, 37.920712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564007, 28.113319, 38.050362>,  <44.133343, 27.881344, 38.540920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564007, 28.113319, 38.050362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179073, 28.192001, 37.975288>,  <43.948112, 28.239210, 37.930244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179073, 28.192001, 37.975288>,  <44.564007, 28.113319, 38.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179073, 28.192001, 37.975288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172242, 0.975209, 0.138928,
		0.210357, 0.101367, -0.972355,
		-0.962332, 0.196705, -0.187682,
		43.890373, 28.251013, 37.918983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613750, 28.619236, 37.632004>,  <44.564007, 28.113319, 38.050362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613750, 28.619236, 37.632004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271896, 28.633068, 37.839237>,  <44.066784, 28.641367, 37.963577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271896, 28.633068, 37.839237>,  <44.613750, 28.619236, 37.632004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271896, 28.633068, 37.839237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125568, 0.981928, 0.141596,
		-0.503820, 0.186067, -0.843531,
		-0.854633, 0.034582, 0.518080,
		44.015507, 28.643442, 37.994659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081257, 28.881435, 37.130100>,  <44.613750, 28.619236, 37.632004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081257, 28.881435, 37.130100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963741, 28.939728, 37.507977>,  <43.893230, 28.974703, 37.734703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963741, 28.939728, 37.507977>,  <44.081257, 28.881435, 37.130100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963741, 28.939728, 37.507977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226322, 0.949602, -0.216873,
		-0.928690, -0.277520, -0.246004,
		-0.293792, 0.145731, 0.944695,
		43.875603, 28.983448, 37.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568497, 29.252586, 37.007561>,  <44.081257, 28.881435, 37.130100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568497, 29.252586, 37.007561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624531, 29.303106, 37.400379>,  <43.658154, 29.333418, 37.636070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624531, 29.303106, 37.400379>,  <43.568497, 29.252586, 37.007561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624531, 29.303106, 37.400379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234679, 0.967805, -0.090991,
		-0.961925, -0.217720, 0.165220,
		0.140090, 0.126300, 0.982051,
		43.666557, 29.340996, 37.694996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073174, 29.625347, 37.171612>,  <43.568497, 29.252586, 37.007561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073174, 29.625347, 37.171612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341393, 29.712479, 37.455276>,  <43.502323, 29.764757, 37.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341393, 29.712479, 37.455276>,  <43.073174, 29.625347, 37.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341393, 29.712479, 37.455276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279185, 0.959743, -0.030817,
		-0.687329, -0.177323, 0.704369,
		0.670549, 0.217831, 0.709165,
		43.542557, 29.777828, 37.668026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762463, 30.165222, 37.535320>,  <43.073174, 29.625347, 37.171612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762463, 30.165222, 37.535320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130890, 30.179235, 37.690453>,  <43.351944, 30.187643, 37.783531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130890, 30.179235, 37.690453>,  <42.762463, 30.165222, 37.535320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130890, 30.179235, 37.690453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111454, 0.977997, 0.176350,
		-0.373115, -0.205655, 0.904705,
		0.921066, 0.035034, 0.387827,
		43.407211, 30.189745, 37.806801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595886, 30.569809, 38.095642>,  <42.762463, 30.165222, 37.535320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595886, 30.569809, 38.095642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981701, 30.593151, 37.992680>,  <43.213192, 30.607157, 37.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981701, 30.593151, 37.992680>,  <42.595886, 30.569809, 38.095642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981701, 30.593151, 37.992680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082538, 0.993028, -0.084157,
		0.250705, 0.102419, 0.962630,
		0.964538, 0.058355, -0.257410,
		43.271061, 30.610657, 37.915455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786411, 31.128435, 38.337639>,  <42.595886, 30.569809, 38.095642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786411, 31.128435, 38.337639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090469, 31.066719, 38.085171>,  <43.272903, 31.029690, 37.933689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090469, 31.066719, 38.085171>,  <42.786411, 31.128435, 38.337639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090469, 31.066719, 38.085171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068059, 0.984961, -0.158804,
		0.646184, 0.077756, 0.759210,
		0.760141, -0.154288, -0.631175,
		43.318512, 31.020433, 37.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401295, 31.557922, 38.582363>,  <42.786411, 31.128435, 38.337639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401295, 31.557922, 38.582363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483753, 31.492319, 38.196491>,  <43.533230, 31.452957, 37.964970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483753, 31.492319, 38.196491>,  <43.401295, 31.557922, 38.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483753, 31.492319, 38.196491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258127, 0.960048, -0.108059,
		0.943861, -0.226734, 0.240244,
		0.206145, -0.164007, -0.964679,
		43.545597, 31.443117, 37.907089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044796, 31.881500, 38.449165>,  <43.401295, 31.557922, 38.582363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044796, 31.881500, 38.449165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873116, 31.822330, 38.092758>,  <43.770107, 31.786829, 37.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873116, 31.822330, 38.092758>,  <44.044796, 31.881500, 38.449165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873116, 31.822330, 38.092758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365826, 0.873487, -0.321233,
		0.825809, -0.463829, -0.320784,
		-0.429198, -0.147926, -0.891014,
		43.744358, 31.777952, 37.825455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600975, 32.008137, 37.993908>,  <44.044796, 31.881500, 38.449165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600975, 32.008137, 37.993908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266060, 32.031948, 37.776501>,  <44.065113, 32.046234, 37.646057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266060, 32.031948, 37.776501>,  <44.600975, 32.008137, 37.993908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266060, 32.031948, 37.776501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371546, 0.791227, -0.485710,
		0.401130, -0.608619, -0.684600,
		-0.837286, 0.059527, -0.543515,
		44.014874, 32.049805, 37.613445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781006, 32.069279, 37.259827>,  <44.600975, 32.008137, 37.993908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781006, 32.069279, 37.259827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415291, 32.223927, 37.308167>,  <44.195862, 32.316715, 37.337170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415291, 32.223927, 37.308167>,  <44.781006, 32.069279, 37.259827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415291, 32.223927, 37.308167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199418, 0.689306, -0.696483,
		-0.352575, -0.612687, -0.707323,
		-0.914289, 0.386615, 0.120851,
		44.141003, 32.339912, 37.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563663, 32.129307, 36.469124>,  <44.781006, 32.069279, 37.259827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563663, 32.129307, 36.469124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336704, 32.357487, 36.706657>,  <44.200527, 32.494396, 36.849178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336704, 32.357487, 36.706657>,  <44.563663, 32.129307, 36.469124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336704, 32.357487, 36.706657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026933, 0.733631, -0.679014,
		-0.823001, -0.369279, -0.431627,
		-0.567400, 0.570454, 0.593834,
		44.166485, 32.528622, 36.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998688, 32.311028, 36.042271>,  <44.563663, 32.129307, 36.469124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998688, 32.311028, 36.042271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013462, 32.595203, 36.323387>,  <44.022327, 32.765709, 36.492058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013462, 32.595203, 36.323387>,  <43.998688, 32.311028, 36.042271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013462, 32.595203, 36.323387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060820, 0.703564, -0.708025,
		-0.997465, -0.016591, 0.069197,
		0.036937, 0.710438, 0.702789,
		44.024544, 32.808334, 36.534225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477562, 32.794918, 35.808681>,  <43.998688, 32.311028, 36.042271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477562, 32.794918, 35.808681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712296, 32.988876, 36.068066>,  <43.853134, 33.105251, 36.223698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712296, 32.988876, 36.068066>,  <43.477562, 32.794918, 35.808681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712296, 32.988876, 36.068066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041542, 0.781775, -0.622175,
		-0.808641, 0.392052, 0.438628,
		0.586833, 0.484895, 0.648463,
		43.888344, 33.134346, 36.262604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334286, 33.417351, 35.663731>,  <43.477562, 32.794918, 35.808681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334286, 33.417351, 35.663731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656765, 33.492920, 35.888000>,  <43.850250, 33.538261, 36.022564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656765, 33.492920, 35.888000>,  <43.334286, 33.417351, 35.663731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656765, 33.492920, 35.888000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063352, 0.914638, -0.399279,
		-0.588247, 0.357417, 0.725409,
		0.806196, 0.188919, 0.560676,
		43.898624, 33.549595, 36.056202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299332, 34.081650, 36.036240>,  <43.334286, 33.417351, 35.663731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299332, 34.081650, 36.036240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688122, 34.001583, 35.986931>,  <43.921398, 33.953545, 35.957348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688122, 34.001583, 35.986931>,  <43.299332, 34.081650, 36.036240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688122, 34.001583, 35.986931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147982, 0.928438, -0.340739,
		0.182652, 0.312949, 0.932041,
		0.971977, -0.200162, -0.123270,
		43.979713, 33.941536, 35.949951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584534, 34.664913, 36.200912>,  <43.299332, 34.081650, 36.036240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584534, 34.664913, 36.200912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879490, 34.473335, 36.010391>,  <44.056465, 34.358387, 35.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879490, 34.473335, 36.010391>,  <43.584534, 34.664913, 36.200912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879490, 34.473335, 36.010391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217622, 0.836000, -0.503730,
		0.639447, 0.267794, 0.720690,
		0.737393, -0.478947, -0.476301,
		44.100708, 34.329651, 35.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175446, 35.157024, 36.216412>,  <43.584534, 34.664913, 36.200912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175446, 35.157024, 36.216412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233570, 34.884186, 35.929737>,  <44.268444, 34.720482, 35.757732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233570, 34.884186, 35.929737>,  <44.175446, 35.157024, 36.216412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233570, 34.884186, 35.929737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375226, 0.708250, -0.597986,
		0.915472, -0.182023, 0.358856,
		0.145313, -0.682092, -0.716683,
		44.277164, 34.679558, 35.714733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880013, 35.137501, 36.055149>,  <44.175446, 35.157024, 36.216412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880013, 35.137501, 36.055149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669151, 35.004574, 35.742310>,  <44.542637, 34.924816, 35.554607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669151, 35.004574, 35.742310>,  <44.880013, 35.137501, 36.055149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669151, 35.004574, 35.742310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327092, 0.770098, -0.547686,
		0.784301, -0.544529, -0.297254,
		-0.527145, -0.332321, -0.782100,
		44.511005, 34.904877, 35.507679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321445, 35.331631, 35.560596>,  <44.880013, 35.137501, 36.055149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321445, 35.331631, 35.560596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992512, 35.230999, 35.356453>,  <44.795151, 35.170620, 35.233967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992512, 35.230999, 35.356453>,  <45.321445, 35.331631, 35.560596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992512, 35.230999, 35.356453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185684, 0.729188, -0.658640,
		0.537848, -0.636391, -0.552925,
		-0.822339, -0.251579, -0.510360,
		44.745811, 35.155525, 35.203346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529572, 35.297722, 34.868885>,  <45.321445, 35.331631, 35.560596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529572, 35.297722, 34.868885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132431, 35.343819, 34.856407>,  <44.894146, 35.371479, 34.848919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132431, 35.343819, 34.856407>,  <45.529572, 35.297722, 34.868885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132431, 35.343819, 34.856407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105129, 0.719981, -0.685985,
		-0.056594, -0.684358, -0.726946,
		-0.992847, 0.115246, -0.031199,
		44.834576, 35.378391, 34.847046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118504, 35.353939, 35.270752>,  <45.529572, 35.297722, 34.868885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118504, 35.353939, 35.270752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386658, 35.645115, 35.328281>,  <46.547550, 35.819820, 35.362801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386658, 35.645115, 35.328281>,  <46.118504, 35.353939, 35.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386658, 35.645115, 35.328281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731322, -0.680982, 0.037828,
		0.125479, 0.079823, -0.988880,
		0.670390, 0.727936, 0.143825,
		46.587776, 35.863495, 35.371429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732876, 35.065475, 35.048008>,  <46.118504, 35.353939, 35.270752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732876, 35.065475, 35.048008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.876537, 35.380100, 35.248936>,  <46.962734, 35.568874, 35.369492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.876537, 35.380100, 35.248936>,  <46.732876, 35.065475, 35.048008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.876537, 35.380100, 35.248936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925472, -0.369633, -0.082911,
		0.120458, 0.494657, -0.860700,
		0.359155, 0.786566, 0.502316,
		46.984283, 35.616070, 35.399632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258236, 35.288410, 34.733471>,  <46.732876, 35.065475, 35.048008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258236, 35.288410, 34.733471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343624, 35.442707, 35.092499>,  <47.394855, 35.535286, 35.307915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343624, 35.442707, 35.092499>,  <47.258236, 35.288410, 34.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343624, 35.442707, 35.092499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952266, -0.287379, -0.102971,
		0.218223, 0.876707, -0.428676,
		0.213468, 0.385743, 0.897571,
		47.407665, 35.558430, 35.361771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913364, 35.397156, 35.065762>,  <47.258236, 35.288410, 34.733471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913364, 35.397156, 35.065762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686256, 35.071651, 35.016079>,  <47.549992, 34.876347, 34.986267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686256, 35.071651, 35.016079>,  <47.913364, 35.397156, 35.065762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686256, 35.071651, 35.016079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403653, -0.406721, 0.819538,
		-0.717430, 0.415168, 0.559401,
		-0.567766, -0.813765, -0.124210,
		47.515926, 34.827522, 34.978817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.068188, 36.212029, 46.515644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829605, 35.905640, 46.419701>,  <31.686457, 35.721806, 46.362133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829605, 35.905640, 46.419701>,  <32.068188, 36.212029, 46.515644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829605, 35.905640, 46.419701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271729, 0.088495, -0.958297,
		0.755254, -0.636755, 0.155354,
		-0.596452, -0.765971, -0.239861,
		31.650669, 35.675850, 46.347744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480900, 35.769920, 46.106979>,  <32.068188, 36.212029, 46.515644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480900, 35.769920, 46.106979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.101227, 35.672104, 46.027737>,  <31.873423, 35.613415, 45.980190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.101227, 35.672104, 46.027737>,  <32.480900, 35.769920, 46.106979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101227, 35.672104, 46.027737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231361, -0.115467, -0.965991,
		0.213352, -0.962739, 0.166177,
		-0.949185, -0.244543, -0.198105,
		31.816471, 35.598740, 45.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557842, 35.292538, 45.653637>,  <32.480900, 35.769920, 46.106979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557842, 35.292538, 45.653637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.177898, 35.403019, 45.595009>,  <31.949932, 35.469307, 45.559834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.177898, 35.403019, 45.595009>,  <32.557842, 35.292538, 45.653637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177898, 35.403019, 45.595009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127008, -0.087537, -0.988031,
		-0.285729, -0.957104, 0.048067,
		-0.949857, 0.276204, -0.146572,
		31.892941, 35.485878, 45.551037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320316, 34.806152, 45.274925>,  <32.557842, 35.292538, 45.653637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320316, 34.806152, 45.274925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059216, 35.098190, 45.194057>,  <31.902554, 35.273415, 45.145538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059216, 35.098190, 45.194057>,  <32.320316, 34.806152, 45.274925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059216, 35.098190, 45.194057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151072, -0.136056, -0.979115,
		-0.742352, -0.669666, -0.021485,
		-0.652756, 0.730093, -0.202169,
		31.863388, 35.317219, 45.133408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931398, 34.575436, 44.655018>,  <32.320316, 34.806152, 45.274925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931398, 34.575436, 44.655018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.852165, 34.966988, 44.634796>,  <31.804626, 35.201920, 44.622662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.852165, 34.966988, 44.634796>,  <31.931398, 34.575436, 44.655018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852165, 34.966988, 44.634796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208819, -0.008248, -0.977920,
		-0.957684, -0.204265, -0.202776,
		-0.198082, 0.978881, -0.050554,
		31.792740, 35.260651, 44.619629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508579, 34.607761, 44.061302>,  <31.931398, 34.575436, 44.655018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508579, 34.607761, 44.061302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628922, 34.982559, 44.132320>,  <31.701126, 35.207439, 44.174931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628922, 34.982559, 44.132320>,  <31.508579, 34.607761, 44.061302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628922, 34.982559, 44.132320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183000, 0.125986, -0.975007,
		-0.935948, 0.325825, -0.133567,
		0.300854, 0.936998, 0.177542,
		31.719177, 35.263660, 44.185581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113688, 35.168358, 43.480000>,  <31.508579, 34.607761, 44.061302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113688, 35.168358, 43.480000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464693, 35.278625, 43.636959>,  <31.675297, 35.344784, 43.731136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464693, 35.278625, 43.636959>,  <31.113688, 35.168358, 43.480000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464693, 35.278625, 43.636959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369497, 0.132917, -0.919676,
		-0.305679, 0.952020, 0.014779,
		0.877515, 0.275665, 0.392399,
		31.727947, 35.361324, 43.754681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216972, 35.740112, 43.031662>,  <31.113688, 35.168358, 43.480000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216972, 35.740112, 43.031662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.572880, 35.650017, 43.190445>,  <31.786425, 35.595959, 43.285717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.572880, 35.650017, 43.190445>,  <31.216972, 35.740112, 43.031662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572880, 35.650017, 43.190445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446599, 0.250317, -0.859006,
		0.094115, 0.941599, 0.323315,
		0.889770, -0.225238, 0.396959,
		31.839811, 35.582447, 43.309532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641647, 36.270519, 42.858349>,  <31.216972, 35.740112, 43.031662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641647, 36.270519, 42.858349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897785, 35.972878, 42.934528>,  <32.051468, 35.794292, 42.980236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.897785, 35.972878, 42.934528>,  <31.641647, 36.270519, 42.858349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897785, 35.972878, 42.934528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404102, 0.115514, -0.907391,
		0.653192, 0.658003, 0.374662,
		0.640345, -0.744102, 0.190448,
		32.089890, 35.749645, 42.991661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244030, 36.505333, 42.499432>,  <31.641647, 36.270519, 42.858349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244030, 36.505333, 42.499432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317940, 36.119701, 42.575752>,  <32.362286, 35.888321, 42.621544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317940, 36.119701, 42.575752>,  <32.244030, 36.505333, 42.499432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317940, 36.119701, 42.575752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591974, -0.045793, -0.804655,
		0.784490, 0.261633, 0.562249,
		0.184777, -0.964081, 0.190804,
		32.373371, 35.830479, 42.632992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854961, 36.410385, 42.404854>,  <32.244030, 36.505333, 42.499432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854961, 36.410385, 42.404854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769482, 36.019627, 42.405663>,  <32.718193, 35.785172, 42.406147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769482, 36.019627, 42.405663>,  <32.854961, 36.410385, 42.404854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769482, 36.019627, 42.405663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731938, -0.161486, -0.661959,
		0.646993, -0.139976, 0.749537,
		-0.213699, -0.976898, 0.002026,
		32.705372, 35.726559, 42.406269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537434, 36.025593, 42.601963>,  <32.854961, 36.410385, 42.404854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537434, 36.025593, 42.601963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294273, 35.790558, 42.388348>,  <33.148376, 35.649536, 42.260178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294273, 35.790558, 42.388348>,  <33.537434, 36.025593, 42.601963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294273, 35.790558, 42.388348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751335, -0.208149, -0.626235,
		0.256807, -0.781932, 0.568008,
		-0.607903, -0.587586, -0.534039,
		33.111904, 35.614281, 42.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896271, 35.458286, 42.509720>,  <33.537434, 36.025593, 42.601963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896271, 35.458286, 42.509720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615108, 35.445831, 42.225479>,  <33.446411, 35.438358, 42.054935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615108, 35.445831, 42.225479>,  <33.896271, 35.458286, 42.509720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615108, 35.445831, 42.225479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710018, -0.090205, -0.698382,
		-0.042353, -0.995436, 0.085515,
		-0.702908, -0.031139, -0.710598,
		33.404236, 35.436489, 42.012299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087608, 34.911106, 42.130672>,  <33.896271, 35.458286, 42.509720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087608, 34.911106, 42.130672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861443, 35.153381, 41.906727>,  <33.725742, 35.298744, 41.772358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861443, 35.153381, 41.906727>,  <34.087608, 34.911106, 42.130672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861443, 35.153381, 41.906727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696105, -0.013681, -0.717809,
		-0.442427, -0.795586, -0.413886,
		-0.565417, 0.605686, -0.559864,
		33.691818, 35.335087, 41.738766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154640, 34.644390, 41.469265>,  <34.087608, 34.911106, 42.130672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154640, 34.644390, 41.469265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044792, 35.020908, 41.390732>,  <33.978882, 35.246819, 41.343613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044792, 35.020908, 41.390732>,  <34.154640, 34.644390, 41.469265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044792, 35.020908, 41.390732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524207, -0.024612, -0.851235,
		-0.806095, -0.336689, -0.486674,
		-0.274623, 0.941294, -0.196334,
		33.962406, 35.303295, 41.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988785, 34.617970, 40.776951>,  <34.154640, 34.644390, 41.469265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988785, 34.617970, 40.776951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059181, 35.000423, 40.870625>,  <34.101421, 35.229897, 40.926826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059181, 35.000423, 40.870625>,  <33.988785, 34.617970, 40.776951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059181, 35.000423, 40.870625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432087, 0.138720, -0.891099,
		-0.884493, 0.258015, -0.388717,
		0.175994, 0.956130, 0.234182,
		34.111980, 35.287262, 40.940880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685738, 35.084290, 40.266129>,  <33.988785, 34.617970, 40.776951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685738, 35.084290, 40.266129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948158, 35.314400, 40.461533>,  <34.105610, 35.452465, 40.578777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948158, 35.314400, 40.461533>,  <33.685738, 35.084290, 40.266129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948158, 35.314400, 40.461533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395528, 0.289191, -0.871737,
		-0.642766, 0.765129, -0.037814,
		0.656056, 0.575280, 0.488512,
		34.144974, 35.486984, 40.608086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682171, 35.663071, 39.862274>,  <33.685738, 35.084290, 40.266129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682171, 35.663071, 39.862274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017273, 35.717350, 40.073845>,  <34.218334, 35.749916, 40.200787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017273, 35.717350, 40.073845>,  <33.682171, 35.663071, 39.862274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017273, 35.717350, 40.073845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425290, 0.445397, -0.787877,
		-0.342494, 0.884990, 0.315420,
		0.837751, 0.135698, 0.528923,
		34.268597, 35.758060, 40.232521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916122, 36.411709, 39.723030>,  <33.682171, 35.663071, 39.862274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916122, 36.411709, 39.723030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241295, 36.232864, 39.872292>,  <34.436398, 36.125557, 39.961849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241295, 36.232864, 39.872292>,  <33.916122, 36.411709, 39.723030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241295, 36.232864, 39.872292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567766, 0.465922, -0.678644,
		0.129569, 0.763551, 0.632615,
		0.812929, -0.447109, 0.373149,
		34.485172, 36.098732, 39.984238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321045, 36.855125, 39.754345>,  <33.916122, 36.411709, 39.723030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321045, 36.855125, 39.754345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566971, 36.539658, 39.754925>,  <34.714527, 36.350376, 39.755272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566971, 36.539658, 39.754925>,  <34.321045, 36.855125, 39.754345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566971, 36.539658, 39.754925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599281, 0.465973, -0.650946,
		0.512709, 0.401077, 0.759122,
		0.614810, -0.788674, 0.001450,
		34.751415, 36.303055, 39.755360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011547, 37.111294, 39.553394>,  <34.321045, 36.855125, 39.754345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011547, 37.111294, 39.553394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052975, 36.717705, 39.495331>,  <35.077831, 36.481552, 39.460495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052975, 36.717705, 39.495331>,  <35.011547, 37.111294, 39.553394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052975, 36.717705, 39.495331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692846, 0.176080, -0.699258,
		0.713610, -0.028149, 0.699978,
		0.103568, -0.983973, -0.145155,
		35.084045, 36.422512, 39.451786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667122, 37.045086, 39.394615>,  <35.011547, 37.111294, 39.553394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667122, 37.045086, 39.394615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478664, 36.727798, 39.240303>,  <35.365589, 36.537426, 39.147717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478664, 36.727798, 39.240303>,  <35.667122, 37.045086, 39.394615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478664, 36.727798, 39.240303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515876, 0.106965, -0.849959,
		0.715470, -0.599466, 0.358808,
		-0.471142, -0.793221, -0.385781,
		35.337322, 36.489834, 39.124569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215702, 36.633038, 39.108562>,  <35.667122, 37.045086, 39.394615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215702, 36.633038, 39.108562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856121, 36.587727, 38.939304>,  <35.640373, 36.560539, 38.837749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856121, 36.587727, 38.939304>,  <36.215702, 36.633038, 39.108562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856121, 36.587727, 38.939304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425786, 0.000997, -0.904824,
		0.102917, -0.993563, 0.047335,
		-0.898952, -0.113276, -0.423148,
		35.586437, 36.553745, 38.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788441, 37.021465, 39.487675>,  <36.215702, 36.633038, 39.108562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788441, 37.021465, 39.487675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879391, 37.393761, 39.602238>,  <36.933960, 37.617138, 39.670975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879391, 37.393761, 39.602238>,  <36.788441, 37.021465, 39.487675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879391, 37.393761, 39.602238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229481, -0.234615, 0.944613,
		0.946382, -0.280507, 0.160240,
		0.227376, 0.930737, 0.286406,
		36.947605, 37.672981, 39.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361961, 36.975090, 40.008465>,  <36.788441, 37.021465, 39.487675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361961, 36.975090, 40.008465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132736, 37.295361, 40.078331>,  <36.995201, 37.487522, 40.120251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132736, 37.295361, 40.078331>,  <37.361961, 36.975090, 40.008465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132736, 37.295361, 40.078331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002075, -0.214552, 0.976710,
		0.819508, 0.559355, 0.124613,
		-0.573064, 0.800681, 0.174666,
		36.960815, 37.535564, 40.130730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619781, 37.256046, 40.643028>,  <37.361961, 36.975090, 40.008465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619781, 37.256046, 40.643028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267410, 37.442558, 40.610638>,  <37.055988, 37.554466, 40.591202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267410, 37.442558, 40.610638>,  <37.619781, 37.256046, 40.643028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267410, 37.442558, 40.610638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114714, -0.044375, 0.992407,
		0.459142, 0.883526, 0.092580,
		-0.880925, 0.466276, -0.080978,
		37.003132, 37.582439, 40.586346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589378, 37.771378, 41.158718>,  <37.619781, 37.256046, 40.643028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589378, 37.771378, 41.158718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205158, 37.726765, 41.056808>,  <36.974628, 37.699997, 40.995663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.205158, 37.726765, 41.056808>,  <37.589378, 37.771378, 41.158718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205158, 37.726765, 41.056808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229110, -0.202008, 0.952209,
		-0.157667, 0.973013, 0.168486,
		-0.960547, -0.111530, -0.254777,
		36.916996, 37.693306, 40.980377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293346, 38.203140, 41.610081>,  <37.589378, 37.771378, 41.158718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293346, 38.203140, 41.610081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990246, 37.991749, 41.456974>,  <36.808384, 37.864914, 41.365108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990246, 37.991749, 41.456974>,  <37.293346, 38.203140, 41.610081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990246, 37.991749, 41.456974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371508, -0.132846, 0.918876,
		-0.536459, 0.838486, -0.095671,
		-0.757756, -0.528482, -0.382771,
		36.762920, 37.833206, 41.342144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798512, 38.434673, 41.922531>,  <37.293346, 38.203140, 41.610081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798512, 38.434673, 41.922531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643223, 38.090561, 41.790344>,  <36.550049, 37.884094, 41.711033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643223, 38.090561, 41.790344>,  <36.798512, 38.434673, 41.922531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643223, 38.090561, 41.790344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441578, -0.141097, 0.886059,
		-0.808885, 0.489911, -0.325103,
		-0.388219, -0.860279, -0.330465,
		36.526756, 37.832478, 41.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054947, 38.384506, 42.196087>,  <36.798512, 38.434673, 41.922531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054947, 38.384506, 42.196087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170509, 38.009018, 42.120888>,  <36.239849, 37.783726, 42.075768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170509, 38.009018, 42.120888>,  <36.054947, 38.384506, 42.196087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170509, 38.009018, 42.120888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292745, -0.273587, 0.916215,
		-0.911500, -0.209669, -0.353846,
		0.288910, -0.938717, -0.187995,
		36.257183, 37.727402, 42.064487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414536, 38.048466, 42.238182>,  <36.054947, 38.384506, 42.196087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414536, 38.048466, 42.238182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707230, 37.781784, 42.294838>,  <35.882847, 37.621773, 42.328831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707230, 37.781784, 42.294838>,  <35.414536, 38.048466, 42.238182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707230, 37.781784, 42.294838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376158, -0.221731, 0.899633,
		-0.568388, -0.711573, -0.413036,
		0.731738, -0.666707, 0.141635,
		35.926750, 37.581772, 42.337330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061222, 37.481644, 42.388680>,  <35.414536, 38.048466, 42.238182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061222, 37.481644, 42.388680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432751, 37.401314, 42.513233>,  <35.655666, 37.353115, 42.587967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432751, 37.401314, 42.513233>,  <35.061222, 37.481644, 42.388680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432751, 37.401314, 42.513233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362342, -0.316610, 0.876622,
		-0.077464, -0.927052, -0.366843,
		0.928821, -0.200829, 0.311384,
		35.711395, 37.341064, 42.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074245, 36.716488, 42.533367>,  <35.061222, 37.481644, 42.388680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074245, 36.716488, 42.533367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336491, 36.915100, 42.760918>,  <35.493839, 37.034267, 42.897449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336491, 36.915100, 42.760918>,  <35.074245, 36.716488, 42.533367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336491, 36.915100, 42.760918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496981, -0.283450, 0.820163,
		0.568486, -0.820433, 0.060932,
		0.655617, 0.496533, 0.568877,
		35.533176, 37.064060, 42.931580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859489, 36.471863, 43.152771>,  <35.074245, 36.716488, 42.533367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859489, 36.471863, 43.152771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138874, 36.737022, 43.260639>,  <35.306503, 36.896118, 43.325359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138874, 36.737022, 43.260639>,  <34.859489, 36.471863, 43.152771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138874, 36.737022, 43.260639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231434, -0.147344, 0.961628,
		0.677195, -0.734068, 0.050503,
		0.698459, 0.662898, 0.269669,
		35.348412, 36.935890, 43.341541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399178, 36.137135, 43.634869>,  <34.859489, 36.471863, 43.152771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399178, 36.137135, 43.634869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365044, 36.533142, 43.679729>,  <35.344563, 36.770748, 43.706646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365044, 36.533142, 43.679729>,  <35.399178, 36.137135, 43.634869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365044, 36.533142, 43.679729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095090, -0.120138, 0.988193,
		0.991804, 0.073660, 0.104393,
		-0.085332, 0.990020, 0.112149,
		35.339443, 36.830147, 43.713375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772614, 36.343056, 44.336441>,  <35.399178, 36.137135, 43.634869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772614, 36.343056, 44.336441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506187, 36.621754, 44.229931>,  <35.346333, 36.788971, 44.166023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506187, 36.621754, 44.229931>,  <35.772614, 36.343056, 44.336441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506187, 36.621754, 44.229931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272128, 0.105390, 0.956472,
		0.694478, 0.709537, 0.119406,
		-0.666068, 0.696742, -0.266276,
		35.306366, 36.830776, 44.150047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787830, 36.791687, 44.969929>,  <35.772614, 36.343056, 44.336441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787830, 36.791687, 44.969929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458977, 36.942684, 44.799477>,  <35.261665, 37.033283, 44.697205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458977, 36.942684, 44.799477>,  <35.787830, 36.791687, 44.969929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458977, 36.942684, 44.799477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435654, 0.064655, 0.897789,
		0.366463, 0.923752, 0.111303,
		-0.822138, 0.377496, -0.426129,
		35.212334, 37.055931, 44.671638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492641, 37.337273, 45.395706>,  <35.787830, 36.791687, 44.969929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492641, 37.337273, 45.395706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172131, 37.234360, 45.179646>,  <34.979824, 37.172611, 45.050011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172131, 37.234360, 45.179646>,  <35.492641, 37.337273, 45.395706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172131, 37.234360, 45.179646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553667, -0.023255, 0.832413,
		-0.226725, 0.966057, -0.123813,
		-0.801279, -0.257280, -0.540147,
		34.931747, 37.157177, 45.017601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956841, 37.735168, 45.771965>,  <35.492641, 37.337273, 45.395706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956841, 37.735168, 45.771965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782436, 37.447056, 45.556156>,  <34.677792, 37.274189, 45.426670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782436, 37.447056, 45.556156>,  <34.956841, 37.735168, 45.771965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782436, 37.447056, 45.556156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601959, -0.212227, 0.769809,
		-0.668982, 0.660416, -0.341048,
		-0.436014, -0.720285, -0.539519,
		34.651630, 37.230968, 45.394302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231026, 37.836357, 45.858074>,  <34.956841, 37.735168, 45.771965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231026, 37.836357, 45.858074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266888, 37.455894, 45.739918>,  <34.288406, 37.227615, 45.669025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266888, 37.455894, 45.739918>,  <34.231026, 37.836357, 45.858074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266888, 37.455894, 45.739918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652086, -0.280240, 0.704450,
		-0.752825, 0.129463, -0.645363,
		0.089657, -0.951160, -0.295393,
		34.293785, 37.170547, 45.651299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.528538, 37.352234, 45.790356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788391, 37.048172, 45.785603>,  <33.944302, 36.865734, 45.782749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788391, 37.048172, 45.785603>,  <33.528538, 37.352234, 45.790356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788391, 37.048172, 45.785603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544306, -0.475967, 0.690786,
		-0.530761, -0.442289, -0.722961,
		0.649633, -0.760155, -0.011885,
		33.983280, 36.820126, 45.782040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120491, 36.832272, 45.925018>,  <33.528538, 37.352234, 45.790356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120491, 36.832272, 45.925018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491623, 36.716698, 46.019382>,  <33.714302, 36.647354, 46.076000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491623, 36.716698, 46.019382>,  <33.120491, 36.832272, 45.925018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491623, 36.716698, 46.019382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360913, -0.535592, 0.763467,
		-0.094239, -0.793509, -0.601217,
		0.927826, -0.288935, 0.235914,
		33.769970, 36.630016, 46.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132015, 36.183098, 46.360596>,  <33.120491, 36.832272, 45.925018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132015, 36.183098, 46.360596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502163, 36.318825, 46.428196>,  <33.724251, 36.400261, 46.468758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502163, 36.318825, 46.428196>,  <33.132015, 36.183098, 46.360596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502163, 36.318825, 46.428196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002622, -0.440090, 0.897950,
		0.379064, -0.831376, -0.406354,
		0.925367, 0.339315, 0.169002,
		33.779774, 36.420620, 46.478897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515327, 35.640625, 46.757698>,  <33.132015, 36.183098, 46.360596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515327, 35.640625, 46.757698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706680, 35.982494, 46.838383>,  <33.821491, 36.187614, 46.886795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706680, 35.982494, 46.838383>,  <33.515327, 35.640625, 46.757698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706680, 35.982494, 46.838383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107998, -0.285215, 0.952360,
		0.871485, -0.433808, -0.228745,
		0.478383, 0.854671, 0.201710,
		33.850197, 36.238895, 46.898895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039257, 35.344391, 47.192532>,  <33.515327, 35.640625, 46.757698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039257, 35.344391, 47.192532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008720, 35.738773, 47.251934>,  <33.990398, 35.975403, 47.287575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008720, 35.738773, 47.251934>,  <34.039257, 35.344391, 47.192532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008720, 35.738773, 47.251934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026394, -0.146895, 0.988800,
		0.996732, 0.079405, -0.014810,
		-0.076340, 0.985960, 0.148510,
		33.985817, 36.034561, 47.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508400, 35.486870, 47.758038>,  <34.039257, 35.344391, 47.192532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508400, 35.486870, 47.758038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255127, 35.796471, 47.757687>,  <34.103165, 35.982231, 47.757477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255127, 35.796471, 47.757687>,  <34.508400, 35.486870, 47.758038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255127, 35.796471, 47.757687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044382, -0.035179, 0.998395,
		0.772728, 0.632206, 0.056627,
		-0.633184, 0.774001, -0.000875,
		34.065170, 36.028671, 47.757423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758957, 35.959927, 48.261280>,  <34.508400, 35.486870, 47.758038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758957, 35.959927, 48.261280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378403, 36.067032, 48.200386>,  <34.150070, 36.131294, 48.163849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378403, 36.067032, 48.200386>,  <34.758957, 35.959927, 48.261280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378403, 36.067032, 48.200386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126977, 0.109341, 0.985861,
		0.280621, 0.957261, -0.070025,
		-0.951383, 0.267762, -0.152234,
		34.092987, 36.147362, 48.154716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625771, 36.566368, 48.697567>,  <34.758957, 35.959927, 48.261280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625771, 36.566368, 48.697567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277439, 36.378448, 48.639679>,  <34.068439, 36.265697, 48.604946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277439, 36.378448, 48.639679>,  <34.625771, 36.566368, 48.697567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277439, 36.378448, 48.639679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262351, 0.195187, 0.945026,
		-0.415722, 0.860926, -0.293226,
		-0.870831, -0.469797, -0.144721,
		34.016190, 36.237511, 48.596264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198498, 36.946968, 49.008228>,  <34.625771, 36.566368, 48.697567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198498, 36.946968, 49.008228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988499, 36.607395, 48.983917>,  <33.862499, 36.403652, 48.969330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988499, 36.607395, 48.983917>,  <34.198498, 36.946968, 49.008228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988499, 36.607395, 48.983917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395039, 0.179805, 0.900896,
		-0.753874, 0.496973, -0.429759,
		-0.524993, -0.848934, -0.060773,
		33.831001, 36.352715, 48.965687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515789, 37.185787, 49.250702>,  <34.198498, 36.946968, 49.008228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515789, 37.185787, 49.250702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527794, 36.786083, 49.260334>,  <33.534996, 36.546261, 49.266113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527794, 36.786083, 49.260334>,  <33.515789, 37.185787, 49.250702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527794, 36.786083, 49.260334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302677, 0.013873, 0.952992,
		-0.952620, -0.035892, -0.302037,
		0.030015, -0.999259, 0.024079,
		33.536797, 36.486305, 49.267559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831596, 36.994137, 49.372837>,  <33.515789, 37.185787, 49.250702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831596, 36.994137, 49.372837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095375, 36.707535, 49.463833>,  <33.253643, 36.535576, 49.518433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095375, 36.707535, 49.463833>,  <32.831596, 36.994137, 49.372837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095375, 36.707535, 49.463833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339014, -0.013349, 0.940687,
		-0.670968, -0.697457, -0.251707,
		0.659448, -0.716503, 0.227491,
		33.293209, 36.492584, 49.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558044, 36.501087, 49.806145>,  <32.831596, 36.994137, 49.372837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558044, 36.501087, 49.806145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917171, 36.343357, 49.884563>,  <33.132648, 36.248718, 49.931614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917171, 36.343357, 49.884563>,  <32.558044, 36.501087, 49.806145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917171, 36.343357, 49.884563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277308, -0.160429, 0.947292,
		-0.342088, -0.904860, -0.253385,
		0.897817, -0.394323, 0.196044,
		33.186516, 36.225060, 49.943378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366337, 35.929966, 50.246799>,  <32.558044, 36.501087, 49.806145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366337, 35.929966, 50.246799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758080, 35.978622, 50.311367>,  <32.993126, 36.007816, 50.350109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758080, 35.978622, 50.311367>,  <32.366337, 35.929966, 50.246799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758080, 35.978622, 50.311367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117482, -0.307276, 0.944341,
		0.164475, -0.943814, -0.286643,
		0.979360, 0.121645, 0.161420,
		33.051888, 36.015118, 50.359795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707211, 35.271141, 50.451931>,  <32.366337, 35.929966, 50.246799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707211, 35.271141, 50.451931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940365, 35.564102, 50.592686>,  <33.080257, 35.739880, 50.677139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940365, 35.564102, 50.592686>,  <32.707211, 35.271141, 50.451931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940365, 35.564102, 50.592686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225458, -0.270281, 0.936011,
		0.780647, -0.624927, 0.007583,
		0.582889, 0.732403, 0.351889,
		33.115231, 35.783825, 50.698254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057228, 34.967720, 51.017456>,  <32.707211, 35.271141, 50.451931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057228, 34.967720, 51.017456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093658, 35.359978, 51.086781>,  <33.115517, 35.595333, 51.128376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093658, 35.359978, 51.086781>,  <33.057228, 34.967720, 51.017456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093658, 35.359978, 51.086781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035734, -0.170707, 0.984674,
		0.995203, -0.095873, 0.019495,
		0.091075, 0.980647, 0.173314,
		33.120979, 35.654171, 51.138775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572880, 35.006268, 51.474224>,  <33.057228, 34.967720, 51.017456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572880, 35.006268, 51.474224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374321, 35.352150, 51.504860>,  <33.255184, 35.559681, 51.523243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374321, 35.352150, 51.504860>,  <33.572880, 35.006268, 51.474224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374321, 35.352150, 51.504860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047562, -0.115190, 0.992204,
		0.866791, 0.488886, 0.098307,
		-0.496399, 0.864709, 0.076593,
		33.225403, 35.611565, 51.527840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803558, 35.300598, 52.008781>,  <33.572880, 35.006268, 51.474224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803558, 35.300598, 52.008781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452236, 35.484383, 51.955906>,  <33.241444, 35.594654, 51.924179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452236, 35.484383, 51.955906>,  <33.803558, 35.300598, 52.008781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452236, 35.484383, 51.955906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159876, -0.021685, 0.986899,
		0.450580, 0.887931, 0.092504,
		-0.878304, 0.459466, -0.132187,
		33.188744, 35.622223, 51.916248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852268, 35.747086, 52.545967>,  <33.803558, 35.300598, 52.008781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852268, 35.747086, 52.545967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471260, 35.692131, 52.437279>,  <33.242657, 35.659157, 52.372066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471260, 35.692131, 52.437279>,  <33.852268, 35.747086, 52.545967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471260, 35.692131, 52.437279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252761, -0.140796, 0.957229,
		-0.169769, 0.980460, 0.099385,
		-0.952518, -0.137388, -0.271725,
		33.185505, 35.650913, 52.355762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545952, 36.162682, 53.006573>,  <33.852268, 35.747086, 52.545967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545952, 36.162682, 53.006573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306690, 35.874401, 52.866394>,  <33.163136, 35.701435, 52.782288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306690, 35.874401, 52.866394>,  <33.545952, 36.162682, 53.006573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306690, 35.874401, 52.866394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332947, -0.174283, 0.926699,
		-0.728946, 0.670986, -0.135706,
		-0.598150, -0.720696, -0.350446,
		33.127247, 35.658192, 52.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882698, 36.174366, 53.532410>,  <33.545952, 36.162682, 53.006573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882698, 36.174366, 53.532410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848679, 35.838604, 53.317688>,  <32.828266, 35.637146, 53.188854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848679, 35.838604, 53.317688>,  <32.882698, 36.174366, 53.532410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848679, 35.838604, 53.317688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301047, -0.491931, 0.816929,
		-0.949809, 0.231085, -0.210862,
		-0.085050, -0.839406, -0.536808,
		32.823162, 35.586781, 53.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242279, 35.956036, 53.701088>,  <32.882698, 36.174366, 53.532410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242279, 35.956036, 53.701088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.425777, 35.626892, 53.566948>,  <32.535877, 35.429405, 53.486465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.425777, 35.626892, 53.566948>,  <32.242279, 35.956036, 53.701088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425777, 35.626892, 53.566948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111965, -0.427923, 0.896853,
		-0.881487, -0.373878, -0.288439,
		0.458743, -0.822859, -0.335347,
		32.563400, 35.380035, 53.466343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774765, 35.301338, 53.625118>,  <32.242279, 35.956036, 53.701088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774765, 35.301338, 53.625118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145733, 35.159664, 53.673195>,  <32.368313, 35.074661, 53.702042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145733, 35.159664, 53.673195>,  <31.774765, 35.301338, 53.625118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145733, 35.159664, 53.673195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289091, -0.474909, 0.831197,
		-0.237315, -0.805615, -0.542831,
		0.927420, -0.354184, 0.120193,
		32.423958, 35.053410, 53.709251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867811, 34.595451, 53.508186>,  <31.774765, 35.301338, 53.625118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867811, 34.595451, 53.508186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106823, 34.766712, 53.779373>,  <32.250229, 34.869469, 53.942085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106823, 34.766712, 53.779373>,  <31.867811, 34.595451, 53.508186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106823, 34.766712, 53.779373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403211, -0.570393, 0.715592,
		0.693093, -0.700953, -0.168190,
		0.597531, 0.428156, 0.677967,
		32.286083, 34.895161, 53.982765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376431, 34.094841, 53.950134>,  <31.867811, 34.595451, 53.508186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376431, 34.094841, 53.950134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306328, 34.426647, 54.162243>,  <32.264267, 34.625732, 54.289509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306328, 34.426647, 54.162243>,  <32.376431, 34.094841, 53.950134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306328, 34.426647, 54.162243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171587, -0.556097, 0.813212,
		0.969454, 0.051537, 0.239796,
		-0.175260, 0.829518, 0.530267,
		32.253750, 34.675503, 54.321323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612917, 34.239491, 54.146973>,  <32.376431, 34.094841, 53.950134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612917, 34.239491, 54.146973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230066, 34.143681, 54.081818>,  <31.000355, 34.086193, 54.042725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230066, 34.143681, 54.081818>,  <31.612917, 34.239491, 54.146973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230066, 34.143681, 54.081818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230524, -0.289353, -0.929049,
		0.175398, -0.926770, 0.332165,
		-0.957128, -0.239525, -0.162891,
		30.942928, 34.071823, 54.032951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684626, 33.725613, 53.728065>,  <31.612917, 34.239491, 54.146973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684626, 33.725613, 53.728065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301600, 33.837917, 53.702026>,  <31.071783, 33.905300, 53.686401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301600, 33.837917, 53.702026>,  <31.684626, 33.725613, 53.728065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301600, 33.837917, 53.702026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008558, -0.253469, -0.967306,
		-0.288089, -0.925701, 0.245116,
		-0.957566, 0.280768, -0.065099,
		31.014330, 33.922146, 53.682495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296633, 33.165451, 53.400764>,  <31.684626, 33.725613, 53.728065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296633, 33.165451, 53.400764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076506, 33.495396, 53.348991>,  <30.944429, 33.693363, 53.317928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076506, 33.495396, 53.348991>,  <31.296633, 33.165451, 53.400764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076506, 33.495396, 53.348991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055603, -0.190884, -0.980037,
		-0.833101, -0.532135, 0.150912,
		-0.550319, 0.824861, -0.129437,
		30.911409, 33.742855, 53.310162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793901, 32.966934, 52.960785>,  <31.296633, 33.165451, 53.400764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793901, 32.966934, 52.960785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786974, 33.362427, 52.901306>,  <30.782818, 33.599724, 52.865620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.786974, 33.362427, 52.901306>,  <30.793901, 32.966934, 52.960785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786974, 33.362427, 52.901306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155466, -0.149577, -0.976451,
		-0.987689, 0.006206, 0.156305,
		-0.017320, 0.988731, -0.148701,
		30.781778, 33.659046, 52.856697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337732, 33.114658, 52.476162>,  <30.793901, 32.966934, 52.960785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337732, 33.114658, 52.476162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534781, 33.462170, 52.455978>,  <30.653009, 33.670677, 52.443867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534781, 33.462170, 52.455978>,  <30.337732, 33.114658, 52.476162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534781, 33.462170, 52.455978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100518, -0.000789, -0.994935,
		-0.864419, 0.495198, 0.086939,
		0.492621, 0.868780, -0.050458,
		30.682568, 33.722805, 52.440842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087112, 33.331642, 51.859589>,  <30.337732, 33.114658, 52.476162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087112, 33.331642, 51.859589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401466, 33.565884, 51.939045>,  <30.590078, 33.706429, 51.986717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401466, 33.565884, 51.939045>,  <30.087112, 33.331642, 51.859589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401466, 33.565884, 51.939045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128076, 0.160118, -0.978754,
		-0.604967, 0.794627, 0.050833,
		0.785883, 0.585603, 0.198638,
		30.637232, 33.741566, 51.998638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085165, 33.853851, 51.285648>,  <30.087112, 33.331642, 51.859589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085165, 33.853851, 51.285648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454964, 33.856964, 51.438091>,  <30.676844, 33.858833, 51.529556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454964, 33.856964, 51.438091>,  <30.085165, 33.853851, 51.285648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454964, 33.856964, 51.438091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370089, 0.221147, -0.902291,
		-0.091302, 0.975209, 0.201570,
		0.924499, 0.007782, 0.381105,
		30.732313, 33.859299, 51.552422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379402, 34.490337, 51.229488>,  <30.085165, 33.853851, 51.285648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379402, 34.490337, 51.229488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685987, 34.233822, 51.243801>,  <30.869940, 34.079914, 51.252388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685987, 34.233822, 51.243801>,  <30.379402, 34.490337, 51.229488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685987, 34.233822, 51.243801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252465, 0.249583, -0.934864,
		0.590586, 0.725574, 0.353200,
		0.766466, -0.641288, 0.035781,
		30.915928, 34.041435, 51.254536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914816, 34.808533, 50.909786>,  <30.379402, 34.490337, 51.229488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914816, 34.808533, 50.909786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002266, 34.421577, 50.858627>,  <31.054735, 34.189404, 50.827930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002266, 34.421577, 50.858627>,  <30.914816, 34.808533, 50.909786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002266, 34.421577, 50.858627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162007, 0.165232, -0.972858,
		0.962267, 0.191969, 0.192848,
		0.218624, -0.967391, -0.127897,
		31.067854, 34.131359, 50.820259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628340, 34.782082, 50.548035>,  <30.914816, 34.808533, 50.909786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628340, 34.782082, 50.548035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484396, 34.411060, 50.507732>,  <31.398029, 34.188450, 50.483551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484396, 34.411060, 50.507732>,  <31.628340, 34.782082, 50.548035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484396, 34.411060, 50.507732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462334, -0.083476, -0.882768,
		0.810400, -0.364257, 0.458878,
		-0.359860, -0.927550, -0.100759,
		31.376438, 34.132797, 50.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148464, 34.464764, 50.239040>,  <31.628340, 34.782082, 50.548035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148464, 34.464764, 50.239040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840508, 34.221458, 50.161800>,  <31.655735, 34.075474, 50.115456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840508, 34.221458, 50.161800>,  <32.148464, 34.464764, 50.239040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840508, 34.221458, 50.161800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227124, 0.021619, -0.973626,
		0.596395, -0.793441, 0.121507,
		-0.769888, -0.608263, -0.193104,
		31.609541, 34.038979, 50.103870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378738, 34.017429, 49.789658>,  <32.148464, 34.464764, 50.239040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378738, 34.017429, 49.789658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981426, 34.015480, 49.743393>,  <31.743040, 34.014313, 49.715633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981426, 34.015480, 49.743393>,  <32.378738, 34.017429, 49.789658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981426, 34.015480, 49.743393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115526, 0.021878, -0.993064,
		0.007348, -0.999749, -0.021170,
		-0.993277, -0.004852, -0.115657,
		31.683443, 34.014019, 49.708694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221066, 33.505875, 49.260880>,  <32.378738, 34.017429, 49.789658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221066, 33.505875, 49.260880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915459, 33.762791, 49.236439>,  <31.732094, 33.916943, 49.221775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915459, 33.762791, 49.236439>,  <32.221066, 33.505875, 49.260880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915459, 33.762791, 49.236439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153511, 0.088983, -0.984132,
		-0.626663, -0.761277, -0.166584,
		-0.764021, 0.642292, -0.061102,
		31.686253, 33.955479, 49.218109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049480, 33.498222, 48.501301>,  <32.221066, 33.505875, 49.260880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049480, 33.498222, 48.501301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864508, 33.827541, 48.632965>,  <31.753525, 34.025131, 48.711964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864508, 33.827541, 48.632965>,  <32.049480, 33.498222, 48.501301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864508, 33.827541, 48.632965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008176, 0.375180, -0.926916,
		-0.886617, -0.425945, -0.180227,
		-0.462432, 0.823293, 0.329158,
		31.725779, 34.074528, 48.731712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452887, 33.615536, 48.017319>,  <32.049480, 33.498222, 48.501301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452887, 33.615536, 48.017319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537521, 33.964600, 48.193363>,  <31.588303, 34.174038, 48.298992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537521, 33.964600, 48.193363>,  <31.452887, 33.615536, 48.017319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537521, 33.964600, 48.193363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133454, 0.471890, -0.871499,
		-0.968205, 0.125664, 0.216306,
		0.211588, 0.872656, 0.440116,
		31.600998, 34.226395, 48.325397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923347, 34.083309, 47.775520>,  <31.452887, 33.615536, 48.017319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923347, 34.083309, 47.775520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219076, 34.319221, 47.905483>,  <31.396513, 34.460770, 47.983463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219076, 34.319221, 47.905483>,  <30.923347, 34.083309, 47.775520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219076, 34.319221, 47.905483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118487, 0.588946, -0.799440,
		-0.662845, 0.552546, 0.505301,
		0.739322, 0.589776, 0.324910,
		31.440872, 34.496155, 48.002956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664486, 34.621090, 47.662155>,  <30.923347, 34.083309, 47.775520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664486, 34.621090, 47.662155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024817, 34.775501, 47.741650>,  <31.241014, 34.868149, 47.789345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024817, 34.775501, 47.741650>,  <30.664486, 34.621090, 47.662155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024817, 34.775501, 47.741650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090834, 0.615152, -0.783159,
		-0.424575, 0.687437, 0.589209,
		0.900825, 0.386030, 0.198735,
		31.295063, 34.891312, 47.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625938, 35.442722, 47.757782>,  <30.664486, 34.621090, 47.662155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625938, 35.442722, 47.757782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984764, 35.318672, 47.631859>,  <31.200060, 35.244244, 47.556305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984764, 35.318672, 47.631859>,  <30.625938, 35.442722, 47.757782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984764, 35.318672, 47.631859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069727, 0.604125, -0.793833,
		0.436368, 0.734068, 0.520315,
		0.897063, -0.310123, -0.314805,
		31.253883, 35.225636, 47.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821527, 35.978539, 47.345936>,  <30.625938, 35.442722, 47.757782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821527, 35.978539, 47.345936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078190, 35.690002, 47.241676>,  <31.232187, 35.516880, 47.179119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078190, 35.690002, 47.241676>,  <30.821527, 35.978539, 47.345936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078190, 35.690002, 47.241676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031140, 0.315055, -0.948563,
		0.766360, 0.616768, 0.179694,
		0.641657, -0.721344, -0.260652,
		31.270687, 35.473598, 47.163483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393902, 36.326435, 46.926170>,  <30.821527, 35.978539, 47.345936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393902, 36.326435, 46.926170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434252, 35.939537, 46.832989>,  <31.458462, 35.707397, 46.777081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434252, 35.939537, 46.832989>,  <31.393902, 36.326435, 46.926170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434252, 35.939537, 46.832989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372892, 0.253833, -0.892480,
		0.922375, 0.003162, 0.386283,
		0.100874, -0.967243, -0.232950,
		31.464514, 35.649364, 46.763103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.559753, 28.430532, 36.104942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300159, 28.406116, 36.408283>,  <41.144405, 28.391468, 36.590286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300159, 28.406116, 36.408283>,  <41.559753, 28.430532, 36.104942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300159, 28.406116, 36.408283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383254, 0.887294, -0.256565,
		-0.657219, -0.457147, -0.599232,
		-0.648983, -0.061039, 0.758350,
		41.105465, 28.387804, 36.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035137, 28.872454, 35.893818>,  <41.559753, 28.430532, 36.104942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035137, 28.872454, 35.893818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974903, 28.858980, 36.289028>,  <40.938763, 28.850895, 36.526154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974903, 28.858980, 36.289028>,  <41.035137, 28.872454, 35.893818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974903, 28.858980, 36.289028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180694, 0.983521, 0.005992,
		-0.971943, -0.177627, -0.154192,
		-0.150586, -0.033685, 0.988023,
		40.929726, 28.848875, 36.585434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359802, 29.030336, 35.948990>,  <41.035137, 28.872454, 35.893818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359802, 29.030336, 35.948990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568649, 29.117441, 36.278831>,  <40.693958, 29.169704, 36.476738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568649, 29.117441, 36.278831>,  <40.359802, 29.030336, 35.948990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568649, 29.117441, 36.278831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170857, 0.973961, -0.149021,
		-0.835585, -0.063083, 0.545728,
		0.522117, 0.217761, 0.824605,
		40.725285, 29.182770, 36.526215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009480, 29.535381, 36.254906>,  <40.359802, 29.030336, 35.948990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009480, 29.535381, 36.254906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363174, 29.560339, 36.440048>,  <40.575390, 29.575314, 36.551132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363174, 29.560339, 36.440048>,  <40.009480, 29.535381, 36.254906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363174, 29.560339, 36.440048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096026, 0.994151, 0.049433,
		-0.457060, -0.088157, 0.885056,
		0.884237, 0.062395, 0.462852,
		40.628445, 29.579058, 36.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898521, 29.979855, 36.775040>,  <40.009480, 29.535381, 36.254906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898521, 29.979855, 36.775040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291462, 29.974953, 36.700382>,  <40.527225, 29.972012, 36.655586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291462, 29.974953, 36.700382>,  <39.898521, 29.979855, 36.775040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291462, 29.974953, 36.700382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015471, 0.989109, -0.146372,
		0.186404, 0.146676, 0.971463,
		0.982351, -0.012255, -0.186643,
		40.586166, 29.971275, 36.644390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163219, 30.636066, 37.142078>,  <39.898521, 29.979855, 36.775040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163219, 30.636066, 37.142078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445118, 30.529345, 36.879128>,  <40.614258, 30.465311, 36.721359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445118, 30.529345, 36.879128>,  <40.163219, 30.636066, 37.142078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445118, 30.529345, 36.879128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162062, 0.962634, -0.216960,
		0.690698, 0.046367, 0.721655,
		0.704750, -0.266807, -0.657375,
		40.656544, 30.449303, 36.681915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406998, 31.272768, 37.112133>,  <40.163219, 30.636066, 37.142078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406998, 31.272768, 37.112133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584389, 31.072742, 36.814606>,  <40.690823, 30.952728, 36.636089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584389, 31.072742, 36.814606>,  <40.406998, 31.272768, 37.112133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584389, 31.072742, 36.814606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288159, 0.865378, -0.409981,
		0.848702, -0.032523, 0.527870,
		0.443474, -0.500062, -0.743820,
		40.717430, 30.922724, 36.591461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155773, 31.509762, 37.116901>,  <40.406998, 31.272768, 37.112133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155773, 31.509762, 37.116901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042538, 31.386482, 36.753613>,  <40.974598, 31.312513, 36.535637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042538, 31.386482, 36.753613>,  <41.155773, 31.509762, 37.116901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042538, 31.386482, 36.753613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292748, 0.874004, -0.387834,
		0.913325, -0.375671, -0.157192,
		-0.283085, -0.308200, -0.908227,
		40.957611, 31.294022, 36.481144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747704, 31.558207, 36.750767>,  <41.155773, 31.509762, 37.116901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747704, 31.558207, 36.750767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449589, 31.542675, 36.484524>,  <41.270721, 31.533356, 36.324776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449589, 31.542675, 36.484524>,  <41.747704, 31.558207, 36.750767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449589, 31.542675, 36.484524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362209, 0.814564, -0.453088,
		0.559777, -0.578772, -0.593020,
		-0.745288, -0.038831, -0.665611,
		41.226002, 31.531025, 36.284840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042141, 31.773701, 35.991699>,  <41.747704, 31.558207, 36.750767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042141, 31.773701, 35.991699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650536, 31.841988, 35.947163>,  <41.415573, 31.882959, 35.920441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650536, 31.841988, 35.947163>,  <42.042141, 31.773701, 35.991699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650536, 31.841988, 35.947163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203816, 0.817832, -0.538154,
		-0.000811, -0.549551, -0.835460,
		-0.979009, 0.170717, -0.111344,
		41.356834, 31.893202, 35.913761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958008, 32.031113, 35.256908>,  <42.042141, 31.773701, 35.991699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958008, 32.031113, 35.256908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625210, 32.153469, 35.442043>,  <41.425533, 32.226883, 35.553123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625210, 32.153469, 35.442043>,  <41.958008, 32.031113, 35.256908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625210, 32.153469, 35.442043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043753, 0.867846, -0.494903,
		-0.553058, -0.391506, -0.735425,
		-0.831993, 0.305887, 0.462839,
		41.375610, 32.245235, 35.580894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444416, 32.256393, 34.815914>,  <41.958008, 32.031113, 35.256908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444416, 32.256393, 34.815914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378323, 32.441948, 35.164055>,  <41.338669, 32.553280, 35.372940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378323, 32.441948, 35.164055>,  <41.444416, 32.256393, 34.815914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378323, 32.441948, 35.164055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150198, 0.860350, -0.487071,
		-0.974751, -0.211203, -0.072480,
		-0.165229, 0.463887, 0.870350,
		41.328754, 32.581116, 35.425159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034847, 32.886589, 34.611229>,  <41.444416, 32.256393, 34.815914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034847, 32.886589, 34.611229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126766, 32.955647, 34.994350>,  <41.181919, 32.997082, 35.224224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126766, 32.955647, 34.994350>,  <41.034847, 32.886589, 34.611229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126766, 32.955647, 34.994350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160334, 0.977409, -0.137711,
		-0.959940, -0.121922, 0.252289,
		0.229799, 0.172645, 0.957803,
		41.195705, 33.007439, 35.281693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575043, 33.442234, 34.862480>,  <41.034847, 32.886589, 34.611229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575043, 33.442234, 34.862480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876347, 33.447433, 35.125519>,  <41.057129, 33.450554, 35.283340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876347, 33.447433, 35.125519>,  <40.575043, 33.442234, 34.862480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876347, 33.447433, 35.125519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153018, 0.968909, -0.194426,
		-0.639677, 0.247077, 0.727850,
		0.753259, 0.012995, 0.657596,
		41.102325, 33.451332, 35.322796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445915, 33.928513, 35.410378>,  <40.575043, 33.442234, 34.862480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445915, 33.928513, 35.410378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845470, 33.909973, 35.406754>,  <41.085201, 33.898849, 35.404579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845470, 33.909973, 35.406754>,  <40.445915, 33.928513, 35.410378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845470, 33.909973, 35.406754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046937, 0.995498, 0.082340,
		0.005205, -0.082673, 0.996563,
		0.998884, -0.046347, -0.009061,
		41.145134, 33.896069, 35.404034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679852, 34.511543, 35.892830>,  <40.445915, 33.928513, 35.410378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679852, 34.511543, 35.892830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.021420, 34.413334, 35.709293>,  <41.226360, 34.354408, 35.599171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.021420, 34.413334, 35.709293>,  <40.679852, 34.511543, 35.892830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021420, 34.413334, 35.709293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292525, 0.955688, 0.033010,
		0.430405, -0.162411, 0.887904,
		0.853921, -0.245526, -0.458842,
		41.277596, 34.339676, 35.571640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231510, 34.984936, 36.235271>,  <40.679852, 34.511543, 35.892830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231510, 34.984936, 36.235271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402130, 34.883217, 35.888081>,  <41.504501, 34.822186, 35.679764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402130, 34.883217, 35.888081>,  <41.231510, 34.984936, 36.235271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402130, 34.883217, 35.888081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188313, 0.963600, -0.189768,
		0.884645, -0.082508, 0.458907,
		0.426546, -0.254296, -0.867982,
		41.530094, 34.806927, 35.627686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885281, 35.276752, 36.288239>,  <41.231510, 34.984936, 36.235271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885281, 35.276752, 36.288239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825302, 35.220612, 35.896767>,  <41.789314, 35.186928, 35.661884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825302, 35.220612, 35.896767>,  <41.885281, 35.276752, 36.288239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825302, 35.220612, 35.896767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414457, 0.889779, -0.191100,
		0.897632, -0.434276, -0.075246,
		-0.149943, -0.140351, -0.978682,
		41.780319, 35.178505, 35.603161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522640, 35.368679, 35.923855>,  <41.885281, 35.276752, 36.288239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522640, 35.368679, 35.923855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240944, 35.400806, 35.641693>,  <42.071926, 35.420082, 35.472397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240944, 35.400806, 35.641693>,  <42.522640, 35.368679, 35.923855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240944, 35.400806, 35.641693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472266, 0.794870, -0.380982,
		0.530105, -0.601441, -0.597709,
		-0.704239, 0.080318, -0.705405,
		42.029671, 35.424900, 35.430073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778564, 35.574825, 35.284355>,  <42.522640, 35.368679, 35.923855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778564, 35.574825, 35.284355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404366, 35.710903, 35.246162>,  <42.179848, 35.792549, 35.223248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404366, 35.710903, 35.246162>,  <42.778564, 35.574825, 35.284355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404366, 35.710903, 35.246162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352699, 0.882774, -0.310345,
		-0.021293, -0.324001, -0.945817,
		-0.935495, 0.340197, -0.095478,
		42.123718, 35.812962, 35.217518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770519, 35.925873, 34.763298>,  <42.778564, 35.574825, 35.284355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770519, 35.925873, 34.763298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461872, 36.080921, 34.965031>,  <42.276684, 36.173950, 35.086071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461872, 36.080921, 34.965031>,  <42.770519, 35.925873, 34.763298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461872, 36.080921, 34.965031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403443, 0.911225, -0.083084,
		-0.491766, 0.139360, -0.859503,
		-0.771622, 0.387618, 0.504333,
		42.230385, 36.197208, 35.116329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498669, 35.514629, 34.733906>,  <42.770519, 35.925873, 34.763298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498669, 35.514629, 34.733906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895729, 35.476471, 34.763691>,  <44.133965, 35.453575, 34.781563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895729, 35.476471, 34.763691>,  <43.498669, 35.514629, 34.733906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895729, 35.476471, 34.763691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112101, -0.956612, 0.268936,
		0.045575, -0.275307, -0.960276,
		0.992651, -0.095391, 0.074460,
		44.193523, 35.447853, 34.786030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724907, 34.919922, 34.423191>,  <43.498669, 35.514629, 34.733906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724907, 34.919922, 34.423191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016178, 34.997375, 34.686176>,  <44.190941, 35.043850, 34.843967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016178, 34.997375, 34.686176>,  <43.724907, 34.919922, 34.423191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016178, 34.997375, 34.686176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110967, -0.913297, 0.391887,
		0.676346, -0.358321, -0.643554,
		0.728177, 0.193638, 0.657467,
		44.234631, 35.055466, 34.883415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096943, 34.324104, 34.420345>,  <43.724907, 34.919922, 34.423191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096943, 34.324104, 34.420345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227360, 34.503391, 34.753284>,  <44.305611, 34.610962, 34.953049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227360, 34.503391, 34.753284>,  <44.096943, 34.324104, 34.420345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227360, 34.503391, 34.753284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129958, -0.893348, 0.430163,
		0.936380, -0.032082, -0.349519,
		0.326043, 0.448218, 0.832344,
		44.325172, 34.637856, 35.002987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555481, 33.827038, 34.724380>,  <44.096943, 34.324104, 34.420345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555481, 33.827038, 34.724380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466259, 34.088840, 35.013340>,  <44.412724, 34.245922, 35.186714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466259, 34.088840, 35.013340>,  <44.555481, 33.827038, 34.724380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466259, 34.088840, 35.013340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040990, -0.734118, 0.677783,
		0.973943, 0.180796, 0.136923,
		-0.223058, 0.654510, 0.722400,
		44.399342, 34.285194, 35.230061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083996, 33.719799, 35.270309>,  <44.555481, 33.827038, 34.724380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083996, 33.719799, 35.270309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799950, 33.917953, 35.470440>,  <44.629524, 34.036846, 35.590519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799950, 33.917953, 35.470440>,  <45.083996, 33.719799, 35.270309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799950, 33.917953, 35.470440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144100, -0.797821, 0.585420,
		0.689183, 0.343617, 0.637929,
		-0.710114, 0.495387, 0.500330,
		44.586914, 34.066570, 35.620541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319656, 33.712803, 35.993073>,  <45.083996, 33.719799, 35.270309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319656, 33.712803, 35.993073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932152, 33.812008, 35.993137>,  <44.699650, 33.871529, 35.993176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932152, 33.812008, 35.993137>,  <45.319656, 33.712803, 35.993073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932152, 33.812008, 35.993137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189013, -0.738742, 0.646943,
		0.160568, 0.626700, 0.762538,
		-0.968758, 0.248008, 0.000164,
		44.641525, 33.886410, 35.993187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046364, 33.892330, 36.638676>,  <45.319656, 33.712803, 35.993073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046364, 33.892330, 36.638676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.695801, 33.792545, 36.473904>,  <44.485462, 33.732674, 36.375042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.695801, 33.792545, 36.473904>,  <45.046364, 33.892330, 36.638676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695801, 33.792545, 36.473904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161323, -0.653877, 0.739202,
		-0.453754, 0.714293, 0.532817,
		-0.876403, -0.249460, -0.411931,
		44.432880, 33.717709, 36.350323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481548, 33.875660, 37.153057>,  <45.046364, 33.892330, 36.638676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481548, 33.875660, 37.153057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334927, 33.635742, 36.868557>,  <44.246952, 33.491791, 36.697857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334927, 33.635742, 36.868557>,  <44.481548, 33.875660, 37.153057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334927, 33.635742, 36.868557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200662, -0.695504, 0.689933,
		-0.908499, 0.395621, 0.134585,
		-0.366556, -0.599798, -0.711252,
		44.224960, 33.455803, 36.655182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943047, 33.622311, 37.546131>,  <44.481548, 33.875660, 37.153057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943047, 33.622311, 37.546131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974930, 33.382477, 37.227596>,  <43.994061, 33.238579, 37.036476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974930, 33.382477, 37.227596>,  <43.943047, 33.622311, 37.546131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974930, 33.382477, 37.227596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311116, -0.773932, 0.551575,
		-0.947023, 0.203787, -0.248229,
		0.079709, -0.599583, -0.796333,
		43.998844, 33.202602, 36.988697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327072, 33.248623, 37.600487>,  <43.943047, 33.622311, 37.546131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327072, 33.248623, 37.600487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.577576, 33.036972, 37.371464>,  <43.727879, 32.909981, 37.234051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.577576, 33.036972, 37.371464>,  <43.327072, 33.248623, 37.600487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577576, 33.036972, 37.371464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336209, -0.845912, 0.414001,
		-0.703395, -0.066771, -0.707656,
		0.626257, -0.529126, -0.572562,
		43.765453, 32.878235, 37.199696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895134, 32.672871, 37.328850>,  <43.327072, 33.248623, 37.600487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895134, 32.672871, 37.328850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281239, 32.568443, 37.332970>,  <43.512901, 32.505787, 37.335442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281239, 32.568443, 37.332970>,  <42.895134, 32.672871, 37.328850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281239, 32.568443, 37.332970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254843, -0.932097, 0.257392,
		-0.057599, -0.251076, -0.966252,
		0.965265, -0.261068, 0.010298,
		43.570820, 32.490124, 37.336060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833275, 32.155567, 36.962418>,  <42.895134, 32.672871, 37.328850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833275, 32.155567, 36.962418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 32.127266, 37.154556>,  <43.392776, 32.110283, 37.269840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 32.127266, 37.154556>,  <42.833275, 32.155567, 36.962418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182964, 32.127266, 37.154556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103036, -0.993827, 0.041133,
		0.474468, -0.085452, -0.876115,
		0.874222, -0.070755, 0.480344,
		43.445232, 32.106041, 37.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175625, 31.538782, 36.703548>,  <42.833275, 32.155567, 36.962418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175625, 31.538782, 36.703548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365086, 31.624630, 37.045216>,  <43.478760, 31.676138, 37.250214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365086, 31.624630, 37.045216>,  <43.175625, 31.538782, 36.703548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365086, 31.624630, 37.045216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037317, -0.973874, 0.224003,
		0.879922, -0.074224, -0.469284,
		0.473650, 0.214618, 0.854163,
		43.507179, 31.689014, 37.301464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688713, 31.032801, 36.694202>,  <43.175625, 31.538782, 36.703548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688713, 31.032801, 36.694202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667679, 31.190311, 37.061283>,  <43.655060, 31.284819, 37.281532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667679, 31.190311, 37.061283>,  <43.688713, 31.032801, 36.694202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667679, 31.190311, 37.061283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081418, -0.917603, 0.389070,
		0.995292, -0.054259, 0.080310,
		-0.052583, 0.393777, 0.917701,
		43.651905, 31.308445, 37.336594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266087, 30.948917, 37.036282>,  <43.688713, 31.032801, 36.694202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266087, 30.948917, 37.036282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965816, 30.960608, 37.300289>,  <43.785652, 30.967621, 37.458694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965816, 30.960608, 37.300289>,  <44.266087, 30.948917, 37.036282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965816, 30.960608, 37.300289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265565, -0.901412, 0.341953,
		0.604945, 0.431975, 0.668909,
		-0.750677, 0.029224, 0.660022,
		43.740612, 30.969376, 37.498295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582912, 30.799025, 37.696785>,  <44.266087, 30.948917, 37.036282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582912, 30.799025, 37.696785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191666, 30.723190, 37.731052>,  <43.956917, 30.677691, 37.751614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191666, 30.723190, 37.731052>,  <44.582912, 30.799025, 37.696785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191666, 30.723190, 37.731052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207854, -0.908041, 0.363674,
		0.008845, 0.373524, 0.927578,
		-0.978120, -0.189584, 0.085670,
		43.898232, 30.666315, 37.756752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586090, 30.343283, 38.250679>,  <44.582912, 30.799025, 37.696785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586090, 30.343283, 38.250679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222679, 30.288467, 38.092796>,  <44.004631, 30.255577, 37.998066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222679, 30.288467, 38.092796>,  <44.586090, 30.343283, 38.250679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222679, 30.288467, 38.092796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031115, -0.964251, 0.263158,
		-0.416663, 0.226805, 0.880313,
		-0.908529, -0.137040, -0.394710,
		43.950119, 30.247356, 37.974384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265617, 30.016026, 38.731079>,  <44.586090, 30.343283, 38.250679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265617, 30.016026, 38.731079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061558, 29.940056, 38.395538>,  <43.939121, 29.894474, 38.194214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061558, 29.940056, 38.395538>,  <44.265617, 30.016026, 38.731079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061558, 29.940056, 38.395538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003493, -0.975764, 0.218797,
		-0.860080, 0.108689, 0.498448,
		-0.510148, -0.189924, -0.838855,
		43.908512, 29.883080, 38.143883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834808, 29.609564, 38.971439>,  <44.265617, 30.016026, 38.731079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834808, 29.609564, 38.971439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792583, 29.520077, 38.583870>,  <43.767250, 29.466385, 38.351330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792583, 29.520077, 38.583870>,  <43.834808, 29.609564, 38.971439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792583, 29.520077, 38.583870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089724, -0.968247, 0.233340,
		-0.990356, 0.111567, 0.082139,
		-0.105564, -0.223720, -0.968920,
		43.760914, 29.452961, 38.293194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453846, 29.132414, 39.020439>,  <43.834808, 29.609564, 38.971439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453846, 29.132414, 39.020439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542343, 29.100199, 38.631683>,  <43.595440, 29.080870, 38.398430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542343, 29.100199, 38.631683>,  <43.453846, 29.132414, 39.020439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542343, 29.100199, 38.631683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031697, -0.995464, 0.089706,
		-0.974703, -0.050653, -0.217687,
		0.221243, -0.080537, -0.971887,
		43.608715, 29.076038, 38.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925419, 28.719257, 38.676319>,  <43.453846, 29.132414, 39.020439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925419, 28.719257, 38.676319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.270351, 28.696539, 38.475060>,  <43.477310, 28.682907, 38.354305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.270351, 28.696539, 38.475060>,  <42.925419, 28.719257, 38.676319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270351, 28.696539, 38.475060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032693, -0.997861, 0.056612,
		-0.505286, -0.032369, -0.862345,
		0.862332, -0.056798, -0.503147,
		43.529053, 28.679499, 38.324116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.074909, 37.991779, 43.662174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856861, 37.663418, 43.594105>,  <35.726032, 37.466400, 43.553261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856861, 37.663418, 43.594105>,  <36.074909, 37.991779, 43.662174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856861, 37.663418, 43.594105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511210, -0.164593, -0.843548,
		0.664464, -0.546829, 0.509378,
		-0.545117, -0.820906, -0.170178,
		35.693325, 37.417145, 43.543053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556648, 37.381031, 43.589142>,  <36.074909, 37.991779, 43.662174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556648, 37.381031, 43.589142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214664, 37.323948, 43.389675>,  <36.009472, 37.289700, 43.269993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214664, 37.323948, 43.389675>,  <36.556648, 37.381031, 43.589142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214664, 37.323948, 43.389675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517990, -0.185010, -0.835140,
		0.026920, -0.972320, 0.232097,
		-0.854963, -0.142705, -0.498671,
		35.958176, 37.281136, 43.240074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880150, 37.012821, 43.109016>,  <36.556648, 37.381031, 43.589142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880150, 37.012821, 43.109016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522053, 37.102135, 42.954773>,  <36.307194, 37.155724, 42.862228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522053, 37.102135, 42.954773>,  <36.880150, 37.012821, 43.109016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522053, 37.102135, 42.954773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399742, 0.020125, -0.916407,
		-0.196859, -0.974546, -0.107273,
		-0.895239, 0.223284, -0.385606,
		36.253483, 37.169121, 42.839092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839294, 36.660686, 42.503941>,  <36.880150, 37.012821, 43.109016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839294, 36.660686, 42.503941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579720, 36.959972, 42.448734>,  <36.423973, 37.139545, 42.415611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579720, 36.959972, 42.448734>,  <36.839294, 36.660686, 42.503941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579720, 36.959972, 42.448734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247330, 0.035902, -0.968266,
		-0.719519, -0.662481, -0.208355,
		-0.648938, 0.748218, -0.138020,
		36.385036, 37.184437, 42.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654377, 36.545723, 41.880150>,  <36.839294, 36.660686, 42.503941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654377, 36.545723, 41.880150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503696, 36.912994, 41.929214>,  <36.413288, 37.133358, 41.958652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503696, 36.912994, 41.929214>,  <36.654377, 36.545723, 41.880150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503696, 36.912994, 41.929214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182656, 0.203444, -0.961898,
		-0.908148, -0.339943, -0.244349,
		-0.376702, 0.918177, 0.122665,
		36.390686, 37.188446, 41.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092041, 36.652016, 41.426014>,  <36.654377, 36.545723, 41.880150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092041, 36.652016, 41.426014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254612, 37.006668, 41.514282>,  <36.352158, 37.219460, 41.567242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254612, 37.006668, 41.514282>,  <36.092041, 36.652016, 41.426014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254612, 37.006668, 41.514282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101789, 0.196072, -0.975292,
		-0.907993, 0.418852, -0.010560,
		0.406432, 0.886634, 0.220666,
		36.376541, 37.272659, 41.580482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806274, 37.068718, 40.884605>,  <36.092041, 36.652016, 41.426014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806274, 37.068718, 40.884605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105427, 37.293938, 41.025257>,  <36.284920, 37.429070, 41.109646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105427, 37.293938, 41.025257>,  <35.806274, 37.068718, 40.884605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105427, 37.293938, 41.025257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063708, 0.466373, -0.882291,
		-0.660764, 0.682254, 0.312922,
		0.747886, 0.563050, 0.351627,
		36.329792, 37.462852, 41.130745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647339, 37.727402, 40.759857>,  <35.806274, 37.068718, 40.884605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647339, 37.727402, 40.759857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042889, 37.708481, 40.816261>,  <36.280220, 37.697128, 40.850105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042889, 37.708481, 40.816261>,  <35.647339, 37.727402, 40.759857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042889, 37.708481, 40.816261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148737, 0.314718, -0.937459,
		-0.000033, 0.948005, 0.318253,
		0.988877, -0.047305, 0.141014,
		36.339550, 37.694290, 40.858566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900829, 38.321899, 40.531464>,  <35.647339, 37.727402, 40.759857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900829, 38.321899, 40.531464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201698, 38.058331, 40.534325>,  <36.382221, 37.900188, 40.536041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201698, 38.058331, 40.534325>,  <35.900829, 38.321899, 40.531464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201698, 38.058331, 40.534325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229352, 0.251602, -0.940263,
		0.617763, 0.708882, 0.340374,
		0.752174, -0.658925, 0.007153,
		36.427349, 37.860653, 40.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289711, 38.629337, 40.045734>,  <35.900829, 38.321899, 40.531464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289711, 38.629337, 40.045734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531879, 38.321552, 40.127125>,  <36.677181, 38.136883, 40.175957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531879, 38.321552, 40.127125>,  <36.289711, 38.629337, 40.045734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531879, 38.321552, 40.127125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640679, 0.319466, -0.698192,
		0.472229, 0.553058, 0.686387,
		0.605418, -0.769460, 0.203471,
		36.713505, 38.090714, 40.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953640, 38.906757, 40.062973>,  <36.289711, 38.629337, 40.045734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953640, 38.906757, 40.062973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990505, 38.522724, 39.957340>,  <37.012627, 38.292305, 39.893959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990505, 38.522724, 39.957340>,  <36.953640, 38.906757, 40.062973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990505, 38.522724, 39.957340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714004, 0.248581, -0.654527,
		0.694048, -0.128233, 0.708416,
		0.092167, -0.960085, -0.264086,
		37.018154, 38.234699, 39.878113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702591, 38.739685, 40.141319>,  <36.953640, 38.906757, 40.062973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702591, 38.739685, 40.141319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506756, 38.548435, 39.849648>,  <37.389256, 38.433685, 39.674644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506756, 38.548435, 39.849648>,  <37.702591, 38.739685, 40.141319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506756, 38.548435, 39.849648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758735, 0.178497, -0.626467,
		0.429684, -0.859964, 0.275378,
		-0.489585, -0.478121, -0.729182,
		37.359879, 38.404999, 39.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090729, 38.223660, 39.856209>,  <37.702591, 38.739685, 40.141319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090729, 38.223660, 39.856209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833622, 38.310242, 39.562271>,  <37.679359, 38.362190, 39.385906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833622, 38.310242, 39.562271>,  <38.090729, 38.223660, 39.856209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833622, 38.310242, 39.562271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766012, 0.192820, -0.613227,
		0.008960, -0.957063, -0.289742,
		-0.642764, 0.216451, -0.734849,
		37.640793, 38.375175, 39.341816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300629, 37.937992, 39.275383>,  <38.090729, 38.223660, 39.856209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300629, 37.937992, 39.275383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068439, 38.223118, 39.117931>,  <37.929127, 38.394192, 39.023460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068439, 38.223118, 39.117931>,  <38.300629, 37.937992, 39.275383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068439, 38.223118, 39.117931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602934, 0.051350, -0.796136,
		-0.547284, -0.699471, -0.459587,
		-0.580474, 0.712813, -0.393633,
		37.894299, 38.436962, 38.999840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669220, 38.015381, 38.701488>,  <38.300629, 37.937992, 39.275383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669220, 38.015381, 38.701488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514217, 37.657284, 38.613503>,  <38.421215, 37.442425, 38.560711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514217, 37.657284, 38.613503>,  <38.669220, 38.015381, 38.701488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514217, 37.657284, 38.613503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779228, -0.190587, -0.597059,
		0.492587, -0.402770, 0.771449,
		-0.387506, -0.895239, -0.219969,
		38.397964, 37.388714, 38.547512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872055, 37.253269, 38.927269>,  <38.669220, 38.015381, 38.701488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872055, 37.253269, 38.927269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264957, 37.192432, 38.971172>,  <39.500698, 37.155930, 38.997513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264957, 37.192432, 38.971172>,  <38.872055, 37.253269, 38.927269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264957, 37.192432, 38.971172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163657, -0.409158, 0.897667,
		-0.091616, -0.899700, -0.426787,
		0.982254, -0.152088, 0.109757,
		39.559635, 37.146805, 39.004101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978184, 36.538109, 39.176292>,  <38.872055, 37.253269, 38.927269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978184, 36.538109, 39.176292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300549, 36.752037, 39.277855>,  <39.493969, 36.880394, 39.338791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300549, 36.752037, 39.277855>,  <38.978184, 36.538109, 39.176292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300549, 36.752037, 39.277855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147260, -0.234304, 0.960945,
		0.573425, -0.811830, -0.110071,
		0.805915, 0.534821, 0.253906,
		39.542324, 36.912483, 39.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185009, 36.179714, 39.795406>,  <38.978184, 36.538109, 39.176292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185009, 36.179714, 39.795406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424618, 36.498383, 39.827644>,  <39.568382, 36.689583, 39.846989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424618, 36.498383, 39.827644>,  <39.185009, 36.179714, 39.795406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424618, 36.498383, 39.827644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044882, -0.067093, 0.996737,
		0.799476, -0.600682, -0.004434,
		0.599020, 0.796668, 0.080599,
		39.604324, 36.737381, 39.851826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615677, 36.029205, 40.304131>,  <39.185009, 36.179714, 39.795406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615677, 36.029205, 40.304131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639446, 36.427643, 40.278027>,  <39.653709, 36.666706, 40.262363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639446, 36.427643, 40.278027>,  <39.615677, 36.029205, 40.304131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639446, 36.427643, 40.278027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089232, 0.070412, 0.993519,
		0.994236, -0.053218, 0.093069,
		0.059426, 0.996097, -0.065258,
		39.657272, 36.726471, 40.258450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136406, 36.222164, 40.829609>,  <39.615677, 36.029205, 40.304131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136406, 36.222164, 40.829609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897781, 36.536118, 40.762589>,  <39.754604, 36.724487, 40.722378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897781, 36.536118, 40.762589>,  <40.136406, 36.222164, 40.829609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897781, 36.536118, 40.762589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016308, 0.220579, 0.975233,
		0.802399, 0.579057, -0.144389,
		-0.596565, 0.784880, -0.167549,
		39.718811, 36.771584, 40.712322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429855, 36.846668, 41.051723>,  <40.136406, 36.222164, 40.829609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429855, 36.846668, 41.051723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034645, 36.907291, 41.063309>,  <39.797520, 36.943665, 41.070259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034645, 36.907291, 41.063309>,  <40.429855, 36.846668, 41.051723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034645, 36.907291, 41.063309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058555, 0.194609, 0.979132,
		0.142763, 0.969101, -0.201153,
		-0.988023, 0.151562, 0.028963,
		39.738239, 36.952759, 41.071999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319832, 37.527035, 41.520798>,  <40.429855, 36.846668, 41.051723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319832, 37.527035, 41.520798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977917, 37.320992, 41.495525>,  <39.772766, 37.197365, 41.480362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977917, 37.320992, 41.495525>,  <40.319832, 37.527035, 41.520798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977917, 37.320992, 41.495525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157914, 0.142191, 0.977162,
		-0.494362, 0.845247, -0.202887,
		-0.854792, -0.515110, -0.063182,
		39.721478, 37.166458, 41.476570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754951, 37.850655, 41.978409>,  <40.319832, 37.527035, 41.520798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754951, 37.850655, 41.978409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596184, 37.489498, 41.912388>,  <39.500923, 37.272804, 41.872776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596184, 37.489498, 41.912388>,  <39.754951, 37.850655, 41.978409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596184, 37.489498, 41.912388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337677, -0.023569, 0.940967,
		-0.853481, 0.429221, -0.295531,
		-0.396918, -0.902892, -0.165054,
		39.477108, 37.218632, 41.862873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003757, 37.814606, 42.194565>,  <39.754951, 37.850655, 41.978409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003757, 37.814606, 42.194565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156113, 37.444839, 42.186703>,  <39.247524, 37.222980, 42.181984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156113, 37.444839, 42.186703>,  <39.003757, 37.814606, 42.194565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156113, 37.444839, 42.186703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265993, -0.129907, 0.955182,
		-0.885537, -0.358585, -0.295367,
		0.380884, -0.924414, -0.019657,
		39.270378, 37.167515, 42.180805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531498, 37.410877, 42.525230>,  <39.003757, 37.814606, 42.194565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531498, 37.410877, 42.525230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840488, 37.157036, 42.534695>,  <39.025883, 37.004730, 42.540371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840488, 37.157036, 42.534695>,  <38.531498, 37.410877, 42.525230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840488, 37.157036, 42.534695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273390, -0.298705, 0.914348,
		-0.573179, -0.712782, -0.404237,
		0.772478, -0.634600, 0.023656,
		39.072231, 36.966656, 42.541790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201752, 36.811897, 42.757702>,  <38.531498, 37.410877, 42.525230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201752, 36.811897, 42.757702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578083, 36.763405, 42.884285>,  <38.803883, 36.734310, 42.960236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578083, 36.763405, 42.884285>,  <38.201752, 36.811897, 42.757702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578083, 36.763405, 42.884285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338439, -0.383990, 0.859076,
		0.017365, -0.915344, -0.402299,
		0.940828, -0.121236, 0.316456,
		38.860332, 36.727036, 42.979221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328537, 36.160328, 43.111931>,  <38.201752, 36.811897, 42.757702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328537, 36.160328, 43.111931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647293, 36.366035, 43.238735>,  <38.838547, 36.489460, 43.314819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647293, 36.366035, 43.238735>,  <38.328537, 36.160328, 43.111931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647293, 36.366035, 43.238735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033880, -0.485873, 0.873372,
		0.603173, -0.706723, -0.369764,
		0.796891, 0.514267, 0.317010,
		38.886360, 36.520317, 43.333839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553291, 35.708687, 43.591286>,  <38.328537, 36.160328, 43.111931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553291, 35.708687, 43.591286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734734, 36.055958, 43.671795>,  <38.843597, 36.264320, 43.720100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734734, 36.055958, 43.671795>,  <38.553291, 35.708687, 43.591286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734734, 36.055958, 43.671795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055977, -0.253159, 0.965804,
		0.889443, -0.426827, -0.163432,
		0.453606, 0.868176, 0.201277,
		38.870815, 36.316410, 43.732178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145649, 35.239365, 43.416790>,  <38.553291, 35.708687, 43.591286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145649, 35.239365, 43.416790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982483, 34.887257, 43.319851>,  <38.884583, 34.675991, 43.261688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982483, 34.887257, 43.319851>,  <39.145649, 35.239365, 43.416790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982483, 34.887257, 43.319851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047661, 0.285604, -0.957162,
		0.911775, -0.378891, -0.158457,
		-0.407916, -0.880268, -0.242349,
		38.860107, 34.623177, 43.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384308, 35.054237, 42.778095>,  <39.145649, 35.239365, 43.416790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384308, 35.054237, 42.778095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064545, 34.815029, 42.801136>,  <38.872684, 34.671505, 42.814960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064545, 34.815029, 42.801136>,  <39.384308, 35.054237, 42.778095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064545, 34.815029, 42.801136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103603, 0.042782, -0.993698,
		0.591784, -0.800341, -0.096157,
		-0.799411, -0.598017, 0.057600,
		38.824722, 34.635624, 42.818417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480511, 34.608364, 42.208313>,  <39.384308, 35.054237, 42.778095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480511, 34.608364, 42.208313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092636, 34.603046, 42.305904>,  <38.859909, 34.599857, 42.364460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092636, 34.603046, 42.305904>,  <39.480511, 34.608364, 42.208313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092636, 34.603046, 42.305904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244281, 0.031126, -0.969205,
		0.005278, -0.999427, -0.033427,
		-0.969690, -0.013281, 0.243976,
		38.801727, 34.599060, 42.379097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131283, 33.959492, 41.890240>,  <39.480511, 34.608364, 42.208313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131283, 33.959492, 41.890240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838070, 34.219151, 41.971504>,  <38.662144, 34.374947, 42.020264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838070, 34.219151, 41.971504>,  <39.131283, 33.959492, 41.890240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838070, 34.219151, 41.971504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339027, -0.089746, -0.936486,
		-0.589684, -0.755350, 0.285865,
		-0.733030, 0.649147, 0.203162,
		38.618160, 34.413895, 42.032452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518906, 33.677151, 41.700844>,  <39.131283, 33.959492, 41.890240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518906, 33.677151, 41.700844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443382, 34.068977, 41.673119>,  <38.398067, 34.304073, 41.656483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443382, 34.068977, 41.673119>,  <38.518906, 33.677151, 41.700844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443382, 34.068977, 41.673119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462560, -0.150972, -0.873640,
		-0.866250, -0.132892, 0.481612,
		-0.188810, 0.979565, -0.069309,
		38.386738, 34.362846, 41.652325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849628, 33.753113, 41.466194>,  <38.518906, 33.677151, 41.700844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849628, 33.753113, 41.466194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966473, 34.126167, 41.381477>,  <38.036579, 34.349998, 41.330647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966473, 34.126167, 41.381477>,  <37.849628, 33.753113, 41.466194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966473, 34.126167, 41.381477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518856, -0.031488, -0.854281,
		-0.803404, 0.359439, 0.474707,
		0.292114, 0.932637, -0.211795,
		38.054108, 34.405960, 41.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257504, 33.849026, 41.124355>,  <37.849628, 33.753113, 41.466194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257504, 33.849026, 41.124355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498558, 34.159660, 41.050880>,  <37.643192, 34.346043, 41.006794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498558, 34.159660, 41.050880>,  <37.257504, 33.849026, 41.124355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498558, 34.159660, 41.050880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534085, 0.221461, -0.815910,
		-0.592943, 0.589805, 0.548224,
		0.602638, 0.776586, -0.183692,
		37.679348, 34.392635, 40.995773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860134, 34.410915, 40.997345>,  <37.257504, 33.849026, 41.124355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860134, 34.410915, 40.997345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203968, 34.506588, 40.816723>,  <37.410267, 34.563992, 40.708347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203968, 34.506588, 40.816723>,  <36.860134, 34.410915, 40.997345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203968, 34.506588, 40.816723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495977, 0.177876, -0.849921,
		-0.122964, 0.954543, 0.271528,
		0.859585, 0.239182, -0.451559,
		37.461845, 34.578342, 40.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815216, 35.053978, 40.635662>,  <36.860134, 34.410915, 40.997345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815216, 35.053978, 40.635662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129185, 34.900387, 40.441151>,  <37.317566, 34.808231, 40.324444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129185, 34.900387, 40.441151>,  <36.815216, 35.053978, 40.635662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129185, 34.900387, 40.441151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481078, 0.116915, -0.868847,
		0.390470, 0.915911, -0.092954,
		0.784919, -0.383977, -0.486276,
		37.364662, 34.785194, 40.295269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872707, 35.390083, 39.951191>,  <36.815216, 35.053978, 40.635662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872707, 35.390083, 39.951191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128174, 35.089561, 39.884678>,  <37.281456, 34.909248, 39.844772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128174, 35.089561, 39.884678>,  <36.872707, 35.390083, 39.951191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128174, 35.089561, 39.884678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293384, -0.037985, -0.955240,
		0.711357, 0.658865, -0.244680,
		0.638668, -0.751302, -0.166279,
		37.319775, 34.864170, 39.834793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429337, 35.572720, 39.375717>,  <36.872707, 35.390083, 39.951191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429337, 35.572720, 39.375717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399559, 35.174183, 39.392517>,  <37.381691, 34.935062, 39.402599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399559, 35.174183, 39.392517>,  <37.429337, 35.572720, 39.375717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399559, 35.174183, 39.392517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153600, -0.030161, -0.987673,
		0.985325, -0.079976, -0.150793,
		-0.074442, -0.996340, 0.042003,
		37.377228, 34.875282, 39.405117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057011, 35.218765, 38.956974>,  <37.429337, 35.572720, 39.375717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057011, 35.218765, 38.956974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742088, 34.973434, 38.982208>,  <37.553135, 34.826237, 38.997349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742088, 34.973434, 38.982208>,  <38.057011, 35.218765, 38.956974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742088, 34.973434, 38.982208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103474, 0.030566, -0.994162,
		0.607818, -0.789238, -0.087529,
		-0.787306, -0.613326, 0.063087,
		37.505898, 34.789436, 39.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.568970, 33.092865, 46.683292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 32.962669, 46.528683>,  <39.016693, 32.884552, 46.435917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 32.962669, 46.528683>,  <39.568970, 33.092865, 46.683292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223797, 32.962669, 46.528683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326485, 0.224701, -0.918105,
		0.385684, -0.918459, -0.087636,
		-0.862934, -0.325487, -0.386527,
		38.964916, 32.865025, 46.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687691, 32.692421, 46.081573>,  <39.568970, 33.092865, 46.683292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687691, 32.692421, 46.081573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299278, 32.765282, 46.019707>,  <39.066231, 32.808998, 45.982586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299278, 32.765282, 46.019707>,  <39.687691, 32.692421, 46.081573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299278, 32.765282, 46.019707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202199, 0.281411, -0.938042,
		-0.127340, -0.942141, -0.310089,
		-0.971030, 0.182150, -0.154665,
		39.007969, 32.819927, 45.973309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357899, 32.281963, 45.446949>,  <39.687691, 32.692421, 46.081573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357899, 32.281963, 45.446949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129673, 32.607803, 45.488678>,  <38.992737, 32.803307, 45.513714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129673, 32.607803, 45.488678>,  <39.357899, 32.281963, 45.446949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129673, 32.607803, 45.488678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016277, 0.138221, -0.990268,
		-0.821093, -0.563311, -0.092123,
		-0.570562, 0.814602, 0.104323,
		38.958504, 32.852184, 45.519974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796001, 32.278000, 44.887054>,  <39.357899, 32.281963, 45.446949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796001, 32.278000, 44.887054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816677, 32.652596, 45.025803>,  <38.829082, 32.877354, 45.109051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816677, 32.652596, 45.025803>,  <38.796001, 32.278000, 44.887054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816677, 32.652596, 45.025803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072212, 0.349927, -0.933990,
		-0.996049, 0.023230, 0.085713,
		0.051690, 0.936489, 0.346867,
		38.832184, 32.933540, 45.129864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419388, 32.615646, 44.496601>,  <38.796001, 32.278000, 44.887054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419388, 32.615646, 44.496601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608868, 32.926189, 44.662910>,  <38.722557, 33.112514, 44.762695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608868, 32.926189, 44.662910>,  <38.419388, 32.615646, 44.496601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608868, 32.926189, 44.662910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161073, 0.540520, -0.825769,
		-0.865829, 0.324199, 0.381097,
		0.473704, 0.776359, 0.415778,
		38.750980, 33.159096, 44.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156033, 33.195694, 44.230740>,  <38.419388, 32.615646, 44.496601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156033, 33.195694, 44.230740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462059, 33.393040, 44.396275>,  <38.645676, 33.511448, 44.495594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462059, 33.393040, 44.396275>,  <38.156033, 33.195694, 44.230740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462059, 33.393040, 44.396275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036914, 0.607998, -0.793080,
		-0.642891, 0.622037, 0.446947,
		0.765068, 0.493365, 0.413838,
		38.691578, 33.541050, 44.520428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913902, 33.924931, 44.273590>,  <38.156033, 33.195694, 44.230740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913902, 33.924931, 44.273590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311596, 33.882057, 44.273579>,  <38.550213, 33.856331, 44.273571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311596, 33.882057, 44.273579>,  <37.913902, 33.924931, 44.273590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311596, 33.882057, 44.273579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070650, 0.655524, -0.751862,
		0.080608, 0.747529, 0.659320,
		0.994239, -0.107187, -0.000028,
		38.609867, 33.849899, 44.273571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138878, 34.656319, 44.230911>,  <37.913902, 33.924931, 44.273590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138878, 34.656319, 44.230911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442238, 34.418587, 44.123878>,  <38.624252, 34.275948, 44.059658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442238, 34.418587, 44.123878>,  <38.138878, 34.656319, 44.230911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442238, 34.418587, 44.123878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109251, 0.520645, -0.846754,
		0.642567, 0.612945, 0.459789,
		0.758401, -0.594329, -0.267584,
		38.669758, 34.240288, 44.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606213, 35.142059, 44.022652>,  <38.138878, 34.656319, 44.230911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606213, 35.142059, 44.022652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684029, 34.795628, 43.838448>,  <38.730721, 34.587769, 43.727924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684029, 34.795628, 43.838448>,  <38.606213, 35.142059, 44.022652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684029, 34.795628, 43.838448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065532, 0.479903, -0.874871,
		0.978703, 0.140022, 0.150117,
		0.194543, -0.866076, -0.460506,
		38.742390, 34.535805, 43.700294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212669, 35.557663, 44.253101>,  <38.606213, 35.142059, 44.022652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212669, 35.557663, 44.253101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120850, 35.944000, 44.205017>,  <39.065758, 36.175804, 44.176167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120850, 35.944000, 44.205017>,  <39.212669, 35.557663, 44.253101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120850, 35.944000, 44.205017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141398, 0.089104, 0.985935,
		0.962971, 0.243320, 0.116115,
		-0.229552, 0.965845, -0.120210,
		39.051983, 36.233753, 44.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625725, 35.898914, 44.713390>,  <39.212669, 35.557663, 44.253101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625725, 35.898914, 44.713390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325832, 36.154888, 44.645992>,  <39.145897, 36.308472, 44.605553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325832, 36.154888, 44.645992>,  <39.625725, 35.898914, 44.713390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325832, 36.154888, 44.645992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159369, 0.072522, 0.984552,
		0.642266, 0.765002, 0.047613,
		-0.749731, 0.639932, -0.168496,
		39.100914, 36.346867, 44.595444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482006, 36.285744, 45.336609>,  <39.625725, 35.898914, 44.713390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482006, 36.285744, 45.336609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122601, 36.345764, 45.171608>,  <38.906956, 36.381779, 45.072609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122601, 36.345764, 45.171608>,  <39.482006, 36.285744, 45.336609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122601, 36.345764, 45.171608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410984, 0.042461, 0.910653,
		0.154164, 0.987765, 0.023519,
		-0.898513, 0.150056, -0.412502,
		38.853046, 36.390781, 45.047859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295078, 36.791115, 45.752926>,  <39.482006, 36.285744, 45.336609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295078, 36.791115, 45.752926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952469, 36.661758, 45.592030>,  <38.746902, 36.584145, 45.495491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952469, 36.661758, 45.592030>,  <39.295078, 36.791115, 45.752926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952469, 36.661758, 45.592030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423305, -0.005714, 0.905969,
		-0.295276, 0.946250, -0.131996,
		-0.856519, -0.323386, -0.402239,
		38.695515, 36.564743, 45.471359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766014, 37.339569, 45.778618>,  <39.295078, 36.791115, 45.752926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766014, 37.339569, 45.778618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543518, 37.007427, 45.765343>,  <38.410019, 36.808140, 45.757378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543518, 37.007427, 45.765343>,  <38.766014, 37.339569, 45.778618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543518, 37.007427, 45.765343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338369, 0.189829, 0.921668,
		-0.759015, 0.523898, -0.386558,
		-0.556239, -0.830359, -0.033188,
		38.376648, 36.758320, 45.755386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080536, 37.503262, 46.032219>,  <38.766014, 37.339569, 45.778618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080536, 37.503262, 46.032219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063602, 37.104836, 46.063351>,  <38.053444, 36.865780, 46.082031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063602, 37.104836, 46.063351>,  <38.080536, 37.503262, 46.032219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063602, 37.104836, 46.063351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554146, 0.088227, 0.827731,
		-0.831343, -0.008089, -0.555701,
		-0.042333, -0.996068, 0.077829,
		38.050903, 36.806015, 46.086700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411369, 37.469837, 46.218491>,  <38.080536, 37.503262, 46.032219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411369, 37.469837, 46.218491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602303, 37.127747, 46.299225>,  <37.716862, 36.922493, 46.347668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602303, 37.127747, 46.299225>,  <37.411369, 37.469837, 46.218491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602303, 37.127747, 46.299225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434960, -0.030377, 0.899937,
		-0.763519, -0.517362, -0.386490,
		0.477334, -0.855227, 0.201838,
		37.745502, 36.871178, 46.359776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943069, 37.025646, 46.512733>,  <37.411369, 37.469837, 46.218491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943069, 37.025646, 46.512733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292656, 36.881718, 46.643398>,  <37.502407, 36.795361, 46.721798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292656, 36.881718, 46.643398>,  <36.943069, 37.025646, 46.512733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292656, 36.881718, 46.643398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378656, -0.082829, 0.921824,
		-0.304639, -0.929335, -0.208640,
		0.873965, -0.359827, 0.326665,
		37.554844, 36.773769, 46.741398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717560, 36.460075, 46.897835>,  <36.943069, 37.025646, 46.512733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717560, 36.460075, 46.897835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088730, 36.520039, 47.034351>,  <37.311432, 36.556019, 47.116261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088730, 36.520039, 47.034351>,  <36.717560, 36.460075, 46.897835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088730, 36.520039, 47.034351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270102, -0.360575, 0.892766,
		0.256895, -0.920604, -0.294097,
		0.927928, 0.149911, 0.341287,
		37.367107, 36.565010, 47.136738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963070, 35.860935, 47.136337>,  <36.717560, 36.460075, 46.897835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963070, 35.860935, 47.136337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199474, 36.115719, 47.334324>,  <37.341316, 36.268589, 47.453117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199474, 36.115719, 47.334324>,  <36.963070, 35.860935, 47.136337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199474, 36.115719, 47.334324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124484, -0.534233, 0.836122,
		0.797004, -0.555769, -0.236444,
		0.591007, 0.636958, 0.494969,
		37.376778, 36.306805, 47.482815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356155, 35.430618, 47.628311>,  <36.963070, 35.860935, 47.136337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356155, 35.430618, 47.628311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368355, 35.805973, 47.766003>,  <37.375675, 36.031185, 47.848618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368355, 35.805973, 47.766003>,  <37.356155, 35.430618, 47.628311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368355, 35.805973, 47.766003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157184, -0.335601, 0.928798,
		0.987098, -0.082435, 0.137265,
		0.030499, 0.938391, 0.344228,
		37.377506, 36.087490, 47.869270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707844, 35.347919, 48.208515>,  <37.356155, 35.430618, 47.628311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707844, 35.347919, 48.208515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509975, 35.694805, 48.231285>,  <37.391254, 35.902935, 48.244949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509975, 35.694805, 48.231285>,  <37.707844, 35.347919, 48.208515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509975, 35.694805, 48.231285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212775, -0.184359, 0.959551,
		0.842629, 0.462554, 0.275719,
		-0.494675, 0.867211, 0.056926,
		37.361572, 35.954967, 48.248363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944809, 35.731655, 48.810383>,  <37.707844, 35.347919, 48.208515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944809, 35.731655, 48.810383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600216, 35.914921, 48.722805>,  <37.393459, 36.024879, 48.670258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600216, 35.914921, 48.722805>,  <37.944809, 35.731655, 48.810383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600216, 35.914921, 48.722805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350978, -0.225661, 0.908786,
		0.366969, 0.859745, 0.355209,
		-0.861480, 0.458167, -0.218941,
		37.341770, 36.052372, 48.657124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853218, 36.149117, 49.408428>,  <37.944809, 35.731655, 48.810383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853218, 36.149117, 49.408428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492237, 36.102009, 49.242680>,  <37.275646, 36.073742, 49.143230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492237, 36.102009, 49.242680>,  <37.853218, 36.149117, 49.408428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492237, 36.102009, 49.242680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365542, -0.299592, 0.881263,
		-0.227931, 0.946770, 0.227318,
		-0.902456, -0.117773, -0.414370,
		37.221500, 36.066677, 49.118370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.947922, 31.713083, 47.031876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.336388, 31.787136, 47.091961>,  <30.569468, 31.831568, 47.128010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.336388, 31.787136, 47.091961>,  <29.947922, 31.713083, 47.031876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336388, 31.787136, 47.091961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090006, 0.298719, -0.950087,
		-0.220760, 0.936212, 0.273443,
		0.971166, 0.185130, 0.150210,
		30.627737, 31.842674, 47.137024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985416, 32.293392, 46.717293>,  <29.947922, 31.713083, 47.031876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985416, 32.293392, 46.717293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.369732, 32.186119, 46.745457>,  <30.600323, 32.121754, 46.762356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.369732, 32.186119, 46.745457>,  <29.985416, 32.293392, 46.717293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369732, 32.186119, 46.745457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165769, 0.352013, -0.921199,
		0.222264, 0.896752, 0.382668,
		0.960791, -0.268184, 0.070414,
		30.657969, 32.105663, 46.766582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236393, 32.840954, 46.475624>,  <29.985416, 32.293392, 46.717293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236393, 32.840954, 46.475624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511301, 32.551849, 46.446556>,  <30.676247, 32.378387, 46.429115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511301, 32.551849, 46.446556>,  <30.236393, 32.840954, 46.475624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511301, 32.551849, 46.446556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180029, 0.266396, -0.946902,
		0.703739, 0.637695, 0.313204,
		0.687271, -0.722757, -0.072669,
		30.717482, 32.335022, 46.424755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783560, 33.221664, 46.158131>,  <30.236393, 32.840954, 46.475624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783560, 33.221664, 46.158131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859190, 32.833172, 46.100227>,  <30.904568, 32.600075, 46.065483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859190, 32.833172, 46.100227>,  <30.783560, 33.221664, 46.158131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859190, 32.833172, 46.100227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282470, 0.194985, -0.939250,
		0.940458, 0.136701, 0.311211,
		0.189078, -0.971233, -0.144761,
		30.915913, 32.541801, 46.056797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582325, 33.029083, 45.933422>,  <30.783560, 33.221664, 46.158131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582325, 33.029083, 45.933422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325588, 32.746113, 45.815041>,  <31.171547, 32.576332, 45.744011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325588, 32.746113, 45.815041>,  <31.582325, 33.029083, 45.933422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325588, 32.746113, 45.815041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292965, 0.130457, -0.947181,
		0.708670, -0.694644, 0.123518,
		-0.641840, -0.707425, -0.295958,
		31.133036, 32.533886, 45.726254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959288, 32.810329, 45.455791>,  <31.582325, 33.029083, 45.933422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959288, 32.810329, 45.455791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598436, 32.652809, 45.385265>,  <31.381926, 32.558296, 45.342949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598436, 32.652809, 45.385265>,  <31.959288, 32.810329, 45.455791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598436, 32.652809, 45.385265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233063, -0.100863, -0.967217,
		0.363103, -0.913647, 0.182771,
		-0.902130, -0.393796, -0.176314,
		31.327797, 32.534672, 45.332371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088108, 32.098701, 45.224968>,  <31.959288, 32.810329, 45.455791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088108, 32.098701, 45.224968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755905, 32.267593, 45.079655>,  <31.556583, 32.368931, 44.992466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755905, 32.267593, 45.079655>,  <32.088108, 32.098701, 45.224968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755905, 32.267593, 45.079655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289226, -0.230487, -0.929099,
		-0.476027, -0.876696, 0.069301,
		-0.830510, 0.422233, -0.363281,
		31.506752, 32.394264, 44.970669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851265, 31.739162, 44.672169>,  <32.088108, 32.098701, 45.224968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851265, 31.739162, 44.672169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609539, 32.051155, 44.607140>,  <31.464504, 32.238350, 44.568123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609539, 32.051155, 44.607140>,  <31.851265, 31.739162, 44.672169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609539, 32.051155, 44.607140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169597, -0.073436, -0.982774,
		-0.778486, -0.621476, -0.087905,
		-0.604315, 0.779984, -0.162570,
		31.428244, 32.285149, 44.558369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484968, 31.590681, 44.063110>,  <31.851265, 31.739162, 44.672169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484968, 31.590681, 44.063110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440727, 31.986536, 44.099735>,  <31.414183, 32.224049, 44.121712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440727, 31.986536, 44.099735>,  <31.484968, 31.590681, 44.063110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440727, 31.986536, 44.099735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473872, 0.133493, -0.870417,
		-0.873620, -0.052882, -0.483726,
		-0.110603, 0.989638, 0.091563,
		31.407547, 32.283428, 44.127205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202511, 31.787165, 43.417603>,  <31.484968, 31.590681, 44.063110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202511, 31.787165, 43.417603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353991, 32.125637, 43.567574>,  <31.444878, 32.328720, 43.657555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353991, 32.125637, 43.567574>,  <31.202511, 31.787165, 43.417603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353991, 32.125637, 43.567574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394601, 0.218813, -0.892419,
		-0.837184, 0.485903, -0.251039,
		0.378698, 0.846179, 0.374924,
		31.467600, 32.379490, 43.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866056, 32.330315, 43.079655>,  <31.202511, 31.787165, 43.417603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866056, 32.330315, 43.079655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194614, 32.500431, 43.231674>,  <31.391750, 32.602501, 43.322887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194614, 32.500431, 43.231674>,  <30.866056, 32.330315, 43.079655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194614, 32.500431, 43.231674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200474, 0.408536, -0.890454,
		-0.533964, 0.807606, 0.250311,
		0.821397, 0.425290, 0.380047,
		31.441034, 32.628017, 43.345688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925840, 32.937794, 42.707165>,  <30.866056, 32.330315, 43.079655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925840, 32.937794, 42.707165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285667, 32.873920, 42.869785>,  <31.501564, 32.835598, 42.967358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285667, 32.873920, 42.869785>,  <30.925840, 32.937794, 42.707165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285667, 32.873920, 42.869785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436575, 0.300126, -0.848131,
		0.013413, 0.940440, 0.339696,
		0.899568, -0.159679, 0.406547,
		31.555538, 32.826015, 42.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278505, 33.604267, 42.694756>,  <30.925840, 32.937794, 42.707165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278505, 33.604267, 42.694756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541977, 33.303322, 42.690941>,  <31.700060, 33.122753, 42.688652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541977, 33.303322, 42.690941>,  <31.278505, 33.604267, 42.694756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541977, 33.303322, 42.690941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410257, 0.369739, -0.833656,
		0.630736, 0.545202, 0.552202,
		0.658681, -0.752362, -0.009535,
		31.739582, 33.077614, 42.688080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800175, 33.908672, 42.439705>,  <31.278505, 33.604267, 42.694756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800175, 33.908672, 42.439705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912411, 33.527908, 42.390491>,  <31.979752, 33.299450, 42.360962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912411, 33.527908, 42.390491>,  <31.800175, 33.908672, 42.439705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912411, 33.527908, 42.390491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140706, 0.167593, -0.975764,
		0.949458, 0.256477, 0.180964,
		0.280590, -0.951909, -0.123035,
		31.996588, 33.242336, 42.353580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285408, 34.523354, 42.846378>,  <31.800175, 33.908672, 42.439705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285408, 34.523354, 42.846378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343575, 34.912884, 42.776493>,  <32.378475, 35.146603, 42.734562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343575, 34.912884, 42.776493>,  <32.285408, 34.523354, 42.846378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343575, 34.912884, 42.776493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205153, 0.202430, 0.957567,
		0.967867, -0.103405, 0.229220,
		0.145418, 0.973822, -0.174712,
		32.387199, 35.205029, 42.724079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855595, 34.747330, 43.190540>,  <32.285408, 34.523354, 42.846378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855595, 34.747330, 43.190540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624054, 35.069546, 43.139889>,  <32.485130, 35.262875, 43.109497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624054, 35.069546, 43.139889>,  <32.855595, 34.747330, 43.190540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624054, 35.069546, 43.139889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173010, 0.030435, 0.984450,
		0.796870, 0.591756, 0.121749,
		-0.578849, 0.805542, -0.126633,
		32.450397, 35.311207, 43.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008400, 35.139961, 43.789787>,  <32.855595, 34.747330, 43.190540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008400, 35.139961, 43.789787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649845, 35.268574, 43.667736>,  <32.434711, 35.345741, 43.594505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649845, 35.268574, 43.667736>,  <33.008400, 35.139961, 43.789787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649845, 35.268574, 43.667736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294295, 0.083063, 0.952098,
		0.331478, 0.943247, 0.020169,
		-0.896389, 0.321536, -0.305126,
		32.380928, 35.365036, 43.576199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796700, 35.816437, 44.190094>,  <33.008400, 35.139961, 43.789787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796700, 35.816437, 44.190094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467201, 35.643818, 44.043015>,  <32.269501, 35.540245, 43.954765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467201, 35.643818, 44.043015>,  <32.796700, 35.816437, 44.190094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467201, 35.643818, 44.043015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475789, 0.173489, 0.862280,
		-0.308324, 0.885249, -0.348237,
		-0.823748, -0.431549, -0.367701,
		32.220078, 35.514355, 43.932705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335327, 36.352272, 44.353195>,  <32.796700, 35.816437, 44.190094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335327, 36.352272, 44.353195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143047, 36.006954, 44.291687>,  <32.027679, 35.799763, 44.254784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143047, 36.006954, 44.291687>,  <32.335327, 36.352272, 44.353195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143047, 36.006954, 44.291687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522260, 0.140995, 0.841050,
		-0.704395, 0.484601, -0.518642,
		-0.480700, -0.863297, -0.153772,
		31.998837, 35.747967, 44.245556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518175, 36.503906, 44.345020>,  <32.335327, 36.352272, 44.353195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518175, 36.503906, 44.345020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619820, 36.137421, 44.468941>,  <31.680807, 35.917530, 44.543293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619820, 36.137421, 44.468941>,  <31.518175, 36.503906, 44.345020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619820, 36.137421, 44.468941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568508, 0.117641, 0.814223,
		-0.782448, -0.383031, -0.490981,
		0.254113, -0.916214, 0.309804,
		31.696054, 35.862556, 44.561882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048975, 36.284531, 44.879204>,  <31.518175, 36.503906, 44.345020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048975, 36.284531, 44.879204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284622, 35.970589, 44.956078>,  <31.426010, 35.782223, 45.002201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284622, 35.970589, 44.956078>,  <31.048975, 36.284531, 44.879204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284622, 35.970589, 44.956078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348840, -0.032499, 0.936619,
		-0.728868, -0.618821, -0.292936,
		0.589120, -0.784859, 0.192182,
		31.461359, 35.735130, 45.013733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647795, 35.745937, 45.284782>,  <31.048975, 36.284531, 44.879204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647795, 35.745937, 45.284782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028242, 35.681461, 45.390152>,  <31.256510, 35.642776, 45.453373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028242, 35.681461, 45.390152>,  <30.647795, 35.745937, 45.284782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028242, 35.681461, 45.390152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287288, -0.148834, 0.946211,
		-0.113311, -0.975637, -0.187866,
		0.951118, -0.161188, 0.263424,
		31.313578, 35.633102, 45.469177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635685, 35.158840, 45.704456>,  <30.647795, 35.745937, 45.284782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635685, 35.158840, 45.704456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998013, 35.304859, 45.790459>,  <31.215410, 35.392471, 45.842060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998013, 35.304859, 45.790459>,  <30.635685, 35.158840, 45.704456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998013, 35.304859, 45.790459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070167, -0.371224, 0.925888,
		0.417812, -0.853775, -0.310647,
		0.905820, 0.365050, 0.215009,
		31.269758, 35.414375, 45.854961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819160, 34.717422, 46.184429>,  <30.635685, 35.158840, 45.704456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819160, 34.717422, 46.184429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095831, 35.003059, 46.227623>,  <31.261833, 35.174442, 46.253540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095831, 35.003059, 46.227623>,  <30.819160, 34.717422, 46.184429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095831, 35.003059, 46.227623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128680, -0.268981, 0.954511,
		0.710653, -0.646316, -0.277937,
		0.691675, 0.714091, 0.107984,
		31.303333, 35.217285, 46.260017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528772, 34.398689, 46.403118>,  <30.819160, 34.717422, 46.184429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528772, 34.398689, 46.403118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524963, 34.779613, 46.525112>,  <31.522678, 35.008167, 46.598309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524963, 34.779613, 46.525112>,  <31.528772, 34.398689, 46.403118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524963, 34.779613, 46.525112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099929, -0.302568, 0.947875,
		0.994949, 0.039503, -0.092282,
		-0.009523, 0.952308, 0.304988,
		31.522106, 35.065308, 46.616608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068703, 34.503147, 46.865898>,  <31.528772, 34.398689, 46.403118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068703, 34.503147, 46.865898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849657, 34.824230, 46.960361>,  <31.718229, 35.016880, 47.017040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849657, 34.824230, 46.960361>,  <32.068703, 34.503147, 46.865898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849657, 34.824230, 46.960361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160498, -0.176230, 0.971176,
		0.821192, 0.569736, -0.032327,
		-0.547618, 0.802710, 0.236160,
		31.685371, 35.065044, 47.031208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431347, 34.926178, 47.178871>,  <32.068703, 34.503147, 46.865898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431347, 34.926178, 47.178871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062218, 35.015263, 47.304596>,  <31.840738, 35.068714, 47.380032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062218, 35.015263, 47.304596>,  <32.431347, 34.926178, 47.178871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062218, 35.015263, 47.304596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289954, -0.135580, 0.947388,
		0.253607, 0.965411, 0.060542,
		-0.922827, 0.222710, 0.314308,
		31.785370, 35.082077, 47.398888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530895, 35.144814, 47.822887>,  <32.431347, 34.926178, 47.178871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530895, 35.144814, 47.822887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133705, 35.097530, 47.820496>,  <31.895391, 35.069160, 47.819061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133705, 35.097530, 47.820496>,  <32.530895, 35.144814, 47.822887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133705, 35.097530, 47.820496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027093, -0.276214, 0.960714,
		-0.115215, 0.953800, 0.277475,
		-0.992971, -0.118206, -0.005982,
		31.835814, 35.062069, 47.818703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847519, 35.790291, 48.296486>,  <32.530895, 35.144814, 47.822887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847519, 35.790291, 48.296486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201157, 35.944176, 48.402596>,  <33.413342, 36.036507, 48.466259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201157, 35.944176, 48.402596>,  <32.847519, 35.790291, 48.296486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201157, 35.944176, 48.402596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134332, 0.334476, -0.932781,
		-0.447579, 0.860304, 0.244030,
		0.884097, 0.384712, 0.265271,
		33.466385, 36.059589, 48.482178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831623, 36.424469, 47.969501>,  <32.847519, 35.790291, 48.296486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831623, 36.424469, 47.969501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209000, 36.307056, 48.031147>,  <33.435425, 36.236610, 48.068134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209000, 36.307056, 48.031147>,  <32.831623, 36.424469, 47.969501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209000, 36.307056, 48.031147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205979, 0.154716, -0.966248,
		0.259775, 0.943348, 0.206426,
		0.943445, -0.293527, 0.154118,
		33.492035, 36.218998, 48.077381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175220, 36.986382, 47.775433>,  <32.831623, 36.424469, 47.969501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175220, 36.986382, 47.775433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431316, 36.681538, 47.736889>,  <33.584972, 36.498631, 47.713764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431316, 36.681538, 47.736889>,  <33.175220, 36.986382, 47.775433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431316, 36.681538, 47.736889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243754, 0.320508, -0.915346,
		0.728476, 0.562553, 0.390969,
		0.640239, -0.762108, -0.096357,
		33.623386, 36.452904, 47.707981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878960, 37.280407, 47.651955>,  <33.175220, 36.986382, 47.775433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878960, 37.280407, 47.651955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866341, 36.906521, 47.510353>,  <33.858768, 36.682190, 47.425392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866341, 36.906521, 47.510353>,  <33.878960, 37.280407, 47.651955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866341, 36.906521, 47.510353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352975, 0.320941, -0.878866,
		0.935101, -0.152676, 0.319806,
		-0.031543, -0.934712, -0.354003,
		33.856876, 36.626106, 47.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412018, 37.337765, 47.141735>,  <33.878960, 37.280407, 47.651955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412018, 37.337765, 47.141735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239330, 36.982552, 47.078465>,  <34.135719, 36.769424, 47.040504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239330, 36.982552, 47.078465>,  <34.412018, 37.337765, 47.141735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239330, 36.982552, 47.078465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255567, 0.047749, -0.965611,
		0.865048, -0.457293, 0.206338,
		-0.431715, -0.888033, -0.158174,
		34.109818, 36.716141, 47.031013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914185, 36.815300, 46.883415>,  <34.412018, 37.337765, 47.141735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914185, 36.815300, 46.883415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559769, 36.688614, 46.747986>,  <34.347118, 36.612602, 46.666729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559769, 36.688614, 46.747986>,  <34.914185, 36.815300, 46.883415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559769, 36.688614, 46.747986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378222, -0.071454, -0.922953,
		0.268120, -0.945826, 0.183099,
		-0.886036, -0.316714, -0.338574,
		34.293957, 36.593601, 46.646412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058582, 36.486446, 46.294746>,  <34.914185, 36.815300, 46.883415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058582, 36.486446, 46.294746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664387, 36.491032, 46.226997>,  <34.427872, 36.493782, 46.186348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664387, 36.491032, 46.226997>,  <35.058582, 36.486446, 46.294746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664387, 36.491032, 46.226997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169215, -0.013599, -0.985485,
		-0.013599, -0.999842, 0.011462,
		0.985485, -0.011462, 0.169373,
		34.368740, 36.494469, 46.176186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984428, 35.996284, 45.831909>,  <35.058582, 36.486446, 46.294746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984428, 35.996284, 45.831909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681728, 36.255436, 45.797085>,  <34.500107, 36.410927, 45.776188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681728, 36.255436, 45.797085>,  <34.984428, 35.996284, 45.831909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681728, 36.255436, 45.797085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231539, 0.141097, -0.962539,
		-0.611326, -0.748560, -0.256784,
		-0.756750, 0.647880, -0.087064,
		34.454704, 36.449799, 45.770966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511330, 35.899906, 45.235664>,  <34.984428, 35.996284, 45.831909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511330, 35.899906, 45.235664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425056, 36.280045, 45.325401>,  <34.373295, 36.508125, 45.379246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425056, 36.280045, 45.325401>,  <34.511330, 35.899906, 45.235664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425056, 36.280045, 45.325401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309933, 0.284497, -0.907195,
		-0.925972, -0.126131, -0.355902,
		-0.215678, 0.950343, 0.224344,
		34.360352, 36.565147, 45.392704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096146, 36.259052, 44.722485>,  <34.511330, 35.899906, 45.235664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096146, 36.259052, 44.722485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280922, 36.549801, 44.925762>,  <34.391788, 36.724251, 45.047729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280922, 36.549801, 44.925762>,  <34.096146, 36.259052, 44.722485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280922, 36.549801, 44.925762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235730, 0.451764, -0.860430,
		-0.855010, 0.517266, 0.037342,
		0.461941, 0.726874, 0.508198,
		34.419506, 36.767864, 45.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910973, 36.817131, 44.344357>,  <34.096146, 36.259052, 44.722485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910973, 36.817131, 44.344357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236477, 36.916573, 44.554497>,  <34.431778, 36.976238, 44.680580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236477, 36.916573, 44.554497>,  <33.910973, 36.817131, 44.344357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236477, 36.916573, 44.554497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402304, 0.411424, -0.817852,
		-0.419465, 0.876884, 0.234784,
		0.813757, 0.248606, 0.525352,
		34.480602, 36.991154, 44.712101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162861, 37.518791, 44.131359>,  <33.910973, 36.817131, 44.344357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162861, 37.518791, 44.131359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483604, 37.324341, 44.270332>,  <34.676048, 37.207672, 44.353714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483604, 37.324341, 44.270332>,  <34.162861, 37.518791, 44.131359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483604, 37.324341, 44.270332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514319, 0.265565, -0.815445,
		0.304144, 0.832560, 0.462969,
		0.801856, -0.486126, 0.347431,
		34.724163, 37.178501, 44.374561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627369, 37.900509, 43.846630>,  <34.162861, 37.518791, 44.131359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627369, 37.900509, 43.846630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857811, 37.595791, 43.965137>,  <34.996075, 37.412960, 44.036243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857811, 37.595791, 43.965137>,  <34.627369, 37.900509, 43.846630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857811, 37.595791, 43.965137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573443, 0.118397, -0.810645,
		0.582464, 0.636912, 0.505053,
		0.576106, -0.761791, 0.296271,
		35.030643, 37.367252, 44.054020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346268, 38.138214, 43.892139>,  <34.627369, 37.900509, 43.846630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346268, 38.138214, 43.892139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342850, 37.740150, 43.852982>,  <35.340797, 37.501312, 43.829487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342850, 37.740150, 43.852982>,  <35.346268, 38.138214, 43.892139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342850, 37.740150, 43.852982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419376, 0.085305, -0.903795,
		0.907772, -0.048780, 0.416618,
		-0.008548, -0.995160, -0.097895,
		35.340286, 37.441601, 43.823612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.733688, 36.348988, 31.951056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053112, 36.158337, 32.098095>,  <33.244766, 36.043945, 32.186317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053112, 36.158337, 32.098095>,  <32.733688, 36.348988, 31.951056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053112, 36.158337, 32.098095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114287, -0.479539, -0.870046,
		0.590970, 0.736793, -0.328467,
		0.798557, -0.476632, 0.367599,
		33.292679, 36.015347, 32.208374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330765, 36.282562, 31.257591>,  <32.733688, 36.348988, 31.951056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330765, 36.282562, 31.257591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179478, 36.094315, 30.938726>,  <32.088703, 35.981365, 30.747408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.179478, 36.094315, 30.938726>,  <32.330765, 36.282562, 31.257591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179478, 36.094315, 30.938726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739372, -0.364589, 0.566042,
		-0.557026, 0.803489, -0.210065,
		-0.378222, -0.470616, -0.797163,
		32.066010, 35.953129, 30.699577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613085, 36.524487, 31.307034>,  <32.330765, 36.282562, 31.257591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613085, 36.524487, 31.307034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634663, 36.169651, 31.123659>,  <31.647610, 35.956749, 31.013634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634663, 36.169651, 31.123659>,  <31.613085, 36.524487, 31.307034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634663, 36.169651, 31.123659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865913, -0.270194, 0.420939,
		-0.497277, 0.374259, -0.782717,
		0.053945, -0.887088, -0.458438,
		31.650846, 35.903526, 30.986128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078213, 36.435036, 30.907772>,  <31.613085, 36.524487, 31.307034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078213, 36.435036, 30.907772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204792, 36.064789, 30.990803>,  <31.280739, 35.842640, 31.040621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204792, 36.064789, 30.990803>,  <31.078213, 36.435036, 30.907772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204792, 36.064789, 30.990803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853865, -0.182613, 0.487408,
		-0.413248, -0.331482, -0.848143,
		0.316449, -0.925620, 0.207577,
		31.299726, 35.787102, 31.053076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483063, 35.965496, 30.769630>,  <31.078213, 36.435036, 30.907772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483063, 35.965496, 30.769630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732292, 35.783325, 31.023991>,  <30.881830, 35.674023, 31.176607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732292, 35.783325, 31.023991>,  <30.483063, 35.965496, 30.769630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732292, 35.783325, 31.023991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782159, -0.360239, 0.508384,
		-0.002453, -0.814136, -0.580669,
		0.623073, -0.455423, 0.635901,
		30.919214, 35.646698, 31.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130938, 35.357140, 30.921484>,  <30.483063, 35.965496, 30.769630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130938, 35.357140, 30.921484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378445, 35.396572, 31.233229>,  <30.526949, 35.420231, 31.420277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378445, 35.396572, 31.233229>,  <30.130938, 35.357140, 30.921484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378445, 35.396572, 31.233229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678360, -0.433272, 0.593382,
		0.396171, -0.895856, -0.201224,
		0.618769, 0.098578, 0.779363,
		30.564075, 35.426147, 31.467037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027008, 34.783375, 31.370399>,  <30.130938, 35.357140, 30.921484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027008, 34.783375, 31.370399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.186285, 35.047081, 31.625526>,  <30.281851, 35.205307, 31.778603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.186285, 35.047081, 31.625526>,  <30.027008, 34.783375, 31.370399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186285, 35.047081, 31.625526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782031, -0.119446, 0.611687,
		0.479450, -0.742360, 0.468006,
		0.398190, 0.659268, 0.637816,
		30.305742, 35.244862, 31.816872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031427, 34.409187, 31.989719>,  <30.027008, 34.783375, 31.370399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031427, 34.409187, 31.989719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068859, 34.797432, 32.078411>,  <30.091318, 35.030376, 32.131626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068859, 34.797432, 32.078411>,  <30.031427, 34.409187, 31.989719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068859, 34.797432, 32.078411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830546, -0.046708, 0.554988,
		0.549032, -0.236093, 0.801763,
		0.093580, 0.970607, 0.221731,
		30.096933, 35.088615, 32.144932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017313, 34.503746, 32.673599>,  <30.031427, 34.409187, 31.989719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017313, 34.503746, 32.673599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913818, 34.856979, 32.517029>,  <29.851721, 35.068920, 32.423088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913818, 34.856979, 32.517029>,  <30.017313, 34.503746, 32.673599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913818, 34.856979, 32.517029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870454, -0.037479, 0.490821,
		0.418767, 0.467712, 0.778383,
		-0.258736, 0.883086, -0.391426,
		29.836197, 35.121906, 32.399601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714184, 34.946518, 33.206505>,  <30.017313, 34.503746, 32.673599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714184, 34.946518, 33.206505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574192, 35.115582, 32.872108>,  <29.490196, 35.217018, 32.671471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574192, 35.115582, 32.872108>,  <29.714184, 34.946518, 33.206505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574192, 35.115582, 32.872108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924034, -0.009176, 0.382200,
		0.153869, 0.906243, 0.393762,
		-0.349979, 0.422658, -0.835987,
		29.469198, 35.242378, 32.621311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474386, 35.554298, 33.390823>,  <29.714184, 34.946518, 33.206505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474386, 35.554298, 33.390823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287764, 35.487293, 33.043430>,  <29.175789, 35.447090, 32.834995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287764, 35.487293, 33.043430>,  <29.474386, 35.554298, 33.390823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287764, 35.487293, 33.043430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884315, 0.107918, 0.454247,
		0.017635, 0.979946, -0.198481,
		-0.466558, -0.167509, -0.868484,
		29.147797, 35.437042, 32.782887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830786, 35.976936, 33.422436>,  <29.474386, 35.554298, 33.390823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830786, 35.976936, 33.422436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770504, 35.719357, 33.122402>,  <28.734335, 35.564808, 32.942383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770504, 35.719357, 33.122402>,  <28.830786, 35.976936, 33.422436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770504, 35.719357, 33.122402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935176, -0.153141, 0.319364,
		-0.320521, 0.749587, -0.579125,
		-0.150703, -0.643947, -0.750081,
		28.725292, 35.526173, 32.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187630, 36.204170, 33.142448>,  <28.830786, 35.976936, 33.422436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187630, 36.204170, 33.142448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220818, 35.824780, 33.020138>,  <28.240730, 35.597145, 32.946751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220818, 35.824780, 33.020138>,  <28.187630, 36.204170, 33.142448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220818, 35.824780, 33.020138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956613, -0.161797, 0.242309,
		-0.279299, 0.272406, -0.920753,
		0.082969, -0.948481, -0.305777,
		28.245708, 35.540234, 32.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528004, 36.116478, 32.828594>,  <28.187630, 36.204170, 33.142448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528004, 36.116478, 32.828594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665651, 35.743805, 32.875153>,  <27.748240, 35.520203, 32.903088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665651, 35.743805, 32.875153>,  <27.528004, 36.116478, 32.828594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665651, 35.743805, 32.875153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919686, -0.309503, 0.241629,
		-0.189098, -0.190195, -0.963363,
		0.344121, -0.931683, 0.116393,
		27.768887, 35.464298, 32.910069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033897, 35.821205, 32.493160>,  <27.528004, 36.116478, 32.828594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033897, 35.821205, 32.493160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206022, 35.578140, 32.760166>,  <27.309298, 35.432301, 32.920368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206022, 35.578140, 32.760166>,  <27.033897, 35.821205, 32.493160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206022, 35.578140, 32.760166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902665, -0.285464, 0.322034,
		-0.005139, -0.741115, -0.671358,
		0.430313, -0.607667, 0.667512,
		27.335115, 35.395840, 32.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867212, 35.118576, 32.261604>,  <27.033897, 35.821205, 32.493160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867212, 35.118576, 32.261604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949123, 35.147518, 32.652058>,  <26.998270, 35.164883, 32.886330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949123, 35.147518, 32.652058>,  <26.867212, 35.118576, 32.261604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949123, 35.147518, 32.652058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898131, -0.382583, 0.216774,
		0.389136, -0.921083, -0.013359,
		0.204778, 0.072356, 0.976131,
		27.010557, 35.169224, 32.944897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383801, 34.711624, 32.483913>,  <26.867212, 35.118576, 32.261604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383801, 34.711624, 32.483913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.483967, 34.896847, 32.824001>,  <26.544065, 35.007980, 33.028053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.483967, 34.896847, 32.824001>,  <26.383801, 34.711624, 32.483913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483967, 34.896847, 32.824001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881909, -0.253200, 0.397651,
		0.399412, -0.849390, 0.344973,
		0.250414, 0.463061, 0.850216,
		26.559092, 35.035767, 33.079067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090342, 34.292675, 32.952732>,  <26.383801, 34.711624, 32.483913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090342, 34.292675, 32.952732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167915, 34.643055, 33.129414>,  <26.214460, 34.853283, 33.235420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167915, 34.643055, 33.129414>,  <26.090342, 34.292675, 32.952732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167915, 34.643055, 33.129414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926139, 0.015003, 0.376883,
		0.323504, -0.482166, 0.814163,
		0.193935, 0.875951, 0.441699,
		26.226095, 34.905842, 33.261925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696709, 34.249908, 33.512817>,  <26.090342, 34.292675, 32.952732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696709, 34.249908, 33.512817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783291, 34.634300, 33.443913>,  <25.835239, 34.864933, 33.402569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783291, 34.634300, 33.443913>,  <25.696709, 34.249908, 33.512817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783291, 34.634300, 33.443913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949796, 0.248103, 0.190610,
		0.225910, 0.122352, 0.966434,
		0.216453, 0.960976, -0.172258,
		25.848227, 34.922592, 33.392235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369888, 33.638206, 33.258053>,  <25.696709, 34.249908, 33.512817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369888, 33.638206, 33.258053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.499001, 33.534897, 32.893833>,  <25.576468, 33.472912, 32.675301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.499001, 33.534897, 32.893833>,  <25.369888, 33.638206, 33.258053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499001, 33.534897, 32.893833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510660, -0.762483, 0.397299,
		-0.796894, -0.593223, -0.114222,
		0.322779, -0.258277, -0.910553,
		25.595835, 33.457413, 32.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302990, 32.920296, 33.292881>,  <25.369888, 33.638206, 33.258053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302990, 32.920296, 33.292881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.586592, 33.029430, 33.032764>,  <25.756752, 33.094913, 32.876694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.586592, 33.029430, 33.032764>,  <25.302990, 32.920296, 33.292881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586592, 33.029430, 33.032764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536180, -0.807528, 0.245781,
		-0.458067, -0.522931, -0.718830,
		0.709003, 0.272838, -0.650288,
		25.799292, 33.111282, 32.837677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373768, 32.411659, 32.642544>,  <25.302990, 32.920296, 33.292881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373768, 32.411659, 32.642544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.715063, 32.595833, 32.740513>,  <25.919840, 32.706337, 32.799294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.715063, 32.595833, 32.740513>,  <25.373768, 32.411659, 32.642544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715063, 32.595833, 32.740513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443855, -0.887685, 0.122504,
		0.273820, 0.004186, -0.961772,
		0.853238, 0.460432, 0.244924,
		25.971035, 32.733963, 32.813992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999609, 32.110443, 33.049561>,  <25.373768, 32.411659, 32.642544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999609, 32.110443, 33.049561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294079, 31.939945, 33.259842>,  <26.470760, 31.837646, 33.386013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294079, 31.939945, 33.259842>,  <25.999609, 32.110443, 33.049561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294079, 31.939945, 33.259842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558404, -0.056353, -0.827653,
		0.382404, 0.902853, 0.196529,
		0.736174, -0.426241, 0.525706,
		26.514931, 31.812073, 33.417553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690008, 32.429226, 32.860851>,  <25.999609, 32.110443, 33.049561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690008, 32.429226, 32.860851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753462, 32.066635, 33.017380>,  <26.791534, 31.849081, 33.111298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753462, 32.066635, 33.017380>,  <26.690008, 32.429226, 32.860851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753462, 32.066635, 33.017380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616319, -0.218729, -0.756511,
		0.771354, 0.361188, 0.523982,
		0.158632, -0.906477, 0.391325,
		26.801052, 31.794691, 33.134777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399019, 32.387684, 32.795315>,  <26.690008, 32.429226, 32.860851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399019, 32.387684, 32.795315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.268232, 32.010693, 32.823082>,  <27.189760, 31.784496, 32.839745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.268232, 32.010693, 32.823082>,  <27.399019, 32.387684, 32.795315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268232, 32.010693, 32.823082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726308, -0.297610, -0.619601,
		0.604624, -0.152168, 0.781841,
		-0.326968, -0.942482, 0.069422,
		27.170141, 31.727947, 32.843910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102894, 31.963886, 32.667042>,  <27.399019, 32.387684, 32.795315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102894, 31.963886, 32.667042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799282, 31.714588, 32.591743>,  <27.617115, 31.565010, 32.546562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799282, 31.714588, 32.591743>,  <28.102894, 31.963886, 32.667042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799282, 31.714588, 32.591743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589702, -0.535603, -0.604468,
		0.275905, -0.569821, 0.774068,
		-0.759031, -0.623245, -0.188249,
		27.571573, 31.527615, 32.535267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316469, 31.359680, 32.679859>,  <28.102894, 31.963886, 32.667042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316469, 31.359680, 32.679859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982920, 31.293194, 32.469326>,  <27.782789, 31.253302, 32.343006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982920, 31.293194, 32.469326>,  <28.316469, 31.359680, 32.679859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982920, 31.293194, 32.469326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541271, -0.432954, -0.720817,
		-0.108065, -0.885959, 0.450998,
		-0.833875, -0.166217, -0.526331,
		27.732758, 31.243328, 32.311428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458603, 30.697653, 32.498421>,  <28.316469, 31.359680, 32.679859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458603, 30.697653, 32.498421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170044, 30.843813, 32.263111>,  <27.996908, 30.931509, 32.121925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170044, 30.843813, 32.263111>,  <28.458603, 30.697653, 32.498421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170044, 30.843813, 32.263111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420048, -0.444489, -0.791195,
		-0.550584, -0.817870, 0.167168,
		-0.721399, 0.365401, -0.588273,
		27.953625, 30.953434, 32.086628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243134, 30.158888, 32.126259>,  <28.458603, 30.697653, 32.498421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243134, 30.158888, 32.126259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117771, 30.481924, 31.926428>,  <28.042555, 30.675745, 31.806530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117771, 30.481924, 31.926428>,  <28.243134, 30.158888, 32.126259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117771, 30.481924, 31.926428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593523, -0.244082, -0.766913,
		-0.741289, -0.536863, -0.402827,
		-0.313404, 0.807590, -0.499575,
		28.023750, 30.724201, 31.776556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925632, 29.858866, 31.507143>,  <28.243134, 30.158888, 32.126259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925632, 29.858866, 31.507143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010977, 30.236786, 31.407681>,  <28.062183, 30.463537, 31.348003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010977, 30.236786, 31.407681>,  <27.925632, 29.858866, 31.507143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010977, 30.236786, 31.407681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484901, -0.323362, -0.812593,
		-0.848144, 0.052801, -0.527127,
		0.213359, 0.944801, -0.248654,
		28.074984, 30.520226, 31.333084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953135, 29.879818, 30.780190>,  <27.925632, 29.858866, 31.507143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953135, 29.879818, 30.780190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143091, 30.214277, 30.889978>,  <28.257065, 30.414953, 30.955853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143091, 30.214277, 30.889978>,  <27.953135, 29.879818, 30.780190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143091, 30.214277, 30.889978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744079, -0.214956, -0.632566,
		-0.469920, 0.504630, -0.724241,
		0.474892, 0.836148, 0.274472,
		28.285559, 30.465122, 30.972321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173048, 30.158743, 30.115118>,  <27.953135, 29.879818, 30.780190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173048, 30.158743, 30.115118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391340, 30.331188, 30.402540>,  <28.522316, 30.434654, 30.574993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391340, 30.331188, 30.402540>,  <28.173048, 30.158743, 30.115118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391340, 30.331188, 30.402540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799537, -0.011208, -0.600513,
		-0.250834, 0.902229, -0.350806,
		0.545732, 0.431112, 0.718554,
		28.555059, 30.460522, 30.618107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520622, 30.784678, 29.811228>,  <28.173048, 30.158743, 30.115118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520622, 30.784678, 29.811228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730240, 30.682554, 30.136236>,  <28.856010, 30.621281, 30.331242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730240, 30.682554, 30.136236>,  <28.520622, 30.784678, 29.811228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730240, 30.682554, 30.136236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839630, -0.005111, -0.543134,
		0.142820, 0.966846, 0.211686,
		0.524045, -0.255309, 0.812523,
		28.887453, 30.605961, 30.379993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068274, 31.215889, 29.753704>,  <28.520622, 30.784678, 29.811228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068274, 31.215889, 29.753704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184288, 30.943111, 30.022280>,  <29.253897, 30.779446, 30.183426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184288, 30.943111, 30.022280>,  <29.068274, 31.215889, 29.753704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184288, 30.943111, 30.022280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834356, -0.163465, -0.526431,
		0.468753, 0.712905, 0.521572,
		0.290037, -0.681942, 0.671441,
		29.271299, 30.738529, 30.223713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798851, 31.328810, 29.866516>,  <29.068274, 31.215889, 29.753704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798851, 31.328810, 29.866516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757318, 30.964329, 30.025980>,  <29.732399, 30.745640, 30.121658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757318, 30.964329, 30.025980>,  <29.798851, 31.328810, 29.866516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757318, 30.964329, 30.025980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872244, -0.276028, -0.403732,
		0.477923, 0.305808, 0.823451,
		-0.103831, -0.911203, 0.398659,
		29.726170, 30.690968, 30.145578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292410, 31.203478, 30.376657>,  <29.798851, 31.328810, 29.866516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292410, 31.203478, 30.376657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182383, 30.849258, 30.226913>,  <30.116365, 30.636726, 30.137068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182383, 30.849258, 30.226913>,  <30.292410, 31.203478, 30.376657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182383, 30.849258, 30.226913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939161, -0.164183, -0.301695,
		0.205702, -0.434569, 0.876833,
		-0.275068, -0.885547, -0.374358,
		30.099863, 30.583595, 30.114607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874363, 30.642494, 30.513062>,  <30.292410, 31.203478, 30.376657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874363, 30.642494, 30.513062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661623, 30.487495, 30.211868>,  <30.533979, 30.394497, 30.031153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661623, 30.487495, 30.211868>,  <30.874363, 30.642494, 30.513062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661623, 30.487495, 30.211868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843864, -0.316958, -0.432932,
		-0.070904, -0.865669, 0.495569,
		-0.531851, -0.387497, -0.752981,
		30.502068, 30.371246, 29.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139166, 29.985353, 30.293047>,  <30.874363, 30.642494, 30.513062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139166, 29.985353, 30.293047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931705, 30.055140, 29.958248>,  <30.807228, 30.097012, 29.757370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931705, 30.055140, 29.958248>,  <31.139166, 29.985353, 30.293047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931705, 30.055140, 29.958248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800829, -0.243746, -0.547048,
		-0.299456, -0.954018, -0.013298,
		-0.518652, 0.174466, -0.836996,
		30.776110, 30.107479, 29.707150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385477, 29.409565, 29.881462>,  <31.139166, 29.985353, 30.293047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385477, 29.409565, 29.881462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223925, 29.696180, 29.653971>,  <31.126993, 29.868151, 29.517475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223925, 29.696180, 29.653971>,  <31.385477, 29.409565, 29.881462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223925, 29.696180, 29.653971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734270, -0.116899, -0.668717,
		-0.545646, -0.687681, -0.478921,
		-0.403878, 0.716540, -0.568729,
		31.102760, 29.911142, 29.483353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354036, 29.069187, 29.107038>,  <31.385477, 29.409565, 29.881462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354036, 29.069187, 29.107038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324320, 29.467995, 29.098663>,  <31.306490, 29.707279, 29.093639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324320, 29.467995, 29.098663>,  <31.354036, 29.069187, 29.107038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324320, 29.467995, 29.098663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643577, 0.031895, -0.764716,
		-0.761767, -0.070285, -0.644027,
		-0.074289, 0.997017, -0.020937,
		31.302032, 29.767099, 29.092382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172865, 29.130093, 28.434090>,  <31.354036, 29.069187, 29.107038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172865, 29.130093, 28.434090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321888, 29.487663, 28.533768>,  <31.411303, 29.702206, 28.593575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321888, 29.487663, 28.533768>,  <31.172865, 29.130093, 28.434090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321888, 29.487663, 28.533768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592951, -0.022737, -0.804917,
		-0.713870, 0.447640, -0.538525,
		0.372558, 0.893925, 0.249197,
		31.433655, 29.755840, 28.608526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136065, 29.526073, 27.834312>,  <31.172865, 29.130093, 28.434090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136065, 29.526073, 27.834312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405647, 29.690348, 28.079952>,  <31.567396, 29.788912, 28.227337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405647, 29.690348, 28.079952>,  <31.136065, 29.526073, 27.834312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405647, 29.690348, 28.079952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683624, -0.031562, -0.729152,
		-0.280071, 0.911230, -0.302027,
		0.673957, 0.410687, 0.614099,
		31.607834, 29.813555, 28.264181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.355556, 36.420319, 49.836815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120415, 36.198494, 49.601227>,  <36.979328, 36.065399, 49.459873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120415, 36.198494, 49.601227>,  <37.355556, 36.420319, 49.836815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120415, 36.198494, 49.601227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619822, -0.159097, 0.768445,
		-0.519853, 0.816793, -0.250203,
		-0.587855, -0.554560, -0.588974,
		36.944057, 36.032127, 49.424534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794189, 36.700169, 49.857468>,  <37.355556, 36.420319, 49.836815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794189, 36.700169, 49.857468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675770, 36.331882, 49.755775>,  <36.604717, 36.110909, 49.694759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675770, 36.331882, 49.755775>,  <36.794189, 36.700169, 49.857468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675770, 36.331882, 49.755775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563361, -0.046632, 0.824894,
		-0.771351, 0.387430, -0.504891,
		-0.296045, -0.920719, -0.254233,
		36.586956, 36.055668, 49.679504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089550, 36.654869, 50.049824>,  <36.794189, 36.700169, 49.857468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089550, 36.654869, 50.049824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198009, 36.271473, 50.014549>,  <36.263084, 36.041435, 49.993385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198009, 36.271473, 50.014549>,  <36.089550, 36.654869, 50.049824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198009, 36.271473, 50.014549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455412, -0.208467, 0.865529,
		-0.847984, -0.194526, -0.493034,
		0.271150, -0.958489, -0.088187,
		36.279354, 35.983925, 49.988094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540806, 36.282528, 50.292450>,  <36.089550, 36.654869, 50.049824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540806, 36.282528, 50.292450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846107, 36.027836, 50.336304>,  <36.029289, 35.875019, 50.362617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846107, 36.027836, 50.336304>,  <35.540806, 36.282528, 50.292450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846107, 36.027836, 50.336304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389096, -0.317509, 0.864750,
		-0.515806, -0.702679, -0.490089,
		0.763249, -0.636734, 0.109637,
		36.075081, 35.836815, 50.369194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223381, 35.601120, 50.376511>,  <35.540806, 36.282528, 50.292450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223381, 35.601120, 50.376511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575676, 35.614651, 50.565468>,  <35.787052, 35.622768, 50.678841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575676, 35.614651, 50.565468>,  <35.223381, 35.601120, 50.376511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575676, 35.614651, 50.565468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356499, -0.609283, 0.708296,
		0.311776, -0.792231, -0.524562,
		0.880741, 0.033823, 0.472390,
		35.839897, 35.624798, 50.707184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287228, 34.990932, 50.575520>,  <35.223381, 35.601120, 50.376511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287228, 34.990932, 50.575520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552444, 35.187645, 50.801273>,  <35.711575, 35.305672, 50.936726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552444, 35.187645, 50.801273>,  <35.287228, 34.990932, 50.575520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552444, 35.187645, 50.801273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160814, -0.642760, 0.748999,
		0.731108, -0.587376, -0.347089,
		0.663039, 0.491782, 0.564385,
		35.751354, 35.335178, 50.970589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767105, 34.491058, 50.812172>,  <35.287228, 34.990932, 50.575520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767105, 34.491058, 50.812172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780033, 34.802334, 51.063053>,  <35.787788, 34.989098, 51.213581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780033, 34.802334, 51.063053>,  <35.767105, 34.491058, 50.812172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780033, 34.802334, 51.063053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069042, -0.627771, 0.775330,
		0.997090, 0.018244, -0.074017,
		0.032321, 0.778184, 0.627203,
		35.789730, 35.035789, 51.251213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045486, 34.122021, 51.386269>,  <35.767105, 34.491058, 50.812172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045486, 34.122021, 51.386269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939087, 34.478840, 51.532417>,  <35.875248, 34.692932, 51.620106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939087, 34.478840, 51.532417>,  <36.045486, 34.122021, 51.386269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939087, 34.478840, 51.532417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085349, -0.355743, 0.930679,
		0.960187, 0.278746, 0.018493,
		-0.266002, 0.892047, 0.365370,
		35.859287, 34.746452, 51.642029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322140, 34.092731, 51.964077>,  <36.045486, 34.122021, 51.386269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322140, 34.092731, 51.964077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069225, 34.398514, 52.014393>,  <35.917477, 34.581982, 52.044582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069225, 34.398514, 52.014393>,  <36.322140, 34.092731, 51.964077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069225, 34.398514, 52.014393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196714, -0.315455, 0.928327,
		0.749345, 0.562224, 0.349837,
		-0.632285, 0.764456, 0.125788,
		35.879539, 34.627850, 52.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477898, 34.375942, 52.584858>,  <36.322140, 34.092731, 51.964077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477898, 34.375942, 52.584858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095032, 34.463795, 52.509388>,  <35.865311, 34.516506, 52.464108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095032, 34.463795, 52.509388>,  <36.477898, 34.375942, 52.584858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095032, 34.463795, 52.509388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260107, -0.365980, 0.893534,
		0.127197, 0.904335, 0.407431,
		-0.957165, 0.219631, -0.188672,
		35.807880, 34.529682, 52.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183273, 34.493019, 53.254646>,  <36.477898, 34.375942, 52.584858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183273, 34.493019, 53.254646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875580, 34.434658, 53.005810>,  <35.690964, 34.399639, 52.856506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875580, 34.434658, 53.005810>,  <36.183273, 34.493019, 53.254646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875580, 34.434658, 53.005810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533923, -0.388056, 0.751225,
		-0.351014, 0.910013, 0.220601,
		-0.769230, -0.145907, -0.622090,
		35.644810, 34.390884, 52.819183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634827, 34.784901, 53.662491>,  <36.183273, 34.493019, 53.254646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634827, 34.784901, 53.662491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494987, 34.517830, 53.399586>,  <35.411083, 34.357590, 53.241844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494987, 34.517830, 53.399586>,  <35.634827, 34.784901, 53.662491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494987, 34.517830, 53.399586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552141, -0.419940, 0.720271,
		-0.756917, 0.614707, -0.221840,
		-0.349596, -0.667672, -0.657264,
		35.390110, 34.317528, 53.202408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943157, 34.850750, 53.477535>,  <35.634827, 34.784901, 53.662491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943157, 34.850750, 53.477535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032707, 34.460903, 53.477242>,  <35.086437, 34.226994, 53.477066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032707, 34.460903, 53.477242>,  <34.943157, 34.850750, 53.477535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032707, 34.460903, 53.477242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330730, -0.076679, 0.940605,
		-0.916788, -0.210331, -0.339502,
		0.223871, -0.974619, -0.000735,
		35.099869, 34.168518, 53.477020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376389, 34.551701, 53.741776>,  <34.943157, 34.850750, 53.477535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376389, 34.551701, 53.741776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693523, 34.317635, 53.809879>,  <34.883804, 34.177197, 53.850742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693523, 34.317635, 53.809879>,  <34.376389, 34.551701, 53.741776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693523, 34.317635, 53.809879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341966, -0.195921, 0.919061,
		-0.504446, -0.786890, -0.355441,
		0.792839, -0.585166, 0.170258,
		34.931374, 34.142086, 53.860958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606415, 34.461044, 53.700390>,  <34.376389, 34.551701, 53.741776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606415, 34.461044, 53.700390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245914, 34.634258, 53.706478>,  <33.029613, 34.738186, 53.710129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245914, 34.634258, 53.706478>,  <33.606415, 34.461044, 53.700390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245914, 34.634258, 53.706478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142909, 0.330217, -0.933024,
		-0.409054, -0.838714, -0.359492,
		-0.901250, 0.433031, 0.015217,
		32.975540, 34.764168, 53.711044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200672, 34.326275, 53.063507>,  <33.606415, 34.461044, 53.700390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200672, 34.326275, 53.063507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011948, 34.658493, 53.181892>,  <32.898712, 34.857822, 53.252922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011948, 34.658493, 53.181892>,  <33.200672, 34.326275, 53.063507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011948, 34.658493, 53.181892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012624, 0.341999, -0.939615,
		-0.881607, -0.439589, -0.171846,
		-0.471816, 0.830541, 0.295959,
		32.870403, 34.907654, 53.270679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693657, 34.432957, 52.594246>,  <33.200672, 34.326275, 53.063507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693657, 34.432957, 52.594246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741524, 34.793789, 52.760101>,  <32.770245, 35.010288, 52.859615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741524, 34.793789, 52.760101>,  <32.693657, 34.432957, 52.594246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741524, 34.793789, 52.760101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022162, 0.415109, -0.909502,
		-0.992566, 0.118028, 0.029684,
		0.119669, 0.902083, 0.414639,
		32.777424, 35.064415, 52.884495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151020, 34.907238, 52.371380>,  <32.693657, 34.432957, 52.594246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151020, 34.907238, 52.371380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441231, 35.153557, 52.494278>,  <32.615356, 35.301346, 52.568016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441231, 35.153557, 52.494278>,  <32.151020, 34.907238, 52.371380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441231, 35.153557, 52.494278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000149, 0.446602, -0.894733,
		-0.688189, 0.649111, 0.324115,
		0.725531, 0.615794, 0.307250,
		32.658890, 35.338295, 52.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910189, 35.665379, 52.171703>,  <32.151020, 34.907238, 52.371380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910189, 35.665379, 52.171703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305321, 35.646885, 52.231110>,  <32.542400, 35.635788, 52.266754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305321, 35.646885, 52.231110>,  <31.910189, 35.665379, 52.171703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305321, 35.646885, 52.231110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143928, 0.633826, -0.759967,
		-0.058998, 0.772093, 0.632766,
		0.987828, -0.046236, 0.148520,
		32.601669, 35.633015, 52.275665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118084, 36.285965, 51.833130>,  <31.910189, 35.665379, 52.171703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118084, 36.285965, 51.833130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441296, 36.052116, 51.862289>,  <32.635223, 35.911808, 51.879787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441296, 36.052116, 51.862289>,  <32.118084, 36.285965, 51.833130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441296, 36.052116, 51.862289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347200, 0.372562, -0.860610,
		0.475968, 0.720707, 0.504020,
		0.808026, -0.584619, 0.072901,
		32.683704, 35.876732, 51.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552975, 36.663708, 51.414642>,  <32.118084, 36.285965, 51.833130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552975, 36.663708, 51.414642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759834, 36.330429, 51.492958>,  <32.883949, 36.130463, 51.539948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759834, 36.330429, 51.492958>,  <32.552975, 36.663708, 51.414642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759834, 36.330429, 51.492958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576627, 0.170125, -0.799099,
		0.632499, 0.526155, 0.568425,
		0.517153, -0.833198, 0.195791,
		32.914982, 36.080471, 51.551697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249115, 36.896915, 51.371948>,  <32.552975, 36.663708, 51.414642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249115, 36.896915, 51.371948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207104, 36.503109, 51.315807>,  <33.181896, 36.266827, 51.282124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207104, 36.503109, 51.315807>,  <33.249115, 36.896915, 51.371948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207104, 36.503109, 51.315807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477321, 0.073910, -0.875615,
		0.872430, -0.158962, 0.462166,
		-0.105031, -0.984514, -0.140357,
		33.175594, 36.207756, 51.273701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875870, 36.701511, 51.206242>,  <33.249115, 36.896915, 51.371948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875870, 36.701511, 51.206242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627281, 36.427692, 51.053837>,  <33.478130, 36.263401, 50.962395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627281, 36.427692, 51.053837>,  <33.875870, 36.701511, 51.206242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627281, 36.427692, 51.053837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470089, 0.063225, -0.880351,
		0.626731, -0.726223, 0.282506,
		-0.621470, -0.684546, -0.381014,
		33.440842, 36.222328, 50.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280411, 36.297543, 50.723671>,  <33.875870, 36.701511, 51.206242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280411, 36.297543, 50.723671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904366, 36.228722, 50.605976>,  <33.678738, 36.187428, 50.535358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904366, 36.228722, 50.605976>,  <34.280411, 36.297543, 50.723671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904366, 36.228722, 50.605976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328386, -0.225884, -0.917136,
		0.091336, -0.958839, 0.268858,
		-0.940117, -0.172056, -0.294238,
		33.622330, 36.177105, 50.517704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323261, 35.702038, 50.302338>,  <34.280411, 36.297543, 50.723671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323261, 35.702038, 50.302338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972015, 35.863197, 50.199120>,  <33.761269, 35.959892, 50.137188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972015, 35.863197, 50.199120>,  <34.323261, 35.702038, 50.302338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972015, 35.863197, 50.199120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200790, -0.179225, -0.963100,
		-0.434277, -0.897527, 0.076483,
		-0.878116, 0.402895, -0.258048,
		33.708580, 35.984066, 50.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940861, 35.333000, 49.778759>,  <34.323261, 35.702038, 50.302338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940861, 35.333000, 49.778759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719421, 35.664135, 49.742508>,  <33.586555, 35.862816, 49.720757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719421, 35.664135, 49.742508>,  <33.940861, 35.333000, 49.778759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719421, 35.664135, 49.742508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128607, -0.192504, -0.972832,
		-0.822791, -0.526906, 0.213036,
		-0.553602, 0.827835, -0.090627,
		33.553341, 35.912487, 49.715321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346142, 35.190762, 49.371944>,  <33.940861, 35.333000, 49.778759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346142, 35.190762, 49.371944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440361, 35.577354, 49.331108>,  <33.496895, 35.809311, 49.306606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440361, 35.577354, 49.331108>,  <33.346142, 35.190762, 49.371944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440361, 35.577354, 49.331108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144745, -0.068988, -0.987061,
		-0.961022, 0.247282, 0.123643,
		0.235552, 0.966484, -0.102092,
		33.511028, 35.867298, 49.300480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156258, 35.249718, 48.676521>,  <33.346142, 35.190762, 49.371944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156258, 35.249718, 48.676521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345856, 35.583885, 48.787811>,  <33.459614, 35.784386, 48.854588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345856, 35.583885, 48.787811>,  <33.156258, 35.249718, 48.676521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345856, 35.583885, 48.787811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074575, 0.276755, -0.958043,
		-0.877366, 0.474852, 0.068878,
		0.473991, 0.835417, 0.278227,
		33.488052, 35.834511, 48.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383018, 35.271210, 48.527763>,  <33.156258, 35.249718, 48.676521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383018, 35.271210, 48.527763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095966, 35.050972, 48.357185>,  <31.923737, 34.918827, 48.254837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095966, 35.050972, 48.357185>,  <32.383018, 35.271210, 48.527763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095966, 35.050972, 48.357185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160714, -0.464877, 0.870666,
		-0.677631, 0.693349, 0.245119,
		-0.717626, -0.550596, -0.426446,
		31.880678, 34.885792, 48.229252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779764, 35.350498, 48.951160>,  <32.383018, 35.271210, 48.527763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779764, 35.350498, 48.951160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720364, 35.008602, 48.752216>,  <31.684723, 34.803463, 48.632851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720364, 35.008602, 48.752216>,  <31.779764, 35.350498, 48.951160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720364, 35.008602, 48.752216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167151, -0.474004, 0.864512,
		-0.974684, 0.211514, -0.072481,
		-0.148500, -0.854741, -0.497359,
		31.675814, 34.752178, 48.603008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122717, 35.150524, 49.077469>,  <31.779764, 35.350498, 48.951160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122717, 35.150524, 49.077469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.310297, 34.809574, 48.984913>,  <31.422844, 34.605003, 48.929379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.310297, 34.809574, 48.984913>,  <31.122717, 35.150524, 49.077469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310297, 34.809574, 48.984913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350443, -0.420051, 0.837106,
		-0.810726, -0.311470, -0.495692,
		0.468949, -0.852375, -0.231394,
		31.450981, 34.553860, 48.915493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603643, 34.670837, 49.088799>,  <31.122717, 35.150524, 49.077469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603643, 34.670837, 49.088799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944654, 34.470161, 49.147461>,  <31.149261, 34.349758, 49.182659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944654, 34.470161, 49.147461>,  <30.603643, 34.670837, 49.088799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944654, 34.470161, 49.147461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377988, -0.397954, 0.835917,
		-0.360999, -0.768081, -0.528897,
		0.852529, -0.501681, 0.146664,
		31.200413, 34.319656, 49.191460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448549, 33.954018, 49.323650>,  <30.603643, 34.670837, 49.088799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448549, 33.954018, 49.323650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823895, 33.988628, 49.457508>,  <31.049101, 34.009396, 49.537823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823895, 33.988628, 49.457508>,  <30.448549, 33.954018, 49.323650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823895, 33.988628, 49.457508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273459, -0.406306, 0.871857,
		0.211410, -0.909631, -0.357600,
		0.938363, 0.086530, 0.334644,
		31.105404, 34.014587, 49.557899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496746, 33.477093, 49.802631>,  <30.448549, 33.954018, 49.323650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496746, 33.477093, 49.802631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846542, 33.643818, 49.901852>,  <31.056421, 33.743855, 49.961384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846542, 33.643818, 49.901852>,  <30.496746, 33.477093, 49.802631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846542, 33.643818, 49.901852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117473, -0.314176, 0.942069,
		0.470598, -0.852972, -0.225780,
		0.874493, 0.416813, 0.248052,
		31.108891, 33.768860, 49.976269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831738, 32.983612, 50.206619>,  <30.496746, 33.477093, 49.802631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831738, 32.983612, 50.206619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985052, 33.337440, 50.312927>,  <31.077040, 33.549736, 50.376713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985052, 33.337440, 50.312927>,  <30.831738, 32.983612, 50.206619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985052, 33.337440, 50.312927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326127, -0.139602, 0.934961,
		0.864138, -0.445031, 0.234974,
		0.383284, 0.884567, 0.265772,
		31.100037, 33.602810, 50.392658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532370, 32.914288, 50.032471>,  <30.831738, 32.983612, 50.206619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532370, 32.914288, 50.032471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493267, 32.516247, 50.026466>,  <31.469807, 32.277424, 50.022865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493267, 32.516247, 50.026466>,  <31.532370, 32.914288, 50.032471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493267, 32.516247, 50.026466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297635, 0.043623, -0.953683,
		0.949662, -0.088760, -0.300440,
		-0.097755, -0.995097, -0.015009,
		31.463940, 32.217716, 50.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894035, 32.660976, 49.410339>,  <31.532370, 32.914288, 50.032471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894035, 32.660976, 49.410339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627506, 32.373104, 49.488396>,  <31.467588, 32.200382, 49.535229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627506, 32.373104, 49.488396>,  <31.894035, 32.660976, 49.410339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627506, 32.373104, 49.488396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108288, -0.165535, -0.980241,
		0.737760, -0.674286, 0.032366,
		-0.666321, -0.719678, 0.195142,
		31.427610, 32.157200, 49.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033855, 32.114410, 48.918182>,  <31.894035, 32.660976, 49.410339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033855, 32.114410, 48.918182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648678, 32.062248, 49.012608>,  <31.417570, 32.030952, 49.069263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648678, 32.062248, 49.012608>,  <32.033855, 32.114410, 48.918182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648678, 32.062248, 49.012608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193016, -0.278069, -0.940969,
		0.188348, -0.951668, 0.242596,
		-0.962949, -0.130404, 0.236060,
		31.359793, 32.023129, 49.083427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891014, 31.450478, 48.845924>,  <32.033855, 32.114410, 48.918182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891014, 31.450478, 48.845924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550688, 31.659065, 48.820061>,  <31.346493, 31.784218, 48.804543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550688, 31.659065, 48.820061>,  <31.891014, 31.450478, 48.845924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550688, 31.659065, 48.820061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157261, -0.370106, -0.915582,
		-0.501380, -0.768823, 0.396899,
		-0.850816, 0.521471, -0.064658,
		31.295443, 31.815506, 48.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423981, 30.992393, 48.553997>,  <31.891014, 31.450478, 48.845924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423981, 30.992393, 48.553997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262587, 31.353630, 48.495174>,  <31.165751, 31.570372, 48.459881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262587, 31.353630, 48.495174>,  <31.423981, 30.992393, 48.553997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262587, 31.353630, 48.495174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180898, -0.236284, -0.954697,
		-0.896926, -0.358603, 0.258705,
		-0.403484, 0.903092, -0.147058,
		31.141541, 31.624557, 48.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073418, 30.847858, 47.880341>,  <31.423981, 30.992393, 48.553997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073418, 30.847858, 47.880341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017765, 31.241611, 47.923492>,  <30.984373, 31.477863, 47.949383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017765, 31.241611, 47.923492>,  <31.073418, 30.847858, 47.880341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017765, 31.241611, 47.923492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026457, 0.105203, -0.994099,
		-0.989920, -0.141164, 0.011407,
		-0.139131, 0.984381, 0.107877,
		30.976027, 31.536926, 47.955856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398916, 31.055998, 47.675167>,  <31.073418, 30.847858, 47.880341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398916, 31.055998, 47.675167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635851, 31.375664, 47.634235>,  <30.778011, 31.567463, 47.609676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635851, 31.375664, 47.634235>,  <30.398916, 31.055998, 47.675167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635851, 31.375664, 47.634235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218830, 0.037352, -0.975048,
		-0.775402, 0.599950, 0.197006,
		0.592338, 0.799165, -0.102324,
		30.813553, 31.615414, 47.603539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.412910, 31.929241, 52.435215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445415, 32.325497, 52.391350>,  <35.464920, 32.563251, 52.365028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445415, 32.325497, 52.391350>,  <35.412910, 31.929241, 52.435215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445415, 32.325497, 52.391350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665600, -0.135839, -0.733842,
		-0.741871, -0.013359, -0.670409,
		0.081264, 0.990641, -0.109667,
		35.469795, 32.622688, 52.358448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140144, 32.194977, 51.617352>,  <35.412910, 31.929241, 52.435215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140144, 32.194977, 51.617352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380489, 32.452892, 51.806335>,  <35.524696, 32.607639, 51.919727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380489, 32.452892, 51.806335>,  <35.140144, 32.194977, 51.617352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380489, 32.452892, 51.806335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638054, -0.030830, -0.769374,
		-0.481515, 0.763742, -0.429932,
		0.600858, 0.644785, 0.472464,
		35.560745, 32.646328, 51.948074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260151, 32.624870, 51.130901>,  <35.140144, 32.194977, 51.617352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260151, 32.624870, 51.130901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580551, 32.692024, 51.360760>,  <35.772789, 32.732319, 51.498676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580551, 32.692024, 51.360760>,  <35.260151, 32.624870, 51.130901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580551, 32.692024, 51.360760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594860, -0.115111, -0.795545,
		-0.067415, 0.979062, -0.192073,
		0.800998, 0.167888, 0.574645,
		35.820850, 32.742390, 51.533154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605682, 33.017868, 50.755852>,  <35.260151, 32.624870, 51.130901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605682, 33.017868, 50.755852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890820, 32.948341, 51.027626>,  <36.061901, 32.906624, 51.190693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890820, 32.948341, 51.027626>,  <35.605682, 33.017868, 50.755852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890820, 32.948341, 51.027626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688983, -0.007340, -0.724740,
		0.130960, 0.984750, 0.114526,
		0.712847, -0.173818, 0.679438,
		36.104675, 32.896194, 51.231457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177555, 33.536713, 50.730049>,  <35.605682, 33.017868, 50.755852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177555, 33.536713, 50.730049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.359509, 33.227390, 50.906715>,  <36.468681, 33.041798, 51.012714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.359509, 33.227390, 50.906715>,  <36.177555, 33.536713, 50.730049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359509, 33.227390, 50.906715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764200, 0.084316, -0.639444,
		0.457248, 0.628399, 0.629317,
		0.454887, -0.773309, 0.441669,
		36.495975, 32.995399, 51.039215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887497, 33.713978, 50.857704>,  <36.177555, 33.536713, 50.730049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887497, 33.713978, 50.857704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.887329, 33.314148, 50.846046>,  <36.887226, 33.074249, 50.839054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.887329, 33.314148, 50.846046>,  <36.887497, 33.713978, 50.857704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887329, 33.314148, 50.846046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768530, 0.018321, -0.639552,
		0.639814, -0.022667, 0.768196,
		-0.000423, -0.999575, -0.029143,
		36.887203, 33.014275, 50.837303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642223, 33.398209, 50.866539>,  <36.887497, 33.713978, 50.857704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642223, 33.398209, 50.866539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426067, 33.082233, 50.750618>,  <37.296375, 32.892651, 50.681065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426067, 33.082233, 50.750618>,  <37.642223, 33.398209, 50.866539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426067, 33.082233, 50.750618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691382, -0.220559, -0.688000,
		0.479557, -0.572151, 0.665334,
		-0.540386, -0.789935, -0.289804,
		37.263950, 32.845253, 50.663677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109779, 32.919933, 50.750298>,  <37.642223, 33.398209, 50.866539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109779, 32.919933, 50.750298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802948, 32.794373, 50.526497>,  <37.618847, 32.719036, 50.392216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802948, 32.794373, 50.526497>,  <38.109779, 32.919933, 50.750298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802948, 32.794373, 50.526497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638332, -0.286229, -0.714566,
		0.064160, -0.905282, 0.419938,
		-0.767083, -0.313907, -0.559506,
		37.572823, 32.700199, 50.358646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433559, 32.389919, 50.324474>,  <38.109779, 32.919933, 50.750298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433559, 32.389919, 50.324474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.083462, 32.461121, 50.144577>,  <37.873405, 32.503841, 50.036640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.083462, 32.461121, 50.144577>,  <38.433559, 32.389919, 50.324474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083462, 32.461121, 50.144577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383388, -0.311597, -0.869437,
		-0.294898, -0.933393, 0.204480,
		-0.875242, 0.178000, -0.449741,
		37.820889, 32.514523, 50.009655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480408, 31.974861, 49.727337>,  <38.433559, 32.389919, 50.324474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480408, 31.974861, 49.727337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.153370, 32.182438, 49.627552>,  <37.957146, 32.306984, 49.567680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.153370, 32.182438, 49.627552>,  <38.480408, 31.974861, 49.727337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153370, 32.182438, 49.627552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170058, -0.196297, -0.965685,
		-0.550107, -0.831964, 0.072241,
		-0.817596, 0.518945, -0.249466,
		37.908092, 32.338120, 49.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012955, 31.547815, 49.191814>,  <38.480408, 31.974861, 49.727337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012955, 31.547815, 49.191814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904671, 31.929859, 49.143681>,  <37.839699, 32.159084, 49.114799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904671, 31.929859, 49.143681>,  <38.012955, 31.547815, 49.191814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904671, 31.929859, 49.143681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146172, -0.164339, -0.975513,
		-0.951498, -0.246495, 0.184099,
		-0.270713, 0.955109, -0.120338,
		37.823456, 32.216393, 49.107578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414253, 31.552717, 48.768131>,  <38.012955, 31.547815, 49.191814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414253, 31.552717, 48.768131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.570515, 31.916445, 48.710823>,  <37.664272, 32.134682, 48.676437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.570515, 31.916445, 48.710823>,  <37.414253, 31.552717, 48.768131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570515, 31.916445, 48.710823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062726, -0.181567, -0.981376,
		-0.918399, 0.374391, -0.127967,
		0.390653, 0.909321, -0.143267,
		37.687710, 32.189240, 48.667843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636826, 31.726059, 48.948582>,  <37.414253, 31.552717, 48.768131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636826, 31.726059, 48.948582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392628, 31.506157, 48.720524>,  <36.246109, 31.374216, 48.583687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392628, 31.506157, 48.720524>,  <36.636826, 31.726059, 48.948582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392628, 31.506157, 48.720524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338101, -0.470085, 0.815296,
		-0.716231, 0.690500, 0.101110,
		-0.610492, -0.549755, -0.570148,
		36.209480, 31.341230, 48.549480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006012, 31.716778, 49.362072>,  <36.636826, 31.726059, 48.948582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006012, 31.716778, 49.362072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.052330, 31.404640, 49.116257>,  <36.080120, 31.217358, 48.968769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.052330, 31.404640, 49.116257>,  <36.006012, 31.716778, 49.362072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052330, 31.404640, 49.116257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318055, -0.615251, 0.721324,
		-0.940974, 0.111927, -0.319438,
		0.115798, -0.780346, -0.614534,
		36.087070, 31.170536, 48.931896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345207, 31.374487, 49.245514>,  <36.006012, 31.716778, 49.362072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345207, 31.374487, 49.245514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604599, 31.081060, 49.164173>,  <35.760235, 30.905005, 49.115368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604599, 31.081060, 49.164173>,  <35.345207, 31.374487, 49.245514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604599, 31.081060, 49.164173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412817, -0.563337, 0.715704,
		-0.639572, -0.380175, -0.668143,
		0.648483, -0.733565, -0.203352,
		35.799145, 30.860991, 49.103168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009361, 30.752832, 49.290703>,  <35.345207, 31.374487, 49.245514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009361, 30.752832, 49.290703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.386475, 30.624832, 49.328121>,  <35.612743, 30.548033, 49.350571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.386475, 30.624832, 49.328121>,  <35.009361, 30.752832, 49.290703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386475, 30.624832, 49.328121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255010, -0.511415, 0.820624,
		-0.214758, -0.797530, -0.563759,
		0.942788, -0.320000, 0.093547,
		35.669312, 30.528831, 49.356186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004189, 30.121418, 49.308395>,  <35.009361, 30.752832, 49.290703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004189, 30.121418, 49.308395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357231, 30.189642, 49.483631>,  <35.569057, 30.230576, 49.588772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357231, 30.189642, 49.483631>,  <35.004189, 30.121418, 49.308395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357231, 30.189642, 49.483631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220319, -0.673133, 0.705940,
		0.415294, -0.719584, -0.556533,
		0.882604, 0.170558, 0.438086,
		35.622013, 30.240808, 49.615055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271049, 29.428778, 49.532852>,  <35.004189, 30.121418, 49.308395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271049, 29.428778, 49.532852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500381, 29.683128, 49.739521>,  <35.637981, 29.835739, 49.863522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500381, 29.683128, 49.739521>,  <35.271049, 29.428778, 49.532852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500381, 29.683128, 49.739521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078720, -0.584941, 0.807247,
		0.815531, -0.503495, -0.285310,
		0.573335, 0.635875, 0.516672,
		35.672382, 29.873892, 49.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729748, 29.047207, 50.073307>,  <35.271049, 29.428778, 49.532852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729748, 29.047207, 50.073307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.710949, 29.427959, 50.194443>,  <35.699669, 29.656412, 50.267124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.710949, 29.427959, 50.194443>,  <35.729748, 29.047207, 50.073307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710949, 29.427959, 50.194443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238430, -0.305100, 0.921990,
		0.970022, -0.028876, 0.241296,
		-0.046996, 0.951883, 0.302839,
		35.696850, 29.713524, 50.285294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852577, 28.951498, 50.677113>,  <35.729748, 29.047207, 50.073307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852577, 28.951498, 50.677113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730003, 29.332176, 50.669407>,  <35.656460, 29.560583, 50.664783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730003, 29.332176, 50.669407>,  <35.852577, 28.951498, 50.677113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730003, 29.332176, 50.669407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363790, -0.098388, 0.926270,
		0.879633, 0.290850, 0.376367,
		-0.306435, 0.951697, -0.019263,
		35.638073, 29.617685, 50.663628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135921, 29.322109, 51.321217>,  <35.852577, 28.951498, 50.677113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135921, 29.322109, 51.321217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.819824, 29.525612, 51.184582>,  <35.630165, 29.647713, 51.102600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.819824, 29.525612, 51.184582>,  <36.135921, 29.322109, 51.321217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819824, 29.525612, 51.184582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422966, -0.049490, 0.904793,
		0.443414, 0.859487, 0.254296,
		-0.790243, 0.508757, -0.341589,
		35.582752, 29.678240, 51.082104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003014, 29.793873, 51.857220>,  <36.135921, 29.322109, 51.321217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003014, 29.793873, 51.857220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661167, 29.749987, 51.654205>,  <35.456059, 29.723656, 51.532394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661167, 29.749987, 51.654205>,  <36.003014, 29.793873, 51.857220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661167, 29.749987, 51.654205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474933, -0.230013, 0.849431,
		-0.209935, 0.966983, 0.144466,
		-0.854615, -0.109714, -0.507540,
		35.404781, 29.717073, 51.501942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401829, 30.133417, 52.319550>,  <36.003014, 29.793873, 51.857220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401829, 30.133417, 52.319550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212341, 29.901423, 52.054459>,  <35.098648, 29.762226, 51.895405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212341, 29.901423, 52.054459>,  <35.401829, 30.133417, 52.319550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212341, 29.901423, 52.054459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742969, -0.140844, 0.654340,
		-0.472849, 0.802358, -0.364191,
		-0.473721, -0.579986, -0.662725,
		35.070225, 29.727427, 51.855640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678238, 30.366182, 52.382526>,  <35.401829, 30.133417, 52.319550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678238, 30.366182, 52.382526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641624, 29.997026, 52.232914>,  <34.619656, 29.775534, 52.143147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641624, 29.997026, 52.232914>,  <34.678238, 30.366182, 52.382526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641624, 29.997026, 52.232914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777657, -0.168360, 0.605727,
		-0.621990, 0.346313, -0.702279,
		-0.091536, -0.922888, -0.374031,
		34.614162, 29.720160, 52.120705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959873, 30.253233, 51.948704>,  <34.678238, 30.366182, 52.382526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959873, 30.253233, 51.948704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115124, 29.919754, 52.105831>,  <34.208275, 29.719667, 52.200108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115124, 29.919754, 52.105831>,  <33.959873, 30.253233, 51.948704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115124, 29.919754, 52.105831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766103, -0.054931, 0.640366,
		-0.512294, -0.549483, -0.660018,
		0.388125, -0.833697, 0.392820,
		34.231560, 29.669645, 52.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368534, 30.010342, 52.270779>,  <33.959873, 30.253233, 51.948704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368534, 30.010342, 52.270779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.657585, 29.784513, 52.430313>,  <33.831017, 29.649017, 52.526035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.657585, 29.784513, 52.430313>,  <33.368534, 30.010342, 52.270779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657585, 29.784513, 52.430313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468938, 0.023506, 0.882918,
		-0.507843, -0.825052, -0.247761,
		0.722629, -0.564568, 0.398835,
		33.874374, 29.615143, 52.549965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825806, 30.499060, 51.920364>,  <33.368534, 30.010342, 52.270779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825806, 30.499060, 51.920364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476559, 30.479084, 52.114342>,  <32.267010, 30.467098, 52.230728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476559, 30.479084, 52.114342>,  <32.825806, 30.499060, 51.920364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476559, 30.479084, 52.114342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430311, 0.546471, -0.718472,
		-0.229130, -0.835988, -0.498622,
		-0.873116, -0.049939, 0.484948,
		32.214622, 30.464102, 52.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329800, 30.314762, 51.420021>,  <32.825806, 30.499060, 51.920364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329800, 30.314762, 51.420021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127686, 30.499405, 51.711666>,  <32.006416, 30.610191, 51.886654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127686, 30.499405, 51.711666>,  <32.329800, 30.314762, 51.420021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127686, 30.499405, 51.711666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455034, 0.575374, -0.679624,
		-0.733231, -0.675176, -0.080681,
		-0.505287, 0.461609, 0.729110,
		31.976099, 30.637888, 51.930401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647112, 30.318899, 51.200111>,  <32.329800, 30.314762, 51.420021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647112, 30.318899, 51.200111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675009, 30.625275, 51.455761>,  <31.691748, 30.809099, 51.609150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675009, 30.625275, 51.455761>,  <31.647112, 30.318899, 51.200111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675009, 30.625275, 51.455761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412281, 0.605534, -0.680700,
		-0.908383, -0.216023, 0.358014,
		0.069742, 0.765939, 0.639120,
		31.695932, 30.855057, 51.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906622, 30.616844, 51.278156>,  <31.647112, 30.318899, 51.200111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906622, 30.616844, 51.278156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.185032, 30.885801, 51.378902>,  <31.352077, 31.047176, 51.439350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.185032, 30.885801, 51.378902>,  <30.906622, 30.616844, 51.278156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185032, 30.885801, 51.378902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383906, 0.644928, -0.660821,
		-0.606766, 0.363256, 0.707022,
		0.696025, 0.672394, 0.251864,
		31.393839, 31.087519, 51.454460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526831, 31.189285, 51.364880>,  <30.906622, 30.616844, 51.278156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526831, 31.189285, 51.364880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903830, 31.297541, 51.286442>,  <31.130030, 31.362494, 51.239380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.903830, 31.297541, 51.286442>,  <30.526831, 31.189285, 51.364880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903830, 31.297541, 51.286442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325526, 0.610475, -0.722048,
		-0.075705, 0.744362, 0.663471,
		0.942498, 0.270639, -0.196093,
		31.186579, 31.378733, 51.227615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516619, 31.869970, 51.318840>,  <30.526831, 31.189285, 51.364880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516619, 31.869970, 51.318840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.842503, 31.758408, 51.115482>,  <31.038033, 31.691469, 50.993469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.842503, 31.758408, 51.115482>,  <30.516619, 31.869970, 51.318840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842503, 31.758408, 51.115482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207145, 0.678901, -0.704404,
		0.541610, 0.679195, 0.495332,
		0.814708, -0.278907, -0.508391,
		31.086916, 31.674736, 50.962963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756620, 32.491684, 51.116917>,  <30.516619, 31.869970, 51.318840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756620, 32.491684, 51.116917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961960, 32.250732, 50.872421>,  <31.085163, 32.106159, 50.725723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961960, 32.250732, 50.872421>,  <30.756620, 32.491684, 51.116917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961960, 32.250732, 50.872421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041939, 0.693786, -0.718959,
		0.857155, 0.394711, 0.330891,
		0.513349, -0.602382, -0.611236,
		31.115965, 32.070019, 50.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369244, 32.857342, 50.829334>,  <30.756620, 32.491684, 51.116917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369244, 32.857342, 50.829334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281290, 33.247494, 50.822582>,  <31.228518, 33.481586, 50.818531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281290, 33.247494, 50.822582>,  <31.369244, 32.857342, 50.829334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281290, 33.247494, 50.822582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040294, 0.008204, 0.999154,
		0.974693, 0.220379, 0.037498,
		-0.219885, 0.975380, -0.016876,
		31.215324, 33.540108, 50.817520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904806, 33.214951, 51.250950>,  <31.369244, 32.857342, 50.829334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904806, 33.214951, 51.250950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.580074, 33.448318, 51.241528>,  <31.385235, 33.588341, 51.235874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.580074, 33.448318, 51.241528>,  <31.904806, 33.214951, 51.250950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580074, 33.448318, 51.241528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057524, 0.120052, 0.991100,
		0.581057, 0.803247, -0.131023,
		-0.811827, 0.583422, -0.023551,
		31.336527, 33.623344, 51.234463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986069, 33.767056, 51.821560>,  <31.904806, 33.214951, 51.250950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986069, 33.767056, 51.821560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.590981, 33.795506, 51.765915>,  <31.353928, 33.812576, 51.732529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.590981, 33.795506, 51.765915>,  <31.986069, 33.767056, 51.821560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590981, 33.795506, 51.765915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125592, 0.168190, 0.977721,
		0.092942, 0.983185, -0.157191,
		-0.987719, 0.071129, -0.139112,
		31.294664, 33.816845, 51.724182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737581, 34.464451, 52.019718>,  <31.986069, 33.767056, 51.821560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737581, 34.464451, 52.019718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438267, 34.200092, 52.042645>,  <31.258678, 34.041477, 52.056400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438267, 34.200092, 52.042645>,  <31.737581, 34.464451, 52.019718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438267, 34.200092, 52.042645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202762, 0.310129, 0.928820,
		-0.631627, 0.683403, -0.366070,
		-0.748288, -0.660893, 0.057318,
		31.213779, 34.001823, 52.059841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295645, 34.854954, 52.358810>,  <31.737581, 34.464451, 52.019718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295645, 34.854954, 52.358810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.136364, 34.490070, 52.397423>,  <31.040796, 34.271141, 52.420589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.136364, 34.490070, 52.397423>,  <31.295645, 34.854954, 52.358810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136364, 34.490070, 52.397423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282297, 0.221997, 0.933287,
		-0.872779, 0.344385, -0.345912,
		-0.398202, -0.912204, 0.096536,
		31.016903, 34.216408, 52.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697393, 34.902802, 52.621300>,  <31.295645, 34.854954, 52.358810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697393, 34.902802, 52.621300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.735291, 34.515625, 52.714348>,  <30.758030, 34.283318, 52.770176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.735291, 34.515625, 52.714348>,  <30.697393, 34.902802, 52.621300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735291, 34.515625, 52.714348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234297, 0.205429, 0.950212,
		-0.967537, -0.144530, -0.207323,
		0.094744, -0.967941, 0.232623,
		30.763714, 34.225243, 52.784134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155611, 34.771435, 53.085476>,  <30.697393, 34.902802, 52.621300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155611, 34.771435, 53.085476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407057, 34.466850, 53.148743>,  <30.557924, 34.284100, 53.186703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407057, 34.466850, 53.148743>,  <30.155611, 34.771435, 53.085476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407057, 34.466850, 53.148743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159338, 0.072963, 0.984524,
		-0.761220, -0.644088, -0.075465,
		0.628614, -0.761463, 0.158168,
		30.595642, 34.238411, 53.196194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797211, 34.272198, 53.514778>,  <30.155611, 34.771435, 53.085476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797211, 34.272198, 53.514778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.186201, 34.203110, 53.577335>,  <30.419596, 34.161655, 53.614872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.186201, 34.203110, 53.577335>,  <29.797211, 34.272198, 53.514778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186201, 34.203110, 53.577335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136565, 0.121336, 0.983172,
		-0.188789, -0.977469, 0.094409,
		0.972475, -0.172719, 0.156395,
		30.477943, 34.151295, 53.624252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715961, 33.662930, 53.936504>,  <29.797211, 34.272198, 53.514778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715961, 33.662930, 53.936504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074654, 33.837818, 53.963963>,  <30.289869, 33.942749, 53.980438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074654, 33.837818, 53.963963>,  <29.715961, 33.662930, 53.936504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074654, 33.837818, 53.963963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091978, 0.032394, 0.995234,
		0.432910, -0.898772, 0.069263,
		0.896732, 0.437217, 0.068643,
		30.343674, 33.968983, 53.984554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.821297, 35.387119, 38.618359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000835, 35.703102, 38.785454>,  <35.108559, 35.892693, 38.885712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000835, 35.703102, 38.785454>,  <34.821297, 35.387119, 38.618359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000835, 35.703102, 38.785454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305078, -0.303922, 0.902529,
		0.839921, -0.532536, 0.104586,
		0.448843, 0.789960, 0.417736,
		35.135487, 35.940090, 38.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251247, 35.120865, 39.161922>,  <34.821297, 35.387119, 38.618359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251247, 35.120865, 39.161922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198250, 35.505863, 39.256622>,  <35.166451, 35.736862, 39.313442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198250, 35.505863, 39.256622>,  <35.251247, 35.120865, 39.161922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198250, 35.505863, 39.256622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235916, -0.262613, 0.935616,
		0.962699, 0.068109, 0.261862,
		-0.132492, 0.962494, 0.236749,
		35.158501, 35.794613, 39.327648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559082, 35.230839, 39.704266>,  <35.251247, 35.120865, 39.161922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559082, 35.230839, 39.704266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326160, 35.555553, 39.721832>,  <35.186409, 35.750381, 39.732372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326160, 35.555553, 39.721832>,  <35.559082, 35.230839, 39.704266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326160, 35.555553, 39.721832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315749, -0.275609, 0.907933,
		0.749149, 0.514827, 0.416808,
		-0.582304, 0.811784, 0.043916,
		35.151470, 35.799088, 39.735008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645527, 35.549789, 40.362640>,  <35.559082, 35.230839, 39.704266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645527, 35.549789, 40.362640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282467, 35.659794, 40.235813>,  <35.064629, 35.725796, 40.159718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282467, 35.659794, 40.235813>,  <35.645527, 35.549789, 40.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282467, 35.659794, 40.235813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392431, -0.288105, 0.873495,
		0.148867, 0.917261, 0.369421,
		-0.907655, 0.275006, -0.317072,
		35.010170, 35.742294, 40.140690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367401, 35.936012, 40.898022>,  <35.645527, 35.549789, 40.362640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367401, 35.936012, 40.898022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023079, 35.867599, 40.706287>,  <34.816486, 35.826553, 40.591248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023079, 35.867599, 40.706287>,  <35.367401, 35.936012, 40.898022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023079, 35.867599, 40.706287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425927, -0.273432, 0.862451,
		-0.278574, 0.946563, 0.162524,
		-0.860804, -0.171033, -0.479338,
		34.764839, 35.816288, 40.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799656, 36.350632, 41.262657>,  <35.367401, 35.936012, 40.898022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799656, 36.350632, 41.262657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605335, 36.073734, 41.049194>,  <34.488743, 35.907597, 40.921116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605335, 36.073734, 41.049194>,  <34.799656, 36.350632, 41.262657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605335, 36.073734, 41.049194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655660, -0.115145, 0.746225,
		-0.578016, 0.712421, -0.397936,
		-0.485806, -0.692241, -0.533662,
		34.459595, 35.866062, 40.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119282, 36.602276, 41.223114>,  <34.799656, 36.350632, 41.262657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119282, 36.602276, 41.223114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113583, 36.207092, 41.161491>,  <34.110165, 35.969982, 41.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113583, 36.207092, 41.161491>,  <34.119282, 36.602276, 41.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113583, 36.207092, 41.161491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848969, -0.069444, 0.523860,
		-0.528251, 0.138250, -0.837758,
		-0.014246, -0.987959, -0.154054,
		34.109310, 35.910706, 41.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401299, 36.468231, 41.097401>,  <34.119282, 36.602276, 41.223114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401299, 36.468231, 41.097401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557491, 36.105721, 41.162136>,  <33.651207, 35.888214, 41.200977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557491, 36.105721, 41.162136>,  <33.401299, 36.468231, 41.097401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557491, 36.105721, 41.162136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809665, -0.254415, 0.528882,
		-0.438138, -0.337553, -0.833123,
		0.390485, -0.906273, 0.161836,
		33.674637, 35.833839, 41.210686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863609, 35.963627, 40.954845>,  <33.401299, 36.468231, 41.097401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863609, 35.963627, 40.954845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109699, 35.739861, 41.177036>,  <33.257355, 35.605602, 41.310349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109699, 35.739861, 41.177036>,  <32.863609, 35.963627, 40.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109699, 35.739861, 41.177036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761349, -0.238789, 0.602766,
		-0.204553, -0.793750, -0.572817,
		0.615228, -0.559411, 0.555476,
		33.294266, 35.572037, 41.343678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479752, 35.361580, 41.088001>,  <32.863609, 35.963627, 40.954845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479752, 35.361580, 41.088001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772465, 35.355408, 41.360546>,  <32.948093, 35.351704, 41.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772465, 35.355408, 41.360546>,  <32.479752, 35.361580, 41.088001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772465, 35.355408, 41.360546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654261, -0.295910, 0.695974,
		0.190886, -0.955091, -0.226635,
		0.731782, -0.015427, 0.681364,
		32.992001, 35.350780, 41.564957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339935, 34.823460, 41.519531>,  <32.479752, 35.361580, 41.088001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339935, 34.823460, 41.519531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582184, 35.037174, 41.755417>,  <32.727535, 35.165401, 41.896950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582184, 35.037174, 41.755417>,  <32.339935, 34.823460, 41.519531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582184, 35.037174, 41.755417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514970, -0.301822, 0.802315,
		0.606651, -0.789586, 0.092350,
		0.605623, 0.534283, 0.589714,
		32.763870, 35.197460, 41.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299068, 34.525669, 42.116508>,  <32.339935, 34.823460, 41.519531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299068, 34.525669, 42.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437904, 34.887341, 42.216099>,  <32.521206, 35.104343, 42.275852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437904, 34.887341, 42.216099>,  <32.299068, 34.525669, 42.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437904, 34.887341, 42.216099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564686, -0.010470, 0.825240,
		0.748771, -0.427025, 0.506943,
		0.347091, 0.904179, 0.248974,
		32.542030, 35.158596, 42.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699310, 33.865997, 42.046070>,  <32.299068, 34.525669, 42.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699310, 33.865997, 42.046070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484291, 33.533772, 41.987812>,  <32.355278, 33.334438, 41.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484291, 33.533772, 41.987812>,  <32.699310, 33.865997, 42.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484291, 33.533772, 41.987812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017133, 0.161923, -0.986655,
		0.843059, -0.532869, -0.072812,
		-0.537548, -0.830561, -0.145641,
		32.323029, 33.284603, 41.944118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972363, 33.706337, 41.489986>,  <32.699310, 33.865997, 42.046070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972363, 33.706337, 41.489986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657593, 33.459957, 41.504707>,  <32.468731, 33.312130, 41.513538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657593, 33.459957, 41.504707>,  <32.972363, 33.706337, 41.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657593, 33.459957, 41.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052598, 0.007542, -0.998587,
		0.614798, -0.787752, -0.038333,
		-0.786928, -0.615946, 0.036798,
		32.421513, 33.275173, 41.515747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135178, 33.101017, 41.023705>,  <32.972363, 33.706337, 41.489986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135178, 33.101017, 41.023705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735481, 33.109859, 41.036495>,  <32.495663, 33.115166, 41.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735481, 33.109859, 41.036495>,  <33.135178, 33.101017, 41.023705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735481, 33.109859, 41.036495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034990, -0.153032, -0.987602,
		-0.016936, -0.987974, 0.153689,
		-0.999244, 0.022103, 0.031978,
		32.435707, 33.116489, 41.046089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023586, 32.467201, 40.657310>,  <33.135178, 33.101017, 41.023705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023586, 32.467201, 40.657310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707615, 32.711884, 40.640221>,  <32.518032, 32.858692, 40.629967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707615, 32.711884, 40.640221>,  <33.023586, 32.467201, 40.657310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707615, 32.711884, 40.640221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061338, 0.009496, -0.998072,
		-0.610120, -0.791029, -0.045022,
		-0.789931, 0.611705, -0.042726,
		32.470634, 32.895393, 40.627403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614758, 32.220810, 40.160072>,  <33.023586, 32.467201, 40.657310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614758, 32.220810, 40.160072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480545, 32.595695, 40.198112>,  <32.400017, 32.820629, 40.220936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480545, 32.595695, 40.198112>,  <32.614758, 32.220810, 40.160072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480545, 32.595695, 40.198112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018472, 0.107476, -0.994036,
		-0.941849, -0.331772, -0.053373,
		-0.335529, 0.937217, 0.095098,
		32.379887, 32.876862, 40.226643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131981, 32.281700, 39.607807>,  <32.614758, 32.220810, 40.160072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131981, 32.281700, 39.607807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215424, 32.656815, 39.718834>,  <32.265488, 32.881882, 39.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215424, 32.656815, 39.718834>,  <32.131981, 32.281700, 39.607807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215424, 32.656815, 39.718834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119396, 0.306111, -0.944479,
		-0.970685, 0.163881, 0.175824,
		0.208604, 0.937784, 0.277571,
		32.278004, 32.938148, 39.802105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609812, 32.703667, 39.314838>,  <32.131981, 32.281700, 39.607807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609812, 32.703667, 39.314838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920044, 32.943707, 39.393177>,  <32.106182, 33.087730, 39.440178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920044, 32.943707, 39.393177>,  <31.609812, 32.703667, 39.314838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920044, 32.943707, 39.393177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100956, 0.424171, -0.899937,
		-0.623124, 0.678202, 0.389562,
		0.775580, 0.600101, 0.195842,
		32.152718, 33.123737, 39.451931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309208, 33.239338, 39.303902>,  <31.609812, 32.703667, 39.314838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309208, 33.239338, 39.303902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679981, 33.380157, 39.251972>,  <31.902445, 33.464649, 39.220814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679981, 33.380157, 39.251972>,  <31.309208, 33.239338, 39.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679981, 33.380157, 39.251972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297171, 0.477535, -0.826831,
		-0.229085, 0.805000, 0.547261,
		0.926935, 0.352045, -0.129827,
		31.958061, 33.485771, 39.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200815, 33.950031, 39.366550>,  <31.309208, 33.239338, 39.303902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200815, 33.950031, 39.366550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537199, 33.883900, 39.160461>,  <31.739029, 33.844223, 39.036808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537199, 33.883900, 39.160461>,  <31.200815, 33.950031, 39.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537199, 33.883900, 39.160461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435992, 0.356898, -0.826157,
		0.320468, 0.919397, 0.228055,
		0.840958, -0.165327, -0.515224,
		31.789486, 33.834301, 39.005894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143579, 34.424309, 38.784077>,  <31.200815, 33.950031, 39.366550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143579, 34.424309, 38.784077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454367, 34.204067, 38.661987>,  <31.640839, 34.071922, 38.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454367, 34.204067, 38.661987>,  <31.143579, 34.424309, 38.784077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454367, 34.204067, 38.661987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189607, 0.257649, -0.947452,
		0.600309, 0.794012, 0.095787,
		0.776968, -0.550602, -0.305219,
		31.687456, 34.038887, 38.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653755, 34.859364, 38.348366>,  <31.143579, 34.424309, 38.784077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653755, 34.859364, 38.348366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691320, 34.476192, 38.239876>,  <31.713860, 34.246292, 38.174782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691320, 34.476192, 38.239876>,  <31.653755, 34.859364, 38.348366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691320, 34.476192, 38.239876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075656, 0.264772, -0.961339,
		0.992702, 0.110800, -0.047608,
		0.093911, -0.957924, -0.271222,
		31.719494, 34.188816, 38.158508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052959, 34.825970, 37.812702>,  <31.653755, 34.859364, 38.348366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052959, 34.825970, 37.812702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841507, 34.492096, 37.750919>,  <31.714636, 34.291771, 37.713852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841507, 34.492096, 37.750919>,  <32.052959, 34.825970, 37.812702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841507, 34.492096, 37.750919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134713, 0.262143, -0.955580,
		0.838095, -0.484340, -0.251019,
		-0.528629, -0.834683, -0.154454,
		31.682919, 34.241692, 37.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739552, 35.079842, 37.796642>,  <32.052959, 34.825970, 37.812702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739552, 35.079842, 37.796642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124187, 35.189640, 37.797276>,  <33.354969, 35.255520, 37.797657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124187, 35.189640, 37.797276>,  <32.739552, 35.079842, 37.796642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124187, 35.189640, 37.797276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221048, -0.777742, 0.588435,
		0.162756, -0.565481, -0.808543,
		0.961587, 0.274498, 0.001584,
		33.412663, 35.271988, 37.797752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135029, 34.527721, 38.156185>,  <32.739552, 35.079842, 37.796642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135029, 34.527721, 38.156185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440842, 34.774773, 38.082397>,  <33.624329, 34.923004, 38.038124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440842, 34.774773, 38.082397>,  <33.135029, 34.527721, 38.156185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440842, 34.774773, 38.082397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617865, -0.620628, 0.482766,
		0.183682, -0.483067, -0.856100,
		0.764528, 0.617630, -0.184472,
		33.670200, 34.960060, 38.027058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801579, 34.233433, 37.926579>,  <33.135029, 34.527721, 38.156185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801579, 34.233433, 37.926579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868160, 34.583565, 38.108162>,  <33.908112, 34.793644, 38.217113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868160, 34.583565, 38.108162>,  <33.801579, 34.233433, 37.926579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868160, 34.583565, 38.108162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711579, -0.425344, 0.559230,
		0.682603, 0.229942, -0.693671,
		0.166459, 0.875334, 0.453963,
		33.918098, 34.846165, 38.244350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017326, 33.611172, 38.212605>,  <33.801579, 34.233433, 37.926579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017326, 33.611172, 38.212605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416706, 33.632599, 38.218563>,  <34.656334, 33.645454, 38.222137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416706, 33.632599, 38.218563>,  <34.017326, 33.611172, 38.212605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416706, 33.632599, 38.218563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010867, -0.450751, 0.892583,
		0.054531, -0.891041, -0.450636,
		0.998453, 0.053571, 0.014897,
		34.716244, 33.648670, 38.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297783, 33.041962, 38.566013>,  <34.017326, 33.611172, 38.212605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297783, 33.041962, 38.566013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639847, 33.246265, 38.601414>,  <34.845085, 33.368847, 38.622654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639847, 33.246265, 38.601414>,  <34.297783, 33.041962, 38.566013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639847, 33.246265, 38.601414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154737, -0.414471, 0.896811,
		0.494736, -0.753219, -0.433471,
		0.855156, 0.510759, 0.088503,
		34.896393, 33.399494, 38.627964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786678, 32.499897, 38.919136>,  <34.297783, 33.041962, 38.566013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786678, 32.499897, 38.919136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942036, 32.866299, 38.959293>,  <35.035252, 33.086140, 38.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942036, 32.866299, 38.959293>,  <34.786678, 32.499897, 38.919136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942036, 32.866299, 38.959293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529650, -0.311060, 0.789122,
		0.754069, -0.253319, -0.605978,
		0.388395, 0.916008, 0.100390,
		35.058556, 33.141102, 38.989410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523804, 32.385941, 38.974133>,  <34.786678, 32.499897, 38.919136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523804, 32.385941, 38.974133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478134, 32.759117, 39.110714>,  <35.450733, 32.983021, 39.192661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478134, 32.759117, 39.110714>,  <35.523804, 32.385941, 38.974133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478134, 32.759117, 39.110714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604517, -0.207505, 0.769091,
		0.788368, 0.294223, -0.540286,
		-0.114172, 0.932938, 0.341453,
		35.443882, 33.038998, 39.213150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210571, 32.751587, 39.071926>,  <35.523804, 32.385941, 38.974133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210571, 32.751587, 39.071926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943039, 32.908413, 39.324577>,  <35.782520, 33.002506, 39.476170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943039, 32.908413, 39.324577>,  <36.210571, 32.751587, 39.071926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943039, 32.908413, 39.324577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593051, -0.230954, 0.771330,
		0.448286, 0.890477, -0.078044,
		-0.668827, 0.392060, 0.631632,
		35.742390, 33.026031, 39.514069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551418, 33.134464, 39.551842>,  <36.210571, 32.751587, 39.071926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551418, 33.134464, 39.551842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202972, 33.086239, 39.742260>,  <35.993904, 33.057304, 39.856510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202972, 33.086239, 39.742260>,  <36.551418, 33.134464, 39.551842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202972, 33.086239, 39.742260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480548, -0.009611, 0.876916,
		-0.101147, 0.992659, 0.066308,
		-0.871116, -0.120562, 0.476048,
		35.941639, 33.050072, 39.885075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671177, 33.458492, 40.110870>,  <36.551418, 33.134464, 39.551842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671177, 33.458492, 40.110870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360668, 33.236530, 40.230526>,  <36.174362, 33.103352, 40.302319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360668, 33.236530, 40.230526>,  <36.671177, 33.458492, 40.110870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360668, 33.236530, 40.230526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426138, -0.112216, 0.897671,
		-0.464555, 0.824310, 0.323577,
		-0.776270, -0.554906, 0.299140,
		36.127789, 33.070057, 40.320267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527180, 33.770836, 40.847893>,  <36.671177, 33.458492, 40.110870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527180, 33.770836, 40.847893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346760, 33.415459, 40.813885>,  <36.238506, 33.202232, 40.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346760, 33.415459, 40.813885>,  <36.527180, 33.770836, 40.847893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346760, 33.415459, 40.813885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153855, -0.171237, 0.973143,
		-0.879136, 0.425857, 0.213928,
		-0.451052, -0.888439, -0.085020,
		36.211445, 33.148926, 40.788380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043209, 33.696819, 41.376770>,  <36.527180, 33.770836, 40.847893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043209, 33.696819, 41.376770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126328, 33.318722, 41.276100>,  <36.176197, 33.091866, 41.215698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126328, 33.318722, 41.276100>,  <36.043209, 33.696819, 41.376770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126328, 33.318722, 41.276100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262771, -0.193897, 0.945175,
		-0.942218, -0.262533, 0.208092,
		0.207792, -0.945241, -0.251679,
		36.188663, 33.035149, 41.200596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663296, 33.274666, 41.896179>,  <36.043209, 33.696819, 41.376770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663296, 33.274666, 41.896179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950943, 33.039417, 41.748135>,  <36.123531, 32.898266, 41.659306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950943, 33.039417, 41.748135>,  <35.663296, 33.274666, 41.896179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950943, 33.039417, 41.748135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296254, -0.222318, 0.928874,
		-0.628576, -0.777615, 0.014362,
		0.719114, -0.588124, -0.370116,
		36.166676, 32.862980, 41.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552750, 32.614216, 42.238281>,  <35.663296, 33.274666, 41.896179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552750, 32.614216, 42.238281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914948, 32.558376, 42.077984>,  <36.132267, 32.524872, 41.981804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914948, 32.558376, 42.077984>,  <35.552750, 32.614216, 42.238281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914948, 32.558376, 42.077984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283070, -0.504860, 0.815468,
		-0.316160, -0.851838, -0.417629,
		0.905491, -0.139600, -0.400747,
		36.186596, 32.516495, 41.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729004, 32.004211, 42.424156>,  <35.552750, 32.614216, 42.238281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729004, 32.004211, 42.424156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083241, 32.161503, 42.325291>,  <36.295784, 32.255878, 42.265972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083241, 32.161503, 42.325291>,  <35.729004, 32.004211, 42.424156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083241, 32.161503, 42.325291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416808, -0.438064, 0.796474,
		0.204922, -0.808375, -0.551849,
		0.885594, 0.393230, -0.247168,
		36.348919, 32.279472, 42.251141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286953, 31.441267, 42.414970>,  <35.729004, 32.004211, 42.424156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286953, 31.441267, 42.414970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484947, 31.784807, 42.467674>,  <36.603745, 31.990931, 42.499294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484947, 31.784807, 42.467674>,  <36.286953, 31.441267, 42.414970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484947, 31.784807, 42.467674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464549, -0.389727, 0.795177,
		0.734288, -0.332397, -0.591889,
		0.494990, 0.858851, 0.131757,
		36.633446, 32.042461, 42.507202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066761, 31.250593, 42.518101>,  <36.286953, 31.441267, 42.414970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066761, 31.250593, 42.518101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982227, 31.598511, 42.696445>,  <36.931507, 31.807262, 42.803452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982227, 31.598511, 42.696445>,  <37.066761, 31.250593, 42.518101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982227, 31.598511, 42.696445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493295, -0.298894, 0.816898,
		0.843800, 0.392579, -0.365900,
		-0.211332, 0.869795, 0.445864,
		36.918827, 31.859449, 42.830204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591572, 31.347832, 42.982372>,  <37.066761, 31.250593, 42.518101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591572, 31.347832, 42.982372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307434, 31.594486, 43.118122>,  <37.136951, 31.742479, 43.199574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307434, 31.594486, 43.118122>,  <37.591572, 31.347832, 42.982372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307434, 31.594486, 43.118122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361439, -0.094169, 0.927628,
		0.603966, 0.781597, -0.155983,
		-0.710343, 0.616634, 0.339374,
		37.094330, 31.779476, 43.219933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826271, 31.611120, 43.542538>,  <37.591572, 31.347832, 42.982372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826271, 31.611120, 43.542538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444649, 31.725336, 43.578873>,  <37.215675, 31.793865, 43.600674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444649, 31.725336, 43.578873>,  <37.826271, 31.611120, 43.542538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444649, 31.725336, 43.578873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066394, -0.094170, 0.993340,
		0.292192, 0.953729, 0.070885,
		-0.954052, 0.285539, 0.090838,
		37.158432, 31.810997, 43.606125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761940, 32.171417, 44.034428>,  <37.826271, 31.611120, 43.542538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761940, 32.171417, 44.034428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405025, 31.992111, 44.012966>,  <37.190876, 31.884527, 44.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405025, 31.992111, 44.012966>,  <37.761940, 32.171417, 44.034428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405025, 31.992111, 44.012966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028844, -0.061995, 0.997660,
		-0.450543, 0.891748, 0.042388,
		-0.892289, -0.448266, -0.053653,
		37.137341, 31.857632, 43.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368660, 32.435917, 44.613045>,  <37.761940, 32.171417, 44.034428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368660, 32.435917, 44.613045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168331, 32.105648, 44.509163>,  <37.048134, 31.907488, 44.446835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168331, 32.105648, 44.509163>,  <37.368660, 32.435917, 44.613045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168331, 32.105648, 44.509163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118360, -0.231902, 0.965511,
		-0.857419, 0.514289, 0.018416,
		-0.500822, -0.825669, -0.259708,
		37.018085, 31.857948, 44.431252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623058, 32.437836, 44.855206>,  <37.368660, 32.435917, 44.613045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623058, 32.437836, 44.855206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716167, 32.053082, 44.797802>,  <36.772034, 31.822229, 44.763359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716167, 32.053082, 44.797802>,  <36.623058, 32.437836, 44.855206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716167, 32.053082, 44.797802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336058, -0.218028, 0.916258,
		-0.912623, -0.165055, -0.374000,
		0.232776, -0.961884, -0.143509,
		36.785999, 31.764517, 44.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097202, 32.140335, 45.277763>,  <36.623058, 32.437836, 44.855206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097202, 32.140335, 45.277763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345982, 31.832130, 45.221924>,  <36.495251, 31.647207, 45.188419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345982, 31.832130, 45.221924>,  <36.097202, 32.140335, 45.277763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345982, 31.832130, 45.221924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338482, -0.425293, 0.839378,
		-0.706122, -0.474800, -0.525316,
		0.621950, -0.770513, -0.139597,
		36.532566, 31.600977, 45.180046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606842, 31.561037, 45.305698>,  <36.097202, 32.140335, 45.277763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606842, 31.561037, 45.305698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992428, 31.480278, 45.374996>,  <36.223778, 31.431824, 45.416576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992428, 31.480278, 45.374996>,  <35.606842, 31.561037, 45.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992428, 31.480278, 45.374996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246384, -0.431856, 0.867638,
		-0.100355, -0.879056, -0.466037,
		0.963963, -0.201896, 0.173246,
		36.281616, 31.419710, 45.426971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530613, 30.885780, 45.675819>,  <35.606842, 31.561037, 45.305698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530613, 30.885780, 45.675819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895580, 31.035067, 45.742989>,  <36.114563, 31.124638, 45.783291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895580, 31.035067, 45.742989>,  <35.530613, 30.885780, 45.675819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895580, 31.035067, 45.742989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140505, -0.099696, 0.985048,
		0.384375, -0.922373, -0.038527,
		0.912422, 0.373214, 0.167919,
		36.169308, 31.147030, 45.793365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735401, 30.453871, 46.200554>,  <35.530613, 30.885780, 45.675819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735401, 30.453871, 46.200554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020275, 30.733835, 46.222164>,  <36.191200, 30.901814, 46.235130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020275, 30.733835, 46.222164>,  <35.735401, 30.453871, 46.200554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020275, 30.733835, 46.222164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145201, -0.222164, 0.964137,
		0.686813, -0.678798, -0.259849,
		0.712183, 0.699912, 0.054023,
		36.233929, 30.943810, 46.238373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242596, 30.199215, 46.636543>,  <35.735401, 30.453871, 46.200554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242596, 30.199215, 46.636543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313553, 30.592741, 46.646652>,  <36.356129, 30.828857, 46.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313553, 30.592741, 46.646652>,  <36.242596, 30.199215, 46.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313553, 30.592741, 46.646652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005031, -0.024774, 0.999680,
		0.984127, -0.177463, 0.000555,
		0.177393, 0.983815, 0.025274,
		36.366772, 30.887886, 46.654236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806393, 30.252348, 47.018963>,  <36.242596, 30.199215, 46.636543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806393, 30.252348, 47.018963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603180, 30.596548, 47.034199>,  <36.481255, 30.803068, 47.043343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603180, 30.596548, 47.034199>,  <36.806393, 30.252348, 47.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603180, 30.596548, 47.034199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022944, -0.030691, 0.999265,
		0.861035, 0.508528, -0.004151,
		-0.508027, 0.860498, 0.038094,
		36.450771, 30.854698, 47.045628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170212, 30.575378, 47.693481>,  <36.806393, 30.252348, 47.018963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170212, 30.575378, 47.693481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851120, 30.803152, 47.614117>,  <36.659664, 30.939817, 47.566498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851120, 30.803152, 47.614117>,  <37.170212, 30.575378, 47.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851120, 30.803152, 47.614117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029686, 0.365727, 0.930249,
		0.602283, 0.736198, -0.308656,
		-0.797730, 0.569436, -0.198416,
		36.611801, 30.973984, 47.554592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337975, 31.238062, 47.900703>,  <37.170212, 30.575378, 47.693481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337975, 31.238062, 47.900703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938877, 31.211487, 47.896740>,  <36.699421, 31.195541, 47.894360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938877, 31.211487, 47.896740>,  <37.337975, 31.238062, 47.900703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938877, 31.211487, 47.896740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011607, 0.025172, 0.999616,
		-0.066165, 0.997473, -0.025886,
		-0.997741, -0.066440, -0.009913,
		36.639553, 31.191555, 47.893764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170750, 32.005928, 47.988297>,  <37.337975, 31.238062, 47.900703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170750, 32.005928, 47.988297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511852, 32.174805, 48.111301>,  <37.716515, 32.276131, 48.185104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511852, 32.174805, 48.111301>,  <37.170750, 32.005928, 47.988297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511852, 32.174805, 48.111301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255089, 0.177117, -0.950557,
		-0.455785, 0.889034, 0.043340,
		0.852755, 0.422194, 0.307510,
		37.767677, 32.301464, 48.203556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 32.711750, 47.746964>,  <37.170750, 32.005928, 47.988297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123798, 32.711750, 47.746964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506222, 32.613350, 47.810745>,  <37.735676, 32.554310, 47.849014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506222, 32.613350, 47.810745>,  <37.123798, 32.711750, 47.746964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506222, 32.613350, 47.810745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244275, 0.367747, -0.897269,
		0.162089, 0.896797, 0.411682,
		0.956063, -0.246001, 0.159458,
		37.793041, 32.539551, 47.858582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500103, 33.341114, 47.414017>,  <37.123798, 32.711750, 47.746964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500103, 33.341114, 47.414017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770775, 33.050396, 47.461132>,  <37.933178, 32.875965, 47.489403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770775, 33.050396, 47.461132>,  <37.500103, 33.341114, 47.414017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770775, 33.050396, 47.461132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311520, 0.137664, -0.940214,
		0.667129, 0.672916, 0.319566,
		0.676678, -0.726796, 0.117787,
		37.973778, 32.832355, 47.496468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135143, 33.669945, 47.136086>,  <37.500103, 33.341114, 47.414017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135143, 33.669945, 47.136086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211666, 33.277485, 47.125103>,  <38.257580, 33.042011, 47.118511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211666, 33.277485, 47.125103>,  <38.135143, 33.669945, 47.136086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211666, 33.277485, 47.125103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505595, 0.122487, -0.854033,
		0.841293, 0.149502, 0.519495,
		0.191310, -0.981146, -0.027460,
		38.269058, 32.983143, 47.116863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905323, 33.615433, 47.061546>,  <38.135143, 33.669945, 47.136086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905323, 33.615433, 47.061546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723030, 33.287716, 46.922367>,  <38.613655, 33.091084, 46.838860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723030, 33.287716, 46.922367>,  <38.905323, 33.615433, 47.061546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723030, 33.287716, 46.922367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357582, 0.189457, -0.914462,
		0.815134, -0.541167, 0.206624,
		-0.455731, -0.819295, -0.347945,
		38.586311, 33.041927, 46.817986>
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
