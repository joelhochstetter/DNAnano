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
	<23.925920, 34.563782, 34.948811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314871, 34.643410, 34.997555>,  <24.548241, 34.691189, 35.026802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314871, 34.643410, 34.997555>,  <23.925920, 34.563782, 34.948811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314871, 34.643410, 34.997555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196256, -0.414680, -0.888551,
		-0.126353, 0.887924, -0.442295,
		0.972378, 0.199074, 0.121865,
		24.606585, 34.703133, 35.034115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147343, 35.035030, 34.410553>,  <23.925920, 34.563782, 34.948811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147343, 35.035030, 34.410553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430862, 34.801674, 34.569180>,  <24.600973, 34.661659, 34.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430862, 34.801674, 34.569180>,  <24.147343, 35.035030, 34.410553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.430862, 34.801674, 34.569180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214594, -0.357204, -0.909040,
		0.671979, 0.729425, -0.127994,
		0.708797, -0.583390, 0.396564,
		24.643501, 34.626656, 34.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796886, 35.024097, 34.100407>,  <24.147343, 35.035030, 34.410553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796886, 35.024097, 34.100407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783180, 34.657440, 34.259701>,  <24.774956, 34.437447, 34.355278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783180, 34.657440, 34.259701>,  <24.796886, 35.024097, 34.100407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783180, 34.657440, 34.259701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228002, -0.395130, -0.889881,
		0.973057, 0.060304, 0.222537,
		-0.034268, -0.916644, 0.398233,
		24.772900, 34.382446, 34.379169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421782, 34.689762, 34.178074>,  <24.796886, 35.024097, 34.100407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421782, 34.689762, 34.178074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144650, 34.406174, 34.125397>,  <24.978371, 34.236019, 34.093792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144650, 34.406174, 34.125397>,  <25.421782, 34.689762, 34.178074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144650, 34.406174, 34.125397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338734, -0.158754, -0.927392,
		0.636592, -0.687132, 0.350143,
		-0.692828, -0.708975, -0.131694,
		24.936802, 34.193481, 34.085888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695101, 34.086014, 33.842487>,  <25.421782, 34.689762, 34.178074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695101, 34.086014, 33.842487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328352, 33.954048, 33.752598>,  <25.108303, 33.874866, 33.698666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328352, 33.954048, 33.752598>,  <25.695101, 34.086014, 33.842487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328352, 33.954048, 33.752598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370482, -0.493714, -0.786759,
		0.148617, -0.804612, 0.574901,
		-0.916873, -0.329917, -0.224720,
		25.053289, 33.855072, 33.685181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387081, 33.752552, 33.715031>,  <25.695101, 34.086014, 33.842487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387081, 33.752552, 33.715031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713911, 33.555054, 33.834095>,  <26.910009, 33.436554, 33.905533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713911, 33.555054, 33.834095>,  <26.387081, 33.752552, 33.715031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713911, 33.555054, 33.834095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090753, 0.399715, 0.912136,
		-0.569346, -0.772296, 0.281787,
		0.817074, -0.493748, 0.297665,
		26.959034, 33.406929, 33.923393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215290, 33.439838, 34.423862>,  <26.387081, 33.752552, 33.715031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215290, 33.439838, 34.423862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614456, 33.464958, 34.417900>,  <26.853956, 33.480030, 34.414322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614456, 33.464958, 34.417900>,  <26.215290, 33.439838, 34.423862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614456, 33.464958, 34.417900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024903, 0.587690, 0.808703,
		0.059541, -0.806646, 0.588029,
		0.997915, 0.062795, -0.014904,
		26.913830, 33.483795, 34.413429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451111, 33.291103, 35.073227>,  <26.215290, 33.439838, 34.423862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451111, 33.291103, 35.073227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737366, 33.511921, 34.902065>,  <26.909119, 33.644413, 34.799366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737366, 33.511921, 34.902065>,  <26.451111, 33.291103, 35.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737366, 33.511921, 34.902065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012678, 0.622800, 0.782278,
		0.698355, -0.554404, 0.452699,
		0.715640, 0.552047, -0.427907,
		26.952057, 33.677536, 34.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865290, 33.498905, 35.658257>,  <26.451111, 33.291103, 35.073227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865290, 33.498905, 35.658257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988688, 33.744820, 35.367912>,  <27.062727, 33.892368, 35.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988688, 33.744820, 35.367912>,  <26.865290, 33.498905, 35.658257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988688, 33.744820, 35.367912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252752, 0.682670, 0.685623,
		0.917031, -0.394975, 0.055213,
		0.308496, 0.614782, -0.725860,
		27.081236, 33.929253, 35.150154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641420, 33.582142, 35.635185>,  <26.865290, 33.498905, 35.658257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641420, 33.582142, 35.635185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453180, 33.901829, 35.485630>,  <27.340237, 34.093639, 35.395897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453180, 33.901829, 35.485630>,  <27.641420, 33.582142, 35.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453180, 33.901829, 35.485630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226363, 0.518916, 0.824309,
		0.852817, 0.303285, -0.425115,
		-0.470599, 0.799215, -0.373888,
		27.312000, 34.141594, 35.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015627, 34.121994, 35.863461>,  <27.641420, 33.582142, 35.635185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015627, 34.121994, 35.863461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676361, 34.298046, 35.745544>,  <27.472801, 34.403679, 35.674793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676361, 34.298046, 35.745544>,  <28.015627, 34.121994, 35.863461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676361, 34.298046, 35.745544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038761, 0.606563, 0.794090,
		0.528311, 0.662093, -0.531526,
		-0.848166, 0.440129, -0.294790,
		27.421911, 34.430084, 35.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070377, 34.854816, 36.088234>,  <28.015627, 34.121994, 35.863461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070377, 34.854816, 36.088234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679190, 34.784664, 36.042957>,  <27.444477, 34.742573, 36.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679190, 34.784664, 36.042957>,  <28.070377, 34.854816, 36.088234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679190, 34.784664, 36.042957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182861, 0.458337, 0.869764,
		-0.100665, 0.871302, -0.480311,
		-0.977972, -0.175385, -0.113189,
		27.385798, 34.732048, 36.008999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725620, 35.461685, 36.197918>,  <28.070377, 34.854816, 36.088234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725620, 35.461685, 36.197918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431915, 35.196941, 36.258316>,  <27.255692, 35.038094, 36.294556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431915, 35.196941, 36.258316>,  <27.725620, 35.461685, 36.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431915, 35.196941, 36.258316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307096, 0.522203, 0.795611,
		-0.605433, 0.537817, -0.586689,
		-0.734264, -0.661859, 0.150998,
		27.211636, 34.998383, 36.303616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064804, 35.853485, 36.313374>,  <27.725620, 35.461685, 36.197918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064804, 35.853485, 36.313374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966536, 35.493259, 36.456833>,  <26.907574, 35.277122, 36.542908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966536, 35.493259, 36.456833>,  <27.064804, 35.853485, 36.313374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966536, 35.493259, 36.456833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293727, 0.421748, 0.857819,
		-0.923780, 0.105398, -0.368132,
		-0.245671, -0.900566, 0.358645,
		26.892834, 35.223091, 36.564426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497477, 35.989193, 36.669617>,  <27.064804, 35.853485, 36.313374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497477, 35.989193, 36.669617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589590, 35.628540, 36.816055>,  <26.644857, 35.412148, 36.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589590, 35.628540, 36.816055>,  <26.497477, 35.989193, 36.669617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589590, 35.628540, 36.816055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294589, 0.293966, 0.909286,
		-0.927463, -0.317240, -0.197916,
		0.230281, -0.901633, 0.366098,
		26.658674, 35.358051, 36.925884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900736, 35.808311, 37.087143>,  <26.497477, 35.989193, 36.669617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900736, 35.808311, 37.087143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182711, 35.553101, 37.211067>,  <26.351894, 35.399975, 37.285423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182711, 35.553101, 37.211067>,  <25.900736, 35.808311, 37.087143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182711, 35.553101, 37.211067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272581, 0.159558, 0.948810,
		-0.654802, -0.753300, -0.061436,
		0.704935, -0.638029, 0.309814,
		26.394192, 35.361691, 37.304012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579155, 35.314255, 37.458714>,  <25.900736, 35.808311, 37.087143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579155, 35.314255, 37.458714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953524, 35.301941, 37.599056>,  <26.178144, 35.294552, 37.683262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953524, 35.301941, 37.599056>,  <25.579155, 35.314255, 37.458714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953524, 35.301941, 37.599056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341016, 0.169877, 0.924581,
		-0.088068, -0.984984, 0.148493,
		0.935923, -0.030788, 0.350856,
		26.234301, 35.292706, 37.704311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567808, 34.920311, 37.986252>,  <25.579155, 35.314255, 37.458714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567808, 34.920311, 37.986252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896444, 35.140957, 38.043816>,  <26.093626, 35.273346, 38.078354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896444, 35.140957, 38.043816>,  <25.567808, 34.920311, 37.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896444, 35.140957, 38.043816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263381, 0.143416, 0.953972,
		0.505585, -0.821678, 0.263114,
		0.821592, 0.551614, 0.143906,
		26.142921, 35.306442, 38.086987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610823, 34.898701, 38.716370>,  <25.567808, 34.920311, 37.986252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610823, 34.898701, 38.716370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870502, 35.177917, 38.595520>,  <26.026310, 35.345448, 38.523010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870502, 35.177917, 38.595520>,  <25.610823, 34.898701, 38.716370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870502, 35.177917, 38.595520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187870, 0.532062, 0.825600,
		0.737051, -0.479219, 0.476555,
		0.649200, 0.698039, -0.302126,
		26.065262, 35.387329, 38.504883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249504, 34.893970, 39.140884>,  <25.610823, 34.898701, 38.716370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249504, 34.893970, 39.140884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216679, 35.263035, 38.990173>,  <26.196983, 35.484474, 38.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216679, 35.263035, 38.990173>,  <26.249504, 34.893970, 39.140884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216679, 35.263035, 38.990173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045711, 0.381139, 0.923387,
		0.995578, 0.058552, -0.073453,
		-0.082062, 0.922662, -0.376777,
		26.192060, 35.539833, 38.877140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517744, 35.267048, 39.705288>,  <26.249504, 34.893970, 39.140884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517744, 35.267048, 39.705288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365358, 35.553814, 39.471741>,  <26.273926, 35.725872, 39.331612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365358, 35.553814, 39.471741>,  <26.517744, 35.267048, 39.705288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365358, 35.553814, 39.471741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106312, 0.661262, 0.742584,
		0.918456, 0.220828, -0.328135,
		-0.380967, 0.716915, -0.583864,
		26.251068, 35.768890, 39.296581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970402, 35.807522, 39.645050>,  <26.517744, 35.267048, 39.705288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970402, 35.807522, 39.645050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613825, 35.974102, 39.573608>,  <26.399879, 36.074051, 39.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613825, 35.974102, 39.573608>,  <26.970402, 35.807522, 39.645050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613825, 35.974102, 39.573608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215506, 0.736360, 0.641351,
		0.398608, 0.533237, -0.746170,
		-0.891442, 0.416452, -0.178604,
		26.346392, 36.099037, 39.520027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150961, 36.466763, 39.465324>,  <26.970402, 35.807522, 39.645050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150961, 36.466763, 39.465324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761929, 36.477280, 39.557751>,  <26.528509, 36.483589, 39.613205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761929, 36.477280, 39.557751>,  <27.150961, 36.466763, 39.465324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761929, 36.477280, 39.557751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189035, 0.668097, 0.719661,
		-0.135455, 0.743609, -0.654750,
		-0.972583, 0.026289, 0.231065,
		26.470154, 36.485165, 39.627071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955608, 37.151180, 39.530807>,  <27.150961, 36.466763, 39.465324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955608, 37.151180, 39.530807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629700, 37.001190, 39.707687>,  <26.434155, 36.911198, 39.813816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629700, 37.001190, 39.707687>,  <26.955608, 37.151180, 39.530807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629700, 37.001190, 39.707687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049760, 0.714663, 0.697697,
		-0.577645, 0.590466, -0.563627,
		-0.814770, -0.374976, 0.442203,
		26.385269, 36.888699, 39.840347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556612, 37.675198, 39.652245>,  <26.955608, 37.151180, 39.530807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556612, 37.675198, 39.652245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432423, 37.400803, 39.915466>,  <26.357910, 37.236168, 40.073399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432423, 37.400803, 39.915466>,  <26.556612, 37.675198, 39.652245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432423, 37.400803, 39.915466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005154, 0.693466, 0.720471,
		-0.950569, 0.220294, -0.218837,
		-0.310472, -0.685985, 0.658051,
		26.339281, 37.195007, 40.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953684, 37.959435, 39.997215>,  <26.556612, 37.675198, 39.652245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953684, 37.959435, 39.997215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179684, 37.691406, 40.189789>,  <26.315283, 37.530590, 40.305332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179684, 37.691406, 40.189789>,  <25.953684, 37.959435, 39.997215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179684, 37.691406, 40.189789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154234, 0.658982, 0.736175,
		-0.810548, -0.341684, 0.475672,
		0.564999, -0.670071, 0.481438,
		26.349184, 37.490387, 40.334221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670353, 37.893475, 40.719574>,  <25.953684, 37.959435, 39.997215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670353, 37.893475, 40.719574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062744, 37.819862, 40.694870>,  <26.298180, 37.775696, 40.680046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062744, 37.819862, 40.694870>,  <25.670353, 37.893475, 40.719574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062744, 37.819862, 40.694870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144643, 0.480761, 0.864839,
		-0.129465, -0.857322, 0.498235,
		0.980977, -0.184033, -0.061763,
		26.357037, 37.764652, 40.676342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893826, 37.669193, 41.425045>,  <25.670353, 37.893475, 40.719574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893826, 37.669193, 41.425045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208416, 37.843578, 41.250053>,  <26.397171, 37.948208, 41.145058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208416, 37.843578, 41.250053>,  <25.893826, 37.669193, 41.425045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208416, 37.843578, 41.250053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182442, 0.512737, 0.838937,
		0.590060, -0.739619, 0.323717,
		0.786476, 0.435963, -0.437483,
		26.444359, 37.974365, 41.118809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470510, 37.494110, 41.870113>,  <25.893826, 37.669193, 41.425045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470510, 37.494110, 41.870113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482594, 37.855900, 41.699932>,  <26.489843, 38.072975, 41.597824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482594, 37.855900, 41.699932>,  <26.470510, 37.494110, 41.870113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482594, 37.855900, 41.699932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147882, 0.416921, 0.896832,
		0.988543, -0.090010, -0.121160,
		0.030210, 0.904475, -0.425456,
		26.491657, 38.127243, 41.572296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525923, 37.908081, 42.408558>,  <26.470510, 37.494110, 41.870113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525923, 37.908081, 42.408558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522823, 38.165562, 42.102463>,  <26.520964, 38.320049, 41.918804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522823, 38.165562, 42.102463>,  <26.525923, 37.908081, 42.408558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522823, 38.165562, 42.102463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088273, 0.761836, 0.641728,
		0.996066, 0.072523, 0.050917,
		-0.007749, 0.643698, -0.765241,
		26.520498, 38.358669, 41.872890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143196, 38.344746, 42.419559>,  <26.525923, 37.908081, 42.408558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143196, 38.344746, 42.419559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799652, 38.488544, 42.273613>,  <26.593527, 38.574821, 42.186047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799652, 38.488544, 42.273613>,  <27.143196, 38.344746, 42.419559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799652, 38.488544, 42.273613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000009, 0.712320, 0.701855,
		0.512214, 0.602797, -0.611779,
		-0.858858, 0.359495, -0.364866,
		26.541994, 38.596394, 42.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398417, 38.958126, 42.254776>,  <27.143196, 38.344746, 42.419559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398417, 38.958126, 42.254776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706919, 39.207336, 42.306931>,  <27.892021, 39.356861, 42.338223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706919, 39.207336, 42.306931>,  <27.398417, 38.958126, 42.254776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706919, 39.207336, 42.306931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309393, -0.187917, -0.932182,
		-0.556273, 0.759292, -0.337693,
		0.771256, 0.623027, 0.130387,
		27.938295, 39.394245, 42.346046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405485, 39.483952, 41.714008>,  <27.398417, 38.958126, 42.254776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405485, 39.483952, 41.714008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759666, 39.386597, 41.872368>,  <27.972176, 39.328182, 41.967384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759666, 39.386597, 41.872368>,  <27.405485, 39.483952, 41.714008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759666, 39.386597, 41.872368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358803, -0.183368, -0.915225,
		0.295353, 0.952437, -0.075034,
		0.885453, -0.243392, 0.395896,
		28.025303, 39.313580, 41.991135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822542, 39.966026, 41.248180>,  <27.405485, 39.483952, 41.714008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822542, 39.966026, 41.248180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139389, 39.779076, 41.405209>,  <28.329496, 39.666904, 41.499424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139389, 39.779076, 41.405209>,  <27.822542, 39.966026, 41.248180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139389, 39.779076, 41.405209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244070, -0.832050, -0.498118,
		0.559447, 0.298753, -0.773153,
		0.792117, -0.467374, 0.392571,
		28.377024, 39.638863, 41.522980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163340, 39.597595, 40.761135>,  <27.822542, 39.966026, 41.248180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163340, 39.597595, 40.761135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239058, 39.420208, 41.111565>,  <28.284489, 39.313774, 41.321823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239058, 39.420208, 41.111565>,  <28.163340, 39.597595, 40.761135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239058, 39.420208, 41.111565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181703, -0.892614, -0.412583,
		0.964962, -0.081084, -0.249548,
		0.189296, -0.443470, 0.876072,
		28.295847, 39.287167, 41.374386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511271, 39.136078, 40.447643>,  <28.163340, 39.597595, 40.761135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511271, 39.136078, 40.447643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258501, 38.830368, 40.499111>,  <28.106838, 38.646942, 40.529991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258501, 38.830368, 40.499111>,  <28.511271, 39.136078, 40.447643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258501, 38.830368, 40.499111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678998, -0.625989, -0.383537,
		0.373673, -0.154999, 0.914518,
		-0.631926, -0.764273, 0.128671,
		28.068924, 38.601086, 40.537712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940586, 38.497177, 40.757610>,  <28.511271, 39.136078, 40.447643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940586, 38.497177, 40.757610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632200, 38.386948, 40.527943>,  <28.447168, 38.320808, 40.390141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632200, 38.386948, 40.527943>,  <28.940586, 38.497177, 40.757610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632200, 38.386948, 40.527943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557265, -0.728354, -0.398693,
		-0.308328, -0.627342, 0.715105,
		-0.770967, -0.275575, -0.574168,
		28.400909, 38.304276, 40.355694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988562, 37.812664, 40.707397>,  <28.940586, 38.497177, 40.757610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988562, 37.812664, 40.707397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729141, 37.868095, 40.408016>,  <28.573490, 37.901352, 40.228386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729141, 37.868095, 40.408016>,  <28.988562, 37.812664, 40.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729141, 37.868095, 40.408016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368426, -0.803282, -0.467974,
		-0.666068, -0.579254, 0.469914,
		-0.648549, 0.138574, -0.748453,
		28.534576, 37.909668, 40.183479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643284, 37.162586, 40.632919>,  <28.988562, 37.812664, 40.707397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643284, 37.162586, 40.632919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611200, 37.382385, 40.300266>,  <28.591951, 37.514267, 40.100674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611200, 37.382385, 40.300266>,  <28.643284, 37.162586, 40.632919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611200, 37.382385, 40.300266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227101, -0.802306, -0.552023,
		-0.970563, -0.233141, -0.060441,
		-0.080207, 0.549499, -0.831635,
		28.587137, 37.547234, 40.050777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324875, 36.720905, 40.145260>,  <28.643284, 37.162586, 40.632919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324875, 36.720905, 40.145260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459044, 37.000088, 39.892170>,  <28.539545, 37.167599, 39.740314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459044, 37.000088, 39.892170>,  <28.324875, 36.720905, 40.145260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459044, 37.000088, 39.892170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319956, -0.716114, -0.620330,
		-0.886070, 0.005628, -0.463518,
		0.335423, 0.697961, -0.632726,
		28.559669, 37.209476, 39.702351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078918, 36.554665, 39.496761>,  <28.324875, 36.720905, 40.145260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078918, 36.554665, 39.496761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386963, 36.796429, 39.415161>,  <28.571791, 36.941486, 39.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386963, 36.796429, 39.415161>,  <28.078918, 36.554665, 39.496761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386963, 36.796429, 39.415161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220215, -0.552034, -0.804216,
		-0.598692, 0.574412, -0.558228,
		0.770113, 0.604408, -0.204004,
		28.617996, 36.977753, 39.353958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049183, 36.653465, 38.809422>,  <28.078918, 36.554665, 39.496761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049183, 36.653465, 38.809422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431528, 36.743092, 38.885445>,  <28.660934, 36.796867, 38.931057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431528, 36.743092, 38.885445>,  <28.049183, 36.653465, 38.809422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431528, 36.743092, 38.885445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257140, -0.325027, -0.910075,
		-0.142144, 0.918778, -0.368297,
		0.955863, 0.224065, 0.190054,
		28.718287, 36.810310, 38.942459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343817, 36.913284, 38.207024>,  <28.049183, 36.653465, 38.809422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343817, 36.913284, 38.207024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673792, 36.828606, 38.416656>,  <28.871777, 36.777798, 38.542435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673792, 36.828606, 38.416656>,  <28.343817, 36.913284, 38.207024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673792, 36.828606, 38.416656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398170, -0.440444, -0.804655,
		0.401169, 0.872465, -0.279049,
		0.824939, -0.211694, 0.524082,
		28.921274, 36.765099, 38.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882603, 37.087025, 37.806149>,  <28.343817, 36.913284, 38.207024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882603, 37.087025, 37.806149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984264, 36.791420, 38.055714>,  <29.045261, 36.614056, 38.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984264, 36.791420, 38.055714>,  <28.882603, 37.087025, 37.806149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984264, 36.791420, 38.055714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381073, -0.516395, -0.766889,
		0.888926, 0.432663, 0.150375,
		0.254152, -0.739012, 0.623914,
		29.060511, 36.569717, 38.242889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592297, 37.047913, 37.615093>,  <28.882603, 37.087025, 37.806149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592297, 37.047913, 37.615093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476751, 36.713879, 37.802364>,  <29.407423, 36.513458, 37.914726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476751, 36.713879, 37.802364>,  <29.592297, 37.047913, 37.615093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476751, 36.713879, 37.802364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439464, -0.550120, -0.710098,
		0.850546, 0.000624, 0.525900,
		-0.288865, -0.835085, 0.468177,
		29.390091, 36.463352, 37.942818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188951, 36.635681, 37.596386>,  <29.592297, 37.047913, 37.615093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188951, 36.635681, 37.596386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890810, 36.382477, 37.680046>,  <29.711926, 36.230553, 37.730244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890810, 36.382477, 37.680046>,  <30.188951, 36.635681, 37.596386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890810, 36.382477, 37.680046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216635, -0.526677, -0.821998,
		0.630488, -0.567370, 0.529694,
		-0.745355, -0.633010, 0.209151,
		29.667204, 36.192574, 37.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466072, 36.003635, 37.599796>,  <30.188951, 36.635681, 37.596386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466072, 36.003635, 37.599796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078745, 35.934734, 37.527477>,  <29.846348, 35.893394, 37.484085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078745, 35.934734, 37.527477>,  <30.466072, 36.003635, 37.599796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078745, 35.934734, 37.527477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246316, -0.539769, -0.804971,
		0.041073, -0.824001, 0.565097,
		-0.968319, -0.172255, -0.180795,
		29.788250, 35.883057, 37.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380974, 35.320129, 37.433578>,  <30.466072, 36.003635, 37.599796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380974, 35.320129, 37.433578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022179, 35.445259, 37.308647>,  <29.806902, 35.520336, 37.233688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022179, 35.445259, 37.308647>,  <30.380974, 35.320129, 37.433578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022179, 35.445259, 37.308647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042136, -0.763833, -0.644037,
		-0.440041, -0.564534, 0.698331,
		-0.896989, 0.312828, -0.312330,
		29.753082, 35.539108, 37.214947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849895, 34.775620, 37.331303>,  <30.380974, 35.320129, 37.433578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849895, 34.775620, 37.331303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685200, 35.070644, 37.117210>,  <29.586382, 35.247662, 36.988754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685200, 35.070644, 37.117210>,  <29.849895, 34.775620, 37.331303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685200, 35.070644, 37.117210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161039, -0.636969, -0.753881,
		-0.896961, -0.224208, 0.381041,
		-0.411738, 0.737564, -0.535230,
		29.561678, 35.291912, 36.956642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418261, 34.396065, 36.978836>,  <29.849895, 34.775620, 37.331303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418261, 34.396065, 36.978836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456047, 34.743580, 36.784397>,  <29.478718, 34.952087, 36.667732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456047, 34.743580, 36.784397>,  <29.418261, 34.396065, 36.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456047, 34.743580, 36.784397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009858, -0.487442, -0.873100,
		-0.995480, 0.087269, -0.037481,
		0.094464, 0.868783, -0.486099,
		29.484386, 35.004215, 36.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903809, 34.408684, 36.421696>,  <29.418261, 34.396065, 36.978836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903809, 34.408684, 36.421696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205456, 34.649586, 36.316936>,  <29.386444, 34.794128, 36.254082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205456, 34.649586, 36.316936>,  <28.903809, 34.408684, 36.421696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205456, 34.649586, 36.316936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055380, -0.455687, -0.888415,
		-0.654398, 0.655468, -0.376996,
		0.754120, 0.602255, -0.261901,
		29.431692, 34.830261, 36.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712179, 34.650127, 35.774925>,  <28.903809, 34.408684, 36.421696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712179, 34.650127, 35.774925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103050, 34.731327, 35.799965>,  <29.337572, 34.780048, 35.814987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103050, 34.731327, 35.799965>,  <28.712179, 34.650127, 35.774925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103050, 34.731327, 35.799965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154963, -0.479609, -0.863690,
		-0.145306, 0.853678, -0.500120,
		0.977176, 0.203000, 0.062599,
		29.396202, 34.792229, 35.818745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924232, 34.797531, 35.051521>,  <28.712179, 34.650127, 35.774925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924232, 34.797531, 35.051521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256897, 34.681767, 35.241081>,  <29.456497, 34.612309, 35.354816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256897, 34.681767, 35.241081>,  <28.924232, 34.797531, 35.051521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256897, 34.681767, 35.241081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225379, -0.604040, -0.764421,
		0.507484, 0.742548, -0.437131,
		0.831664, -0.289411, 0.473895,
		29.506395, 34.594944, 35.383251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518497, 34.956455, 34.637836>,  <28.924232, 34.797531, 35.051521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518497, 34.956455, 34.637836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615749, 34.654236, 34.881161>,  <29.674101, 34.472904, 35.027153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615749, 34.654236, 34.881161>,  <29.518497, 34.956455, 34.637836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615749, 34.654236, 34.881161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258169, -0.554101, -0.791404,
		0.935006, 0.349461, 0.060339,
		0.243131, -0.755546, 0.608308,
		29.688688, 34.427570, 35.063652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969000, 34.649532, 34.203693>,  <29.518497, 34.956455, 34.637836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969000, 34.649532, 34.203693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874804, 34.383224, 34.486904>,  <29.818285, 34.223442, 34.656830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874804, 34.383224, 34.486904>,  <29.969000, 34.649532, 34.203693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874804, 34.383224, 34.486904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280445, -0.744073, -0.606388,
		0.930534, 0.055763, 0.361934,
		-0.235491, -0.665767, 0.708024,
		29.804155, 34.183495, 34.699310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404673, 34.049709, 34.088066>,  <29.969000, 34.649532, 34.203693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404673, 34.049709, 34.088066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108467, 33.913956, 34.320087>,  <29.930744, 33.832504, 34.459301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108467, 33.913956, 34.320087>,  <30.404673, 34.049709, 34.088066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108467, 33.913956, 34.320087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108366, -0.912123, -0.395333,
		0.663249, -0.229890, 0.712216,
		-0.740512, -0.339384, 0.580053,
		29.886314, 33.812141, 34.494102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665201, 33.575497, 34.573799>,  <30.404673, 34.049709, 34.088066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665201, 33.575497, 34.573799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278837, 33.490059, 34.515289>,  <30.047018, 33.438797, 34.480183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278837, 33.490059, 34.515289>,  <30.665201, 33.575497, 34.573799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278837, 33.490059, 34.515289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253174, -0.897345, -0.361490,
		-0.054049, -0.386200, 0.920830,
		-0.965910, -0.213592, -0.146276,
		29.989065, 33.425980, 34.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423716, 33.919861, 34.748505>,  <30.665201, 33.575497, 34.573799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423716, 33.919861, 34.748505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699528, 33.668098, 34.891834>,  <31.865015, 33.517040, 34.977833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699528, 33.668098, 34.891834>,  <31.423716, 33.919861, 34.748505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699528, 33.668098, 34.891834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367192, -0.730249, -0.576114,
		0.624273, 0.265676, -0.734642,
		0.689531, -0.629407, 0.358321,
		31.906387, 33.479275, 34.999329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800394, 33.532715, 34.208145>,  <31.423716, 33.919861, 34.748505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800394, 33.532715, 34.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826160, 33.298824, 34.531612>,  <31.841619, 33.158489, 34.725693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826160, 33.298824, 34.531612>,  <31.800394, 33.532715, 34.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826160, 33.298824, 34.531612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029478, -0.808881, -0.587233,
		0.997488, 0.061665, -0.034867,
		0.064415, -0.584730, 0.808666,
		31.845486, 33.123405, 34.774212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317108, 33.030014, 34.065258>,  <31.800394, 33.532715, 34.208145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317108, 33.030014, 34.065258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048489, 32.881176, 34.321556>,  <31.887316, 32.791874, 34.475334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048489, 32.881176, 34.321556>,  <32.317108, 33.030014, 34.065258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048489, 32.881176, 34.321556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049451, -0.840324, -0.539825,
		0.739305, -0.394206, 0.545921,
		-0.671552, -0.372099, 0.640749,
		31.847023, 32.769547, 34.513783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085247, 32.921055, 34.161240>,  <32.317108, 33.030014, 34.065258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085247, 32.921055, 34.161240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338787, 33.061882, 33.885769>,  <33.490910, 33.146378, 33.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338787, 33.061882, 33.885769>,  <33.085247, 32.921055, 34.161240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338787, 33.061882, 33.885769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684302, -0.670279, 0.287154,
		-0.360509, -0.653278, -0.665779,
		0.633849, 0.352072, -0.688681,
		33.528942, 33.167503, 33.679165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306641, 32.353691, 33.794514>,  <33.085247, 32.921055, 34.161240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306641, 32.353691, 33.794514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571976, 32.648033, 33.740105>,  <33.731178, 32.824638, 33.707458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571976, 32.648033, 33.740105>,  <33.306641, 32.353691, 33.794514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571976, 32.648033, 33.740105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722262, -0.582030, 0.373602,
		0.195745, -0.346071, -0.917561,
		0.663341, 0.735851, -0.136024,
		33.770977, 32.868790, 33.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654930, 31.885290, 33.804668>,  <33.306641, 32.353691, 33.794514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654930, 31.885290, 33.804668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051834, 31.855896, 33.764645>,  <33.289978, 31.838259, 33.740631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051834, 31.855896, 33.764645>,  <32.654930, 31.885290, 33.804668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051834, 31.855896, 33.764645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112445, 0.190442, 0.975237,
		-0.052610, -0.978944, 0.197232,
		0.992264, -0.073485, -0.100058,
		33.349514, 31.833851, 33.734627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822964, 31.680914, 34.417809>,  <32.654930, 31.885290, 33.804668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822964, 31.680914, 34.417809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164989, 31.833843, 34.277695>,  <33.370205, 31.925600, 34.193626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164989, 31.833843, 34.277695>,  <32.822964, 31.680914, 34.417809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164989, 31.833843, 34.277695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310448, 0.163628, 0.936402,
		0.415325, -0.909425, 0.021220,
		0.855060, 0.382323, -0.350288,
		33.421509, 31.948540, 34.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314640, 31.334679, 34.778187>,  <32.822964, 31.680914, 34.417809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314640, 31.334679, 34.778187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538486, 31.635530, 34.638969>,  <33.672794, 31.816042, 34.555439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538486, 31.635530, 34.638969>,  <33.314640, 31.334679, 34.778187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538486, 31.635530, 34.638969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327773, 0.184854, 0.926495,
		0.761181, -0.632560, -0.143080,
		0.559615, 0.752128, -0.348044,
		33.706371, 31.861170, 34.534557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750813, 31.360859, 35.237480>,  <33.314640, 31.334679, 34.778187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750813, 31.360859, 35.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816990, 31.723190, 35.081478>,  <33.856697, 31.940588, 34.987877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816990, 31.723190, 35.081478>,  <33.750813, 31.360859, 35.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816990, 31.723190, 35.081478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319551, 0.324886, 0.890132,
		0.933014, -0.271896, -0.235707,
		0.165446, 0.905826, -0.390008,
		33.866623, 31.994938, 34.964478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470371, 31.482428, 35.283688>,  <33.750813, 31.360859, 35.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470371, 31.482428, 35.283688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303356, 31.844238, 35.249062>,  <34.203148, 32.061325, 35.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303356, 31.844238, 35.249062>,  <34.470371, 31.482428, 35.283688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303356, 31.844238, 35.249062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474024, 0.298105, 0.828514,
		0.775218, 0.304902, -0.553237,
		-0.417539, 0.904526, -0.086565,
		34.178093, 32.115597, 35.223091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045521, 31.939482, 35.431877>,  <34.470371, 31.482428, 35.283688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045521, 31.939482, 35.431877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728676, 32.183620, 35.434311>,  <34.538570, 32.330105, 35.435772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728676, 32.183620, 35.434311>,  <35.045521, 31.939482, 35.431877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728676, 32.183620, 35.434311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326050, 0.414689, 0.849544,
		0.515993, 0.674917, -0.527483,
		-0.792113, 0.610344, 0.006080,
		34.491043, 32.366722, 35.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310501, 32.581169, 35.574844>,  <35.045521, 31.939482, 35.431877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310501, 32.581169, 35.574844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930611, 32.581795, 35.700073>,  <34.702675, 32.582169, 35.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930611, 32.581795, 35.700073>,  <35.310501, 32.581169, 35.574844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930611, 32.581795, 35.700073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285373, 0.415586, 0.863626,
		-0.128757, 0.909552, -0.395141,
		-0.949728, 0.001565, 0.313071,
		34.645691, 32.582264, 35.793995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164875, 33.259842, 35.940796>,  <35.310501, 32.581169, 35.574844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164875, 33.259842, 35.940796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897762, 32.989960, 36.066551>,  <34.737495, 32.828030, 36.142006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897762, 32.989960, 36.066551>,  <35.164875, 33.259842, 35.940796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897762, 32.989960, 36.066551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409858, 0.019285, 0.911945,
		-0.621358, 0.737835, 0.263655,
		-0.667781, -0.674706, 0.314391,
		34.697430, 32.787548, 36.160870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025116, 33.417397, 36.567528>,  <35.164875, 33.259842, 35.940796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025116, 33.417397, 36.567528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893173, 33.039787, 36.568939>,  <34.814007, 32.813221, 36.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893173, 33.039787, 36.568939>,  <35.025116, 33.417397, 36.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893173, 33.039787, 36.568939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211191, -0.070145, 0.974925,
		-0.920106, 0.322329, 0.222507,
		-0.329854, -0.944026, 0.003532,
		34.794216, 32.756580, 36.570000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666725, 33.339699, 37.181770>,  <35.025116, 33.417397, 36.567528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666725, 33.339699, 37.181770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735649, 32.958904, 37.080547>,  <34.777004, 32.730427, 37.019814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735649, 32.958904, 37.080547>,  <34.666725, 33.339699, 37.181770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735649, 32.958904, 37.080547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159601, -0.226522, 0.960841,
		-0.972027, -0.205953, 0.112904,
		0.172313, -0.951983, -0.253055,
		34.787342, 32.673309, 37.004631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269325, 32.908749, 37.700432>,  <34.666725, 33.339699, 37.181770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269325, 32.908749, 37.700432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546303, 32.676052, 37.529739>,  <34.712490, 32.536434, 37.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546303, 32.676052, 37.529739>,  <34.269325, 32.908749, 37.700432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546303, 32.676052, 37.529739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106704, -0.502396, 0.858028,
		-0.713538, -0.639670, -0.285807,
		0.692443, -0.581739, -0.426734,
		34.754036, 32.501530, 37.401718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166271, 32.313747, 37.978802>,  <34.269325, 32.908749, 37.700432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166271, 32.313747, 37.978802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534328, 32.254322, 37.833878>,  <34.755161, 32.218666, 37.746925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534328, 32.254322, 37.833878>,  <34.166271, 32.313747, 37.978802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534328, 32.254322, 37.833878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274708, -0.414461, 0.867616,
		-0.279053, -0.897860, -0.340553,
		0.920144, -0.148559, -0.362306,
		34.810371, 32.209755, 37.725185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296234, 31.650627, 38.227715>,  <34.166271, 32.313747, 37.978802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296234, 31.650627, 38.227715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636986, 31.827951, 38.116161>,  <34.841438, 31.934345, 38.049229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636986, 31.827951, 38.116161>,  <34.296234, 31.650627, 38.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636986, 31.827951, 38.116161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491217, -0.491585, 0.719062,
		0.181674, -0.749546, -0.636534,
		0.851880, 0.443311, -0.278882,
		34.892551, 31.960945, 38.032497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801113, 31.123524, 38.078281>,  <34.296234, 31.650627, 38.227715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801113, 31.123524, 38.078281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011475, 31.450985, 38.170567>,  <35.137691, 31.647461, 38.225937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011475, 31.450985, 38.170567>,  <34.801113, 31.123524, 38.078281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011475, 31.450985, 38.170567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511657, -0.521191, 0.683057,
		0.679433, -0.241177, -0.692968,
		0.525906, 0.818654, 0.230714,
		35.169247, 31.696581, 38.239780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523190, 31.004707, 37.932209>,  <34.801113, 31.123524, 38.078281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523190, 31.004707, 37.932209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520855, 31.313887, 38.185986>,  <35.519455, 31.499393, 38.338253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520855, 31.313887, 38.185986>,  <35.523190, 31.004707, 37.932209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520855, 31.313887, 38.185986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503351, -0.545947, 0.669761,
		0.864063, 0.323257, -0.385877,
		-0.005836, 0.772947, 0.634444,
		35.519104, 31.545771, 38.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188522, 30.992353, 38.269341>,  <35.523190, 31.004707, 37.932209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188522, 30.992353, 38.269341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956520, 31.208260, 38.513390>,  <35.817318, 31.337803, 38.659821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956520, 31.208260, 38.513390>,  <36.188522, 30.992353, 38.269341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956520, 31.208260, 38.513390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331097, -0.528113, 0.781966,
		0.744291, 0.655554, 0.127594,
		-0.580005, 0.539765, 0.610122,
		35.782520, 31.370190, 38.696426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430737, 30.900269, 38.899338>,  <36.188522, 30.992353, 38.269341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430737, 30.900269, 38.899338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092216, 31.073790, 39.023006>,  <35.889103, 31.177902, 39.097206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092216, 31.073790, 39.023006>,  <36.430737, 30.900269, 38.899338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092216, 31.073790, 39.023006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049464, -0.513879, 0.856436,
		0.530400, 0.740097, 0.413440,
		-0.846303, 0.433803, 0.309170,
		35.838326, 31.203930, 39.115757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634338, 30.928493, 39.517323>,  <36.430737, 30.900269, 38.899338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634338, 30.928493, 39.517323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243637, 31.014196, 39.520138>,  <36.009216, 31.065619, 39.521828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243637, 31.014196, 39.520138>,  <36.634338, 30.928493, 39.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243637, 31.014196, 39.520138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113538, -0.544866, 0.830801,
		0.181840, 0.810687, 0.556525,
		-0.976752, 0.214259, 0.007034,
		35.950611, 31.078474, 39.522247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470444, 31.200092, 40.157402>,  <36.634338, 30.928493, 39.517323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470444, 31.200092, 40.157402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109818, 31.086885, 40.026512>,  <35.893440, 31.018961, 39.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109818, 31.086885, 40.026512>,  <36.470444, 31.200092, 40.157402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109818, 31.086885, 40.026512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201195, -0.395308, 0.896244,
		-0.383004, 0.873861, 0.299457,
		-0.901570, -0.283015, -0.327220,
		35.839348, 31.001982, 39.928345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925076, 31.431087, 40.612282>,  <36.470444, 31.200092, 40.157402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925076, 31.431087, 40.612282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787983, 31.108553, 40.419468>,  <35.705727, 30.915031, 40.303780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787983, 31.108553, 40.419468>,  <35.925076, 31.431087, 40.612282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787983, 31.108553, 40.419468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330035, -0.377055, 0.865394,
		-0.879553, 0.455684, -0.136892,
		-0.342730, -0.806339, -0.482031,
		35.685165, 30.866652, 40.274860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325912, 31.361561, 40.957317>,  <35.925076, 31.431087, 40.612282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325912, 31.361561, 40.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356190, 31.025089, 40.743145>,  <35.374355, 30.823206, 40.614643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356190, 31.025089, 40.743145>,  <35.325912, 31.361561, 40.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356190, 31.025089, 40.743145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598834, -0.467704, 0.650116,
		-0.797288, 0.271422, -0.539131,
		0.075697, -0.841179, -0.535432,
		35.378899, 30.772736, 40.582516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678329, 31.159798, 40.901596>,  <35.325912, 31.361561, 40.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678329, 31.159798, 40.901596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899883, 30.832253, 40.841354>,  <35.032814, 30.635725, 40.805210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899883, 30.832253, 40.841354>,  <34.678329, 31.159798, 40.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899883, 30.832253, 40.841354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495083, -0.469352, 0.731165,
		-0.669411, -0.330415, -0.665369,
		0.553880, -0.818862, -0.150606,
		35.066048, 30.586594, 40.796173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226170, 30.634314, 41.034832>,  <34.678329, 31.159798, 40.901596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226170, 30.634314, 41.034832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578800, 30.445957, 41.047981>,  <34.790379, 30.332943, 41.055870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578800, 30.445957, 41.047981>,  <34.226170, 30.634314, 41.034832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578800, 30.445957, 41.047981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342769, -0.590721, 0.730451,
		-0.324543, -0.655219, -0.682173,
		0.881579, -0.470890, 0.032874,
		34.843273, 30.304689, 41.057842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121605, 29.976749, 41.098396>,  <34.226170, 30.634314, 41.034832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121605, 29.976749, 41.098396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493858, 29.986874, 41.244427>,  <34.717209, 29.992949, 41.332043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493858, 29.986874, 41.244427>,  <34.121605, 29.976749, 41.098396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493858, 29.986874, 41.244427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286386, -0.570680, 0.769615,
		0.227820, -0.820782, -0.523846,
		0.930635, 0.025312, 0.365072,
		34.773048, 29.994467, 41.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303928, 29.284443, 41.287373>,  <34.121605, 29.976749, 41.098396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303928, 29.284443, 41.287373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547974, 29.518837, 41.500683>,  <34.694401, 29.659473, 41.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547974, 29.518837, 41.500683>,  <34.303928, 29.284443, 41.287373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547974, 29.518837, 41.500683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071025, -0.629901, 0.773422,
		0.789124, -0.509751, -0.342691,
		0.610113, 0.585986, 0.533275,
		34.731007, 29.694633, 41.660664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788086, 28.835949, 41.641861>,  <34.303928, 29.284443, 41.287373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788086, 28.835949, 41.641861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811710, 29.172319, 41.857029>,  <34.825886, 29.374142, 41.986130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811710, 29.172319, 41.857029>,  <34.788086, 28.835949, 41.641861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811710, 29.172319, 41.857029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233675, -0.512240, 0.826442,
		0.970519, -0.174509, 0.166249,
		0.059062, 0.840926, 0.537917,
		34.829430, 29.424597, 42.018406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943726, 28.564749, 42.233524>,  <34.788086, 28.835949, 41.641861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943726, 28.564749, 42.233524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832268, 28.936111, 42.331844>,  <34.765392, 29.158928, 42.390839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832268, 28.936111, 42.331844>,  <34.943726, 28.564749, 42.233524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832268, 28.936111, 42.331844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307904, -0.328790, 0.892800,
		0.909699, 0.173090, 0.377476,
		-0.278645, 0.928406, 0.245804,
		34.748672, 29.214634, 42.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161049, 28.627106, 42.955921>,  <34.943726, 28.564749, 42.233524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161049, 28.627106, 42.955921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892773, 28.915577, 42.886555>,  <34.731808, 29.088659, 42.844936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892773, 28.915577, 42.886555>,  <35.161049, 28.627106, 42.955921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892773, 28.915577, 42.886555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459094, -0.219990, 0.860719,
		0.582584, 0.656890, 0.478635,
		-0.670692, 0.721180, -0.173412,
		34.691566, 29.131931, 42.834530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996422, 28.981295, 43.623920>,  <35.161049, 28.627106, 42.955921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996422, 28.981295, 43.623920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677891, 28.989616, 43.382118>,  <34.486771, 28.994610, 43.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677891, 28.989616, 43.382118>,  <34.996422, 28.981295, 43.623920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677891, 28.989616, 43.382118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578822, -0.316318, 0.751604,
		-0.175579, 0.948425, 0.263936,
		-0.796327, 0.020806, -0.604508,
		34.438992, 28.995857, 43.200768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512463, 29.330898, 44.003017>,  <34.996422, 28.981295, 43.623920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512463, 29.330898, 44.003017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300549, 29.151361, 43.715164>,  <34.173401, 29.043640, 43.542454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300549, 29.151361, 43.715164>,  <34.512463, 29.330898, 44.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300549, 29.151361, 43.715164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656284, -0.320507, 0.683056,
		-0.537231, 0.834155, -0.124768,
		-0.529786, -0.448843, -0.719630,
		34.141613, 29.016708, 43.499275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924545, 29.338745, 44.253452>,  <34.512463, 29.330898, 44.003017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924545, 29.338745, 44.253452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843445, 29.072254, 43.966389>,  <33.794785, 28.912359, 43.794151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843445, 29.072254, 43.966389>,  <33.924545, 29.338745, 44.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843445, 29.072254, 43.966389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699159, -0.414641, 0.582452,
		-0.685616, 0.619848, -0.381731,
		-0.202751, -0.666229, -0.717657,
		33.782619, 28.872385, 43.751091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236393, 29.506121, 44.150345>,  <33.924545, 29.338745, 44.253452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236393, 29.506121, 44.150345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332821, 29.132702, 44.044235>,  <33.390678, 28.908649, 43.980568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332821, 29.132702, 44.044235>,  <33.236393, 29.506121, 44.150345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332821, 29.132702, 44.044235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656376, -0.358175, 0.663989,
		-0.714880, 0.014050, -0.699106,
		0.241074, -0.933549, -0.265274,
		33.405144, 28.852636, 43.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626633, 29.171789, 44.101231>,  <33.236393, 29.506121, 44.150345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626633, 29.171789, 44.101231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873314, 28.856913, 44.101711>,  <33.021324, 28.667986, 44.101997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873314, 28.856913, 44.101711>,  <32.626633, 29.171789, 44.101231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873314, 28.856913, 44.101711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609107, -0.476225, 0.634191,
		-0.498664, -0.391834, -0.773175,
		0.616703, -0.787195, 0.001193,
		33.058327, 28.620756, 44.102070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204247, 28.635174, 44.260567>,  <32.626633, 29.171789, 44.101231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204247, 28.635174, 44.260567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565189, 28.480024, 44.335732>,  <32.781754, 28.386934, 44.380829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565189, 28.480024, 44.335732>,  <32.204247, 28.635174, 44.260567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565189, 28.480024, 44.335732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406629, -0.621636, 0.669494,
		-0.142868, -0.680530, -0.718656,
		0.902353, -0.387876, 0.187911,
		32.835896, 28.363661, 44.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207851, 27.815084, 44.120338>,  <32.204247, 28.635174, 44.260567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207851, 27.815084, 44.120338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495304, 27.926165, 44.375351>,  <32.667778, 27.992813, 44.528358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495304, 27.926165, 44.375351>,  <32.207851, 27.815084, 44.120338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495304, 27.926165, 44.375351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455009, -0.505517, 0.733089,
		0.525862, -0.816906, -0.236927,
		0.718635, 0.277700, 0.637532,
		32.710896, 28.009474, 44.566612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611008, 27.234894, 44.358906>,  <32.207851, 27.815084, 44.120338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611008, 27.234894, 44.358906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662434, 27.493774, 44.659466>,  <32.693291, 27.649103, 44.839802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662434, 27.493774, 44.659466>,  <32.611008, 27.234894, 44.358906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662434, 27.493774, 44.659466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224994, -0.718895, 0.657699,
		0.965841, -0.253620, 0.053188,
		0.128569, 0.647199, 0.751400,
		32.701004, 27.687935, 44.884888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974602, 26.860479, 44.854908>,  <32.611008, 27.234894, 44.358906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974602, 26.860479, 44.854908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810394, 27.172354, 45.044041>,  <32.711872, 27.359478, 45.157520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810394, 27.172354, 45.044041>,  <32.974602, 26.860479, 44.854908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810394, 27.172354, 45.044041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121636, -0.560727, 0.819017,
		0.903705, 0.278705, 0.325024,
		-0.410514, 0.779685, 0.472832,
		32.687241, 27.406260, 45.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351597, 26.842043, 45.429630>,  <32.974602, 26.860479, 44.854908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351597, 26.842043, 45.429630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010239, 27.031927, 45.515755>,  <32.805424, 27.145857, 45.567429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010239, 27.031927, 45.515755>,  <33.351597, 26.842043, 45.429630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010239, 27.031927, 45.515755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109091, -0.566570, 0.816760,
		0.509715, 0.673534, 0.535297,
		-0.853399, 0.474711, 0.215312,
		32.754219, 27.174341, 45.580349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394348, 26.918678, 46.154465>,  <33.351597, 26.842043, 45.429630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394348, 26.918678, 46.154465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008732, 26.986155, 46.072330>,  <32.777363, 27.026640, 46.023052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008732, 26.986155, 46.072330>,  <33.394348, 26.918678, 46.154465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008732, 26.986155, 46.072330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260152, -0.441461, 0.858739,
		0.054215, 0.881281, 0.469473,
		-0.964044, 0.168691, -0.205333,
		32.719517, 27.036762, 46.010731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143032, 27.174355, 46.669521>,  <33.394348, 26.918678, 46.154465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143032, 27.174355, 46.669521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802418, 27.029284, 46.518074>,  <32.598049, 26.942242, 46.427208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802418, 27.029284, 46.518074>,  <33.143032, 27.174355, 46.669521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802418, 27.029284, 46.518074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166936, -0.497009, 0.851537,
		-0.497009, 0.788319, 0.362677,
		-0.851537, -0.362677, -0.378616,
		32.546955, 26.920481, 46.404488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576561, 27.211973, 47.145729>,  <33.143032, 27.174355, 46.669521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576561, 27.211973, 47.145729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477169, 26.910942, 46.901798>,  <32.417534, 26.730324, 46.755440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477169, 26.910942, 46.901798>,  <32.576561, 27.211973, 47.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477169, 26.910942, 46.901798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271237, -0.550324, 0.789667,
		-0.929885, 0.361625, -0.067381,
		-0.248482, -0.752576, -0.609824,
		32.402626, 26.685169, 46.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039406, 26.953953, 47.450497>,  <32.576561, 27.211973, 47.145729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039406, 26.953953, 47.450497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144608, 26.651464, 47.210846>,  <32.207729, 26.469971, 47.067055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144608, 26.651464, 47.210846>,  <32.039406, 26.953953, 47.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144608, 26.651464, 47.210846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140839, -0.644432, 0.751580,
		-0.954459, -0.113290, -0.275996,
		0.263007, -0.756223, -0.599128,
		32.223511, 26.424597, 47.031109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563236, 26.448400, 47.514282>,  <32.039406, 26.953953, 47.450497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563236, 26.448400, 47.514282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879953, 26.248266, 47.374153>,  <32.069984, 26.128185, 47.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879953, 26.248266, 47.374153>,  <31.563236, 26.448400, 47.514282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879953, 26.248266, 47.374153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209709, -0.761390, 0.613439,
		-0.573657, -0.412253, -0.707789,
		0.791795, -0.500333, -0.350324,
		32.117493, 26.098166, 47.269054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354347, 25.779945, 47.335575>,  <31.563236, 26.448400, 47.514282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354347, 25.779945, 47.335575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745705, 25.800718, 47.415623>,  <31.980520, 25.813183, 47.463650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745705, 25.800718, 47.415623>,  <31.354347, 25.779945, 47.335575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745705, 25.800718, 47.415623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125552, -0.619762, 0.774681,
		0.164257, -0.783069, -0.599852,
		0.978395, 0.051934, 0.200116,
		32.039223, 25.816298, 47.475658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657154, 25.084290, 47.463940>,  <31.354347, 25.779945, 47.335575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657154, 25.084290, 47.463940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898218, 25.344082, 47.649403>,  <32.042858, 25.499956, 47.760681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898218, 25.344082, 47.649403>,  <31.657154, 25.084290, 47.463940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898218, 25.344082, 47.649403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007870, -0.576156, 0.817302,
		0.797957, -0.496206, -0.342117,
		0.602662, 0.649480, 0.463653,
		32.079018, 25.538925, 47.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029350, 24.691650, 47.853722>,  <31.657154, 25.084290, 47.463940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029350, 24.691650, 47.853722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094200, 25.060638, 47.993870>,  <32.133110, 25.282032, 48.077961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094200, 25.060638, 47.993870>,  <32.029350, 24.691650, 47.853722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094200, 25.060638, 47.993870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018233, -0.352210, 0.935743,
		0.986602, -0.158095, -0.040282,
		0.162124, 0.922472, 0.350373,
		32.142838, 25.337379, 48.098980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445019, 24.506439, 48.540302>,  <32.029350, 24.691650, 47.853722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445019, 24.506439, 48.540302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328293, 24.888531, 48.559837>,  <32.258259, 25.117785, 48.571560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328293, 24.888531, 48.559837>,  <32.445019, 24.506439, 48.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328293, 24.888531, 48.559837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128280, -0.089684, 0.987674,
		0.947834, 0.281953, 0.148708,
		-0.291814, 0.955227, 0.048836,
		32.240749, 25.175098, 48.574490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928204, 24.878216, 49.149948>,  <32.445019, 24.506439, 48.540302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928204, 24.878216, 49.149948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558941, 24.983967, 49.038315>,  <32.337383, 25.047417, 48.971333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558941, 24.983967, 49.038315>,  <32.928204, 24.878216, 49.149948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558941, 24.983967, 49.038315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329778, -0.171518, 0.928347,
		0.197566, 0.949045, 0.245524,
		-0.923155, 0.264378, -0.279088,
		32.281994, 25.063280, 48.954590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010715, 25.342459, 48.594997>,  <32.928204, 24.878216, 49.149948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010715, 25.342459, 48.594997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341587, 25.477850, 48.774426>,  <33.540108, 25.559084, 48.882080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341587, 25.477850, 48.774426>,  <33.010715, 25.342459, 48.594997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341587, 25.477850, 48.774426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505050, -0.097813, -0.857529,
		-0.246380, 0.935876, -0.251857,
		0.827177, 0.338479, 0.448566,
		33.589741, 25.579393, 48.908997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261940, 25.913307, 48.379528>,  <33.010715, 25.342459, 48.594997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261940, 25.913307, 48.379528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563057, 25.688560, 48.516705>,  <33.743729, 25.553713, 48.599010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563057, 25.688560, 48.516705>,  <33.261940, 25.913307, 48.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563057, 25.688560, 48.516705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312529, -0.153438, -0.937434,
		0.579331, 0.812875, 0.060092,
		0.752796, -0.561864, 0.342939,
		33.788895, 25.520000, 48.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807735, 26.218489, 48.108582>,  <33.261940, 25.913307, 48.379528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807735, 26.218489, 48.108582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867973, 25.831387, 48.189354>,  <33.904114, 25.599125, 48.237816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867973, 25.831387, 48.189354>,  <33.807735, 26.218489, 48.108582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867973, 25.831387, 48.189354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283284, -0.153451, -0.946680,
		0.947139, 0.199766, 0.251041,
		0.150592, -0.967753, 0.201930,
		33.913151, 25.541061, 48.249931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440819, 25.929491, 47.898087>,  <33.807735, 26.218489, 48.108582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440819, 25.929491, 47.898087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154690, 25.650097, 47.889717>,  <33.983013, 25.482460, 47.884697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154690, 25.650097, 47.889717>,  <34.440819, 25.929491, 47.898087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154690, 25.650097, 47.889717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185315, -0.160740, -0.969444,
		0.673779, -0.697338, 0.244420,
		-0.715318, -0.698485, -0.020924,
		33.940094, 25.440552, 47.883438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664097, 25.130527, 47.676426>,  <34.440819, 25.929491, 47.898087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664097, 25.130527, 47.676426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283234, 25.208494, 47.582275>,  <34.054714, 25.255274, 47.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283234, 25.208494, 47.582275>,  <34.664097, 25.130527, 47.676426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283234, 25.208494, 47.582275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164438, -0.322413, -0.932207,
		-0.257588, -0.926314, 0.274937,
		-0.952160, 0.194915, -0.235371,
		33.997585, 25.266970, 47.511665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477940, 24.571543, 47.269974>,  <34.664097, 25.130527, 47.676426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477940, 24.571543, 47.269974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211887, 24.861357, 47.197704>,  <34.052254, 25.035246, 47.154343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211887, 24.861357, 47.197704>,  <34.477940, 24.571543, 47.269974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211887, 24.861357, 47.197704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082384, -0.311681, -0.946609,
		-0.742166, -0.614737, 0.266999,
		-0.665134, 0.724537, -0.180674,
		34.012348, 25.078718, 47.143501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905354, 24.260345, 47.011093>,  <34.477940, 24.571543, 47.269974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905354, 24.260345, 47.011093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893581, 24.640806, 46.888165>,  <33.886517, 24.869083, 46.814407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893581, 24.640806, 46.888165>,  <33.905354, 24.260345, 47.011093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893581, 24.640806, 46.888165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145500, -0.308255, -0.940111,
		-0.988920, 0.017043, 0.147465,
		-0.029434, 0.951151, -0.307319,
		33.884750, 24.926151, 46.795967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394562, 24.284071, 46.547211>,  <33.905354, 24.260345, 47.011093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394562, 24.284071, 46.547211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645527, 24.587940, 46.478790>,  <33.796104, 24.770262, 46.437740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645527, 24.587940, 46.478790>,  <33.394562, 24.284071, 46.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645527, 24.587940, 46.478790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015896, -0.232112, -0.972559,
		-0.778528, 0.607473, -0.157705,
		0.627409, 0.759671, -0.171049,
		33.833748, 24.815842, 46.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262985, 24.302999, 45.851830>,  <33.394562, 24.284071, 46.547211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262985, 24.302999, 45.851830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552635, 24.575060, 45.897499>,  <33.726425, 24.738297, 45.924900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552635, 24.575060, 45.897499>,  <33.262985, 24.302999, 45.851830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552635, 24.575060, 45.897499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258684, -0.114393, -0.959165,
		-0.639316, 0.724091, -0.258779,
		0.724125, 0.680152, 0.114178,
		33.769875, 24.779106, 45.931751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165333, 24.867296, 45.361622>,  <33.262985, 24.302999, 45.851830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165333, 24.867296, 45.361622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548771, 24.917406, 45.463917>,  <33.778835, 24.947472, 45.525295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548771, 24.917406, 45.463917>,  <33.165333, 24.867296, 45.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548771, 24.917406, 45.463917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267261, -0.085669, -0.959809,
		-0.098332, 0.988416, -0.115603,
		0.958594, 0.125276, 0.255741,
		33.836349, 24.954988, 45.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393135, 25.336653, 44.897488>,  <33.165333, 24.867296, 45.361622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393135, 25.336653, 44.897488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710243, 25.134037, 45.033092>,  <33.900509, 25.012468, 45.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710243, 25.134037, 45.033092>,  <33.393135, 25.336653, 44.897488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710243, 25.134037, 45.033092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390663, -0.004662, -0.920522,
		0.467859, 0.862205, 0.194190,
		0.792773, -0.506538, 0.339013,
		33.948074, 24.982077, 45.134796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907509, 25.684889, 44.630318>,  <33.393135, 25.336653, 44.897488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907509, 25.684889, 44.630318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075954, 25.334534, 44.724529>,  <34.177021, 25.124321, 44.781055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075954, 25.334534, 44.724529>,  <33.907509, 25.684889, 44.630318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075954, 25.334534, 44.724529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445299, -0.026574, -0.894987,
		0.790169, 0.481779, 0.378842,
		0.421118, -0.875890, 0.235534,
		34.202290, 25.071766, 44.795189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715382, 25.650618, 44.678593>,  <33.907509, 25.684889, 44.630318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715382, 25.650618, 44.678593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591110, 25.276726, 44.609592>,  <34.516548, 25.052391, 44.568192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591110, 25.276726, 44.609592>,  <34.715382, 25.650618, 44.678593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591110, 25.276726, 44.609592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566320, -0.036279, -0.823386,
		0.763386, -0.353500, 0.540628,
		-0.310681, -0.934731, -0.172499,
		34.497906, 24.996307, 44.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239838, 25.400362, 44.565586>,  <34.715382, 25.650618, 44.678593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239838, 25.400362, 44.565586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986580, 25.140150, 44.397804>,  <34.834625, 24.984024, 44.297134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986580, 25.140150, 44.397804>,  <35.239838, 25.400362, 44.565586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986580, 25.140150, 44.397804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516096, 0.049076, -0.855123,
		0.576868, -0.757894, 0.304664,
		-0.633142, -0.650529, -0.419457,
		34.796638, 24.944992, 44.271969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710651, 24.907358, 44.157887>,  <35.239838, 25.400362, 44.565586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710651, 24.907358, 44.157887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341209, 24.909374, 44.004559>,  <35.119545, 24.910583, 43.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341209, 24.909374, 44.004559>,  <35.710651, 24.907358, 44.157887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341209, 24.909374, 44.004559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377715, 0.182823, -0.907693,
		0.065504, -0.983133, -0.170760,
		-0.923602, 0.005041, -0.383320,
		35.064129, 24.910887, 43.889561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837837, 24.488365, 43.471451>,  <35.710651, 24.907358, 44.157887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837837, 24.488365, 43.471451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507088, 24.712400, 43.451092>,  <35.308640, 24.846821, 43.438877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507088, 24.712400, 43.451092>,  <35.837837, 24.488365, 43.471451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507088, 24.712400, 43.451092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109197, 0.071108, -0.991473,
		-0.551691, -0.825377, -0.119957,
		-0.826869, 0.560086, -0.050899,
		35.259026, 24.880426, 43.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643414, 24.365784, 42.778503>,  <35.837837, 24.488365, 43.471451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643414, 24.365784, 42.778503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426636, 24.687716, 42.875290>,  <35.296570, 24.880875, 42.933361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426636, 24.687716, 42.875290>,  <35.643414, 24.365784, 42.778503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426636, 24.687716, 42.875290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000470, 0.287623, -0.957744,
		-0.840415, -0.519156, -0.155497,
		-0.541943, 0.804829, 0.241967,
		35.264053, 24.929165, 42.947880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105450, 24.435728, 42.241711>,  <35.643414, 24.365784, 42.778503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105450, 24.435728, 42.241711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108315, 24.804474, 42.396690>,  <35.110035, 25.025721, 42.489677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108315, 24.804474, 42.396690>,  <35.105450, 24.435728, 42.241711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108315, 24.804474, 42.396690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056130, 0.386476, -0.920590,
		-0.998398, 0.028343, -0.048975,
		0.007165, 0.921864, 0.387447,
		35.110462, 25.081034, 42.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649254, 24.882818, 41.830177>,  <35.105450, 24.435728, 42.241711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649254, 24.882818, 41.830177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885075, 25.144869, 42.019169>,  <35.026569, 25.302099, 42.132565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885075, 25.144869, 42.019169>,  <34.649254, 24.882818, 41.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885075, 25.144869, 42.019169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126513, 0.502829, -0.855077,
		-0.797759, 0.563890, 0.213563,
		0.589555, 0.655127, 0.472476,
		35.061943, 25.341408, 42.160912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578350, 25.492060, 41.492325>,  <34.649254, 24.882818, 41.830177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578350, 25.492060, 41.492325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920841, 25.575014, 41.681583>,  <35.126335, 25.624786, 41.795139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920841, 25.575014, 41.681583>,  <34.578350, 25.492060, 41.492325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920841, 25.575014, 41.681583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268112, 0.604479, -0.750147,
		-0.441577, 0.769152, 0.461968,
		0.856228, 0.207388, 0.473143,
		35.177708, 25.637230, 41.823524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507015, 26.154045, 41.597267>,  <34.578350, 25.492060, 41.492325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507015, 26.154045, 41.597267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896042, 26.061146, 41.592091>,  <35.129459, 26.005405, 41.588985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896042, 26.061146, 41.592091>,  <34.507015, 26.154045, 41.597267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896042, 26.061146, 41.592091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141309, 0.634108, -0.760223,
		0.184769, 0.737541, 0.649534,
		0.972570, -0.232250, -0.012943,
		35.187813, 25.991470, 41.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854397, 26.762531, 41.581871>,  <34.507015, 26.154045, 41.597267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854397, 26.762531, 41.581871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143436, 26.517530, 41.453693>,  <35.316860, 26.370529, 41.376785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143436, 26.517530, 41.453693>,  <34.854397, 26.762531, 41.581871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143436, 26.517530, 41.453693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124376, 0.571201, -0.811332,
		0.679981, 0.546415, 0.488933,
		0.722603, -0.612502, -0.320445,
		35.360218, 26.333780, 41.357559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506432, 27.201956, 41.316319>,  <34.854397, 26.762531, 41.581871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506432, 27.201956, 41.316319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549931, 26.835430, 41.162155>,  <35.576031, 26.615515, 41.069656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549931, 26.835430, 41.162155>,  <35.506432, 27.201956, 41.316319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549931, 26.835430, 41.162155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182257, 0.399516, -0.898426,
		0.977219, 0.027459, 0.210452,
		0.108749, -0.916315, -0.385410,
		35.582554, 26.560535, 41.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880238, 27.319826, 40.758545>,  <35.506432, 27.201956, 41.316319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880238, 27.319826, 40.758545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771847, 26.943052, 40.679214>,  <35.706814, 26.716988, 40.631618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771847, 26.943052, 40.679214>,  <35.880238, 27.319826, 40.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771847, 26.943052, 40.679214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065867, 0.223691, -0.972432,
		0.960330, -0.250442, -0.122657,
		-0.270976, -0.941935, -0.198321,
		35.690556, 26.660473, 40.619717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307156, 27.103901, 40.226524>,  <35.880238, 27.319826, 40.758545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307156, 27.103901, 40.226524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977768, 26.877794, 40.207039>,  <35.780136, 26.742130, 40.195347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977768, 26.877794, 40.207039>,  <36.307156, 27.103901, 40.226524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977768, 26.877794, 40.207039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158244, 0.311280, -0.937051,
		0.544848, -0.763923, -0.345779,
		-0.823468, -0.565267, -0.048714,
		35.730728, 26.708214, 40.192425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315754, 26.671993, 39.569874>,  <36.307156, 27.103901, 40.226524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315754, 26.671993, 39.569874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938194, 26.680256, 39.701714>,  <35.711658, 26.685213, 39.780815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938194, 26.680256, 39.701714>,  <36.315754, 26.671993, 39.569874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938194, 26.680256, 39.701714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330241, -0.055850, -0.942243,
		-0.001057, -0.998225, 0.059539,
		-0.943896, 0.020658, 0.329596,
		35.655025, 26.686453, 39.800591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929295, 26.131474, 39.222332>,  <36.315754, 26.671993, 39.569874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929295, 26.131474, 39.222332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669250, 26.405880, 39.353012>,  <35.513222, 26.570524, 39.431419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669250, 26.405880, 39.353012>,  <35.929295, 26.131474, 39.222332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669250, 26.405880, 39.353012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367992, 0.091911, -0.925275,
		-0.664782, -0.721757, 0.192696,
		-0.650113, 0.686017, 0.326701,
		35.474216, 26.611685, 39.451023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275227, 26.042168, 38.789722>,  <35.929295, 26.131474, 39.222332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275227, 26.042168, 38.789722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260902, 26.410994, 38.943874>,  <35.252308, 26.632288, 39.036366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260902, 26.410994, 38.943874>,  <35.275227, 26.042168, 38.789722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260902, 26.410994, 38.943874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286215, 0.360011, -0.887960,
		-0.957496, -0.142101, 0.251016,
		-0.035811, 0.922063, 0.385381,
		35.250160, 26.687613, 39.059490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512741, 26.312937, 38.647049>,  <35.275227, 26.042168, 38.789722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512741, 26.312937, 38.647049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757130, 26.625048, 38.700539>,  <34.903763, 26.812315, 38.732632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757130, 26.625048, 38.700539>,  <34.512741, 26.312937, 38.647049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757130, 26.625048, 38.700539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348682, 0.416888, -0.839420,
		-0.710729, 0.466233, 0.526775,
		0.610971, 0.780277, 0.133728,
		34.940422, 26.859131, 38.740658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121895, 26.817547, 38.432762>,  <34.512741, 26.312937, 38.647049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121895, 26.817547, 38.432762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486748, 26.981236, 38.423416>,  <34.705662, 27.079449, 38.417809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486748, 26.981236, 38.423416>,  <34.121895, 26.817547, 38.432762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486748, 26.981236, 38.423416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261564, 0.537238, -0.801847,
		-0.315582, 0.737504, 0.597072,
		0.912136, 0.409221, -0.023362,
		34.760387, 27.104002, 38.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982552, 27.484221, 38.155991>,  <34.121895, 26.817547, 38.432762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982552, 27.484221, 38.155991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380932, 27.489010, 38.120335>,  <34.619961, 27.491884, 38.098942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380932, 27.489010, 38.120335>,  <33.982552, 27.484221, 38.155991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380932, 27.489010, 38.120335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082421, 0.518221, -0.851266,
		0.036002, 0.855163, 0.517108,
		0.995947, 0.011973, -0.089141,
		34.679714, 27.492601, 38.093594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211456, 28.220127, 38.046524>,  <33.982552, 27.484221, 38.155991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211456, 28.220127, 38.046524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488419, 27.957533, 37.926792>,  <34.654598, 27.799976, 37.854954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488419, 27.957533, 37.926792>,  <34.211456, 28.220127, 38.046524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488419, 27.957533, 37.926792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068000, 0.472393, -0.878761,
		0.718293, 0.588109, 0.371731,
		0.692410, -0.656485, -0.299325,
		34.696140, 27.760588, 37.836994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672054, 28.666595, 37.587067>,  <34.211456, 28.220127, 38.046524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672054, 28.666595, 37.587067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750824, 28.285845, 37.493130>,  <34.798088, 28.057394, 37.436768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750824, 28.285845, 37.493130>,  <34.672054, 28.666595, 37.587067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750824, 28.285845, 37.493130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152265, 0.266316, -0.951783,
		0.968522, 0.151675, 0.197383,
		0.196928, -0.951877, -0.234838,
		34.809902, 28.000282, 37.422680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384590, 28.668392, 37.293045>,  <34.672054, 28.666595, 37.587067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384590, 28.668392, 37.293045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177521, 28.351471, 37.163876>,  <35.053280, 28.161318, 37.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177521, 28.351471, 37.163876>,  <35.384590, 28.668392, 37.293045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177521, 28.351471, 37.163876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121920, 0.305264, -0.944431,
		0.846850, -0.528272, -0.061428,
		-0.517669, -0.792302, -0.322920,
		35.022221, 28.113781, 37.067001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805988, 28.285826, 36.844296>,  <35.384590, 28.668392, 37.293045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805988, 28.285826, 36.844296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439568, 28.186113, 36.718628>,  <35.219715, 28.126286, 36.643227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439568, 28.186113, 36.718628>,  <35.805988, 28.285826, 36.844296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439568, 28.186113, 36.718628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238569, 0.290982, -0.926507,
		0.322382, -0.923681, -0.207084,
		-0.916054, -0.249285, -0.314169,
		35.164749, 28.111328, 36.624378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864838, 27.969645, 36.160130>,  <35.805988, 28.285826, 36.844296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864838, 27.969645, 36.160130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472595, 28.039560, 36.195606>,  <35.237251, 28.081509, 36.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472595, 28.039560, 36.195606>,  <35.864838, 27.969645, 36.160130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472595, 28.039560, 36.195606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031014, 0.308427, -0.950742,
		-0.193532, -0.935052, -0.297024,
		-0.980604, 0.174788, 0.088690,
		35.178413, 28.091997, 36.222214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660477, 27.797743, 35.514301>,  <35.864838, 27.969645, 36.160130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660477, 27.797743, 35.514301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355526, 28.005545, 35.668648>,  <35.172554, 28.130226, 35.761257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355526, 28.005545, 35.668648>,  <35.660477, 27.797743, 35.514301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355526, 28.005545, 35.668648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100950, 0.493500, -0.863867,
		-0.639209, -0.697547, -0.323790,
		-0.762379, 0.519505, 0.385867,
		35.126812, 28.161396, 35.784409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205696, 27.844248, 34.958710>,  <35.660477, 27.797743, 35.514301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205696, 27.844248, 34.958710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070980, 28.138193, 35.194183>,  <34.990150, 28.314560, 35.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070980, 28.138193, 35.194183>,  <35.205696, 27.844248, 34.958710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070980, 28.138193, 35.194183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088444, 0.597757, -0.796784,
		-0.937417, -0.320413, -0.136324,
		-0.336789, 0.734862, 0.588686,
		34.969944, 28.358652, 35.370789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530106, 28.177855, 34.621445>,  <35.205696, 27.844248, 34.958710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530106, 28.177855, 34.621445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706226, 28.424538, 34.882462>,  <34.811897, 28.572548, 35.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706226, 28.424538, 34.882462>,  <34.530106, 28.177855, 34.621445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706226, 28.424538, 34.882462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118865, 0.760422, -0.638458,
		-0.889948, 0.203548, 0.408118,
		0.440299, 0.616706, 0.652542,
		34.838318, 28.609549, 35.078224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123680, 28.870853, 34.666260>,  <34.530106, 28.177855, 34.621445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123680, 28.870853, 34.666260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487270, 28.963150, 34.805122>,  <34.705425, 29.018528, 34.888439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487270, 28.963150, 34.805122>,  <34.123680, 28.870853, 34.666260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487270, 28.963150, 34.805122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056942, 0.756284, -0.651761,
		-0.412940, 0.612203, 0.674306,
		0.908977, 0.230741, 0.347160,
		34.759964, 29.032372, 34.909271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153759, 29.600204, 34.979034>,  <34.123680, 28.870853, 34.666260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153759, 29.600204, 34.979034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536392, 29.510195, 34.904934>,  <34.765972, 29.456190, 34.860474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536392, 29.510195, 34.904934>,  <34.153759, 29.600204, 34.979034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536392, 29.510195, 34.904934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121668, 0.885835, -0.447764,
		0.264857, 0.405784, 0.874751,
		0.956581, -0.225022, -0.185249,
		34.823368, 29.442688, 34.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524506, 30.208334, 35.100491>,  <34.153759, 29.600204, 34.979034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524506, 30.208334, 35.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776764, 30.001436, 34.869061>,  <34.928120, 29.877298, 34.730202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776764, 30.001436, 34.869061>,  <34.524506, 30.208334, 35.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776764, 30.001436, 34.869061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362539, 0.855519, -0.369665,
		0.686188, 0.023372, 0.727049,
		0.630644, -0.517243, -0.578573,
		34.965958, 29.846264, 34.695488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073715, 30.656584, 35.090984>,  <34.524506, 30.208334, 35.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073715, 30.656584, 35.090984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172409, 30.413408, 34.789116>,  <35.231625, 30.267502, 34.607994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172409, 30.413408, 34.789116>,  <35.073715, 30.656584, 35.090984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172409, 30.413408, 34.789116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313232, 0.786979, -0.531554,
		0.917064, -0.105233, 0.384604,
		0.246738, -0.607939, -0.754672,
		35.246429, 30.231026, 34.562714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757435, 30.631622, 34.926388>,  <35.073715, 30.656584, 35.090984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757435, 30.631622, 34.926388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596081, 30.500643, 34.584614>,  <35.499268, 30.422056, 34.379551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596081, 30.500643, 34.584614>,  <35.757435, 30.631622, 34.926388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596081, 30.500643, 34.584614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350467, 0.807281, -0.474836,
		0.845253, -0.490993, -0.210886,
		-0.403386, -0.327448, -0.854434,
		35.475063, 30.402409, 34.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268551, 30.721746, 34.320400>,  <35.757435, 30.631622, 34.926388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268551, 30.721746, 34.320400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910778, 30.711304, 34.141823>,  <35.696114, 30.705038, 34.034676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910778, 30.711304, 34.141823>,  <36.268551, 30.721746, 34.320400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910778, 30.711304, 34.141823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268313, 0.767327, -0.582424,
		0.357773, -0.640725, -0.679316,
		-0.894431, -0.026106, -0.446444,
		35.642448, 30.703472, 34.007889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186958, 31.397318, 34.009964>,  <36.268551, 30.721746, 34.320400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186958, 31.397318, 34.009964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417217, 31.664360, 34.198830>,  <36.555370, 31.824585, 34.312149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417217, 31.664360, 34.198830>,  <36.186958, 31.397318, 34.009964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417217, 31.664360, 34.198830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329395, -0.717827, 0.613370,
		0.748420, -0.197555, -0.633119,
		0.575644, 0.667605, 0.472163,
		36.589912, 31.864641, 34.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807869, 31.179583, 34.109268>,  <36.186958, 31.397318, 34.009964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807869, 31.179583, 34.109268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812248, 31.442192, 34.410957>,  <36.814877, 31.599758, 34.591972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812248, 31.442192, 34.410957>,  <36.807869, 31.179583, 34.109268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812248, 31.442192, 34.410957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393803, -0.696145, 0.600251,
		0.919130, 0.290448, -0.266159,
		0.010944, 0.656522, 0.754227,
		36.815533, 31.639149, 34.637226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384453, 30.955849, 34.527088>,  <36.807869, 31.179583, 34.109268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384453, 30.955849, 34.527088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173447, 31.200741, 34.762680>,  <37.046841, 31.347675, 34.904034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173447, 31.200741, 34.762680>,  <37.384453, 30.955849, 34.527088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173447, 31.200741, 34.762680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302864, -0.512210, 0.803688,
		0.793723, 0.602342, 0.084778,
		-0.527519, 0.612230, 0.588981,
		37.015190, 31.384409, 34.939373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780716, 31.000477, 35.137337>,  <37.384453, 30.955849, 34.527088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780716, 31.000477, 35.137337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409580, 31.090334, 35.256439>,  <37.186901, 31.144249, 35.327900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409580, 31.090334, 35.256439>,  <37.780716, 31.000477, 35.137337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409580, 31.090334, 35.256439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140753, -0.528396, 0.837249,
		0.345415, 0.818739, 0.458645,
		-0.927835, 0.224643, 0.297755,
		37.131229, 31.157726, 35.345764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868958, 31.129780, 35.860241>,  <37.780716, 31.000477, 35.137337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868958, 31.129780, 35.860241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471588, 31.097921, 35.827335>,  <37.233166, 31.078806, 35.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471588, 31.097921, 35.827335>,  <37.868958, 31.129780, 35.860241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471588, 31.097921, 35.827335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037789, -0.450162, 0.892147,
		-0.108089, 0.889388, 0.444191,
		-0.993423, -0.079646, -0.082267,
		37.173561, 31.074028, 35.802654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641388, 31.477394, 36.333431>,  <37.868958, 31.129780, 35.860241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641388, 31.477394, 36.333431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348381, 31.215940, 36.257351>,  <37.172577, 31.059069, 36.211704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348381, 31.215940, 36.257351>,  <37.641388, 31.477394, 36.333431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348381, 31.215940, 36.257351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069074, -0.349323, 0.934453,
		-0.677232, 0.671367, 0.301036,
		-0.732520, -0.653636, -0.190199,
		37.128624, 31.019850, 36.200291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226257, 31.508533, 37.033737>,  <37.641388, 31.477394, 36.333431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226257, 31.508533, 37.033737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140266, 31.162947, 36.851597>,  <37.088673, 30.955595, 36.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140266, 31.162947, 36.851597>,  <37.226257, 31.508533, 37.033737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140266, 31.162947, 36.851597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096729, -0.482796, 0.870374,
		-0.971817, 0.143067, 0.187362,
		-0.214979, -0.863967, -0.455351,
		37.075771, 30.903757, 36.714993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773376, 31.195782, 37.472134>,  <37.226257, 31.508533, 37.033737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773376, 31.195782, 37.472134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900372, 30.901894, 37.232338>,  <36.976566, 30.725559, 37.088459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900372, 30.901894, 37.232338>,  <36.773376, 31.195782, 37.472134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900372, 30.901894, 37.232338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084360, -0.607805, 0.789592,
		-0.944504, -0.301256, -0.130988,
		0.317484, -0.734722, -0.599488,
		36.995617, 30.681477, 37.052490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467186, 30.592789, 37.764881>,  <36.773376, 31.195782, 37.472134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467186, 30.592789, 37.764881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765236, 30.461494, 37.532658>,  <36.944065, 30.382717, 37.393322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765236, 30.461494, 37.532658>,  <36.467186, 30.592789, 37.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765236, 30.461494, 37.532658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253347, -0.665942, 0.701667,
		-0.616928, -0.669914, -0.413055,
		0.745127, -0.328232, -0.580559,
		36.988773, 30.363024, 37.358490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383877, 29.876936, 37.627949>,  <36.467186, 30.592789, 37.764881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383877, 29.876936, 37.627949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777485, 29.935928, 37.588028>,  <37.013649, 29.971323, 37.564075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777485, 29.935928, 37.588028>,  <36.383877, 29.876936, 37.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777485, 29.935928, 37.588028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176399, -0.730649, 0.659572,
		0.024356, -0.666635, -0.744987,
		0.984018, 0.147480, -0.099798,
		37.072689, 29.980173, 37.558090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631653, 29.248222, 37.690483>,  <36.383877, 29.876936, 37.627949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631653, 29.248222, 37.690483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979969, 29.444777, 37.696968>,  <37.188961, 29.562708, 37.700859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979969, 29.444777, 37.696968>,  <36.631653, 29.248222, 37.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979969, 29.444777, 37.696968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397571, -0.723178, 0.564758,
		0.289238, -0.485341, -0.825098,
		0.870792, 0.491384, 0.016213,
		37.241207, 29.592192, 37.701832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177906, 28.733028, 37.500999>,  <36.631653, 29.248222, 37.690483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177906, 28.733028, 37.500999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383118, 29.010073, 37.703815>,  <37.506245, 29.176298, 37.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383118, 29.010073, 37.703815>,  <37.177906, 28.733028, 37.500999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383118, 29.010073, 37.703815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472294, -0.721018, 0.507023,
		0.716755, -0.020646, -0.697020,
		0.513032, 0.692609, 0.507042,
		37.537025, 29.217855, 37.855927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951664, 28.504831, 37.553421>,  <37.177906, 28.733028, 37.500999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951664, 28.504831, 37.553421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883373, 28.757086, 37.856247>,  <37.842400, 28.908440, 38.037941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883373, 28.757086, 37.856247>,  <37.951664, 28.504831, 37.553421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883373, 28.757086, 37.856247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381082, -0.666292, 0.640962,
		0.908641, 0.397933, -0.126571,
		-0.170726, 0.630638, 0.757065,
		37.832157, 28.946278, 38.083366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427109, 28.298828, 37.975685>,  <37.951664, 28.504831, 37.553421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427109, 28.298828, 37.975685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207172, 28.516928, 38.228786>,  <38.075211, 28.647787, 38.380646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207172, 28.516928, 38.228786>,  <38.427109, 28.298828, 37.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207172, 28.516928, 38.228786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229201, -0.629977, 0.742021,
		0.803206, 0.553023, 0.221417,
		-0.549843, 0.545247, 0.632755,
		38.042221, 28.680502, 38.418613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796066, 28.279161, 38.603958>,  <38.427109, 28.298828, 37.975685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796066, 28.279161, 38.603958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419285, 28.373743, 38.699295>,  <38.193214, 28.430492, 38.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419285, 28.373743, 38.699295>,  <38.796066, 28.279161, 38.603958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419285, 28.373743, 38.699295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087393, -0.512765, 0.854069,
		0.324163, 0.825326, 0.462338,
		-0.941956, 0.236452, 0.238347,
		38.136700, 28.444679, 38.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809025, 28.465822, 39.335201>,  <38.796066, 28.279161, 38.603958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809025, 28.465822, 39.335201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439816, 28.336300, 39.252087>,  <38.218288, 28.258587, 39.202217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439816, 28.336300, 39.252087>,  <38.809025, 28.465822, 39.335201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439816, 28.336300, 39.252087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017714, -0.503736, 0.863676,
		-0.384333, 0.800874, 0.459225,
		-0.923024, -0.323804, -0.207789,
		38.162907, 28.239159, 39.189751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498367, 28.556206, 39.936451>,  <38.809025, 28.465822, 39.335201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498367, 28.556206, 39.936451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264660, 28.295761, 39.742676>,  <38.124435, 28.139494, 39.626411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264660, 28.295761, 39.742676>,  <38.498367, 28.556206, 39.936451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264660, 28.295761, 39.742676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141365, -0.506148, 0.850782,
		-0.799152, 0.565569, 0.203683,
		-0.584270, -0.651111, -0.484441,
		38.089378, 28.100428, 39.597343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925396, 28.549149, 40.300819>,  <38.498367, 28.556206, 39.936451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925396, 28.549149, 40.300819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905365, 28.205023, 40.097900>,  <37.893345, 27.998547, 39.976151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905365, 28.205023, 40.097900>,  <37.925396, 28.549149, 40.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905365, 28.205023, 40.097900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227759, -0.484714, 0.844499,
		-0.972429, 0.157831, -0.171671,
		-0.050077, -0.860315, -0.507298,
		37.890343, 27.946928, 39.945713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369476, 28.246330, 40.611755>,  <37.925396, 28.549149, 40.300819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369476, 28.246330, 40.611755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579987, 27.955021, 40.436188>,  <37.706291, 27.780235, 40.330845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579987, 27.955021, 40.436188>,  <37.369476, 28.246330, 40.611755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579987, 27.955021, 40.436188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093179, -0.562473, 0.821548,
		-0.845193, -0.391463, -0.363876,
		0.526276, -0.728272, -0.438923,
		37.737869, 27.736540, 40.304512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867825, 27.700514, 40.672890>,  <37.369476, 28.246330, 40.611755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867825, 27.700514, 40.672890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217636, 27.526424, 40.587296>,  <37.427521, 27.421970, 40.535938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217636, 27.526424, 40.587296>,  <36.867825, 27.700514, 40.672890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217636, 27.526424, 40.587296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043957, -0.510534, 0.858733,
		-0.482983, -0.741578, -0.465606,
		0.874525, -0.435220, -0.213981,
		37.479992, 27.395859, 40.523102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755917, 27.039591, 40.869389>,  <36.867825, 27.700514, 40.672890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755917, 27.039591, 40.869389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 27.081053, 40.849365>,  <37.391663, 27.105930, 40.837349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 27.081053, 40.849365>,  <36.755917, 27.039591, 40.869389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153259, 27.081053, 40.849365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089940, -0.427477, 0.899541,
		0.071842, -0.898064, -0.433958,
		0.993353, 0.103655, -0.050061,
		37.451263, 27.112148, 40.834347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056339, 26.288773, 41.035141>,  <36.755917, 27.039591, 40.869389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056339, 26.288773, 41.035141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335449, 26.561775, 41.122135>,  <37.502914, 26.725576, 41.174332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335449, 26.561775, 41.122135>,  <37.056339, 26.288773, 41.035141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335449, 26.561775, 41.122135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016288, -0.288423, 0.957365,
		0.716135, -0.671565, -0.190136,
		0.697772, 0.682505, 0.217488,
		37.544781, 26.766527, 41.187382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531235, 25.949179, 41.421619>,  <37.056339, 26.288773, 41.035141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531235, 25.949179, 41.421619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602783, 26.333561, 41.506062>,  <37.645710, 26.564190, 41.556728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602783, 26.333561, 41.506062>,  <37.531235, 25.949179, 41.421619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602783, 26.333561, 41.506062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141288, -0.237433, 0.961074,
		0.973676, -0.142077, -0.178240,
		0.178867, 0.960958, 0.211109,
		37.656445, 26.621849, 41.569393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210537, 25.982958, 41.862160>,  <37.531235, 25.949179, 41.421619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210537, 25.982958, 41.862160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989113, 26.304731, 41.948376>,  <37.856258, 26.497795, 42.000107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989113, 26.304731, 41.948376>,  <38.210537, 25.982958, 41.862160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989113, 26.304731, 41.948376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028846, -0.277181, 0.960384,
		0.832309, 0.525414, 0.176642,
		-0.553561, 0.804432, 0.215544,
		37.823044, 26.546061, 42.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479710, 26.252352, 42.570179>,  <38.210537, 25.982958, 41.862160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479710, 26.252352, 42.570179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122185, 26.427612, 42.531971>,  <37.907669, 26.532768, 42.509045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122185, 26.427612, 42.531971>,  <38.479710, 26.252352, 42.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122185, 26.427612, 42.531971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107193, -0.001909, 0.994236,
		0.435443, 0.898899, 0.048673,
		-0.893811, 0.438151, -0.095525,
		37.854042, 26.559057, 42.503315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507862, 26.755461, 43.049809>,  <38.479710, 26.252352, 42.570179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507862, 26.755461, 43.049809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118797, 26.694223, 42.979961>,  <37.885357, 26.657482, 42.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118797, 26.694223, 42.979961>,  <38.507862, 26.755461, 43.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118797, 26.694223, 42.979961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178279, 0.010395, 0.983925,
		-0.148816, 0.988157, -0.037404,
		-0.972662, -0.153092, -0.174620,
		37.827000, 26.648296, 42.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122421, 27.087885, 43.515026>,  <38.507862, 26.755461, 43.049809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122421, 27.087885, 43.515026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804848, 26.869589, 43.407818>,  <37.614304, 26.738611, 43.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804848, 26.869589, 43.407818>,  <38.122421, 27.087885, 43.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804848, 26.869589, 43.407818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353641, 0.055921, 0.933708,
		-0.494576, 0.836085, -0.237395,
		-0.793935, -0.545742, -0.268017,
		37.566666, 26.705866, 43.327412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576584, 27.499830, 43.788696>,  <38.122421, 27.087885, 43.515026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576584, 27.499830, 43.788696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417717, 27.135813, 43.741226>,  <37.322395, 26.917402, 43.712746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417717, 27.135813, 43.741226>,  <37.576584, 27.499830, 43.788696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417717, 27.135813, 43.741226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482838, 0.097233, 0.870295,
		-0.780466, 0.402951, -0.478021,
		-0.397166, -0.910042, -0.118673,
		37.298569, 26.862801, 43.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795498, 27.534004, 43.875725>,  <37.576584, 27.499830, 43.788696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795498, 27.534004, 43.875725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891006, 27.148426, 43.922710>,  <36.948311, 26.917080, 43.950901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891006, 27.148426, 43.922710>,  <36.795498, 27.534004, 43.875725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891006, 27.148426, 43.922710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546354, -0.033349, 0.836891,
		-0.802800, -0.263999, -0.534618,
		0.238767, -0.963946, 0.117465,
		36.962635, 26.859241, 43.957951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115524, 27.125689, 44.009495>,  <36.795498, 27.534004, 43.875725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115524, 27.125689, 44.009495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393929, 26.866980, 44.134235>,  <36.560970, 26.711754, 44.209080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393929, 26.866980, 44.134235>,  <36.115524, 27.125689, 44.009495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393929, 26.866980, 44.134235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422116, -0.017220, 0.906378,
		-0.580852, -0.762488, -0.284999,
		0.696010, -0.646774, 0.311855,
		36.602730, 26.672947, 44.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783947, 26.513565, 44.153294>,  <36.115524, 27.125689, 44.009495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783947, 26.513565, 44.153294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115578, 26.546743, 44.374474>,  <36.314556, 26.566650, 44.507183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115578, 26.546743, 44.374474>,  <35.783947, 26.513565, 44.153294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115578, 26.546743, 44.374474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550808, -0.048878, 0.833200,
		0.096135, -0.995355, 0.005162,
		0.829077, 0.082943, 0.552948,
		36.364300, 26.571627, 44.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619827, 26.163538, 44.706600>,  <35.783947, 26.513565, 44.153294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619827, 26.163538, 44.706600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939629, 26.370712, 44.828281>,  <36.131508, 26.495016, 44.901291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939629, 26.370712, 44.828281>,  <35.619827, 26.163538, 44.706600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939629, 26.370712, 44.828281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338899, -0.029184, 0.940370,
		0.495929, -0.854922, 0.152195,
		0.799501, 0.517936, 0.304206,
		36.179478, 26.526093, 44.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827026, 25.814871, 45.340336>,  <35.619827, 26.163538, 44.706600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827026, 25.814871, 45.340336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969124, 26.187307, 45.373489>,  <36.054382, 26.410770, 45.393379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969124, 26.187307, 45.373489>,  <35.827026, 25.814871, 45.340336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969124, 26.187307, 45.373489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360211, 0.054535, 0.931275,
		0.862585, -0.360680, 0.354764,
		0.355240, 0.931094, 0.082880,
		36.075695, 26.466635, 45.398354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051586, 25.878391, 45.931313>,  <35.827026, 25.814871, 45.340336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051586, 25.878391, 45.931313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011108, 26.269087, 45.855694>,  <35.986820, 26.503504, 45.810322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011108, 26.269087, 45.855694>,  <36.051586, 25.878391, 45.931313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011108, 26.269087, 45.855694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305807, 0.150280, 0.940159,
		0.946700, 0.152950, 0.283487,
		-0.101195, 0.976741, -0.189043,
		35.980751, 26.562109, 45.798981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279049, 26.134193, 46.455666>,  <36.051586, 25.878391, 45.931313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279049, 26.134193, 46.455666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066254, 26.429354, 46.289539>,  <35.938576, 26.606449, 46.189861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066254, 26.429354, 46.289539>,  <36.279049, 26.134193, 46.455666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066254, 26.429354, 46.289539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500138, 0.121958, 0.857315,
		0.683264, 0.663799, 0.304172,
		-0.531988, 0.737901, -0.415320,
		35.906658, 26.650724, 46.164944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264500, 26.675352, 46.963902>,  <36.279049, 26.134193, 46.455666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264500, 26.675352, 46.963902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956280, 26.719154, 46.712742>,  <35.771347, 26.745436, 46.562046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956280, 26.719154, 46.712742>,  <36.264500, 26.675352, 46.963902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956280, 26.719154, 46.712742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597160, 0.220352, 0.771262,
		0.222817, 0.969254, -0.104400,
		-0.770553, 0.109506, -0.627898,
		35.725113, 26.752007, 46.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823647, 26.705942, 47.609104>,  <36.264500, 26.675352, 46.963902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823647, 26.705942, 47.609104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887009, 27.026598, 47.378529>,  <35.925026, 27.218992, 47.240185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887009, 27.026598, 47.378529>,  <35.823647, 26.705942, 47.609104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887009, 27.026598, 47.378529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945086, 0.292126, 0.146540,
		0.285863, 0.521566, 0.803897,
		0.158409, 0.801643, -0.576433,
		35.934532, 27.267090, 47.205597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725384, 27.193666, 48.019821>,  <35.823647, 26.705942, 47.609104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725384, 27.193666, 48.019821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681309, 27.331812, 47.647030>,  <35.654861, 27.414700, 47.423355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681309, 27.331812, 47.647030>,  <35.725384, 27.193666, 48.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681309, 27.331812, 47.647030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914539, 0.331954, 0.231140,
		0.389201, 0.877799, 0.279270,
		-0.110189, 0.345363, -0.931978,
		35.648251, 27.435421, 47.367435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103985, 27.657072, 48.245529>,  <35.725384, 27.193666, 48.019821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103985, 27.657072, 48.245529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195240, 28.015036, 48.398937>,  <35.249992, 28.229815, 48.490982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195240, 28.015036, 48.398937>,  <35.103985, 27.657072, 48.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195240, 28.015036, 48.398937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190776, 0.345184, -0.918941,
		-0.954755, 0.282814, -0.091977,
		0.228140, 0.894910, 0.383520,
		35.263683, 28.283508, 48.513992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727879, 28.291218, 47.890984>,  <35.103985, 27.657072, 48.245529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727879, 28.291218, 47.890984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062946, 28.452240, 48.038635>,  <35.263988, 28.548853, 48.127228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062946, 28.452240, 48.038635>,  <34.727879, 28.291218, 47.890984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062946, 28.452240, 48.038635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100076, 0.551281, -0.828296,
		-0.536931, 0.730779, 0.421505,
		0.837669, 0.402555, 0.369134,
		35.314247, 28.573006, 48.149376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731525, 28.985329, 47.609428>,  <34.727879, 28.291218, 47.890984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731525, 28.985329, 47.609428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111969, 28.937780, 47.723450>,  <35.340237, 28.909250, 47.791862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111969, 28.937780, 47.723450>,  <34.731525, 28.985329, 47.609428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111969, 28.937780, 47.723450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306728, 0.255745, -0.916794,
		0.036081, 0.959408, 0.279704,
		0.951113, -0.118872, 0.285050,
		35.397305, 28.902119, 47.808964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059898, 29.645367, 47.581917>,  <34.731525, 28.985329, 47.609428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059898, 29.645367, 47.581917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356407, 29.377930, 47.558258>,  <35.534313, 29.217466, 47.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356407, 29.377930, 47.558258>,  <35.059898, 29.645367, 47.581917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356407, 29.377930, 47.558258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350010, 0.460237, -0.815889,
		0.572721, 0.584093, 0.575175,
		0.741272, -0.668594, -0.059149,
		35.578789, 29.177351, 47.540512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689720, 29.989969, 47.361553>,  <35.059898, 29.645367, 47.581917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689720, 29.989969, 47.361553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754410, 29.600630, 47.296516>,  <35.793224, 29.367025, 47.257496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754410, 29.600630, 47.296516>,  <35.689720, 29.989969, 47.361553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754410, 29.600630, 47.296516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226690, 0.196994, -0.953837,
		0.960446, 0.117402, 0.252508,
		0.161725, -0.973350, -0.162588,
		35.802929, 29.308624, 47.247742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259357, 30.028984, 46.948093>,  <35.689720, 29.989969, 47.361553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259357, 30.028984, 46.948093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131638, 29.652704, 46.902260>,  <36.055004, 29.426935, 46.874760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131638, 29.652704, 46.902260>,  <36.259357, 30.028984, 46.948093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131638, 29.652704, 46.902260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314674, 0.008809, -0.949159,
		0.893884, -0.339124, 0.293201,
		-0.319300, -0.940700, -0.114587,
		36.035847, 29.370495, 46.867882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826500, 29.565067, 46.781784>,  <36.259357, 30.028984, 46.948093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826500, 29.565067, 46.781784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484055, 29.409721, 46.645405>,  <36.278587, 29.316515, 46.563576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484055, 29.409721, 46.645405>,  <36.826500, 29.565067, 46.781784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484055, 29.409721, 46.645405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362829, 0.018111, -0.931680,
		0.368005, -0.921328, 0.125404,
		-0.856111, -0.388363, -0.340950,
		36.227222, 29.293213, 46.543121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122395, 29.062899, 46.326984>,  <36.826500, 29.565067, 46.781784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122395, 29.062899, 46.326984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741749, 29.127062, 46.222141>,  <36.513363, 29.165560, 46.159237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741749, 29.127062, 46.222141>,  <37.122395, 29.062899, 46.326984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741749, 29.127062, 46.222141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289124, 0.178390, -0.940523,
		-0.104112, -0.970796, -0.216137,
		-0.951613, 0.160410, -0.262108,
		36.456264, 29.175184, 46.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982067, 28.691545, 45.738369>,  <37.122395, 29.062899, 46.326984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982067, 28.691545, 45.738369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712406, 28.986961, 45.734936>,  <36.550610, 29.164211, 45.732876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712406, 28.986961, 45.734936>,  <36.982067, 28.691545, 45.738369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712406, 28.986961, 45.734936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192896, 0.164833, -0.967275,
		-0.712956, -0.653750, -0.253584,
		-0.674155, 0.738540, -0.008587,
		36.510159, 29.208523, 45.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611744, 28.623514, 45.091946>,  <36.982067, 28.691545, 45.738369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611744, 28.623514, 45.091946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544846, 28.997683, 45.216534>,  <36.504707, 29.222183, 45.291286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544846, 28.997683, 45.216534>,  <36.611744, 28.623514, 45.091946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544846, 28.997683, 45.216534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114839, 0.332253, -0.936173,
		-0.979205, -0.120799, -0.162990,
		-0.167243, 0.935423, 0.311471,
		36.494671, 29.278309, 45.309975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210079, 28.907871, 44.586716>,  <36.611744, 28.623514, 45.091946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210079, 28.907871, 44.586716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363949, 29.221184, 44.782063>,  <36.456268, 29.409172, 44.899269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363949, 29.221184, 44.782063>,  <36.210079, 28.907871, 44.586716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363949, 29.221184, 44.782063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342912, 0.369945, -0.863453,
		-0.856995, 0.499611, -0.126290,
		0.384670, 0.783281, 0.488364,
		36.479351, 29.456167, 44.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868614, 29.485641, 44.264206>,  <36.210079, 28.907871, 44.586716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868614, 29.485641, 44.264206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235130, 29.525673, 44.419331>,  <36.455040, 29.549692, 44.512405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235130, 29.525673, 44.419331>,  <35.868614, 29.485641, 44.264206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235130, 29.525673, 44.419331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352498, 0.258222, -0.899481,
		-0.190162, 0.960888, 0.201328,
		0.916288, 0.100079, 0.387815,
		36.510017, 29.555696, 44.535675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095585, 30.149448, 44.056076>,  <35.868614, 29.485641, 44.264206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095585, 30.149448, 44.056076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415447, 29.923319, 44.137032>,  <36.607365, 29.787642, 44.185604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415447, 29.923319, 44.137032>,  <36.095585, 30.149448, 44.056076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415447, 29.923319, 44.137032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400420, 0.250874, -0.881321,
		0.447458, 0.785792, 0.426980,
		0.799653, -0.565326, 0.202391,
		36.655342, 29.753721, 44.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656277, 30.517143, 43.807663>,  <36.095585, 30.149448, 44.056076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656277, 30.517143, 43.807663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833031, 30.162214, 43.860416>,  <36.939083, 29.949257, 43.892067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833031, 30.162214, 43.860416>,  <36.656277, 30.517143, 43.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833031, 30.162214, 43.860416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631616, 0.203352, -0.748137,
		0.637022, 0.413889, 0.650307,
		0.441886, -0.887324, 0.131879,
		36.965595, 29.896017, 43.899979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480698, 30.668001, 43.822300>,  <36.656277, 30.517143, 43.807663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480698, 30.668001, 43.822300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416634, 30.281948, 43.739487>,  <37.378193, 30.050316, 43.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416634, 30.281948, 43.739487>,  <37.480698, 30.668001, 43.822300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416634, 30.281948, 43.739487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557444, 0.084657, -0.825887,
		0.814619, -0.247686, 0.524450,
		-0.160162, -0.965135, -0.207035,
		37.368584, 29.992407, 43.677376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167675, 30.377485, 43.793846>,  <37.480698, 30.668001, 43.822300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167675, 30.377485, 43.793846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899971, 30.148363, 43.604538>,  <37.739349, 30.010889, 43.490952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899971, 30.148363, 43.604538>,  <38.167675, 30.377485, 43.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899971, 30.148363, 43.604538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544300, 0.055640, -0.837044,
		0.505796, -0.817801, 0.274540,
		-0.669260, -0.572805, -0.473271,
		37.699192, 29.976521, 43.462555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482964, 30.062611, 43.350193>,  <38.167675, 30.377485, 43.793846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482964, 30.062611, 43.350193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114868, 30.002007, 43.205860>,  <37.894009, 29.965645, 43.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114868, 30.002007, 43.205860>,  <38.482964, 30.062611, 43.350193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114868, 30.002007, 43.205860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372706, -0.058072, -0.926131,
		0.119365, -0.986748, 0.109909,
		-0.920241, -0.151511, -0.360835,
		37.838795, 29.956553, 43.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494137, 29.494850, 42.913170>,  <38.482964, 30.062611, 43.350193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494137, 29.494850, 42.913170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198074, 29.736708, 42.795479>,  <38.020435, 29.881823, 42.724865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198074, 29.736708, 42.795479>,  <38.494137, 29.494850, 42.913170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198074, 29.736708, 42.795479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284504, -0.114876, -0.951767,
		-0.609279, -0.788170, -0.086996,
		-0.740160, 0.604642, -0.294229,
		37.976025, 29.918100, 42.707211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366524, 29.261253, 42.302971>,  <38.494137, 29.494850, 42.913170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366524, 29.261253, 42.302971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141563, 29.591627, 42.287277>,  <38.006588, 29.789850, 42.277863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141563, 29.591627, 42.287277>,  <38.366524, 29.261253, 42.302971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141563, 29.591627, 42.287277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091054, 0.014705, -0.995737,
		-0.821835, -0.563577, -0.083475,
		-0.562402, 0.825933, -0.039231,
		37.972843, 29.839407, 42.275509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944836, 29.135698, 41.735508>,  <38.366524, 29.261253, 42.302971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944836, 29.135698, 41.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929222, 29.530304, 41.799091>,  <37.919853, 29.767067, 41.837242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929222, 29.530304, 41.799091>,  <37.944836, 29.135698, 41.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929222, 29.530304, 41.799091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080935, 0.155434, -0.984525,
		-0.995955, -0.051298, 0.073776,
		-0.039037, 0.986513, 0.158957,
		37.917511, 29.826258, 41.846779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435257, 29.376627, 41.272320>,  <37.944836, 29.135698, 41.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435257, 29.376627, 41.272320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643246, 29.706165, 41.362568>,  <37.768040, 29.903889, 41.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643246, 29.706165, 41.362568>,  <37.435257, 29.376627, 41.272320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643246, 29.706165, 41.362568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111344, 0.196514, -0.974159,
		-0.846895, 0.531658, 0.010451,
		0.519973, 0.823846, 0.225623,
		37.799236, 29.953320, 41.430256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169231, 29.931673, 40.946308>,  <37.435257, 29.376627, 41.272320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169231, 29.931673, 40.946308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 29.995121, 41.009235>,  <37.793053, 30.033190, 41.046989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 29.995121, 41.009235>,  <37.169231, 29.931673, 40.946308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559120, 29.995121, 41.009235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107891, 0.282377, -0.953217,
		-0.195621, 0.946099, 0.258127,
		0.974727, 0.158620, 0.157314,
		37.851540, 30.042707, 41.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291935, 30.511318, 40.467129>,  <37.169231, 29.931673, 40.946308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291935, 30.511318, 40.467129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654030, 30.380690, 40.575867>,  <37.871284, 30.302313, 40.641109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654030, 30.380690, 40.575867>,  <37.291935, 30.511318, 40.467129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654030, 30.380690, 40.575867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358971, 0.245456, -0.900495,
		0.227350, 0.912744, 0.339425,
		0.905236, -0.326572, 0.271845,
		37.925602, 30.282719, 40.657421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752068, 31.094145, 40.313824>,  <37.291935, 30.511318, 40.467129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752068, 31.094145, 40.313824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960884, 30.753036, 40.320122>,  <38.086174, 30.548370, 40.323902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960884, 30.753036, 40.320122>,  <37.752068, 31.094145, 40.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960884, 30.753036, 40.320122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554416, 0.325256, -0.766049,
		0.648144, 0.408642, 0.642589,
		0.522046, -0.852772, 0.015745,
		38.117496, 30.497206, 40.324844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381165, 31.321096, 40.206089>,  <37.752068, 31.094145, 40.313824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381165, 31.321096, 40.206089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460323, 30.935085, 40.137318>,  <38.507820, 30.703478, 40.096054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460323, 30.935085, 40.137318>,  <38.381165, 31.321096, 40.206089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460323, 30.935085, 40.137318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728141, 0.262150, -0.633315,
		0.656237, 0.000144, 0.754554,
		0.197897, -0.965027, -0.171928,
		38.519691, 30.645576, 40.085739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078293, 31.242016, 40.316456>,  <38.381165, 31.321096, 40.206089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078293, 31.242016, 40.316456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954105, 30.944555, 40.079613>,  <38.879593, 30.766079, 39.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954105, 30.944555, 40.079613>,  <39.078293, 31.242016, 40.316456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954105, 30.944555, 40.079613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625552, 0.309175, -0.716307,
		0.715747, -0.592786, 0.369202,
		-0.310469, -0.743650, -0.592110,
		38.860966, 30.721460, 39.901981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679932, 30.917105, 40.063545>,  <39.078293, 31.242016, 40.316456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679932, 30.917105, 40.063545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376896, 30.828552, 39.817928>,  <39.195076, 30.775421, 39.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376896, 30.828552, 39.817928>,  <39.679932, 30.917105, 40.063545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376896, 30.828552, 39.817928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615149, 0.072456, -0.785075,
		0.218291, -0.972492, 0.081290,
		-0.757589, -0.221380, -0.614044,
		39.149620, 30.762138, 39.633717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930332, 30.447866, 39.513432>,  <39.679932, 30.917105, 40.063545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930332, 30.447866, 39.513432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602882, 30.622065, 39.363663>,  <39.406410, 30.726583, 39.273800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602882, 30.622065, 39.363663>,  <39.930332, 30.447866, 39.513432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602882, 30.622065, 39.363663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516534, 0.273267, -0.811491,
		-0.251084, -0.857711, -0.448652,
		-0.818626, 0.435497, -0.374424,
		39.357296, 30.752714, 39.251335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850807, 30.224401, 38.795074>,  <39.930332, 30.447866, 39.513432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850807, 30.224401, 38.795074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630844, 30.557632, 38.819019>,  <39.498867, 30.757572, 38.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630844, 30.557632, 38.819019>,  <39.850807, 30.224401, 38.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630844, 30.557632, 38.819019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563690, 0.423062, -0.709417,
		-0.616325, -0.356370, -0.702242,
		-0.549907, 0.833078, 0.059862,
		39.465874, 30.807556, 38.836979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764236, 30.455456, 38.097988>,  <39.850807, 30.224401, 38.795074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764236, 30.455456, 38.097988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678459, 30.783363, 38.310398>,  <39.626995, 30.980108, 38.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678459, 30.783363, 38.310398>,  <39.764236, 30.455456, 38.097988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678459, 30.783363, 38.310398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603945, 0.538572, -0.587529,
		-0.767636, 0.194723, -0.610588,
		-0.214440, 0.819770, 0.531029,
		39.614128, 31.029295, 38.469707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699947, 31.047819, 37.597767>,  <39.764236, 30.455456, 38.097988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699947, 31.047819, 37.597767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738861, 31.234409, 37.949432>,  <39.762211, 31.346363, 38.160431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738861, 31.234409, 37.949432>,  <39.699947, 31.047819, 37.597767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738861, 31.234409, 37.949432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457799, 0.763384, -0.455702,
		-0.883717, 0.446814, -0.139289,
		0.097283, 0.466478, 0.879167,
		39.768047, 31.374353, 38.213184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661503, 31.711937, 37.378578>,  <39.699947, 31.047819, 37.597767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661503, 31.711937, 37.378578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848000, 31.733097, 37.731808>,  <39.959900, 31.745792, 37.943745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848000, 31.733097, 37.731808>,  <39.661503, 31.711937, 37.378578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848000, 31.733097, 37.731808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647296, 0.660017, -0.381295,
		-0.603013, 0.749386, 0.273487,
		0.466244, 0.052899, 0.883073,
		39.987873, 31.748966, 37.996731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489792, 32.424557, 37.643955>,  <39.661503, 31.711937, 37.378578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489792, 32.424557, 37.643955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832378, 32.249393, 37.753281>,  <40.037930, 32.144295, 37.818874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832378, 32.249393, 37.753281>,  <39.489792, 32.424557, 37.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832378, 32.249393, 37.753281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516003, 0.741079, -0.429585,
		-0.014427, 0.508955, 0.860672,
		0.856465, -0.437912, 0.273314,
		40.089317, 32.118019, 37.835274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920349, 33.017406, 37.519077>,  <39.489792, 32.424557, 37.643955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920349, 33.017406, 37.519077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172565, 32.713787, 37.583900>,  <40.323895, 32.531616, 37.622795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172565, 32.713787, 37.583900>,  <39.920349, 33.017406, 37.519077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172565, 32.713787, 37.583900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726558, 0.503797, -0.467228,
		0.273005, 0.412351, 0.869157,
		0.630541, -0.759049, 0.162058,
		40.361729, 32.486073, 37.632519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556190, 33.397663, 37.725407>,  <39.920349, 33.017406, 37.519077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556190, 33.397663, 37.725407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670906, 33.027431, 37.626572>,  <40.739735, 32.805290, 37.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670906, 33.027431, 37.626572>,  <40.556190, 33.397663, 37.725407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670906, 33.027431, 37.626572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834616, 0.368012, -0.409858,
		0.470288, -0.088679, 0.878046,
		0.286786, -0.925583, -0.247085,
		40.756943, 32.749756, 37.552444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307014, 33.333607, 37.900990>,  <40.556190, 33.397663, 37.725407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307014, 33.333607, 37.900990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251621, 33.032207, 37.643909>,  <41.218384, 32.851368, 37.489662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251621, 33.032207, 37.643909>,  <41.307014, 33.333607, 37.900990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251621, 33.032207, 37.643909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774313, 0.322225, -0.544620,
		0.617464, -0.573069, 0.538822,
		-0.138483, -0.753500, -0.642697,
		41.210075, 32.806156, 37.451099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031193, 32.893375, 37.825840>,  <41.307014, 33.333607, 37.900990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031193, 32.893375, 37.825840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819969, 32.838005, 37.490700>,  <41.693237, 32.804783, 37.289616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819969, 32.838005, 37.490700>,  <42.031193, 32.893375, 37.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819969, 32.838005, 37.490700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758115, 0.367723, -0.538555,
		0.382649, -0.919575, -0.089233,
		-0.528054, -0.138429, -0.837852,
		41.661552, 32.796478, 37.239346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498146, 32.588551, 37.437401>,  <42.031193, 32.893375, 37.825840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498146, 32.588551, 37.437401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208088, 32.750229, 37.214405>,  <42.034054, 32.847237, 37.080608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208088, 32.750229, 37.214405>,  <42.498146, 32.588551, 37.437401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208088, 32.750229, 37.214405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688080, 0.456635, -0.563942,
		0.026627, -0.792536, -0.609244,
		-0.725146, 0.404192, -0.557487,
		41.990543, 32.871487, 37.047157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760124, 32.465805, 36.762058>,  <42.498146, 32.588551, 37.437401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760124, 32.465805, 36.762058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492371, 32.762238, 36.741161>,  <42.331718, 32.940098, 36.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492371, 32.762238, 36.741161>,  <42.760124, 32.465805, 36.762058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492371, 32.762238, 36.741161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630163, 0.529137, -0.568251,
		-0.393478, -0.413296, -0.821196,
		-0.669380, 0.741081, -0.052240,
		42.291557, 32.984562, 36.725491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862400, 32.794609, 36.138367>,  <42.760124, 32.465805, 36.762058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862400, 32.794609, 36.138367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650028, 33.082542, 36.317230>,  <42.522606, 33.255302, 36.424549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650028, 33.082542, 36.317230>,  <42.862400, 32.794609, 36.138367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650028, 33.082542, 36.317230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488634, 0.691170, -0.532467,
		-0.692351, -0.064207, -0.718699,
		-0.530931, 0.719835, 0.447158,
		42.490749, 33.298492, 36.451378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575253, 33.214001, 35.668808>,  <42.862400, 32.794609, 36.138367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575253, 33.214001, 35.668808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635010, 33.418240, 36.007504>,  <42.670864, 33.540783, 36.210720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635010, 33.418240, 36.007504>,  <42.575253, 33.214001, 35.668808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635010, 33.418240, 36.007504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648049, 0.596225, -0.473865,
		-0.746804, 0.619521, -0.241823,
		0.149388, 0.510597, 0.846743,
		42.679825, 33.571419, 36.261528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439430, 33.954994, 35.724117>,  <42.575253, 33.214001, 35.668808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439430, 33.954994, 35.724117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761795, 33.882202, 35.949467>,  <42.955215, 33.838528, 36.084675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761795, 33.882202, 35.949467>,  <42.439430, 33.954994, 35.724117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761795, 33.882202, 35.949467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518122, 0.677207, -0.522437,
		-0.286448, 0.712934, 0.640057,
		0.805914, -0.181976, 0.563371,
		43.003571, 33.827610, 36.118477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829865, 33.719418, 35.105999>,  <42.439430, 33.954994, 35.724117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829865, 33.719418, 35.105999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983791, 33.397156, 34.925854>,  <43.076149, 33.203796, 34.817764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983791, 33.397156, 34.925854>,  <42.829865, 33.719418, 35.105999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983791, 33.397156, 34.925854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187196, 0.545928, -0.816652,
		0.903809, 0.229958, 0.360900,
		0.384821, -0.805656, -0.450367,
		43.099239, 33.155460, 34.790745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495266, 33.750019, 34.848690>,  <42.829865, 33.719418, 35.105999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495266, 33.750019, 34.848690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268299, 33.551575, 34.585812>,  <43.132118, 33.432507, 34.428085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268299, 33.551575, 34.585812>,  <43.495266, 33.750019, 34.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268299, 33.551575, 34.585812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117073, 0.741408, -0.660763,
		0.815068, -0.451866, -0.362603,
		-0.567414, -0.496116, -0.657200,
		43.098076, 33.402740, 34.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892006, 33.782825, 34.116364>,  <43.495266, 33.750019, 34.848690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892006, 33.782825, 34.116364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494755, 33.738384, 34.101643>,  <43.256405, 33.711720, 34.092808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494755, 33.738384, 34.101643>,  <43.892006, 33.782825, 34.116364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494755, 33.738384, 34.101643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068459, 0.806470, -0.587298,
		0.094934, -0.580742, -0.808533,
		-0.993127, -0.111107, -0.036804,
		43.196815, 33.705051, 34.090603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726696, 33.931221, 33.432178>,  <43.892006, 33.782825, 34.116364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726696, 33.931221, 33.432178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414646, 33.973690, 33.678799>,  <43.227417, 33.999172, 33.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414646, 33.973690, 33.678799>,  <43.726696, 33.931221, 33.432178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414646, 33.973690, 33.678799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278615, 0.823412, -0.494333,
		-0.560162, -0.557421, -0.612780,
		-0.780123, 0.106177, 0.616551,
		43.180611, 34.005543, 33.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175385, 34.117867, 32.996426>,  <43.726696, 33.931221, 33.432178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175385, 34.117867, 32.996426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059994, 34.225468, 33.363995>,  <42.990761, 34.290028, 33.584538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059994, 34.225468, 33.363995>,  <43.175385, 34.117867, 32.996426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059994, 34.225468, 33.363995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544645, 0.743228, -0.388554,
		-0.787491, -0.612575, -0.067891,
		-0.288476, 0.269006, 0.918921,
		42.973450, 34.306171, 33.639671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472996, 34.289452, 32.993706>,  <43.175385, 34.117867, 32.996426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472996, 34.289452, 32.993706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643600, 34.514610, 33.276897>,  <42.745964, 34.649704, 33.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643600, 34.514610, 33.276897>,  <42.472996, 34.289452, 32.993706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643600, 34.514610, 33.276897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425394, 0.815609, -0.392201,
		-0.798205, -0.133894, 0.587317,
		0.426508, 0.562898, 0.707981,
		42.771553, 34.683479, 33.489292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909443, 34.714733, 33.288670>,  <42.472996, 34.289452, 32.993706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909443, 34.714733, 33.288670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258469, 34.895527, 33.362793>,  <42.467884, 35.004002, 33.407269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258469, 34.895527, 33.362793>,  <41.909443, 34.714733, 33.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258469, 34.895527, 33.362793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412989, 0.885157, -0.214328,
		-0.260901, 0.110484, 0.959022,
		0.872566, 0.451984, 0.185310,
		42.520237, 35.031120, 33.418385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735909, 35.396778, 33.652725>,  <41.909443, 34.714733, 33.288670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735909, 35.396778, 33.652725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096806, 35.472790, 33.497887>,  <42.313343, 35.518398, 33.404984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096806, 35.472790, 33.497887>,  <41.735909, 35.396778, 33.652725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096806, 35.472790, 33.497887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301206, 0.920105, -0.250361,
		0.308594, 0.342483, 0.887398,
		0.902244, 0.190030, -0.387097,
		42.367477, 35.529800, 33.381756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806194, 36.072655, 33.804180>,  <41.735909, 35.396778, 33.652725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806194, 36.072655, 33.804180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093433, 35.997288, 33.536201>,  <42.265778, 35.952068, 33.375412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093433, 35.997288, 33.536201>,  <41.806194, 36.072655, 33.804180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093433, 35.997288, 33.536201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204877, 0.862758, -0.462250,
		0.665102, 0.469198, 0.580942,
		0.718098, -0.188421, -0.669949,
		42.308865, 35.940762, 33.335217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255672, 36.703079, 33.766422>,  <41.806194, 36.072655, 33.804180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255672, 36.703079, 33.766422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271038, 36.481037, 33.434067>,  <42.280258, 36.347813, 33.234653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271038, 36.481037, 33.434067>,  <42.255672, 36.703079, 33.766422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271038, 36.481037, 33.434067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185669, 0.813061, -0.551778,
		0.981861, 0.175464, -0.071837,
		0.038409, -0.555107, -0.830892,
		42.282562, 36.314507, 33.184799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672932, 37.078644, 33.401310>,  <42.255672, 36.703079, 33.766422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672932, 37.078644, 33.401310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492611, 36.833294, 33.141911>,  <42.384418, 36.686085, 32.986271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492611, 36.833294, 33.141911>,  <42.672932, 37.078644, 33.401310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492611, 36.833294, 33.141911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266098, 0.785821, -0.558280,
		0.852036, -0.079112, -0.517470,
		-0.450806, -0.613373, -0.648497,
		42.357368, 36.649281, 32.947361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040340, 37.143772, 32.883785>,  <42.672932, 37.078644, 33.401310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040340, 37.143772, 32.883785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689640, 37.006809, 32.748692>,  <42.479221, 36.924633, 32.667637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689640, 37.006809, 32.748692>,  <43.040340, 37.143772, 32.883785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689640, 37.006809, 32.748692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054038, 0.767918, -0.638265,
		0.477898, -0.541350, -0.691776,
		-0.876752, -0.342408, -0.337733,
		42.426613, 36.904087, 32.647373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031166, 37.040592, 32.149837>,  <43.040340, 37.143772, 32.883785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031166, 37.040592, 32.149837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639076, 37.062115, 32.226006>,  <42.403820, 37.075027, 32.271706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639076, 37.062115, 32.226006>,  <43.031166, 37.040592, 32.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639076, 37.062115, 32.226006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097702, 0.705229, -0.702215,
		-0.172071, -0.706935, -0.686028,
		-0.980228, 0.053804, 0.190418,
		42.345009, 37.078255, 32.283131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758156, 37.008060, 31.495049>,  <43.031166, 37.040592, 32.149837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758156, 37.008060, 31.495049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463203, 37.154537, 31.722086>,  <42.286232, 37.242424, 31.858309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463203, 37.154537, 31.722086>,  <42.758156, 37.008060, 31.495049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463203, 37.154537, 31.722086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162050, 0.719848, -0.674951,
		-0.655746, -0.589677, -0.471463,
		-0.737385, 0.366196, 0.567595,
		42.241989, 37.264397, 31.892365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247963, 37.208603, 31.031769>,  <42.758156, 37.008060, 31.495049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247963, 37.208603, 31.031769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199162, 37.417259, 31.369528>,  <42.169880, 37.542454, 31.572184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199162, 37.417259, 31.369528>,  <42.247963, 37.208603, 31.031769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199162, 37.417259, 31.369528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018467, 0.849411, -0.527408,
		-0.992358, -0.079938, -0.093996,
		-0.122002, 0.521642, 0.844396,
		42.162560, 37.573753, 31.622847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670570, 37.626453, 30.962744>,  <42.247963, 37.208603, 31.031769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670570, 37.626453, 30.962744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843353, 37.823452, 31.264965>,  <41.947021, 37.941650, 31.446299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843353, 37.823452, 31.264965>,  <41.670570, 37.626453, 30.962744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843353, 37.823452, 31.264965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064662, 0.852496, -0.518719,
		-0.899574, 0.175208, 0.400085,
		0.431955, 0.492497, 0.755554,
		41.972939, 37.971203, 31.491631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288792, 38.304485, 30.993460>,  <41.670570, 37.626453, 30.962744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288792, 38.304485, 30.993460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622715, 38.357189, 31.207277>,  <41.823071, 38.388813, 31.335567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622715, 38.357189, 31.207277>,  <41.288792, 38.304485, 30.993460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622715, 38.357189, 31.207277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086789, 0.927303, -0.364111,
		-0.543659, 0.350355, 0.762683,
		0.834807, 0.131760, 0.534544,
		41.873158, 38.396717, 31.367640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270645, 38.859951, 31.387590>,  <41.288792, 38.304485, 30.993460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270645, 38.859951, 31.387590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663971, 38.795105, 31.354574>,  <41.899967, 38.756199, 31.334764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663971, 38.795105, 31.354574>,  <41.270645, 38.859951, 31.387590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663971, 38.795105, 31.354574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140957, 0.965804, -0.217610,
		0.114995, 0.202344, 0.972539,
		0.983314, -0.162111, -0.082541,
		41.958965, 38.746471, 31.329811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516674, 39.506668, 31.625038>,  <41.270645, 38.859951, 31.387590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516674, 39.506668, 31.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843884, 39.362553, 31.445692>,  <42.040211, 39.276085, 31.338085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843884, 39.362553, 31.445692>,  <41.516674, 39.506668, 31.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843884, 39.362553, 31.445692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323329, 0.932730, -0.159605,
		0.475705, -0.014408, 0.879487,
		0.818024, -0.360289, -0.448363,
		42.089291, 39.254467, 31.311184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133289, 39.890194, 31.912081>,  <41.516674, 39.506668, 31.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133289, 39.890194, 31.912081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217415, 39.735397, 31.552969>,  <42.267891, 39.642521, 31.337502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217415, 39.735397, 31.552969>,  <42.133289, 39.890194, 31.912081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217415, 39.735397, 31.552969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495563, 0.833794, -0.243318,
		0.842726, -0.393735, 0.367132,
		0.210310, -0.386988, -0.897781,
		42.280506, 39.619301, 31.283634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911842, 40.114300, 31.768740>,  <42.133289, 39.890194, 31.912081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911842, 40.114300, 31.768740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730804, 40.005943, 31.428909>,  <42.622181, 39.940929, 31.225010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730804, 40.005943, 31.428909>,  <42.911842, 40.114300, 31.768740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730804, 40.005943, 31.428909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372122, 0.808443, -0.456011,
		0.810371, -0.522527, -0.265074,
		-0.452575, -0.270898, -0.849582,
		42.595028, 39.924675, 31.174036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483112, 40.133781, 31.177498>,  <42.911842, 40.114300, 31.768740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483112, 40.133781, 31.177498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123947, 40.160431, 31.003458>,  <42.908447, 40.176418, 30.899035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123947, 40.160431, 31.003458>,  <43.483112, 40.133781, 31.177498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123947, 40.160431, 31.003458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241008, 0.901554, -0.359326,
		0.368330, -0.427506, -0.825573,
		-0.897913, 0.066619, -0.435102,
		42.854572, 40.180416, 30.872927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563442, 40.495785, 30.509459>,  <43.483112, 40.133781, 31.177498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563442, 40.495785, 30.509459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169064, 40.519444, 30.571966>,  <42.932438, 40.533638, 30.609470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169064, 40.519444, 30.571966>,  <43.563442, 40.495785, 30.509459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169064, 40.519444, 30.571966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033700, 0.986425, -0.160715,
		-0.163652, -0.153190, -0.974552,
		-0.985942, 0.059144, 0.156268,
		42.873280, 40.537186, 30.618847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300468, 40.808041, 29.865883>,  <43.563442, 40.495785, 30.509459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300468, 40.808041, 29.865883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008492, 40.861332, 30.134041>,  <42.833305, 40.893307, 30.294935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008492, 40.861332, 30.134041>,  <43.300468, 40.808041, 29.865883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008492, 40.861332, 30.134041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111106, 0.944645, -0.308710,
		-0.674417, -0.299826, -0.674734,
		-0.729943, 0.133233, 0.670397,
		42.789509, 40.901302, 30.335159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821945, 41.137493, 29.508030>,  <43.300468, 40.808041, 29.865883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821945, 41.137493, 29.508030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752792, 41.237053, 29.889219>,  <42.711300, 41.296787, 30.117933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752792, 41.237053, 29.889219>,  <42.821945, 41.137493, 29.508030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752792, 41.237053, 29.889219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161116, 0.947365, -0.276659,
		-0.971675, -0.201369, -0.123683,
		-0.172884, 0.248896, 0.952975,
		42.700928, 41.311722, 30.175112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217609, 41.583408, 29.478254>,  <42.821945, 41.137493, 29.508030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217609, 41.583408, 29.478254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396641, 41.652550, 29.829206>,  <42.504059, 41.694035, 30.039778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396641, 41.652550, 29.829206>,  <42.217609, 41.583408, 29.478254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396641, 41.652550, 29.829206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167111, 0.947690, -0.271950,
		-0.878490, 0.268340, 0.395284,
		0.447582, 0.172849, 0.877379,
		42.530914, 41.704403, 30.092421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358704, 42.313141, 29.517059>,  <42.217609, 41.583408, 29.478254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358704, 42.313141, 29.517059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587090, 42.200809, 29.825640>,  <42.724121, 42.133411, 30.010788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587090, 42.200809, 29.825640>,  <42.358704, 42.313141, 29.517059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587090, 42.200809, 29.825640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640338, 0.740398, -0.204400,
		-0.513779, 0.610694, 0.602565,
		0.570964, -0.280829, 0.771451,
		42.758377, 42.116562, 30.057076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543232, 42.852276, 30.031733>,  <42.358704, 42.313141, 29.517059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543232, 42.852276, 30.031733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818333, 42.567261, 29.976189>,  <42.983395, 42.396252, 29.942862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818333, 42.567261, 29.976189>,  <42.543232, 42.852276, 30.031733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818333, 42.567261, 29.976189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718751, 0.695226, -0.007583,
		0.101942, -0.094589, 0.990283,
		0.687753, -0.712540, -0.138859,
		43.024658, 42.353500, 29.934530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092068, 42.879662, 30.517290>,  <42.543232, 42.852276, 30.031733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092068, 42.879662, 30.517290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176571, 42.745541, 30.150042>,  <43.227272, 42.665070, 29.929693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176571, 42.745541, 30.150042>,  <43.092068, 42.879662, 30.517290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176571, 42.745541, 30.150042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700653, 0.706886, -0.096943,
		0.681511, -0.622804, 0.384263,
		0.211254, -0.335303, -0.918120,
		43.239948, 42.644951, 29.874605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870525, 42.949718, 30.361345>,  <43.092068, 42.879662, 30.517290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870525, 42.949718, 30.361345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727283, 42.994869, 29.990612>,  <43.641338, 43.021957, 29.768171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727283, 42.994869, 29.990612>,  <43.870525, 42.949718, 30.361345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727283, 42.994869, 29.990612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791387, 0.563439, -0.237155,
		0.495445, -0.818410, -0.291098,
		-0.358107, 0.112874, -0.926833,
		43.619850, 43.028732, 29.712563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471149, 43.212502, 30.185358>,  <43.870525, 42.949718, 30.361345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471149, 43.212502, 30.185358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580635, 43.395382, 30.523838>,  <44.646324, 43.505108, 30.726925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580635, 43.395382, 30.523838>,  <44.471149, 43.212502, 30.185358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580635, 43.395382, 30.523838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028990, -0.883319, 0.467876,
		0.961375, -0.103532, -0.255030,
		0.273712, 0.457197, 0.846199,
		44.662750, 43.532539, 30.777699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058697, 42.805836, 30.527428>,  <44.471149, 43.212502, 30.185358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058697, 42.805836, 30.527428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774353, 43.010098, 30.720886>,  <44.603748, 43.132656, 30.836962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774353, 43.010098, 30.720886>,  <45.058697, 42.805836, 30.527428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774353, 43.010098, 30.720886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375489, -0.856987, 0.352960,
		0.594719, 0.069300, 0.800941,
		-0.710857, 0.510657, 0.483645,
		44.561096, 43.163296, 30.865980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891411, 42.549736, 31.216866>,  <45.058697, 42.805836, 30.527428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891411, 42.549736, 31.216866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547661, 42.752644, 31.191092>,  <44.341412, 42.874390, 31.175627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547661, 42.752644, 31.191092>,  <44.891411, 42.549736, 31.216866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547661, 42.752644, 31.191092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407879, -0.604023, 0.684683,
		0.308400, 0.614681, 0.725987,
		-0.859374, 0.507271, -0.064434,
		44.289848, 42.904823, 31.171761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671715, 42.568233, 31.891529>,  <44.891411, 42.549736, 31.216866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671715, 42.568233, 31.891529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358246, 42.638042, 31.653067>,  <44.170166, 42.679928, 31.509989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358246, 42.638042, 31.653067>,  <44.671715, 42.568233, 31.891529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358246, 42.638042, 31.653067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608625, -0.407682, 0.680714,
		-0.124241, 0.896290, 0.425709,
		-0.783671, 0.174525, -0.596155,
		44.123146, 42.690399, 31.474220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266087, 42.555428, 32.381031>,  <44.671715, 42.568233, 31.891529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266087, 42.555428, 32.381031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049641, 42.484249, 32.052269>,  <43.919773, 42.441540, 31.855013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049641, 42.484249, 32.052269>,  <44.266087, 42.555428, 32.381031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049641, 42.484249, 32.052269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668419, -0.502063, 0.548770,
		-0.510301, 0.846325, 0.152731,
		-0.541119, -0.177950, -0.821903,
		43.887306, 42.430862, 31.805698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940781, 43.254635, 32.750744>,  <44.266087, 42.555428, 32.381031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940781, 43.254635, 32.750744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833385, 43.513580, 33.036076>,  <43.768948, 43.668945, 33.207275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833385, 43.513580, 33.036076>,  <43.940781, 43.254635, 32.750744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833385, 43.513580, 33.036076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120569, -0.757279, 0.641865,
		0.955708, 0.086328, 0.281373,
		-0.268488, 0.647361, 0.713329,
		43.752838, 43.707787, 33.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403202, 43.224529, 33.248028>,  <43.940781, 43.254635, 32.750744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403202, 43.224529, 33.248028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045773, 43.325951, 33.396210>,  <43.831314, 43.386803, 33.485119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045773, 43.325951, 33.396210>,  <44.403202, 43.224529, 33.248028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045773, 43.325951, 33.396210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011801, -0.811666, 0.584002,
		0.448767, 0.526220, 0.722289,
		-0.893571, 0.253557, 0.370459,
		43.777702, 43.402020, 33.507347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434547, 43.213383, 33.892864>,  <44.403202, 43.224529, 33.248028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434547, 43.213383, 33.892864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045242, 43.160255, 33.817913>,  <43.811657, 43.128380, 33.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045242, 43.160255, 33.817913>,  <44.434547, 43.213383, 33.892864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045242, 43.160255, 33.817913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029088, -0.880555, 0.473051,
		-0.227827, 0.454955, 0.860878,
		-0.973267, -0.132815, -0.187381,
		43.753262, 43.120411, 33.761700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133610, 43.064785, 34.531471>,  <44.434547, 43.213383, 33.892864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133610, 43.064785, 34.531471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903896, 42.913124, 34.241245>,  <43.766068, 42.822128, 34.067112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903896, 42.913124, 34.241245>,  <44.133610, 43.064785, 34.531471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903896, 42.913124, 34.241245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000281, -0.886378, 0.462963,
		-0.818655, 0.265670, 0.509141,
		-0.574286, -0.379150, -0.725562,
		43.731609, 42.799377, 34.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475918, 42.663960, 34.867466>,  <44.133610, 43.064785, 34.531471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475918, 42.663960, 34.867466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501003, 42.523106, 34.493927>,  <43.516052, 42.438595, 34.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501003, 42.523106, 34.493927>,  <43.475918, 42.663960, 34.867466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501003, 42.523106, 34.493927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167911, -0.926073, 0.337926,
		-0.983805, 0.135612, -0.117202,
		0.062711, -0.352133, -0.933847,
		43.519817, 42.417465, 34.213772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875416, 42.191738, 34.778488>,  <43.475918, 42.663960, 34.867466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875416, 42.191738, 34.778488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124664, 42.099758, 34.479465>,  <43.274212, 42.044571, 34.300053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124664, 42.099758, 34.479465>,  <42.875416, 42.191738, 34.778488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124664, 42.099758, 34.479465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199197, -0.970944, 0.132620,
		-0.756334, 0.066274, -0.650820,
		0.623120, -0.229947, -0.747560,
		43.311600, 42.030773, 34.255196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607727, 41.658936, 34.497559>,  <42.875416, 42.191738, 34.778488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607727, 41.658936, 34.497559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967190, 41.627514, 34.324936>,  <43.182869, 41.608662, 34.221363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967190, 41.627514, 34.324936>,  <42.607727, 41.658936, 34.497559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967190, 41.627514, 34.324936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043965, -0.995009, 0.089573,
		-0.436443, -0.061521, -0.897626,
		0.898657, -0.078558, -0.431560,
		43.236786, 41.603947, 34.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664276, 41.040970, 34.116508>,  <42.607727, 41.658936, 34.497559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664276, 41.040970, 34.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055836, 41.119118, 34.140457>,  <43.290771, 41.166004, 34.154827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055836, 41.119118, 34.140457>,  <42.664276, 41.040970, 34.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055836, 41.119118, 34.140457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183219, -0.968938, 0.166105,
		0.090467, -0.151630, -0.984289,
		0.978901, 0.195367, 0.059875,
		43.349506, 41.177727, 34.158421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974327, 40.624222, 33.532181>,  <42.664276, 41.040970, 34.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974327, 40.624222, 33.532181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245712, 40.687763, 33.819080>,  <43.408543, 40.725887, 33.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245712, 40.687763, 33.819080>,  <42.974327, 40.624222, 33.532181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245712, 40.687763, 33.819080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199306, -0.979525, 0.028413,
		0.707079, 0.123675, -0.696235,
		0.678466, 0.158854, 0.717251,
		43.449253, 40.735420, 34.034256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446964, 40.154903, 33.433105>,  <42.974327, 40.624222, 33.532181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446964, 40.154903, 33.433105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564289, 40.281975, 33.793781>,  <43.634682, 40.358219, 34.010189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564289, 40.281975, 33.793781>,  <43.446964, 40.154903, 33.433105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564289, 40.281975, 33.793781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418080, -0.890829, 0.177855,
		0.859755, 0.324814, -0.394102,
		0.293308, 0.317678, 0.901693,
		43.652283, 40.377277, 34.064289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228184, 40.152519, 33.593739>,  <43.446964, 40.154903, 33.433105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228184, 40.152519, 33.593739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014374, 40.117008, 33.929928>,  <43.886086, 40.095699, 34.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014374, 40.117008, 33.929928>,  <44.228184, 40.152519, 33.593739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014374, 40.117008, 33.929928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357170, -0.925027, 0.129443,
		0.765969, 0.369384, 0.526162,
		-0.534528, -0.088780, 0.840475,
		43.854015, 40.090374, 34.182072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692669, 39.934990, 34.045116>,  <44.228184, 40.152519, 33.593739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692669, 39.934990, 34.045116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350277, 39.846523, 34.232040>,  <44.144840, 39.793446, 34.344196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350277, 39.846523, 34.232040>,  <44.692669, 39.934990, 34.045116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350277, 39.846523, 34.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351673, -0.911635, 0.212715,
		0.378974, 0.346421, 0.858121,
		-0.855982, -0.221164, 0.467313,
		44.093483, 39.780174, 34.372234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816483, 39.581280, 34.638222>,  <44.692669, 39.934990, 34.045116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816483, 39.581280, 34.638222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441788, 39.470959, 34.552010>,  <44.216969, 39.404766, 34.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441788, 39.470959, 34.552010>,  <44.816483, 39.581280, 34.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441788, 39.470959, 34.552010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268819, -0.961215, 0.061664,
		-0.224179, -0.000176, 0.974548,
		-0.936739, -0.275801, -0.215532,
		44.160767, 39.388218, 34.487350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613289, 39.105873, 35.272472>,  <44.816483, 39.581280, 34.638222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613289, 39.105873, 35.272472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335945, 39.041344, 34.991550>,  <44.169540, 39.002625, 34.822998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335945, 39.041344, 34.991550>,  <44.613289, 39.105873, 35.272472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335945, 39.041344, 34.991550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122779, -0.986814, 0.105464,
		-0.710054, -0.013103, 0.704025,
		-0.693360, -0.161324, -0.702301,
		44.127937, 38.992947, 34.780861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196255, 38.437279, 35.477936>,  <44.613289, 39.105873, 35.272472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196255, 38.437279, 35.477936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135204, 38.485401, 35.085564>,  <44.098576, 38.514275, 34.850140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135204, 38.485401, 35.085564>,  <44.196255, 38.437279, 35.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135204, 38.485401, 35.085564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127392, -0.981888, -0.140241,
		-0.980040, -0.146367, 0.134534,
		-0.152624, 0.120304, -0.980935,
		44.089417, 38.521492, 34.791283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520435, 38.056541, 35.261913>,  <44.196255, 38.437279, 35.477936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520435, 38.056541, 35.261913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718941, 38.118519, 34.920219>,  <43.838043, 38.155704, 34.715202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718941, 38.118519, 34.920219>,  <43.520435, 38.056541, 35.261913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718941, 38.118519, 34.920219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025087, -0.980975, -0.192505,
		-0.867810, 0.116963, -0.482935,
		0.496263, 0.154942, -0.854234,
		43.867821, 38.165001, 34.663948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272449, 37.526619, 34.774033>,  <43.520435, 38.056541, 35.261913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272449, 37.526619, 34.774033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619465, 37.651909, 34.619488>,  <43.827675, 37.727081, 34.526760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619465, 37.651909, 34.619488>,  <43.272449, 37.526619, 34.774033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619465, 37.651909, 34.619488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233936, -0.942475, -0.238779,
		-0.438924, 0.116766, -0.890905,
		0.867536, 0.313220, -0.386359,
		43.879726, 37.745876, 34.503578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317135, 37.270294, 34.074993>,  <43.272449, 37.526619, 34.774033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317135, 37.270294, 34.074993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690609, 37.344021, 34.197796>,  <43.914696, 37.388256, 34.271477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690609, 37.344021, 34.197796>,  <43.317135, 37.270294, 34.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690609, 37.344021, 34.197796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254821, -0.944348, -0.208024,
		0.251581, 0.272462, -0.928693,
		0.933688, 0.184316, 0.307009,
		43.970715, 37.399315, 34.289898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692535, 36.808056, 33.593945>,  <43.317135, 37.270294, 34.074993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692535, 36.808056, 33.593945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945431, 36.929283, 33.879162>,  <44.097168, 37.002018, 34.050293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945431, 36.929283, 33.879162>,  <43.692535, 36.808056, 33.593945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945431, 36.929283, 33.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433848, -0.900984, -0.001735,
		0.641914, 0.310449, -0.701119,
		0.632236, 0.303066, 0.713042,
		44.135101, 37.020203, 34.093075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389889, 36.598385, 33.366398>,  <43.692535, 36.808056, 33.593945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389889, 36.598385, 33.366398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404343, 36.617760, 33.765667>,  <44.413013, 36.629383, 34.005230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404343, 36.617760, 33.765667>,  <44.389889, 36.598385, 33.366398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404343, 36.617760, 33.765667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414839, -0.909429, 0.029111,
		0.909177, 0.413030, -0.052951,
		0.036131, 0.048433, 0.998173,
		44.415184, 36.632290, 34.065117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001019, 36.385811, 33.610497>,  <44.389889, 36.598385, 33.366398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001019, 36.385811, 33.610497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764389, 36.310844, 33.924164>,  <44.622410, 36.265865, 34.112366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764389, 36.310844, 33.924164>,  <45.001019, 36.385811, 33.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764389, 36.310844, 33.924164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415280, -0.904495, 0.097117,
		0.691074, 0.383101, 0.612903,
		-0.591573, -0.187411, 0.784167,
		44.586918, 36.254620, 34.159412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446651, 36.097443, 34.155914>,  <45.001019, 36.385811, 33.610497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446651, 36.097443, 34.155914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080589, 36.001163, 34.285252>,  <44.860950, 35.943394, 34.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080589, 36.001163, 34.285252>,  <45.446651, 36.097443, 34.155914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080589, 36.001163, 34.285252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371481, -0.815012, 0.444698,
		0.156490, 0.527085, 0.835280,
		-0.915157, -0.240700, 0.323343,
		44.806042, 35.928955, 34.382256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955879, 35.929234, 34.768887>,  <45.446651, 36.097443, 34.155914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955879, 35.929234, 34.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165749, 35.681763, 34.534977>,  <46.291668, 35.533279, 34.394630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165749, 35.681763, 34.534977>,  <45.955879, 35.929234, 34.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165749, 35.681763, 34.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743012, -0.002483, 0.669274,
		-0.415519, -0.785639, 0.458384,
		0.524669, -0.618680, -0.584771,
		46.323151, 35.496159, 34.359547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334446, 35.536602, 35.134933>,  <45.955879, 35.929234, 34.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334446, 35.536602, 35.134933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538914, 35.444447, 34.803722>,  <46.661594, 35.389153, 34.604996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538914, 35.444447, 34.803722>,  <46.334446, 35.536602, 35.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538914, 35.444447, 34.803722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839693, -0.071648, 0.538314,
		-0.183348, -0.970457, 0.156831,
		0.511174, -0.230389, -0.828023,
		46.692265, 35.375332, 34.555317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861790, 35.043766, 35.294376>,  <46.334446, 35.536602, 35.134933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861790, 35.043766, 35.294376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998257, 35.204830, 34.954617>,  <47.080135, 35.301468, 34.750763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998257, 35.204830, 34.954617>,  <46.861790, 35.043766, 35.294376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998257, 35.204830, 34.954617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937997, -0.086817, 0.335596,
		0.061388, -0.911224, -0.407310,
		0.341165, 0.402657, -0.849396,
		47.100605, 35.325626, 34.699799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389416, 34.685310, 35.127449>,  <46.861790, 35.043766, 35.294376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389416, 34.685310, 35.127449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460522, 35.033432, 34.943722>,  <47.503185, 35.242306, 34.833485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460522, 35.033432, 34.943722>,  <47.389416, 34.685310, 35.127449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.460522, 35.033432, 34.943722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932602, -0.000020, 0.360905,
		0.314088, -0.492516, -0.811650,
		0.177768, 0.870303, -0.459316,
		47.513851, 35.294521, 34.805927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.264595, 33.378899, 43.406101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068466, 33.118576, 43.174225>,  <33.950787, 32.962383, 43.035099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068466, 33.118576, 43.174225>,  <34.264595, 33.378899, 43.406101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068466, 33.118576, 43.174225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426688, 0.400710, -0.810783,
		0.759946, -0.644893, 0.081211,
		-0.490326, -0.650803, -0.579686,
		33.921368, 32.923336, 43.000320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784206, 32.968395, 42.896725>,  <34.264595, 33.378899, 43.406101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784206, 32.968395, 42.896725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.426407, 32.930092, 42.722046>,  <34.211727, 32.907108, 42.617237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.426407, 32.930092, 42.722046>,  <34.784206, 32.968395, 42.896725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426407, 32.930092, 42.722046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399008, 0.269601, -0.876418,
		0.201656, -0.958199, -0.202951,
		-0.894499, -0.095756, -0.436696,
		34.158058, 32.901363, 42.591038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913807, 32.562981, 42.287155>,  <34.784206, 32.968395, 42.896725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913807, 32.562981, 42.287155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559471, 32.733551, 42.213989>,  <34.346870, 32.835892, 42.170090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559471, 32.733551, 42.213989>,  <34.913807, 32.562981, 42.287155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559471, 32.733551, 42.213989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315406, 0.264266, -0.911418,
		-0.340313, -0.865059, -0.368593,
		-0.885836, 0.426423, -0.182912,
		34.293720, 32.861477, 42.159115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809204, 32.368462, 41.583206>,  <34.913807, 32.562981, 42.287155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809204, 32.368462, 41.583206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558346, 32.677578, 41.622143>,  <34.407829, 32.863049, 41.645504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558346, 32.677578, 41.622143>,  <34.809204, 32.368462, 41.583206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558346, 32.677578, 41.622143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244020, 0.313620, -0.917658,
		-0.739691, -0.551751, -0.385263,
		-0.627145, 0.772795, 0.097344,
		34.370201, 32.909416, 41.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373005, 32.403534, 41.027294>,  <34.809204, 32.368462, 41.583206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373005, 32.403534, 41.027294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358299, 32.784191, 41.149288>,  <34.349476, 33.012585, 41.222485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358299, 32.784191, 41.149288>,  <34.373005, 32.403534, 41.027294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358299, 32.784191, 41.149288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218972, 0.305446, -0.926690,
		-0.975038, 0.032714, -0.219614,
		-0.036765, 0.951647, 0.304985,
		34.347271, 33.069687, 41.240784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241341, 32.738728, 40.460876>,  <34.373005, 32.403534, 41.027294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241341, 32.738728, 40.460876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365593, 33.034973, 40.699203>,  <34.440144, 33.212719, 40.842201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365593, 33.034973, 40.699203>,  <34.241341, 32.738728, 40.460876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365593, 33.034973, 40.699203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406460, 0.463129, -0.787592,
		-0.859241, 0.486830, -0.157165,
		0.310635, 0.740613, 0.595817,
		34.458782, 33.257156, 40.877949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067375, 33.326576, 40.161575>,  <34.241341, 32.738728, 40.460876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067375, 33.326576, 40.161575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356148, 33.453445, 40.407574>,  <34.529411, 33.529568, 40.555172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356148, 33.453445, 40.407574>,  <34.067375, 33.326576, 40.161575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356148, 33.453445, 40.407574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307706, 0.648913, -0.695865,
		-0.619788, 0.691604, 0.370873,
		0.721928, 0.317169, 0.614999,
		34.572727, 33.548595, 40.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088341, 34.070019, 40.165718>,  <34.067375, 33.326576, 40.161575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088341, 34.070019, 40.165718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449905, 33.952747, 40.290287>,  <34.666843, 33.882385, 40.365028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449905, 33.952747, 40.290287>,  <34.088341, 34.070019, 40.165718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449905, 33.952747, 40.290287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427119, 0.657071, -0.621150,
		-0.022515, 0.694480, 0.719159,
		0.903915, -0.293181, 0.311419,
		34.721081, 33.864792, 40.383713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538509, 34.599541, 39.922398>,  <34.088341, 34.070019, 40.165718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538509, 34.599541, 39.922398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812222, 34.318916, 40.001957>,  <34.976448, 34.150539, 40.049694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812222, 34.318916, 40.001957>,  <34.538509, 34.599541, 39.922398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812222, 34.318916, 40.001957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642845, 0.451596, -0.618718,
		0.344248, 0.551242, 0.760017,
		0.684284, -0.701565, 0.198902,
		35.017506, 34.108448, 40.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179089, 34.891727, 39.772720>,  <34.538509, 34.599541, 39.922398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179089, 34.891727, 39.772720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304760, 34.511993, 39.769592>,  <35.380161, 34.284153, 39.767715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304760, 34.511993, 39.769592>,  <35.179089, 34.891727, 39.772720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304760, 34.511993, 39.769592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697606, 0.236442, -0.676344,
		0.643924, 0.207037, 0.736544,
		0.314178, -0.949332, -0.007820,
		35.399014, 34.227192, 39.767246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000469, 34.850937, 39.894718>,  <35.179089, 34.891727, 39.772720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000469, 34.850937, 39.894718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830330, 34.554890, 39.686367>,  <35.728245, 34.377262, 39.561356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830330, 34.554890, 39.686367>,  <36.000469, 34.850937, 39.894718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830330, 34.554890, 39.686367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655251, 0.145155, -0.741334,
		0.624279, -0.656628, 0.423220,
		-0.425348, -0.740115, -0.520874,
		35.702724, 34.332855, 39.530106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575138, 34.360428, 39.726540>,  <36.000469, 34.850937, 39.894718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575138, 34.360428, 39.726540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281010, 34.278439, 39.468147>,  <36.104534, 34.229244, 39.313110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281010, 34.278439, 39.468147>,  <36.575138, 34.360428, 39.726540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281010, 34.278439, 39.468147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668387, -0.061690, -0.741251,
		0.112088, -0.976821, 0.182365,
		-0.735319, -0.204976, -0.645979,
		36.060413, 34.216946, 39.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761631, 33.720642, 39.368793>,  <36.575138, 34.360428, 39.726540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761631, 33.720642, 39.368793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501339, 33.927521, 39.146423>,  <36.345161, 34.051647, 39.013000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501339, 33.927521, 39.146423>,  <36.761631, 33.720642, 39.368793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501339, 33.927521, 39.146423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662610, 0.029260, -0.748393,
		-0.370802, -0.855364, -0.361743,
		-0.650733, 0.517200, -0.555923,
		36.306118, 34.082680, 38.979645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863930, 33.503117, 38.683029>,  <36.761631, 33.720642, 39.368793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863930, 33.503117, 38.683029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668777, 33.848446, 38.631432>,  <36.551685, 34.055645, 38.600471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668777, 33.848446, 38.631432>,  <36.863930, 33.503117, 38.683029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668777, 33.848446, 38.631432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493803, 0.151102, -0.856345,
		-0.719815, -0.481491, -0.500033,
		-0.487879, 0.863327, -0.128996,
		36.522415, 34.107445, 38.592731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602684, 33.454082, 38.027340>,  <36.863930, 33.503117, 38.683029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602684, 33.454082, 38.027340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617706, 33.844425, 38.113411>,  <36.626720, 34.078629, 38.165054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617706, 33.844425, 38.113411>,  <36.602684, 33.454082, 38.027340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617706, 33.844425, 38.113411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437203, 0.177584, -0.881656,
		-0.898578, 0.127184, -0.419977,
		0.037551, 0.975852, 0.215179,
		36.628971, 34.137180, 38.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552631, 33.787983, 37.374500>,  <36.602684, 33.454082, 38.027340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552631, 33.787983, 37.374500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699745, 34.070332, 37.616650>,  <36.788013, 34.239742, 37.761940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699745, 34.070332, 37.616650>,  <36.552631, 33.787983, 37.374500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699745, 34.070332, 37.616650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402105, 0.466278, -0.787969,
		-0.838479, 0.533228, -0.112345,
		0.367783, 0.705870, 0.605378,
		36.810081, 34.282093, 37.798264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510845, 34.395851, 37.013897>,  <36.552631, 33.787983, 37.374500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510845, 34.395851, 37.013897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772114, 34.491508, 37.301277>,  <36.928875, 34.548901, 37.473705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772114, 34.491508, 37.301277>,  <36.510845, 34.395851, 37.013897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772114, 34.491508, 37.301277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566383, 0.475445, -0.673173,
		-0.502569, 0.846619, 0.175102,
		0.653173, 0.239141, 0.718455,
		36.968067, 34.563251, 37.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651875, 35.203247, 37.044693>,  <36.510845, 34.395851, 37.013897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651875, 35.203247, 37.044693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966370, 35.013206, 37.202736>,  <37.155067, 34.899181, 37.297562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966370, 35.013206, 37.202736>,  <36.651875, 35.203247, 37.044693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966370, 35.013206, 37.202736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617743, 0.588693, -0.521378,
		0.015108, 0.654003, 0.756341,
		0.786235, -0.475101, 0.395111,
		37.202240, 34.870674, 37.321270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156136, 35.794064, 37.212379>,  <36.651875, 35.203247, 37.044693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156136, 35.794064, 37.212379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365337, 35.453503, 37.228287>,  <37.490860, 35.249165, 37.237831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365337, 35.453503, 37.228287>,  <37.156136, 35.794064, 37.212379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365337, 35.453503, 37.228287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772682, 0.453923, -0.443753,
		0.359763, 0.262810, 0.895266,
		0.523005, -0.851402, 0.039764,
		37.522240, 35.198082, 37.240215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866009, 36.016640, 37.375187>,  <37.156136, 35.794064, 37.212379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866009, 36.016640, 37.375187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921558, 35.652573, 37.219082>,  <37.954887, 35.434132, 37.125420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921558, 35.652573, 37.219082>,  <37.866009, 36.016640, 37.375187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921558, 35.652573, 37.219082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805473, 0.333080, -0.490174,
		0.576130, -0.246273, 0.779374,
		0.138877, -0.910169, -0.390264,
		37.963223, 35.379520, 37.102001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560421, 35.884830, 37.428154>,  <37.866009, 36.016640, 37.375187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560421, 35.884830, 37.428154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440395, 35.619919, 37.153534>,  <38.368382, 35.460972, 36.988762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440395, 35.619919, 37.153534>,  <38.560421, 35.884830, 37.428154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440395, 35.619919, 37.153534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882307, 0.080905, -0.463668,
		0.362622, -0.744877, 0.560056,
		-0.300065, -0.662278, -0.686549,
		38.350376, 35.421234, 36.947571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041775, 35.325932, 37.427643>,  <38.560421, 35.884830, 37.428154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041775, 35.325932, 37.427643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871113, 35.354717, 37.067024>,  <38.768715, 35.371990, 36.850655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871113, 35.354717, 37.067024>,  <39.041775, 35.325932, 37.427643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871113, 35.354717, 37.067024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903246, 0.084582, -0.420705,
		0.045977, -0.993814, -0.101092,
		-0.426653, 0.071968, -0.901547,
		38.743118, 35.376308, 36.796558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695431, 35.037842, 37.304184>,  <39.041775, 35.325932, 37.427643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695431, 35.037842, 37.304184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996502, 35.026459, 37.567295>,  <40.177143, 35.019630, 37.725163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996502, 35.026459, 37.567295>,  <39.695431, 35.037842, 37.304184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996502, 35.026459, 37.567295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646286, -0.222654, 0.729890,
		0.125688, -0.974482, -0.185976,
		0.752673, -0.028455, 0.657779,
		40.222305, 35.017921, 37.764629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693287, 34.377583, 37.738243>,  <39.695431, 35.037842, 37.304184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693287, 34.377583, 37.738243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911976, 34.644386, 37.940708>,  <40.043190, 34.804470, 38.062187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911976, 34.644386, 37.940708>,  <39.693287, 34.377583, 37.738243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911976, 34.644386, 37.940708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458012, -0.267821, 0.847642,
		0.700945, -0.695249, 0.159076,
		0.546718, 0.667009, 0.506160,
		40.075993, 34.844490, 38.092556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835117, 33.937862, 38.304108>,  <39.693287, 34.377583, 37.738243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835117, 33.937862, 38.304108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955601, 34.300388, 38.422680>,  <40.027893, 34.517902, 38.493820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955601, 34.300388, 38.422680>,  <39.835117, 33.937862, 38.304108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955601, 34.300388, 38.422680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189145, -0.247899, 0.950142,
		0.934610, -0.342261, 0.096755,
		0.301212, 0.906313, 0.296426,
		40.045963, 34.572281, 38.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306206, 33.851822, 38.835796>,  <39.835117, 33.937862, 38.304108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306206, 33.851822, 38.835796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135498, 34.210003, 38.886440>,  <40.033073, 34.424911, 38.916828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135498, 34.210003, 38.886440>,  <40.306206, 33.851822, 38.835796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135498, 34.210003, 38.886440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149253, -0.207821, 0.966713,
		0.891957, 0.393671, 0.222341,
		-0.426774, 0.895452, 0.126611,
		40.007465, 34.478638, 38.924423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438461, 34.158081, 39.574142>,  <40.306206, 33.851822, 38.835796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438461, 34.158081, 39.574142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089016, 34.332291, 39.487312>,  <39.879349, 34.436817, 39.435215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089016, 34.332291, 39.487312>,  <40.438461, 34.158081, 39.574142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089016, 34.332291, 39.487312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244833, -0.007872, 0.969533,
		0.420545, 0.900144, 0.113507,
		-0.873613, 0.435522, -0.217075,
		39.826931, 34.462948, 39.422192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232323, 34.644272, 40.182743>,  <40.438461, 34.158081, 39.574142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232323, 34.644272, 40.182743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918781, 34.535091, 39.959648>,  <39.730656, 34.469585, 39.825790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918781, 34.535091, 39.959648>,  <40.232323, 34.644272, 40.182743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918781, 34.535091, 39.959648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563919, -0.063100, 0.823416,
		-0.259942, 0.959957, -0.104459,
		-0.783853, -0.272946, -0.557741,
		39.683624, 34.453209, 39.792324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698067, 34.948433, 40.526928>,  <40.232323, 34.644272, 40.182743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698067, 34.948433, 40.526928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497757, 34.696087, 40.289867>,  <39.377571, 34.544678, 40.147629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497757, 34.696087, 40.289867>,  <39.698067, 34.948433, 40.526928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497757, 34.696087, 40.289867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708772, -0.094166, 0.699124,
		-0.496861, 0.770158, -0.399984,
		-0.500771, -0.630865, -0.592654,
		39.347527, 34.506828, 40.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021687, 35.232635, 40.480556>,  <39.698067, 34.948433, 40.526928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021687, 35.232635, 40.480556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007671, 34.842854, 40.391819>,  <38.999264, 34.608986, 40.338577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.007671, 34.842854, 40.391819>,  <39.021687, 35.232635, 40.480556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007671, 34.842854, 40.391819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632733, -0.150190, 0.759666,
		-0.773577, 0.166984, -0.611306,
		-0.035040, -0.974454, -0.221840,
		38.997158, 34.550518, 40.325268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340393, 35.055103, 40.514389>,  <39.021687, 35.232635, 40.480556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340393, 35.055103, 40.514389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.528870, 34.702499, 40.526478>,  <38.641956, 34.490936, 40.533730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.528870, 34.702499, 40.526478>,  <38.340393, 35.055103, 40.514389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528870, 34.702499, 40.526478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686471, -0.344990, 0.640110,
		-0.553839, -0.322361, -0.767689,
		0.471191, -0.881513, 0.030223,
		38.670227, 34.438046, 40.535545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780823, 34.586361, 40.373043>,  <38.340393, 35.055103, 40.514389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780823, 34.586361, 40.373043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086716, 34.414120, 40.564777>,  <38.270252, 34.310776, 40.679817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086716, 34.414120, 40.564777>,  <37.780823, 34.586361, 40.373043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086716, 34.414120, 40.564777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629372, -0.339721, 0.698914,
		-0.138110, -0.836167, -0.530802,
		0.764733, -0.430599, 0.479341,
		38.316135, 34.284939, 40.708580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473782, 34.080727, 40.565426>,  <37.780823, 34.586361, 40.373043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473782, 34.080727, 40.565426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806801, 34.125538, 40.782425>,  <38.006615, 34.152424, 40.912624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806801, 34.125538, 40.782425>,  <37.473782, 34.080727, 40.565426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806801, 34.125538, 40.782425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522578, -0.166049, 0.836265,
		0.183766, -0.979734, -0.079702,
		0.832552, 0.112027, 0.542501,
		38.056568, 34.159145, 40.945175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541664, 33.451405, 40.937618>,  <37.473782, 34.080727, 40.565426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541664, 33.451405, 40.937618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738327, 33.735527, 41.139111>,  <37.856323, 33.906002, 41.260006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738327, 33.735527, 41.139111>,  <37.541664, 33.451405, 40.937618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738327, 33.735527, 41.139111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381694, -0.344147, 0.857830,
		0.782677, -0.614027, 0.101917,
		0.491657, 0.710305, 0.503727,
		37.885822, 33.948620, 41.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881592, 32.989750, 41.363071>,  <37.541664, 33.451405, 40.937618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881592, 32.989750, 41.363071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868469, 33.355442, 41.524616>,  <37.860596, 33.574860, 41.621544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868469, 33.355442, 41.524616>,  <37.881592, 32.989750, 41.363071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868469, 33.355442, 41.524616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430337, -0.377621, 0.819886,
		0.902072, -0.146901, 0.405815,
		-0.032802, 0.914233, 0.403858,
		37.858627, 33.629711, 41.645775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081635, 32.843601, 42.001949>,  <37.881592, 32.989750, 41.363071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081635, 32.843601, 42.001949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920937, 33.206997, 42.047977>,  <37.824516, 33.425034, 42.075596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920937, 33.206997, 42.047977>,  <38.081635, 32.843601, 42.001949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920937, 33.206997, 42.047977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537857, -0.335796, 0.773273,
		0.741153, 0.248768, 0.623544,
		-0.401748, 0.908491, 0.115075,
		37.800411, 33.479546, 42.082500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221851, 33.060020, 42.747925>,  <38.081635, 32.843601, 42.001949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221851, 33.060020, 42.747925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903130, 33.259708, 42.611763>,  <37.711895, 33.379520, 42.530067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903130, 33.259708, 42.611763>,  <38.221851, 33.060020, 42.747925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903130, 33.259708, 42.611763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530508, -0.308328, 0.789617,
		0.289237, 0.809761, 0.510519,
		-0.796808, 0.499221, -0.340404,
		37.664085, 33.409473, 42.509644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048206, 33.398239, 43.427963>,  <38.221851, 33.060020, 42.747925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048206, 33.398239, 43.427963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760757, 33.442291, 43.153313>,  <37.588287, 33.468723, 42.988522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760757, 33.442291, 43.153313>,  <38.048206, 33.398239, 43.427963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760757, 33.442291, 43.153313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695324, -0.128629, 0.707092,
		-0.010444, 0.985558, 0.169014,
		-0.718620, 0.110135, -0.686626,
		37.545170, 33.475330, 42.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644882, 34.007408, 43.624435>,  <38.048206, 33.398239, 43.427963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644882, 34.007408, 43.624435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412296, 33.765511, 43.406746>,  <37.272743, 33.620373, 43.276131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412296, 33.765511, 43.406746>,  <37.644882, 34.007408, 43.624435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412296, 33.765511, 43.406746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460415, -0.306911, 0.832961,
		-0.670757, 0.734909, -0.099974,
		-0.581467, -0.604744, -0.544225,
		37.237858, 33.584087, 43.243477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918819, 34.165756, 43.691853>,  <37.644882, 34.007408, 43.624435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918819, 34.165756, 43.691853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936054, 33.782082, 43.580067>,  <36.946396, 33.551876, 43.512997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936054, 33.782082, 43.580067>,  <36.918819, 34.165756, 43.691853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936054, 33.782082, 43.580067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427806, -0.270494, 0.862447,
		-0.902843, 0.082399, -0.422001,
		0.043084, -0.959189, -0.279464,
		36.948978, 33.494324, 43.496227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.209583, 33.947063, 43.845638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415848, 33.606537, 43.806938>,  <36.539604, 33.402222, 43.783718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415848, 33.606537, 43.806938>,  <36.209583, 33.947063, 43.845638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415848, 33.606537, 43.806938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631496, -0.453949, 0.628604,
		-0.579059, -0.263048, -0.771684,
		0.515659, -0.851314, -0.096749,
		36.570545, 33.351143, 43.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688641, 33.391865, 43.848625>,  <36.209583, 33.947063, 43.845638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688641, 33.391865, 43.848625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034000, 33.206570, 43.928581>,  <36.241215, 33.095394, 43.976555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034000, 33.206570, 43.928581>,  <35.688641, 33.391865, 43.848625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034000, 33.206570, 43.928581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473342, -0.606604, 0.638732,
		-0.174628, -0.646097, -0.743010,
		0.863396, -0.463238, 0.199895,
		36.293018, 33.067596, 43.988548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461166, 32.771198, 43.968582>,  <35.688641, 33.391865, 43.848625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461166, 32.771198, 43.968582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831074, 32.759068, 44.120308>,  <36.053020, 32.751789, 44.211342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831074, 32.759068, 44.120308>,  <35.461166, 32.771198, 43.968582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831074, 32.759068, 44.120308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291874, -0.696104, 0.655934,
		0.244149, -0.717300, -0.652589,
		0.924771, -0.030328, 0.379314,
		36.108505, 32.749969, 44.234100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435020, 32.137066, 44.075821>,  <35.461166, 32.771198, 43.968582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435020, 32.137066, 44.075821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714710, 32.297016, 44.312862>,  <35.882523, 32.392986, 44.455090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714710, 32.297016, 44.312862>,  <35.435020, 32.137066, 44.075821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714710, 32.297016, 44.312862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371191, -0.505372, 0.778984,
		0.610986, -0.764655, -0.204938,
		0.699224, 0.399877, 0.592608,
		35.924477, 32.416981, 44.490646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829727, 31.614796, 44.461845>,  <35.435020, 32.137066, 44.075821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829727, 31.614796, 44.461845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.843712, 31.952831, 44.675240>,  <35.852104, 32.155651, 44.803276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.843712, 31.952831, 44.675240>,  <35.829727, 31.614796, 44.461845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843712, 31.952831, 44.675240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326543, -0.494851, 0.805291,
		0.944536, -0.202361, 0.258656,
		0.034963, 0.845088, 0.533483,
		35.854202, 32.206356, 44.835285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131077, 31.352526, 45.090317>,  <35.829727, 31.614796, 44.461845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131077, 31.352526, 45.090317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937466, 31.699389, 45.137230>,  <35.821301, 31.907507, 45.165379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937466, 31.699389, 45.137230>,  <36.131077, 31.352526, 45.090317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937466, 31.699389, 45.137230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508191, -0.387672, 0.769059,
		0.712363, 0.312642, 0.628325,
		-0.484025, 0.867159, 0.117281,
		35.792259, 31.959536, 45.172413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971523, 31.328348, 45.816101>,  <36.131077, 31.352526, 45.090317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971523, 31.328348, 45.816101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772919, 31.649790, 45.684830>,  <35.653755, 31.842655, 45.606068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772919, 31.649790, 45.684830>,  <35.971523, 31.328348, 45.816101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772919, 31.649790, 45.684830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636142, -0.079627, 0.767452,
		0.590595, 0.589815, 0.550741,
		-0.496508, 0.803603, -0.328179,
		35.623966, 31.890871, 45.586376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811993, 31.697998, 46.438225>,  <35.971523, 31.328348, 45.816101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811993, 31.697998, 46.438225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563240, 31.827660, 46.153076>,  <35.413990, 31.905457, 45.981987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563240, 31.827660, 46.153076>,  <35.811993, 31.697998, 46.438225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563240, 31.827660, 46.153076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744232, 0.038636, 0.666803,
		0.243690, 0.945214, 0.217219,
		-0.621880, 0.324155, -0.712874,
		35.376675, 31.924906, 45.939213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593334, 32.350155, 46.708355>,  <35.811993, 31.697998, 46.438225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593334, 32.350155, 46.708355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323372, 32.210438, 46.448357>,  <35.161396, 32.126606, 46.292358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323372, 32.210438, 46.448357>,  <35.593334, 32.350155, 46.708355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323372, 32.210438, 46.448357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699658, 0.022995, 0.714108,
		-0.234488, 0.936730, -0.259907,
		-0.674903, -0.349296, -0.649999,
		35.120899, 32.105648, 46.253357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016861, 32.583790, 47.034477>,  <35.593334, 32.350155, 46.708355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016861, 32.583790, 47.034477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914547, 32.293968, 46.778481>,  <34.853157, 32.120075, 46.624882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914547, 32.293968, 46.778481>,  <35.016861, 32.583790, 47.034477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914547, 32.293968, 46.778481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888652, -0.084421, 0.450745,
		-0.380620, 0.684024, -0.622286,
		-0.255786, -0.724558, -0.639991,
		34.837811, 32.076599, 46.586483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233593, 32.679848, 46.990097>,  <35.016861, 32.583790, 47.034477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233593, 32.679848, 46.990097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344498, 32.319328, 46.856960>,  <34.411041, 32.103016, 46.777077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344498, 32.319328, 46.856960>,  <34.233593, 32.679848, 46.990097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344498, 32.319328, 46.856960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664709, -0.430081, 0.610895,
		-0.693748, 0.051865, -0.718348,
		0.277264, -0.901300, -0.332843,
		34.427677, 32.048939, 46.757107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623779, 32.314270, 47.063427>,  <34.233593, 32.679848, 46.990097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623779, 32.314270, 47.063427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910542, 32.037872, 47.026379>,  <34.082600, 31.872034, 47.004150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910542, 32.037872, 47.026379>,  <33.623779, 32.314270, 47.063427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910542, 32.037872, 47.026379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518349, -0.617137, 0.591993,
		-0.466225, -0.376390, -0.800603,
		0.716902, -0.690994, -0.092623,
		34.125610, 31.830574, 46.998592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279472, 31.720266, 46.937233>,  <33.623779, 32.314270, 47.063427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279472, 31.720266, 46.937233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625057, 31.560970, 47.060505>,  <33.832409, 31.465393, 47.134468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625057, 31.560970, 47.060505>,  <33.279472, 31.720266, 46.937233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625057, 31.560970, 47.060505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502985, -0.711648, 0.490472,
		0.023989, -0.578758, -0.815146,
		0.863962, -0.398241, 0.308179,
		33.884247, 31.441498, 47.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171776, 30.993551, 46.962234>,  <33.279472, 31.720266, 46.937233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171776, 30.993551, 46.962234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485386, 31.050974, 47.203796>,  <33.673553, 31.085428, 47.348732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485386, 31.050974, 47.203796>,  <33.171776, 30.993551, 46.962234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485386, 31.050974, 47.203796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377182, -0.662499, 0.647170,
		0.492991, -0.735178, -0.465268,
		0.784024, 0.143558, 0.603902,
		33.720592, 31.094042, 47.384968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513992, 30.367834, 46.995979>,  <33.171776, 30.993551, 46.962234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513992, 30.367834, 46.995979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636036, 30.562145, 47.323620>,  <33.709263, 30.678732, 47.520203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636036, 30.562145, 47.323620>,  <33.513992, 30.367834, 46.995979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636036, 30.562145, 47.323620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088341, -0.841967, 0.532248,
		0.948210, -0.234756, -0.213981,
		0.305113, 0.485780, 0.819100,
		33.727570, 30.707880, 47.569351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959522, 29.926165, 47.329807>,  <33.513992, 30.367834, 46.995979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959522, 29.926165, 47.329807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847263, 30.193665, 47.605202>,  <33.779907, 30.354164, 47.770439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847263, 30.193665, 47.605202>,  <33.959522, 29.926165, 47.329807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847263, 30.193665, 47.605202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051421, -0.705805, 0.706537,
		0.958431, 0.233694, 0.163697,
		-0.280652, 0.668750, 0.688482,
		33.763069, 30.394289, 47.811745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396954, 29.745422, 47.902817>,  <33.959522, 29.926165, 47.329807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396954, 29.745422, 47.902817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118069, 29.974247, 48.075626>,  <33.950737, 30.111542, 48.179314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118069, 29.974247, 48.075626>,  <34.396954, 29.745422, 47.902817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118069, 29.974247, 48.075626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047944, -0.564097, 0.824315,
		0.715262, 0.595434, 0.365867,
		-0.697210, 0.572061, 0.432025,
		33.908905, 30.145864, 48.205235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530190, 29.759106, 48.703709>,  <34.396954, 29.745422, 47.902817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530190, 29.759106, 48.703709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144299, 29.855375, 48.661030>,  <33.912766, 29.913137, 48.635422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144299, 29.855375, 48.661030>,  <34.530190, 29.759106, 48.703709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144299, 29.855375, 48.661030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243781, -0.663680, 0.707177,
		0.099386, 0.708242, 0.698939,
		-0.964724, 0.240672, -0.106696,
		33.854881, 29.927576, 48.629021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327312, 29.929718, 49.367790>,  <34.530190, 29.759106, 48.703709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327312, 29.929718, 49.367790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974873, 29.867989, 49.188976>,  <33.763409, 29.830950, 49.081688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974873, 29.867989, 49.188976>,  <34.327312, 29.929718, 49.367790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974873, 29.867989, 49.188976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305979, -0.534728, 0.787682,
		-0.360600, 0.830813, 0.423931,
		-0.881104, -0.154324, -0.447034,
		33.710541, 29.821692, 49.054867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782524, 30.070019, 49.846165>,  <34.327312, 29.929718, 49.367790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782524, 30.070019, 49.846165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621746, 29.828278, 49.571007>,  <33.525280, 29.683233, 49.405910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621746, 29.828278, 49.571007>,  <33.782524, 30.070019, 49.846165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621746, 29.828278, 49.571007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607749, -0.385840, 0.694095,
		-0.684897, 0.697053, -0.212211,
		-0.401942, -0.604355, -0.687894,
		33.501163, 29.646971, 49.364639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039711, 30.028517, 49.971947>,  <33.782524, 30.070019, 49.846165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039711, 30.028517, 49.971947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118896, 29.694468, 49.766666>,  <33.166409, 29.494038, 49.643497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118896, 29.694468, 49.766666>,  <33.039711, 30.028517, 49.971947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118896, 29.694468, 49.766666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600790, -0.517071, 0.609663,
		-0.774506, 0.187634, -0.604097,
		0.197967, -0.835124, -0.513203,
		33.178288, 29.443930, 49.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407341, 29.734713, 49.968437>,  <33.039711, 30.028517, 49.971947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407341, 29.734713, 49.968437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668140, 29.455051, 49.851082>,  <32.824619, 29.287254, 49.780670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668140, 29.455051, 49.851082>,  <32.407341, 29.734713, 49.968437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668140, 29.455051, 49.851082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629788, -0.714845, 0.303914,
		-0.422209, -0.013381, -0.906400,
		0.652002, -0.699155, -0.293387,
		32.863743, 29.245304, 49.763065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073261, 29.238321, 49.540699>,  <32.407341, 29.734713, 49.968437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073261, 29.238321, 49.540699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379139, 29.066401, 49.732750>,  <32.562664, 28.963247, 49.847980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379139, 29.066401, 49.732750>,  <32.073261, 29.238321, 49.540699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379139, 29.066401, 49.732750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606535, -0.731702, 0.311011,
		0.217635, -0.529039, -0.820215,
		0.764690, -0.429802, 0.480125,
		32.608547, 28.937460, 49.876789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438339, 28.760450, 49.618164>,  <32.073261, 29.238321, 49.540699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438339, 28.760450, 49.618164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417273, 28.388426, 49.472721>,  <31.404633, 28.165211, 49.385456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417273, 28.388426, 49.472721>,  <31.438339, 28.760450, 49.618164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417273, 28.388426, 49.472721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111639, 0.356343, -0.927661,
		0.992352, -0.089449, 0.085064,
		-0.052667, -0.930063, -0.363604,
		31.401472, 28.109407, 49.363640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926262, 28.658117, 49.132816>,  <31.438339, 28.760450, 49.618164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926262, 28.658117, 49.132816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649836, 28.387506, 49.031040>,  <31.483980, 28.225140, 48.969975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649836, 28.387506, 49.031040>,  <31.926262, 28.658117, 49.132816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649836, 28.387506, 49.031040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077766, 0.280392, -0.956730,
		0.718597, -0.680950, -0.141158,
		-0.691065, -0.676526, -0.254444,
		31.442516, 28.184549, 48.954708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136982, 28.281944, 48.611969>,  <31.926262, 28.658117, 49.132816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136982, 28.281944, 48.611969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743639, 28.219610, 48.574604>,  <31.507633, 28.182211, 48.552185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743639, 28.219610, 48.574604>,  <32.136982, 28.281944, 48.611969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743639, 28.219610, 48.574604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028452, 0.375700, -0.926305,
		0.179441, -0.913546, -0.365013,
		-0.983357, -0.155832, -0.093408,
		31.448631, 28.172861, 48.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111900, 28.032207, 48.022915>,  <32.136982, 28.281944, 48.611969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111900, 28.032207, 48.022915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725740, 28.125795, 48.068981>,  <31.494045, 28.181948, 48.096622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725740, 28.125795, 48.068981>,  <32.111900, 28.032207, 48.022915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725740, 28.125795, 48.068981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019263, 0.376433, -0.926244,
		-0.260067, -0.896413, -0.358901,
		-0.965398, 0.233972, 0.115165,
		31.436121, 28.195988, 48.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678349, 27.825521, 47.458302>,  <32.111900, 28.032207, 48.022915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678349, 27.825521, 47.458302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443371, 28.105921, 47.620049>,  <31.302383, 28.274160, 47.717094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443371, 28.105921, 47.620049>,  <31.678349, 27.825521, 47.458302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443371, 28.105921, 47.620049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029251, 0.517733, -0.855042,
		-0.808737, -0.490460, -0.324644,
		-0.587443, 0.701000, 0.404363,
		31.267138, 28.316221, 47.741356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238464, 27.920401, 46.988873>,  <31.678349, 27.825521, 47.458302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238464, 27.920401, 46.988873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259577, 28.252171, 47.211319>,  <31.272245, 28.451233, 47.344788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259577, 28.252171, 47.211319>,  <31.238464, 27.920401, 46.988873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259577, 28.252171, 47.211319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159647, 0.542722, -0.824600,
		-0.985762, 0.132307, -0.103769,
		0.052783, 0.829426, 0.556117,
		31.275412, 28.500998, 47.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071585, 28.352280, 46.461746>,  <31.238464, 27.920401, 46.988873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071585, 28.352280, 46.461746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183805, 28.594999, 46.759224>,  <31.251137, 28.740631, 46.937710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183805, 28.594999, 46.759224>,  <31.071585, 28.352280, 46.461746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183805, 28.594999, 46.759224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287974, 0.685908, -0.668283,
		-0.915622, 0.401652, 0.017689,
		0.280550, 0.606800, 0.743697,
		31.267971, 28.777039, 46.982334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804752, 29.027962, 46.294376>,  <31.071585, 28.352280, 46.461746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804752, 29.027962, 46.294376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.100931, 29.115459, 46.548584>,  <31.278639, 29.167957, 46.701111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.100931, 29.115459, 46.548584>,  <30.804752, 29.027962, 46.294376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100931, 29.115459, 46.548584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372893, 0.652986, -0.659212,
		-0.559186, 0.725094, 0.401933,
		0.740447, 0.218744, 0.635523,
		31.323065, 29.181084, 46.739243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892693, 29.780901, 46.268185>,  <30.804752, 29.027962, 46.294376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892693, 29.780901, 46.268185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230627, 29.638700, 46.428120>,  <31.433388, 29.553379, 46.524078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230627, 29.638700, 46.428120>,  <30.892693, 29.780901, 46.268185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230627, 29.638700, 46.428120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534864, 0.579377, -0.615014,
		-0.013016, 0.733445, 0.679625,
		0.844838, -0.355502, 0.399835,
		31.484077, 29.532049, 46.548069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367739, 30.374590, 46.480965>,  <30.892693, 29.780901, 46.268185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367739, 30.374590, 46.480965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605618, 30.058323, 46.422752>,  <31.748344, 29.868563, 46.387825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605618, 30.058323, 46.422752>,  <31.367739, 30.374590, 46.480965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605618, 30.058323, 46.422752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612341, 0.562773, -0.555270,
		0.520933, 0.241106, 0.818839,
		0.594699, -0.790667, -0.145528,
		31.784027, 29.821123, 46.379093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097343, 30.531460, 46.733273>,  <31.367739, 30.374590, 46.480965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097343, 30.531460, 46.733273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095310, 30.248621, 46.450432>,  <32.094090, 30.078918, 46.280727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095310, 30.248621, 46.450432>,  <32.097343, 30.531460, 46.733273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095310, 30.248621, 46.450432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612081, 0.556972, -0.561372,
		0.790779, -0.435655, 0.429970,
		-0.005083, -0.707098, -0.707098,
		32.093784, 30.036491, 46.238304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847588, 30.314291, 46.561054>,  <32.097343, 30.531460, 46.733273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847588, 30.314291, 46.561054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659653, 30.165731, 46.240726>,  <32.546890, 30.076595, 46.048531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659653, 30.165731, 46.240726>,  <32.847588, 30.314291, 46.561054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659653, 30.165731, 46.240726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636918, 0.485514, -0.598842,
		0.611219, -0.791417, 0.008437,
		-0.469837, -0.371397, -0.800823,
		32.518700, 30.054312, 46.000481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323288, 30.349432, 46.052074>,  <32.847588, 30.314291, 46.561054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323288, 30.349432, 46.052074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991589, 30.286474, 45.837570>,  <32.792568, 30.248699, 45.708866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991589, 30.286474, 45.837570>,  <33.323288, 30.349432, 46.052074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991589, 30.286474, 45.837570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374058, 0.556621, -0.741791,
		0.415248, -0.815721, -0.402702,
		-0.829246, -0.157393, -0.536263,
		32.742813, 30.239256, 45.676693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565876, 30.136026, 45.396095>,  <33.323288, 30.349432, 46.052074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565876, 30.136026, 45.396095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.191921, 30.270794, 45.351437>,  <32.967548, 30.351654, 45.324642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.191921, 30.270794, 45.351437>,  <33.565876, 30.136026, 45.396095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191921, 30.270794, 45.351437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306477, 0.607617, -0.732716,
		-0.179030, -0.719226, -0.671314,
		-0.934890, 0.336920, -0.111645,
		32.911453, 30.371870, 45.317944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414249, 30.145376, 44.671444>,  <33.565876, 30.136026, 45.396095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414249, 30.145376, 44.671444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158882, 30.417179, 44.816048>,  <33.005661, 30.580261, 44.902809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158882, 30.417179, 44.816048>,  <33.414249, 30.145376, 44.671444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158882, 30.417179, 44.816048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253114, 0.628909, -0.735124,
		-0.726883, -0.377810, -0.573499,
		-0.638416, 0.679509, 0.361514,
		32.967358, 30.621033, 44.924503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051941, 30.354809, 44.078808>,  <33.414249, 30.145376, 44.671444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051941, 30.354809, 44.078808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021088, 30.645994, 44.351311>,  <33.002575, 30.820705, 44.514812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021088, 30.645994, 44.351311>,  <33.051941, 30.354809, 44.078808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021088, 30.645994, 44.351311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255734, 0.674883, -0.692195,
		-0.963665, 0.120831, -0.238221,
		-0.077133, 0.727965, 0.681261,
		32.997948, 30.864384, 44.555691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640545, 30.865133, 43.789040>,  <33.051941, 30.354809, 44.078808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640545, 30.865133, 43.789040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853733, 31.072163, 44.056789>,  <32.981647, 31.196381, 44.217438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853733, 31.072163, 44.056789>,  <32.640545, 30.865133, 43.789040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853733, 31.072163, 44.056789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109323, 0.742342, -0.661042,
		-0.839041, 0.425495, 0.339064,
		0.532972, 0.517574, 0.669371,
		33.013626, 31.227434, 44.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778507, 31.427225, 43.318451>,  <32.640545, 30.865133, 43.789040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778507, 31.427225, 43.318451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010117, 31.534817, 43.626316>,  <33.149082, 31.599371, 43.811035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010117, 31.534817, 43.626316>,  <32.778507, 31.427225, 43.318451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010117, 31.534817, 43.626316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347137, 0.772841, -0.531237,
		-0.737720, 0.574777, 0.354119,
		0.579021, 0.268977, 0.769667,
		33.183823, 31.615509, 43.857216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672043, 32.123016, 43.599804>,  <32.778507, 31.427225, 43.318451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672043, 32.123016, 43.599804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055771, 32.019646, 43.645287>,  <33.286007, 31.957624, 43.672577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055771, 32.019646, 43.645287>,  <32.672043, 32.123016, 43.599804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055771, 32.019646, 43.645287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280115, 0.820820, -0.497786,
		0.035309, 0.509385, 0.859814,
		0.959317, -0.258423, 0.113704,
		33.343567, 31.942120, 43.679398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133961, 32.695808, 43.908661>,  <32.672043, 32.123016, 43.599804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133961, 32.695808, 43.908661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381817, 32.462830, 43.698215>,  <33.530533, 32.323044, 43.571949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381817, 32.462830, 43.698215>,  <33.133961, 32.695808, 43.908661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381817, 32.462830, 43.698215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436212, 0.812811, -0.386080,
		0.652504, 0.009734, 0.757723,
		0.619644, -0.582446, -0.526116,
		33.567711, 32.288097, 43.540382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667828, 33.131741, 43.780499>,  <33.133961, 32.695808, 43.908661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667828, 33.131741, 43.780499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726475, 32.853325, 43.499348>,  <33.761665, 32.686275, 43.330658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726475, 32.853325, 43.499348>,  <33.667828, 33.131741, 43.780499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726475, 32.853325, 43.499348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240299, 0.714330, -0.657258,
		0.959562, -0.072532, 0.271994,
		0.146621, -0.696040, -0.702873,
		33.770462, 32.644512, 43.288486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.177490, 41.641613, 31.226610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969952, 41.695312, 30.888906>,  <42.845428, 41.727531, 30.686285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969952, 41.695312, 30.888906>,  <43.177490, 41.641613, 31.226610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969952, 41.695312, 30.888906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439662, -0.888873, 0.128853,
		-0.733140, 0.438043, 0.520215,
		-0.518848, 0.134251, -0.844259,
		42.814297, 41.735588, 30.635628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469669, 41.589764, 31.416925>,  <43.177490, 41.641613, 31.226610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469669, 41.589764, 31.416925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536392, 41.490112, 31.035326>,  <42.576424, 41.430321, 30.806366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536392, 41.490112, 31.035326>,  <42.469669, 41.589764, 31.416925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536392, 41.490112, 31.035326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324228, -0.927604, 0.185546,
		-0.931157, 0.278363, -0.235502,
		0.166803, -0.249128, -0.953998,
		42.586433, 41.415375, 30.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914215, 41.155521, 31.287264>,  <42.469669, 41.589764, 31.416925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914215, 41.155521, 31.287264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189167, 41.066528, 31.010712>,  <42.354137, 41.013130, 30.844780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189167, 41.066528, 31.010712>,  <41.914215, 41.155521, 31.287264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189167, 41.066528, 31.010712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153908, -0.974927, 0.160714,
		-0.709803, -0.004062, -0.704388,
		0.687380, -0.222487, -0.691382,
		42.395382, 40.999783, 30.803297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597252, 40.692753, 30.745625>,  <41.914215, 41.155521, 31.287264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597252, 40.692753, 30.745625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993439, 40.642094, 30.723980>,  <42.231152, 40.611698, 30.710993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993439, 40.642094, 30.723980>,  <41.597252, 40.692753, 30.745625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993439, 40.642094, 30.723980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124071, -0.991085, 0.048545,
		-0.059779, -0.041369, -0.997354,
		0.990471, -0.126645, -0.054114,
		42.290581, 40.604099, 30.707747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674973, 40.136578, 30.293278>,  <41.597252, 40.692753, 30.745625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674973, 40.136578, 30.293278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030872, 40.151848, 30.475220>,  <42.244411, 40.161011, 30.584385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030872, 40.151848, 30.475220>,  <41.674973, 40.136578, 30.293278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030872, 40.151848, 30.475220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077511, -0.969386, 0.232988,
		0.449824, -0.242557, -0.859549,
		0.889747, 0.038179, 0.454854,
		42.297798, 40.163300, 30.611675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024471, 39.522804, 30.074471>,  <41.674973, 40.136578, 30.293278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024471, 39.522804, 30.074471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190922, 39.648888, 30.415640>,  <42.290794, 39.724537, 30.620342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190922, 39.648888, 30.415640>,  <42.024471, 39.522804, 30.074471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190922, 39.648888, 30.415640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003333, -0.937460, 0.348077,
		0.909300, -0.147688, -0.389053,
		0.416129, 0.315209, 0.852924,
		42.315762, 39.743450, 30.671516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589169, 39.116772, 30.176043>,  <42.024471, 39.522804, 30.074471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589169, 39.116772, 30.176043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514164, 39.290733, 30.528337>,  <42.469162, 39.395111, 30.739714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514164, 39.290733, 30.528337>,  <42.589169, 39.116772, 30.176043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514164, 39.290733, 30.528337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029718, -0.898742, 0.437469,
		0.981813, 0.055856, 0.181448,
		-0.187511, 0.434905, 0.880737,
		42.457912, 39.421204, 30.792559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067005, 38.802422, 30.670427>,  <42.589169, 39.116772, 30.176043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067005, 38.802422, 30.670427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778202, 38.944508, 30.907923>,  <42.604919, 39.029758, 31.050421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778202, 38.944508, 30.907923>,  <43.067005, 38.802422, 30.670427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778202, 38.944508, 30.907923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050816, -0.883053, 0.466513,
		0.690017, 0.306654, 0.655622,
		-0.722007, 0.355218, 0.593739,
		42.561600, 39.051071, 31.086044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221611, 38.597359, 31.349972>,  <43.067005, 38.802422, 30.670427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221611, 38.597359, 31.349972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825527, 38.649509, 31.330019>,  <42.587875, 38.680801, 31.318047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825527, 38.649509, 31.330019>,  <43.221611, 38.597359, 31.349972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825527, 38.649509, 31.330019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131951, -0.757551, 0.639301,
		0.045565, 0.639624, 0.767337,
		-0.990209, 0.130380, -0.049881,
		42.528465, 38.688625, 31.315054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953556, 38.679649, 32.031345>,  <43.221611, 38.597359, 31.349972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953556, 38.679649, 32.031345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643227, 38.555782, 31.811455>,  <42.457031, 38.481461, 31.679520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643227, 38.555782, 31.811455>,  <42.953556, 38.679649, 32.031345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643227, 38.555782, 31.811455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210749, -0.694048, 0.688391,
		-0.594714, 0.649924, 0.473195,
		-0.775822, -0.309671, -0.549731,
		42.410480, 38.462879, 31.646536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595299, 38.446392, 32.516384>,  <42.953556, 38.679649, 32.031345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595299, 38.446392, 32.516384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409542, 38.295212, 32.196011>,  <42.298088, 38.204502, 32.003788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409542, 38.295212, 32.196011>,  <42.595299, 38.446392, 32.516384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409542, 38.295212, 32.196011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341380, -0.758082, 0.555672,
		-0.817189, 0.531472, 0.223023,
		-0.464394, -0.377954, -0.800930,
		42.270226, 38.181828, 31.955732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834660, 38.297939, 32.662941>,  <42.595299, 38.446392, 32.516384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834660, 38.297939, 32.662941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948807, 38.063473, 32.359631>,  <42.017296, 37.922794, 32.177643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948807, 38.063473, 32.359631>,  <41.834660, 38.297939, 32.662941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948807, 38.063473, 32.359631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337939, -0.801897, 0.492706,
		-0.896864, 0.115649, -0.426920,
		0.285365, -0.586163, -0.758275,
		42.034416, 37.887623, 32.132149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401917, 37.758533, 32.746468>,  <41.834660, 38.297939, 32.662941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401917, 37.758533, 32.746468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643204, 37.609806, 32.464226>,  <41.787975, 37.520569, 32.294880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643204, 37.609806, 32.464226>,  <41.401917, 37.758533, 32.746468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643204, 37.609806, 32.464226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115221, -0.916032, 0.384199,
		-0.789212, -0.150454, -0.595406,
		0.603215, -0.371817, -0.705608,
		41.824169, 37.498260, 32.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098461, 37.110722, 32.506969>,  <41.401917, 37.758533, 32.746468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098461, 37.110722, 32.506969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482929, 37.094963, 32.397717>,  <41.713612, 37.085506, 32.332165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482929, 37.094963, 32.397717>,  <41.098461, 37.110722, 32.506969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482929, 37.094963, 32.397717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037301, -0.962126, 0.270039,
		-0.273426, -0.269741, -0.923297,
		0.961169, -0.039396, -0.273132,
		41.771278, 37.083145, 32.315777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278137, 36.462814, 32.116459>,  <41.098461, 37.110722, 32.506969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278137, 36.462814, 32.116459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615681, 36.593506, 32.286705>,  <41.818207, 36.671921, 32.388855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615681, 36.593506, 32.286705>,  <41.278137, 36.462814, 32.116459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615681, 36.593506, 32.286705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138504, -0.898983, 0.415506,
		0.518384, -0.291678, -0.803867,
		0.843857, 0.326731, 0.425620,
		41.868839, 36.691525, 32.414391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857555, 35.922298, 31.963175>,  <41.278137, 36.462814, 32.116459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857555, 35.922298, 31.963175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004940, 36.147915, 32.258766>,  <42.093372, 36.283287, 32.436119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004940, 36.147915, 32.258766>,  <41.857555, 35.922298, 31.963175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004940, 36.147915, 32.258766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285689, -0.825141, 0.487364,
		0.884656, 0.031543, -0.465175,
		0.368463, 0.564045, 0.738978,
		42.115479, 36.317127, 32.480461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472870, 35.567379, 32.174183>,  <41.857555, 35.922298, 31.963175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472870, 35.567379, 32.174183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428288, 35.829807, 32.472752>,  <42.401539, 35.987267, 32.651894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428288, 35.829807, 32.472752>,  <42.472870, 35.567379, 32.174183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428288, 35.829807, 32.472752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391875, -0.661221, 0.639703,
		0.913242, 0.363804, -0.183400,
		-0.111458, 0.656074, 0.746421,
		42.394852, 36.026630, 32.696678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189854, 35.552914, 32.395546>,  <42.472870, 35.567379, 32.174183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189854, 35.552914, 32.395546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949451, 35.709320, 32.674370>,  <42.805210, 35.803165, 32.841663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949451, 35.709320, 32.674370>,  <43.189854, 35.552914, 32.395546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949451, 35.709320, 32.674370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247666, -0.738106, 0.627583,
		0.759903, 0.549820, 0.346765,
		-0.601007, 0.391021, 0.697060,
		42.769150, 35.826626, 32.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550991, 35.849689, 32.996212>,  <43.189854, 35.552914, 32.395546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550991, 35.849689, 32.996212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188282, 35.709412, 33.089825>,  <42.970657, 35.625244, 33.145992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188282, 35.709412, 33.089825>,  <43.550991, 35.849689, 32.996212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188282, 35.709412, 33.089825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419439, -0.694047, 0.585124,
		-0.042772, 0.628738, 0.776440,
		-0.906775, -0.350696, 0.234031,
		42.916248, 35.604202, 33.160034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615231, 35.640171, 33.575729>,  <43.550991, 35.849689, 32.996212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615231, 35.640171, 33.575729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265171, 35.451321, 33.533363>,  <43.055138, 35.338009, 33.507942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265171, 35.451321, 33.533363>,  <43.615231, 35.640171, 33.575729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265171, 35.451321, 33.533363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353703, -0.773591, 0.525785,
		-0.330175, 0.422674, 0.843997,
		-0.875144, -0.472126, -0.105920,
		43.002628, 35.309681, 33.501587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403172, 35.535698, 34.220703>,  <43.615231, 35.640171, 33.575729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403172, 35.535698, 34.220703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241924, 35.255638, 33.984982>,  <43.145176, 35.087601, 33.843548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241924, 35.255638, 33.984982>,  <43.403172, 35.535698, 34.220703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241924, 35.255638, 33.984982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204731, -0.696622, 0.687607,
		-0.891954, 0.156537, 0.424163,
		-0.403117, -0.700153, -0.589307,
		43.120991, 35.045593, 33.808189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739136, 35.603474, 34.935513>,  <43.403172, 35.535698, 34.220703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739136, 35.603474, 34.935513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084053, 35.713413, 34.765377>,  <44.291004, 35.779377, 34.663296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084053, 35.713413, 34.765377>,  <43.739136, 35.603474, 34.935513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084053, 35.713413, 34.765377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221945, 0.960049, 0.170428,
		0.455189, -0.052556, 0.888842,
		0.862289, 0.274851, -0.425339,
		44.342739, 35.795868, 34.637775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009594, 36.221657, 35.289989>,  <43.739136, 35.603474, 34.935513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009594, 36.221657, 35.289989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189262, 36.230515, 34.932720>,  <44.297066, 36.235828, 34.718361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189262, 36.230515, 34.932720>,  <44.009594, 36.221657, 35.289989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189262, 36.230515, 34.932720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103713, 0.994227, -0.027505,
		0.887404, 0.104988, 0.448877,
		0.449174, 0.022147, -0.893170,
		44.324013, 36.237160, 34.664768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285130, 36.766991, 35.319389>,  <44.009594, 36.221657, 35.289989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285130, 36.766991, 35.319389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358585, 36.712593, 34.929974>,  <44.402660, 36.679955, 34.696323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358585, 36.712593, 34.929974>,  <44.285130, 36.766991, 35.319389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358585, 36.712593, 34.929974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059340, 0.990112, -0.127112,
		0.981200, -0.034427, 0.189895,
		0.183642, -0.135991, -0.973541,
		44.413677, 36.671795, 34.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881985, 37.101154, 35.178738>,  <44.285130, 36.766991, 35.319389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881985, 37.101154, 35.178738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645760, 37.084156, 34.856388>,  <44.504025, 37.073956, 34.662979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645760, 37.084156, 34.856388>,  <44.881985, 37.101154, 35.178738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645760, 37.084156, 34.856388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083459, 0.990041, -0.113373,
		0.802662, -0.134211, -0.581137,
		-0.590565, -0.042499, -0.805870,
		44.468590, 37.071407, 34.614628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208267, 37.548744, 34.698273>,  <44.881985, 37.101154, 35.178738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208267, 37.548744, 34.698273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830196, 37.511433, 34.573090>,  <44.603355, 37.489048, 34.497978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830196, 37.511433, 34.573090>,  <45.208267, 37.548744, 34.698273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830196, 37.511433, 34.573090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032704, 0.980559, -0.193478,
		0.324919, -0.172636, -0.929852,
		-0.945176, -0.093275, -0.312956,
		44.546642, 37.483452, 34.479202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096840, 38.061535, 34.137409>,  <45.208267, 37.548744, 34.698273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096840, 38.061535, 34.137409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725971, 37.962193, 34.249599>,  <44.503448, 37.902588, 34.316914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725971, 37.962193, 34.249599>,  <45.096840, 38.061535, 34.137409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725971, 37.962193, 34.249599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277055, 0.958506, -0.067127,
		-0.252163, -0.139945, -0.957512,
		-0.927175, -0.248356, 0.280472,
		44.447819, 37.887684, 34.333740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644718, 38.430664, 33.664749>,  <45.096840, 38.061535, 34.137409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644718, 38.430664, 33.664749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425911, 38.332077, 33.984756>,  <44.294628, 38.272926, 34.176762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425911, 38.332077, 33.984756>,  <44.644718, 38.430664, 33.664749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425911, 38.332077, 33.984756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476869, 0.877200, -0.055818,
		-0.688017, -0.412036, -0.597377,
		-0.547018, -0.246467, 0.800016,
		44.261806, 38.258137, 34.224762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928028, 38.523033, 33.525406>,  <44.644718, 38.430664, 33.664749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928028, 38.523033, 33.525406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963245, 38.529697, 33.923798>,  <43.984375, 38.533695, 34.162830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963245, 38.529697, 33.923798>,  <43.928028, 38.523033, 33.525406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963245, 38.529697, 33.923798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457872, 0.888649, 0.025607,
		-0.884648, -0.458285, 0.085866,
		0.088040, 0.016662, 0.995978,
		43.989658, 38.534695, 34.222591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279015, 38.768761, 33.827274>,  <43.928028, 38.523033, 33.525406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279015, 38.768761, 33.827274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561245, 38.848518, 34.099277>,  <43.730583, 38.896374, 34.262478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561245, 38.848518, 34.099277>,  <43.279015, 38.768761, 33.827274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561245, 38.848518, 34.099277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422362, 0.888857, 0.177605,
		-0.569012, -0.412521, 0.711373,
		0.705575, 0.199398, 0.680004,
		43.772919, 38.908337, 34.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911575, 39.090099, 34.454132>,  <43.279015, 38.768761, 33.827274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911575, 39.090099, 34.454132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301117, 39.180916, 34.450844>,  <43.534840, 39.235405, 34.448872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301117, 39.180916, 34.450844>,  <42.911575, 39.090099, 34.454132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301117, 39.180916, 34.450844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226491, 0.973045, 0.043415,
		0.017857, -0.040417, 0.999023,
		0.973850, 0.227045, -0.008221,
		43.593273, 39.249031, 34.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988075, 39.473244, 34.937122>,  <42.911575, 39.090099, 34.454132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988075, 39.473244, 34.937122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329269, 39.571636, 34.752991>,  <43.533985, 39.630672, 34.642509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329269, 39.571636, 34.752991>,  <42.988075, 39.473244, 34.937122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329269, 39.571636, 34.752991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198387, 0.968585, 0.149954,
		0.482758, -0.036585, 0.874990,
		0.852988, 0.245978, -0.460334,
		43.585167, 39.645428, 34.614891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294033, 40.023823, 35.312126>,  <42.988075, 39.473244, 34.937122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294033, 40.023823, 35.312126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453442, 40.041920, 34.945709>,  <43.549088, 40.052780, 34.725861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453442, 40.041920, 34.945709>,  <43.294033, 40.023823, 35.312126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453442, 40.041920, 34.945709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141763, 0.989818, -0.012783,
		0.906136, 0.134955, 0.400881,
		0.398524, 0.045247, -0.916041,
		43.572998, 40.055492, 34.670898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611443, 40.643147, 35.275856>,  <43.294033, 40.023823, 35.312126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611443, 40.643147, 35.275856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693134, 40.497623, 34.912334>,  <43.742149, 40.410309, 34.694221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693134, 40.497623, 34.912334>,  <43.611443, 40.643147, 35.275856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693134, 40.497623, 34.912334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143589, 0.929467, -0.339812,
		0.968334, -0.061095, 0.242065,
		0.204231, -0.363810, -0.908808,
		43.754402, 40.388481, 34.639690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365883, 40.861683, 35.003571>,  <43.611443, 40.643147, 35.275856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365883, 40.861683, 35.003571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071499, 40.817116, 34.736450>,  <43.894871, 40.790375, 34.576180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071499, 40.817116, 34.736450>,  <44.365883, 40.861683, 35.003571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071499, 40.817116, 34.736450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169049, 0.924883, -0.340609,
		0.655585, -0.363564, -0.661838,
		-0.735956, -0.111415, -0.667799,
		43.850712, 40.783691, 34.536110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613243, 41.125847, 34.400276>,  <44.365883, 40.861683, 35.003571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613243, 41.125847, 34.400276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221920, 41.167316, 34.328533>,  <43.987125, 41.192200, 34.285488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221920, 41.167316, 34.328533>,  <44.613243, 41.125847, 34.400276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221920, 41.167316, 34.328533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175471, 0.874921, -0.451358,
		0.110128, -0.473038, -0.874132,
		-0.978306, 0.103678, -0.179358,
		43.928429, 41.198421, 34.274727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528515, 41.626556, 33.825378>,  <44.613243, 41.125847, 34.400276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528515, 41.626556, 33.825378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147526, 41.601665, 33.944653>,  <43.918930, 41.586731, 34.016216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147526, 41.601665, 33.944653>,  <44.528515, 41.626556, 33.825378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147526, 41.601665, 33.944653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160681, 0.934284, -0.318269,
		-0.258786, -0.351057, -0.899883,
		-0.952477, -0.062230, 0.298188,
		43.861782, 41.582996, 34.034107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106930, 41.769058, 33.239796>,  <44.528515, 41.626556, 33.825378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106930, 41.769058, 33.239796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880760, 41.848320, 33.560051>,  <43.745056, 41.895878, 33.752205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880760, 41.848320, 33.560051>,  <44.106930, 41.769058, 33.239796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880760, 41.848320, 33.560051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146890, 0.931003, -0.334151,
		-0.811613, -0.306544, -0.497308,
		-0.565427, 0.198152, 0.800642,
		43.711132, 41.907764, 33.800243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397121, 41.979916, 33.021828>,  <44.106930, 41.769058, 33.239796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397121, 41.979916, 33.021828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447117, 42.132679, 33.388111>,  <43.477116, 42.224339, 33.607880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447117, 42.132679, 33.388111>,  <43.397121, 41.979916, 33.021828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447117, 42.132679, 33.388111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354749, 0.879136, -0.318235,
		-0.926569, -0.285071, 0.245366,
		0.124991, 0.381910, 0.915708,
		43.484615, 42.247253, 33.662823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760826, 42.361938, 33.255917>,  <43.397121, 41.979916, 33.021828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760826, 42.361938, 33.255917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061413, 42.501339, 33.480003>,  <43.241764, 42.584980, 33.614456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061413, 42.501339, 33.480003>,  <42.760826, 42.361938, 33.255917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061413, 42.501339, 33.480003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213687, 0.931903, -0.293078,
		-0.624209, 0.100527, 0.774763,
		0.751466, 0.348499, 0.560221,
		43.286854, 42.605888, 33.648071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456337, 42.931343, 33.567753>,  <42.760826, 42.361938, 33.255917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456337, 42.931343, 33.567753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853298, 42.979378, 33.578396>,  <43.091476, 43.008198, 33.584782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853298, 42.979378, 33.578396>,  <42.456337, 42.931343, 33.567753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853298, 42.979378, 33.578396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110797, 0.966730, -0.230559,
		-0.053404, 0.225861, 0.972695,
		0.992407, 0.120085, 0.026603,
		43.151020, 43.015404, 33.586376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638474, 43.625309, 33.920830>,  <42.456337, 42.931343, 33.567753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638474, 43.625309, 33.920830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985149, 43.537666, 33.741566>,  <43.193153, 43.485081, 33.634007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985149, 43.537666, 33.741566>,  <42.638474, 43.625309, 33.920830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985149, 43.537666, 33.741566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153953, 0.972005, -0.177498,
		0.474504, 0.084839, 0.876155,
		0.866686, -0.219110, -0.448159,
		43.245155, 43.471931, 33.607117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.758614, 34.664600, 41.990295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488369, 34.451996, 41.785927>,  <38.326221, 34.324432, 41.663307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488369, 34.451996, 41.785927>,  <38.758614, 34.664600, 41.990295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488369, 34.451996, 41.785927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599478, 0.007344, -0.800358,
		0.429154, -0.847017, 0.313670,
		-0.675613, -0.531515, -0.510920,
		38.285686, 34.292542, 41.632652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148811, 34.171265, 41.648621>,  <38.758614, 34.664600, 41.990295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148811, 34.171265, 41.648621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806839, 34.139057, 41.443638>,  <38.601658, 34.119732, 41.320648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806839, 34.139057, 41.443638>,  <39.148811, 34.171265, 41.648621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806839, 34.139057, 41.443638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517564, -0.199106, -0.832157,
		-0.035031, -0.976665, 0.211894,
		-0.854927, -0.080517, -0.512461,
		38.550362, 34.114902, 41.289898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308975, 33.643414, 41.191761>,  <39.148811, 34.171265, 41.648621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308975, 33.643414, 41.191761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993454, 33.840069, 41.044205>,  <38.804142, 33.958061, 40.955673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993454, 33.840069, 41.044205>,  <39.308975, 33.643414, 41.191761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993454, 33.840069, 41.044205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403183, -0.039125, -0.914283,
		-0.463931, -0.869919, -0.167359,
		-0.788804, 0.491640, -0.368888,
		38.756813, 33.987560, 40.933537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200031, 33.291965, 40.573212>,  <39.308975, 33.643414, 41.191761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200031, 33.291965, 40.573212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020340, 33.648083, 40.543339>,  <38.912525, 33.861752, 40.525414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020340, 33.648083, 40.543339>,  <39.200031, 33.291965, 40.573212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020340, 33.648083, 40.543339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393204, 0.121955, -0.911328,
		-0.802238, -0.438760, -0.404851,
		-0.449227, 0.890290, -0.074685,
		38.885571, 33.915169, 40.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856705, 33.334866, 39.866409>,  <39.200031, 33.291965, 40.573212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856705, 33.334866, 39.866409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924786, 33.692871, 40.031322>,  <38.965633, 33.907677, 40.130272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924786, 33.692871, 40.031322>,  <38.856705, 33.334866, 39.866409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924786, 33.692871, 40.031322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236346, 0.369100, -0.898836,
		-0.956647, 0.250423, -0.148713,
		0.170200, 0.895016, 0.412284,
		38.975845, 33.961376, 40.155006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580627, 33.798439, 39.379093>,  <38.856705, 33.334866, 39.866409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580627, 33.798439, 39.379093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824959, 34.019470, 39.605915>,  <38.971558, 34.152088, 39.742008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824959, 34.019470, 39.605915>,  <38.580627, 33.798439, 39.379093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824959, 34.019470, 39.605915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491909, 0.296348, -0.818659,
		-0.620416, 0.778999, -0.090799,
		0.610827, 0.552574, 0.567056,
		39.008205, 34.185242, 39.776031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646057, 34.425232, 38.967968>,  <38.580627, 33.798439, 39.379093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646057, 34.425232, 38.967968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944790, 34.457626, 39.231995>,  <39.124031, 34.477062, 39.390411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944790, 34.457626, 39.231995>,  <38.646057, 34.425232, 38.967968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944790, 34.457626, 39.231995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593925, 0.365279, -0.716815,
		-0.299158, 0.927369, 0.224703,
		0.746831, 0.080984, 0.660064,
		39.168839, 34.481922, 39.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915180, 35.087044, 38.860928>,  <38.646057, 34.425232, 38.967968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915180, 35.087044, 38.860928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209152, 34.896263, 39.053761>,  <39.385536, 34.781796, 39.169460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209152, 34.896263, 39.053761>,  <38.915180, 35.087044, 38.860928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209152, 34.896263, 39.053761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666887, 0.379292, -0.641404,
		0.123067, 0.792880, 0.596822,
		0.734926, -0.476948, 0.482083,
		39.429630, 34.753178, 39.198387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441536, 35.627762, 38.898228>,  <38.915180, 35.087044, 38.860928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441536, 35.627762, 38.898228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620884, 35.273239, 38.944584>,  <39.728493, 35.060528, 38.972397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620884, 35.273239, 38.944584>,  <39.441536, 35.627762, 38.898228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620884, 35.273239, 38.944584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685061, 0.257459, -0.681473,
		0.574157, 0.384940, 0.722610,
		0.448369, -0.886304, 0.115886,
		39.755394, 35.007347, 38.979351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159077, 35.755962, 39.026039>,  <39.441536, 35.627762, 38.898228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159077, 35.755962, 39.026039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119419, 35.403484, 38.841145>,  <40.095623, 35.191998, 38.730206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119419, 35.403484, 38.841145>,  <40.159077, 35.755962, 39.026039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119419, 35.403484, 38.841145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703102, 0.266675, -0.659190,
		0.704143, -0.390359, 0.593129,
		-0.099148, -0.881195, -0.462240,
		40.089676, 35.139126, 38.702473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741982, 35.677704, 38.806068>,  <40.159077, 35.755962, 39.026039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741982, 35.677704, 38.806068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566315, 35.388092, 38.593311>,  <40.460915, 35.214325, 38.465656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566315, 35.388092, 38.593311>,  <40.741982, 35.677704, 38.806068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566315, 35.388092, 38.593311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542118, 0.258541, -0.799540,
		0.716410, -0.639479, 0.278969,
		-0.439164, -0.724032, -0.531895,
		40.434566, 35.170883, 38.433743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250103, 35.198128, 38.553944>,  <40.741982, 35.677704, 38.806068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250103, 35.198128, 38.553944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939220, 35.150578, 38.306778>,  <40.752693, 35.122047, 38.158478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939220, 35.150578, 38.306778>,  <41.250103, 35.198128, 38.553944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939220, 35.150578, 38.306778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591959, 0.194896, -0.782048,
		0.213402, -0.973592, -0.081100,
		-0.777203, -0.118883, -0.617918,
		40.706059, 35.114914, 38.121403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592480, 34.798946, 38.016605>,  <41.250103, 35.198128, 38.553944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592480, 34.798946, 38.016605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233696, 34.935101, 37.903748>,  <41.018425, 35.016792, 37.836033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233696, 34.935101, 37.903748>,  <41.592480, 34.798946, 38.016605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233696, 34.935101, 37.903748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316906, 0.050003, -0.947138,
		-0.308286, -0.938955, -0.152721,
		-0.896956, 0.340388, -0.282145,
		40.964607, 35.037216, 37.819103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210815, 34.369720, 37.446541>,  <41.592480, 34.798946, 38.016605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210815, 34.369720, 37.446541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156334, 34.765987, 37.448708>,  <41.123646, 35.003746, 37.450008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156334, 34.765987, 37.448708>,  <41.210815, 34.369720, 37.446541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156334, 34.765987, 37.448708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210446, 0.034274, -0.977005,
		-0.968071, -0.131934, -0.213149,
		-0.136205, 0.990666, 0.005414,
		41.115471, 35.063187, 37.450333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870159, 34.203178, 37.111519>,  <41.210815, 34.369720, 37.446541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870159, 34.203178, 37.111519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053036, 33.924114, 36.890881>,  <42.162762, 33.756676, 36.758499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053036, 33.924114, 36.890881>,  <41.870159, 34.203178, 37.111519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053036, 33.924114, 36.890881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745418, -0.638880, 0.190221,
		-0.485110, 0.324199, -0.812135,
		0.457187, -0.697658, -0.551591,
		42.190193, 33.714817, 36.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343258, 33.940643, 36.638401>,  <41.870159, 34.203178, 37.111519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343258, 33.940643, 36.638401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624252, 33.658676, 36.677608>,  <41.792850, 33.489498, 36.701134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624252, 33.658676, 36.677608>,  <41.343258, 33.940643, 36.638401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624252, 33.658676, 36.677608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708839, -0.680677, 0.185003,
		-0.063694, -0.199440, -0.977838,
		0.702488, -0.704913, 0.098016,
		41.834999, 33.447201, 36.707012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125603, 33.333717, 36.204853>,  <41.343258, 33.940643, 36.638401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125603, 33.333717, 36.204853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391106, 33.193611, 36.469196>,  <41.550407, 33.109547, 36.627804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391106, 33.193611, 36.469196>,  <41.125603, 33.333717, 36.204853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391106, 33.193611, 36.469196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703514, -0.592373, 0.392635,
		0.253950, -0.725540, -0.639609,
		0.663760, -0.350264, 0.660861,
		41.590233, 33.088531, 36.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995934, 32.566124, 36.199947>,  <41.125603, 33.333717, 36.204853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995934, 32.566124, 36.199947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177952, 32.653645, 36.545216>,  <41.287163, 32.706158, 36.752377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177952, 32.653645, 36.545216>,  <40.995934, 32.566124, 36.199947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177952, 32.653645, 36.545216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614523, -0.624353, 0.482230,
		0.644431, -0.749874, -0.149656,
		0.455050, 0.218797, 0.863167,
		41.314468, 32.719284, 36.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022461, 31.846447, 36.582844>,  <40.995934, 32.566124, 36.199947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022461, 31.846447, 36.582844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070644, 32.129440, 36.861401>,  <41.099556, 32.299236, 37.028534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070644, 32.129440, 36.861401>,  <41.022461, 31.846447, 36.582844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070644, 32.129440, 36.861401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550425, -0.536193, 0.639945,
		0.826149, -0.460398, 0.324826,
		0.120460, 0.707482, 0.696390,
		41.106781, 32.341686, 37.070316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171814, 31.481426, 37.218071>,  <41.022461, 31.846447, 36.582844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171814, 31.481426, 37.218071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057495, 31.851389, 37.318367>,  <40.988903, 32.073368, 37.378544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057495, 31.851389, 37.318367>,  <41.171814, 31.481426, 37.218071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057495, 31.851389, 37.318367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671680, -0.379963, 0.635983,
		0.683494, 0.013350, 0.729834,
		-0.285801, 0.924905, 0.250736,
		40.971756, 32.128860, 37.393589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143143, 31.540821, 37.946854>,  <41.171814, 31.481426, 37.218071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143143, 31.540821, 37.946854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900074, 31.824799, 37.804470>,  <40.754230, 31.995186, 37.719040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900074, 31.824799, 37.804470>,  <41.143143, 31.540821, 37.946854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900074, 31.824799, 37.804470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703017, -0.272352, 0.656956,
		0.369456, 0.649463, 0.664605,
		-0.607675, 0.709945, -0.355961,
		40.717770, 32.037781, 37.697681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136288, 31.904675, 38.516384>,  <41.143143, 31.540821, 37.946854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136288, 31.904675, 38.516384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805935, 31.945442, 38.294563>,  <40.607723, 31.969904, 38.161472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805935, 31.945442, 38.294563>,  <41.136288, 31.904675, 38.516384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805935, 31.945442, 38.294563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562419, -0.218676, 0.797412,
		-0.039995, 0.970461, 0.237923,
		-0.825885, 0.101920, -0.554551,
		40.558170, 31.976019, 38.128197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572380, 31.946848, 39.091564>,  <41.136288, 31.904675, 38.516384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572380, 31.946848, 39.091564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384533, 31.881659, 38.744484>,  <40.271824, 31.842545, 38.536236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384533, 31.881659, 38.744484>,  <40.572380, 31.946848, 39.091564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384533, 31.881659, 38.744484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713434, -0.508893, 0.481706,
		-0.520072, 0.845261, 0.122712,
		-0.469615, -0.162975, -0.867699,
		40.243649, 31.832766, 38.484173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904778, 32.093109, 39.272125>,  <40.572380, 31.946848, 39.091564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904778, 32.093109, 39.272125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871658, 31.863626, 38.946178>,  <39.851788, 31.725937, 38.750610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871658, 31.863626, 38.946178>,  <39.904778, 32.093109, 39.272125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871658, 31.863626, 38.946178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716933, -0.533661, 0.448567,
		-0.692208, 0.621345, -0.367123,
		-0.082796, -0.573704, -0.814867,
		39.846821, 31.691515, 38.701717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271275, 32.042942, 39.192463>,  <39.904778, 32.093109, 39.272125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271275, 32.042942, 39.192463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384201, 31.729143, 38.971603>,  <39.451958, 31.540865, 38.839088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384201, 31.729143, 38.971603>,  <39.271275, 32.042942, 39.192463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384201, 31.729143, 38.971603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658625, -0.576979, 0.483019,
		-0.697505, 0.227299, -0.679575,
		0.282311, -0.784493, -0.552151,
		39.468895, 31.493795, 38.805958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607445, 31.818546, 38.929604>,  <39.271275, 32.042942, 39.192463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607445, 31.818546, 38.929604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861328, 31.513187, 38.881657>,  <39.013657, 31.329971, 38.852886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861328, 31.513187, 38.881657>,  <38.607445, 31.818546, 38.929604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861328, 31.513187, 38.881657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578966, -0.572522, 0.580531,
		-0.511804, -0.299068, -0.805366,
		0.634708, -0.763398, -0.119869,
		39.051739, 31.284168, 38.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221500, 31.277773, 38.860332>,  <38.607445, 31.818546, 38.929604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221500, 31.277773, 38.860332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562546, 31.108015, 38.982277>,  <38.767174, 31.006161, 39.055443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562546, 31.108015, 38.982277>,  <38.221500, 31.277773, 38.860332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562546, 31.108015, 38.982277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509663, -0.546652, 0.664391,
		-0.115307, -0.721846, -0.682380,
		0.852613, -0.424393, 0.304865,
		38.818329, 30.980698, 39.073738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059769, 30.538374, 38.969742>,  <38.221500, 31.277773, 38.860332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059769, 30.538374, 38.969742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410572, 30.604311, 39.150269>,  <38.621056, 30.643873, 39.258583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410572, 30.604311, 39.150269>,  <38.059769, 30.538374, 38.969742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410572, 30.604311, 39.150269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277908, -0.592209, 0.756343,
		0.391948, -0.788743, -0.473562,
		0.877008, 0.164841, 0.451313,
		38.673676, 30.653763, 39.285664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279564, 30.084154, 38.426037>,  <38.059769, 30.538374, 38.969742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279564, 30.084154, 38.426037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045822, 29.818926, 38.238907>,  <37.905575, 29.659788, 38.126629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045822, 29.818926, 38.238907>,  <38.279564, 30.084154, 38.426037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045822, 29.818926, 38.238907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161171, 0.659845, -0.733913,
		0.795330, -0.353468, -0.492454,
		-0.584358, -0.663072, -0.467826,
		37.870514, 29.620005, 38.098560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364628, 30.259468, 37.802956>,  <38.279564, 30.084154, 38.426037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364628, 30.259468, 37.802956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023869, 30.051815, 37.775337>,  <37.819412, 29.927223, 37.758766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023869, 30.051815, 37.775337>,  <38.364628, 30.259468, 37.802956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023869, 30.051815, 37.775337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309228, 0.605030, -0.733701,
		0.422664, -0.603688, -0.675955,
		-0.851900, -0.519133, -0.069048,
		37.768299, 29.896074, 37.754623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310448, 30.097418, 37.136669>,  <38.364628, 30.259468, 37.802956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310448, 30.097418, 37.136669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935738, 30.074810, 37.274807>,  <37.710911, 30.061245, 37.357689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935738, 30.074810, 37.274807>,  <38.310448, 30.097418, 37.136669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935738, 30.074810, 37.274807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317673, 0.551283, -0.771473,
		-0.146781, -0.832401, -0.534381,
		-0.936771, -0.056521, 0.345349,
		37.654705, 30.057854, 37.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915009, 29.848251, 36.592163>,  <38.310448, 30.097418, 37.136669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915009, 29.848251, 36.592163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641968, 30.007627, 36.837208>,  <37.478142, 30.103252, 36.984234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641968, 30.007627, 36.837208>,  <37.915009, 29.848251, 36.592163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641968, 30.007627, 36.837208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337620, 0.571529, -0.747908,
		-0.648123, -0.717357, -0.255607,
		-0.682604, 0.398439, 0.612616,
		37.437187, 30.127159, 37.020992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407776, 29.779354, 36.173420>,  <37.915009, 29.848251, 36.592163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407776, 29.779354, 36.173420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288960, 30.042837, 36.449932>,  <37.217670, 30.200928, 36.615841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288960, 30.042837, 36.449932>,  <37.407776, 29.779354, 36.173420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288960, 30.042837, 36.449932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425609, 0.556730, -0.713378,
		-0.854765, -0.506118, 0.114981,
		-0.297040, 0.658708, 0.691282,
		37.199848, 30.240450, 36.657318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720428, 29.823500, 36.076931>,  <37.407776, 29.779354, 36.173420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720428, 29.823500, 36.076931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821194, 30.159910, 36.268436>,  <36.881653, 30.361757, 36.383339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821194, 30.159910, 36.268436>,  <36.720428, 29.823500, 36.076931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821194, 30.159910, 36.268436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373503, 0.540879, -0.753622,
		-0.892768, 0.011030, 0.450381,
		0.251915, 0.841028, 0.478760,
		36.896767, 30.412218, 36.412064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114880, 30.220934, 36.020409>,  <36.720428, 29.823500, 36.076931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114880, 30.220934, 36.020409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432003, 30.458822, 36.073719>,  <36.622276, 30.601555, 36.105705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432003, 30.458822, 36.073719>,  <36.114880, 30.220934, 36.020409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432003, 30.458822, 36.073719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186136, 0.444499, -0.876227,
		-0.580356, 0.669870, 0.463100,
		0.792806, 0.594723, 0.133281,
		36.669846, 30.637239, 36.113705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957870, 30.757410, 35.648048>,  <36.114880, 30.220934, 36.020409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957870, 30.757410, 35.648048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345703, 30.835697, 35.706852>,  <36.578403, 30.882669, 35.742134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345703, 30.835697, 35.706852>,  <35.957870, 30.757410, 35.648048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345703, 30.835697, 35.706852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029220, 0.688820, -0.724343,
		-0.243026, 0.698013, 0.673585,
		0.969580, 0.195717, 0.147005,
		36.636578, 30.894413, 35.750954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872307, 31.428204, 35.614964>,  <35.957870, 30.757410, 35.648048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872307, 31.428204, 35.614964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265747, 31.378271, 35.562904>,  <36.501812, 31.348310, 35.531670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265747, 31.378271, 35.562904>,  <35.872307, 31.428204, 35.614964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265747, 31.378271, 35.562904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007232, 0.748426, -0.663179,
		0.180196, 0.651364, 0.737057,
		0.983604, -0.124833, -0.130152,
		36.560829, 31.340822, 35.523857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224655, 32.076481, 35.715099>,  <35.872307, 31.428204, 35.614964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224655, 32.076481, 35.715099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466385, 31.847977, 35.492943>,  <36.611423, 31.710873, 35.359650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466385, 31.847977, 35.492943>,  <36.224655, 32.076481, 35.715099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466385, 31.847977, 35.492943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053084, 0.724394, -0.687340,
		0.794971, 0.385891, 0.468090,
		0.604320, -0.571263, -0.555387,
		36.647682, 31.676598, 35.326328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689148, 32.498959, 35.513813>,  <36.224655, 32.076481, 35.715099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689148, 32.498959, 35.513813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711292, 32.207954, 35.240273>,  <36.724579, 32.033352, 35.076149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711292, 32.207954, 35.240273>,  <36.689148, 32.498959, 35.513813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711292, 32.207954, 35.240273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021284, 0.685610, -0.727657,
		0.998239, 0.025731, 0.053443,
		0.055365, -0.727514, -0.683856,
		36.727901, 31.989700, 35.035114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275829, 32.692799, 35.113640>,  <36.689148, 32.498959, 35.513813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275829, 32.692799, 35.113640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031918, 32.462406, 34.895863>,  <36.885571, 32.324169, 34.765198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031918, 32.462406, 34.895863>,  <37.275829, 32.692799, 35.113640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031918, 32.462406, 34.895863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073774, 0.642697, -0.762560,
		0.789134, -0.505155, -0.349407,
		-0.609774, -0.575985, -0.544442,
		36.848984, 32.289612, 34.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.735477, 27.390167, 40.851147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347378, 27.294098, 40.838932>,  <38.114517, 27.236456, 40.831604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347378, 27.294098, 40.838932>,  <38.735477, 27.390167, 40.851147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347378, 27.294098, 40.838932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001026, 0.130205, -0.991487,
		0.242109, -0.961957, -0.126578,
		-0.970249, -0.240177, -0.030536,
		38.056301, 27.222046, 40.829773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703278, 26.973852, 40.286427>,  <38.735477, 27.390167, 40.851147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703278, 26.973852, 40.286427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336147, 27.113276, 40.362423>,  <38.115868, 27.196930, 40.408020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336147, 27.113276, 40.362423>,  <38.703278, 26.973852, 40.286427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336147, 27.113276, 40.362423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162690, 0.106294, -0.980935,
		-0.362107, -0.931241, -0.040853,
		-0.917829, 0.348557, 0.189993,
		38.060799, 27.217842, 40.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371037, 26.735405, 39.748112>,  <38.703278, 26.973852, 40.286427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371037, 26.735405, 39.748112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167633, 27.038017, 39.912590>,  <38.045593, 27.219585, 40.011276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167633, 27.038017, 39.912590>,  <38.371037, 26.735405, 39.748112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167633, 27.038017, 39.912590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210941, 0.353541, -0.911325,
		-0.834820, -0.550152, -0.020194,
		-0.508506, 0.756532, 0.411193,
		38.015079, 27.264977, 40.035950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876595, 26.883970, 39.268955>,  <38.371037, 26.735405, 39.748112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876595, 26.883970, 39.268955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881336, 27.217632, 39.489517>,  <37.884182, 27.417830, 39.621853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881336, 27.217632, 39.489517>,  <37.876595, 26.883970, 39.268955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881336, 27.217632, 39.489517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129685, 0.548065, -0.826321,
		-0.991484, -0.061711, 0.114675,
		0.011856, 0.834156, 0.551401,
		37.884892, 27.467878, 39.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361889, 27.263641, 39.047409>,  <37.876595, 26.883970, 39.268955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361889, 27.263641, 39.047409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.590763, 27.535625, 39.230824>,  <37.728088, 27.698816, 39.340874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.590763, 27.535625, 39.230824>,  <37.361889, 27.263641, 39.047409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590763, 27.535625, 39.230824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275885, 0.686109, -0.673158,
		-0.772330, 0.258665, 0.580171,
		0.572183, 0.679961, 0.458541,
		37.762417, 27.739614, 39.368385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930935, 27.930304, 38.964985>,  <37.361889, 27.263641, 39.047409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930935, 27.930304, 38.964985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314445, 28.019043, 39.036011>,  <37.544552, 28.072287, 39.078625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314445, 28.019043, 39.036011>,  <36.930935, 27.930304, 38.964985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314445, 28.019043, 39.036011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052552, 0.752537, -0.656449,
		-0.279256, 0.620058, 0.733175,
		0.958778, 0.221847, 0.177565,
		37.602077, 28.085596, 39.089279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881210, 28.610975, 38.857002>,  <36.930935, 27.930304, 38.964985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881210, 28.610975, 38.857002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279160, 28.594305, 38.893871>,  <37.517929, 28.584303, 38.915993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279160, 28.594305, 38.893871>,  <36.881210, 28.610975, 38.857002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279160, 28.594305, 38.893871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079071, 0.888683, -0.451653,
		-0.063089, 0.456624, 0.887420,
		0.994871, -0.041675, 0.092172,
		37.577621, 28.581802, 38.921524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054268, 29.251699, 39.035828>,  <36.881210, 28.610975, 38.857002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054268, 29.251699, 39.035828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384621, 29.097187, 38.871532>,  <37.582832, 29.004478, 38.772957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384621, 29.097187, 38.871532>,  <37.054268, 29.251699, 39.035828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384621, 29.097187, 38.871532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123735, 0.834867, -0.536364,
		0.550099, 0.392151, 0.737298,
		0.825882, -0.386283, -0.410737,
		37.632385, 28.981302, 38.748310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595295, 29.722168, 39.090996>,  <37.054268, 29.251699, 39.035828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595295, 29.722168, 39.090996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662666, 29.492296, 38.770653>,  <37.703091, 29.354374, 38.578445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662666, 29.492296, 38.770653>,  <37.595295, 29.722168, 39.090996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662666, 29.492296, 38.770653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071293, 0.803237, -0.591378,
		0.983132, 0.156703, 0.094320,
		0.168432, -0.574678, -0.800859,
		37.713196, 29.319893, 38.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385666, 29.688961, 39.224102>,  <37.595295, 29.722168, 39.090996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385666, 29.688961, 39.224102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526123, 30.004906, 39.425224>,  <38.610397, 30.194473, 39.545898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526123, 30.004906, 39.425224>,  <38.385666, 29.688961, 39.224102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526123, 30.004906, 39.425224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435873, -0.337373, 0.834382,
		0.828680, -0.512151, 0.225812,
		0.351147, 0.789861, 0.502807,
		38.631466, 30.241863, 39.576065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657661, 29.414984, 39.796864>,  <38.385666, 29.688961, 39.224102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657661, 29.414984, 39.796864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602234, 29.801605, 39.883190>,  <38.568977, 30.033577, 39.934986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602234, 29.801605, 39.883190>,  <38.657661, 29.414984, 39.796864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602234, 29.801605, 39.883190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346240, -0.251448, 0.903821,
		0.927857, 0.050514, 0.369501,
		-0.138566, 0.966552, 0.215818,
		38.560665, 30.091570, 39.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821247, 29.442213, 40.479229>,  <38.657661, 29.414984, 39.796864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821247, 29.442213, 40.479229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604042, 29.769836, 40.405174>,  <38.473717, 29.966410, 40.360741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604042, 29.769836, 40.405174>,  <38.821247, 29.442213, 40.479229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604042, 29.769836, 40.405174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328896, -0.004589, 0.944355,
		0.772632, 0.573692, 0.271876,
		-0.543016, 0.819058, -0.185139,
		38.441135, 30.015554, 40.349632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125282, 29.968817, 40.913795>,  <38.821247, 29.442213, 40.479229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125282, 29.968817, 40.913795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742882, 30.053146, 40.832203>,  <38.513439, 30.103745, 40.783249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742882, 30.053146, 40.832203>,  <39.125282, 29.968817, 40.913795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742882, 30.053146, 40.832203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152871, 0.235412, 0.959798,
		0.250369, 0.948754, -0.192826,
		-0.956005, 0.210826, -0.203977,
		38.456081, 30.116394, 40.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999889, 30.754490, 41.183018>,  <39.125282, 29.968817, 40.913795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999889, 30.754490, 41.183018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670681, 30.528288, 41.161690>,  <38.473156, 30.392567, 41.148891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670681, 30.528288, 41.161690>,  <38.999889, 30.754490, 41.183018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670681, 30.528288, 41.161690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264041, 0.297772, 0.917395,
		-0.502915, 0.769112, -0.394389,
		-0.823018, -0.565507, -0.053323,
		38.423775, 30.358635, 41.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637096, 30.908184, 41.764065>,  <38.999889, 30.754490, 41.183018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637096, 30.908184, 41.764065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351025, 30.649805, 41.657276>,  <38.179382, 30.494778, 41.593204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351025, 30.649805, 41.657276>,  <38.637096, 30.908184, 41.764065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351025, 30.649805, 41.657276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361725, 0.015229, 0.932160,
		-0.598062, 0.763229, -0.244548,
		-0.715176, -0.645948, -0.266971,
		38.136471, 30.456020, 41.577187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946735, 31.161791, 41.989391>,  <38.637096, 30.908184, 41.764065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946735, 31.161791, 41.989391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942093, 30.764151, 41.946247>,  <37.939308, 30.525566, 41.920361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942093, 30.764151, 41.946247>,  <37.946735, 31.161791, 41.989391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942093, 30.764151, 41.946247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429562, -0.092449, 0.898293,
		-0.902963, 0.056757, -0.425954,
		-0.011605, -0.994098, -0.107859,
		37.938610, 30.465921, 41.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311634, 30.922678, 42.261761>,  <37.946735, 31.161791, 41.989391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311634, 30.922678, 42.261761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535030, 30.590902, 42.266087>,  <37.669067, 30.391836, 42.268681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535030, 30.590902, 42.266087>,  <37.311634, 30.922678, 42.261761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535030, 30.590902, 42.266087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318046, -0.202074, 0.926290,
		-0.766117, -0.520763, -0.376657,
		0.558490, -0.829441, 0.010814,
		37.702576, 30.342070, 42.269329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799000, 30.538353, 42.506508>,  <37.311634, 30.922678, 42.261761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799000, 30.538353, 42.506508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129601, 30.317308, 42.549438>,  <37.327961, 30.184681, 42.575195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129601, 30.317308, 42.549438>,  <36.799000, 30.538353, 42.506508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129601, 30.317308, 42.549438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361830, -0.375437, 0.853303,
		-0.431256, -0.744085, -0.510251,
		0.826497, -0.552616, 0.107323,
		37.377552, 30.151525, 42.581635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644001, 29.778458, 42.566879>,  <36.799000, 30.538353, 42.506508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644001, 29.778458, 42.566879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000839, 29.827955, 42.740707>,  <37.214943, 29.857653, 42.845005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000839, 29.827955, 42.740707>,  <36.644001, 29.778458, 42.566879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000839, 29.827955, 42.740707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347747, -0.426072, 0.835185,
		0.288506, -0.896186, -0.337067,
		0.892097, 0.123743, 0.434571,
		37.268467, 29.865078, 42.871078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790619, 29.160295, 42.952702>,  <36.644001, 29.778458, 42.566879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790619, 29.160295, 42.952702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074512, 29.402189, 43.097237>,  <37.244850, 29.547325, 43.183960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.074512, 29.402189, 43.097237>,  <36.790619, 29.160295, 42.952702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074512, 29.402189, 43.097237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114315, -0.407267, 0.906127,
		0.695129, -0.684420, -0.219922,
		0.709738, 0.604734, 0.361342,
		37.287434, 29.583609, 43.205639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095619, 28.742535, 43.353428>,  <36.790619, 29.160295, 42.952702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095619, 28.742535, 43.353428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193775, 29.119949, 43.442440>,  <37.252670, 29.346399, 43.495846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193775, 29.119949, 43.442440>,  <37.095619, 28.742535, 43.353428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193775, 29.119949, 43.442440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181344, -0.180816, 0.966654,
		0.952312, -0.277562, 0.126735,
		0.245390, 0.943538, 0.222527,
		37.267391, 29.403011, 43.509197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555119, 28.736740, 44.002613>,  <37.095619, 28.742535, 43.353428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555119, 28.736740, 44.002613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381893, 29.094976, 43.961872>,  <37.277958, 29.309919, 43.937428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381893, 29.094976, 43.961872>,  <37.555119, 28.736740, 44.002613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381893, 29.094976, 43.961872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308062, -0.040871, 0.950488,
		0.847087, 0.442994, 0.293598,
		-0.433060, 0.895593, -0.101848,
		37.251976, 29.363655, 43.931316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716503, 29.053003, 44.505146>,  <37.555119, 28.736740, 44.002613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716503, 29.053003, 44.505146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385914, 29.244232, 44.386227>,  <37.187561, 29.358969, 44.314873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385914, 29.244232, 44.386227>,  <37.716503, 29.053003, 44.505146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385914, 29.244232, 44.386227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264915, 0.135711, 0.954674,
		0.496748, 0.867774, 0.014487,
		-0.826476, 0.478070, -0.297300,
		37.137970, 29.387653, 44.297035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.347801, 29.293882, 42.531292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681725, 29.190769, 42.725880>,  <33.882076, 29.128902, 42.842632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681725, 29.190769, 42.725880>,  <33.347801, 29.293882, 42.531292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681725, 29.190769, 42.725880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549945, 0.431761, -0.714942,
		-0.025739, 0.864367, 0.502202,
		0.834804, -0.257782, 0.486467,
		33.932167, 29.113434, 42.871819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635838, 29.843967, 42.656071>,  <33.347801, 29.293882, 42.531292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635838, 29.843967, 42.656071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967270, 29.626064, 42.707760>,  <34.166130, 29.495323, 42.738773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967270, 29.626064, 42.707760>,  <33.635838, 29.843967, 42.656071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967270, 29.626064, 42.707760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413814, 0.440411, -0.796741,
		0.377117, 0.713637, 0.590343,
		0.828577, -0.544757, 0.129227,
		34.215843, 29.462637, 42.746529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166286, 30.393099, 42.680378>,  <33.635838, 29.843967, 42.656071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166286, 30.393099, 42.680378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353310, 30.046114, 42.612381>,  <34.465523, 29.837923, 42.571583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353310, 30.046114, 42.612381>,  <34.166286, 30.393099, 42.680378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353310, 30.046114, 42.612381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474432, 0.408520, -0.779760,
		0.745859, 0.283933, 0.602559,
		0.467557, -0.867464, -0.169991,
		34.493576, 29.785875, 42.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938240, 30.611691, 42.555683>,  <34.166286, 30.393099, 42.680378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938240, 30.611691, 42.555683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879501, 30.247646, 42.400692>,  <34.844257, 30.029221, 42.307697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879501, 30.247646, 42.400692>,  <34.938240, 30.611691, 42.555683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879501, 30.247646, 42.400692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432185, 0.293321, -0.852748,
		0.889749, -0.292680, 0.350264,
		-0.146842, -0.910111, -0.387473,
		34.835449, 29.974613, 42.284451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640709, 30.332747, 42.362850>,  <34.938240, 30.611691, 42.555683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640709, 30.332747, 42.362850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345413, 30.179119, 42.141045>,  <35.168236, 30.086943, 42.007961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345413, 30.179119, 42.141045>,  <35.640709, 30.332747, 42.362850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345413, 30.179119, 42.141045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416476, 0.387136, -0.822602,
		0.530611, -0.838222, -0.125843,
		-0.738241, -0.384071, -0.554518,
		35.123940, 30.063898, 41.974689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973022, 30.070858, 41.725319>,  <35.640709, 30.332747, 42.362850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973022, 30.070858, 41.725319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590313, 30.013744, 41.623974>,  <35.360687, 29.979477, 41.563168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590313, 30.013744, 41.623974>,  <35.973022, 30.070858, 41.725319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590313, 30.013744, 41.623974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226062, 0.182970, -0.956775,
		0.182970, -0.972695, -0.142783,
		0.956775, 0.142783, 0.253367,
		35.303280, 29.970909, 41.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042503, 29.634369, 41.154278>,  <35.973022, 30.070858, 41.725319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042503, 29.634369, 41.154278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704281, 29.846231, 41.127430>,  <35.501347, 29.973349, 41.111320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704281, 29.846231, 41.127430>,  <36.042503, 29.634369, 41.154278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704281, 29.846231, 41.127430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185695, 0.173900, -0.967097,
		-0.500559, -0.830194, -0.245396,
		-0.845552, 0.529658, -0.067115,
		35.450615, 30.005129, 41.107296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685349, 29.502846, 40.637474>,  <36.042503, 29.634369, 41.154278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685349, 29.502846, 40.637474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510571, 29.860455, 40.677078>,  <35.405704, 30.075020, 40.700840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510571, 29.860455, 40.677078>,  <35.685349, 29.502846, 40.637474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510571, 29.860455, 40.677078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169708, 0.190036, -0.966998,
		-0.883334, -0.405723, -0.234758,
		-0.436945, 0.894022, 0.099011,
		35.379486, 30.128662, 40.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526180, 29.680170, 39.963284>,  <35.685349, 29.502846, 40.637474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526180, 29.680170, 39.963284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467991, 30.025568, 40.156452>,  <35.433079, 30.232807, 40.272354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467991, 30.025568, 40.156452>,  <35.526180, 29.680170, 39.963284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467991, 30.025568, 40.156452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118978, 0.499838, -0.857908,
		-0.982182, -0.067345, -0.175449,
		-0.145472, 0.863497, 0.482920,
		35.424351, 30.284616, 40.301327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170311, 29.961723, 39.509033>,  <35.526180, 29.680170, 39.963284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170311, 29.961723, 39.509033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294960, 30.250893, 39.755699>,  <35.369751, 30.424395, 39.903698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294960, 30.250893, 39.755699>,  <35.170311, 29.961723, 39.509033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294960, 30.250893, 39.755699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060589, 0.632540, -0.772154,
		-0.948272, 0.277984, 0.153313,
		0.311624, 0.722924, 0.616662,
		35.388447, 30.467770, 39.940697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713078, 30.537745, 39.569374>,  <35.170311, 29.961723, 39.509033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713078, 30.537745, 39.569374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062386, 30.699892, 39.677502>,  <35.271969, 30.797180, 39.742378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062386, 30.699892, 39.677502>,  <34.713078, 30.537745, 39.569374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062386, 30.699892, 39.677502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002145, 0.557999, -0.829839,
		-0.487230, 0.724095, 0.488154,
		0.873271, 0.405369, 0.270321,
		35.324368, 30.821503, 39.758598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643909, 31.249216, 39.451324>,  <34.713078, 30.537745, 39.569374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643909, 31.249216, 39.451324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038925, 31.215902, 39.504742>,  <35.275932, 31.195915, 39.536793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038925, 31.215902, 39.504742>,  <34.643909, 31.249216, 39.451324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038925, 31.215902, 39.504742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154440, 0.676213, -0.720336,
		-0.030313, 0.731984, 0.680648,
		0.987537, -0.083283, 0.133546,
		35.335186, 31.190918, 39.544804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951542, 31.842428, 39.741112>,  <34.643909, 31.249216, 39.451324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951542, 31.842428, 39.741112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208008, 31.646982, 39.504414>,  <35.361889, 31.529715, 39.362396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.208008, 31.646982, 39.504414>,  <34.951542, 31.842428, 39.741112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208008, 31.646982, 39.504414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060414, 0.736567, -0.673661,
		0.765019, 0.467679, 0.442743,
		0.641167, -0.488616, -0.591743,
		35.400356, 31.500397, 39.326889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116245, 32.329895, 39.351284>,  <34.951542, 31.842428, 39.741112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116245, 32.329895, 39.351284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301132, 32.028858, 39.163685>,  <35.412064, 31.848236, 39.051125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301132, 32.028858, 39.163685>,  <35.116245, 32.329895, 39.351284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301132, 32.028858, 39.163685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006136, 0.531591, -0.846979,
		0.886745, 0.388612, 0.250329,
		0.462219, -0.752590, -0.469001,
		35.439796, 31.803082, 39.022984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521053, 32.943264, 39.685097>,  <35.116245, 32.329895, 39.351284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521053, 32.943264, 39.685097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 33.341183, 39.706207>,  <35.465309, 33.579933, 39.718872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 33.341183, 39.706207>,  <35.521053, 32.943264, 39.685097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486214, 33.341183, 39.706207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652841, -0.097017, 0.751256,
		0.752470, 0.030979, 0.657897,
		-0.087101, 0.994800, 0.052778,
		35.460083, 33.639622, 39.722042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764820, 33.053989, 40.379280>,  <35.521053, 32.943264, 39.685097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764820, 33.053989, 40.379280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.538689, 33.365211, 40.269711>,  <35.403011, 33.551945, 40.203968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.538689, 33.365211, 40.269711>,  <35.764820, 33.053989, 40.379280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538689, 33.365211, 40.269711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327211, 0.093310, 0.940333,
		0.757193, 0.621224, 0.201839,
		-0.565324, 0.778058, -0.273925,
		35.369091, 33.598629, 40.187534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859486, 33.493881, 40.978008>,  <35.764820, 33.053989, 40.379280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859486, 33.493881, 40.978008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519707, 33.594780, 40.792614>,  <35.315842, 33.655319, 40.681377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519707, 33.594780, 40.792614>,  <35.859486, 33.493881, 40.978008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519707, 33.594780, 40.792614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515093, -0.205666, 0.832094,
		0.114570, 0.945554, 0.304633,
		-0.849443, 0.252247, -0.463485,
		35.264874, 33.670456, 40.653568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535259, 33.827141, 41.427677>,  <35.859486, 33.493881, 40.978008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535259, 33.827141, 41.427677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237556, 33.762718, 41.168404>,  <35.058937, 33.724064, 41.012840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237556, 33.762718, 41.168404>,  <35.535259, 33.827141, 41.427677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237556, 33.762718, 41.168404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620839, -0.191008, 0.760312,
		-0.246265, 0.968285, 0.042166,
		-0.744253, -0.161060, -0.648188,
		35.014282, 33.714401, 40.973946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917717, 34.217258, 41.608669>,  <35.535259, 33.827141, 41.427677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917717, 34.217258, 41.608669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786354, 33.907181, 41.392811>,  <34.707535, 33.721134, 41.263294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786354, 33.907181, 41.392811>,  <34.917717, 34.217258, 41.608669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786354, 33.907181, 41.392811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644675, -0.233599, 0.727891,
		-0.690319, 0.586943, -0.423033,
		-0.328410, -0.775196, -0.539646,
		34.687832, 33.674622, 41.230919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302284, 34.149857, 41.968521>,  <34.917717, 34.217258, 41.608669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302284, 34.149857, 41.968521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296906, 33.837509, 41.718704>,  <34.293678, 33.650101, 41.568813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296906, 33.837509, 41.718704>,  <34.302284, 34.149857, 41.968521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296906, 33.837509, 41.718704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673955, -0.454326, 0.582557,
		-0.738650, 0.428749, -0.520165,
		-0.013446, -0.780873, -0.624545,
		34.292873, 33.603249, 41.531342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627487, 33.918259, 41.878063>,  <34.302284, 34.149857, 41.968521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627487, 33.918259, 41.878063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849712, 33.594395, 41.802380>,  <33.983047, 33.400078, 41.756969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849712, 33.594395, 41.802380>,  <33.627487, 33.918259, 41.878063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849712, 33.594395, 41.802380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399204, -0.459353, 0.793493,
		-0.729373, -0.365302, -0.578419,
		0.555563, -0.809660, -0.189210,
		34.016380, 33.351498, 41.745617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112991, 33.364342, 41.870277>,  <33.627487, 33.918259, 41.878063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112991, 33.364342, 41.870277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478142, 33.233562, 41.968063>,  <33.697231, 33.155094, 42.026733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478142, 33.233562, 41.968063>,  <33.112991, 33.364342, 41.870277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478142, 33.233562, 41.968063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390101, -0.522122, 0.758426,
		-0.120321, -0.787716, -0.604174,
		0.912877, -0.326944, 0.244466,
		33.752007, 33.135479, 42.041405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983551, 32.678841, 42.146248>,  <33.112991, 33.364342, 41.870277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983551, 32.678841, 42.146248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351437, 32.765842, 42.276985>,  <33.572166, 32.818043, 42.355427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351437, 32.765842, 42.276985>,  <32.983551, 32.678841, 42.146248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351437, 32.765842, 42.276985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150959, -0.572589, 0.805824,
		0.362418, -0.790464, -0.493782,
		0.919709, 0.217504, 0.326844,
		33.627350, 32.831093, 42.375038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298939, 32.045574, 42.216751>,  <32.983551, 32.678841, 42.146248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298939, 32.045574, 42.216751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499813, 32.307407, 42.442787>,  <33.620338, 32.464508, 42.578411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499813, 32.307407, 42.442787>,  <33.298939, 32.045574, 42.216751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499813, 32.307407, 42.442787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019600, -0.644685, 0.764197,
		0.864537, -0.394846, -0.310923,
		0.502187, 0.654582, 0.565093,
		33.650471, 32.503780, 42.612316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868401, 31.665508, 42.420544>,  <33.298939, 32.045574, 42.216751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868401, 31.665508, 42.420544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826923, 31.968256, 42.678661>,  <33.802036, 32.149906, 42.833530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826923, 31.968256, 42.678661>,  <33.868401, 31.665508, 42.420544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826923, 31.968256, 42.678661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061507, -0.642666, 0.763674,
		0.992706, 0.118876, 0.020086,
		-0.103691, 0.756868, 0.645290,
		33.795815, 32.195316, 42.872250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322609, 31.500082, 42.913162>,  <33.868401, 31.665508, 42.420544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322609, 31.500082, 42.913162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091999, 31.766237, 43.102844>,  <33.953632, 31.925930, 43.216656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091999, 31.766237, 43.102844>,  <34.322609, 31.500082, 42.913162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091999, 31.766237, 43.102844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024294, -0.566156, 0.823940,
		0.816716, 0.486545, 0.310240,
		-0.576528, 0.665388, 0.474209,
		33.919041, 31.965853, 43.245106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576897, 31.538448, 43.634953>,  <34.322609, 31.500082, 42.913162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576897, 31.538448, 43.634953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195999, 31.659973, 43.647160>,  <33.967461, 31.732887, 43.654484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.195999, 31.659973, 43.647160>,  <34.576897, 31.538448, 43.634953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195999, 31.659973, 43.647160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148886, -0.549252, 0.822287,
		0.266582, 0.778473, 0.568255,
		-0.952243, 0.303812, 0.030517,
		33.910328, 31.751116, 43.656315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242542, 31.898520, 44.321678>,  <34.576897, 31.538448, 43.634953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242542, 31.898520, 44.321678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015896, 31.648655, 44.106735>,  <33.879910, 31.498737, 43.977772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015896, 31.648655, 44.106735>,  <34.242542, 31.898520, 44.321678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015896, 31.648655, 44.106735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026743, -0.665740, 0.745705,
		-0.823551, 0.408154, 0.393922,
		-0.566612, -0.624660, -0.537355,
		33.845913, 31.461256, 43.945530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541199, 32.241737, 44.945587>,  <34.242542, 31.898520, 44.321678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541199, 32.241737, 44.945587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790623, 32.164097, 45.248508>,  <34.940277, 32.117512, 45.430260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790623, 32.164097, 45.248508>,  <34.541199, 32.241737, 44.945587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790623, 32.164097, 45.248508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754195, 0.404398, -0.517351,
		-0.205834, 0.893750, 0.398553,
		0.623556, -0.194098, 0.757300,
		34.977688, 32.105865, 45.475700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838867, 32.819839, 45.158047>,  <34.541199, 32.241737, 44.945587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838867, 32.819839, 45.158047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101948, 32.552666, 45.297359>,  <35.259796, 32.392361, 45.380947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101948, 32.552666, 45.297359>,  <34.838867, 32.819839, 45.158047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101948, 32.552666, 45.297359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709048, 0.392827, -0.585609,
		0.254332, 0.632102, 0.731958,
		0.657698, -0.667932, 0.348282,
		35.299255, 32.352287, 45.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483337, 33.186279, 45.443111>,  <34.838867, 32.819839, 45.158047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483337, 33.186279, 45.443111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549351, 32.809555, 45.325977>,  <35.588959, 32.583519, 45.255695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549351, 32.809555, 45.325977>,  <35.483337, 33.186279, 45.443111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549351, 32.809555, 45.325977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728416, 0.316566, -0.607615,
		0.664961, -0.113025, 0.738277,
		0.165038, -0.941813, -0.292834,
		35.598862, 32.527012, 45.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080059, 33.278969, 45.497475>,  <35.483337, 33.186279, 45.443111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080059, 33.278969, 45.497475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021168, 32.941559, 45.290867>,  <35.985832, 32.739113, 45.166901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021168, 32.941559, 45.290867>,  <36.080059, 33.278969, 45.497475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021168, 32.941559, 45.290867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619728, 0.328331, -0.712837,
		0.770884, -0.425050, 0.474416,
		-0.147226, -0.843523, -0.516521,
		35.977001, 32.688503, 45.135910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790024, 33.117172, 45.223568>,  <36.080059, 33.278969, 45.497475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790024, 33.117172, 45.223568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526817, 32.925224, 44.991451>,  <36.368893, 32.810055, 44.852180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526817, 32.925224, 44.991451>,  <36.790024, 33.117172, 45.223568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526817, 32.925224, 44.991451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522524, 0.263905, -0.810755,
		0.542199, -0.836706, 0.077090,
		-0.658019, -0.479872, -0.580288,
		36.329411, 32.781261, 44.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252735, 32.801937, 44.761299>,  <36.790024, 33.117172, 45.223568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252735, 32.801937, 44.761299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891613, 32.769432, 44.592377>,  <36.674942, 32.749928, 44.491024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891613, 32.769432, 44.592377>,  <37.252735, 32.801937, 44.761299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891613, 32.769432, 44.592377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400515, 0.198803, -0.894463,
		0.156643, -0.976664, -0.146933,
		-0.902802, -0.081262, -0.422310,
		36.620773, 32.745052, 44.465683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368797, 32.405598, 44.256279>,  <37.252735, 32.801937, 44.761299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368797, 32.405598, 44.256279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029621, 32.601448, 44.175018>,  <36.826115, 32.718956, 44.126263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029621, 32.601448, 44.175018>,  <37.368797, 32.405598, 44.256279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029621, 32.601448, 44.175018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347849, 0.224760, -0.910211,
		-0.400001, -0.842468, -0.360898,
		-0.847939, 0.489623, -0.203147,
		36.775238, 32.748337, 44.114075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215378, 32.254528, 43.618076>,  <37.368797, 32.405598, 44.256279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215378, 32.254528, 43.618076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001331, 32.588558, 43.669151>,  <36.872906, 32.788975, 43.699799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001331, 32.588558, 43.669151>,  <37.215378, 32.254528, 43.618076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001331, 32.588558, 43.669151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262232, 0.307884, -0.914572,
		-0.803049, -0.455916, -0.383736,
		-0.535114, 0.835074, 0.127690,
		36.840797, 32.839081, 43.707458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850842, 32.287941, 43.084362>,  <37.215378, 32.254528, 43.618076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850842, 32.287941, 43.084362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903969, 32.659702, 43.222099>,  <36.935844, 32.882759, 43.304741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903969, 32.659702, 43.222099>,  <36.850842, 32.287941, 43.084362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903969, 32.659702, 43.222099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315427, 0.289721, -0.903641,
		-0.939609, 0.228636, -0.254678,
		0.132819, 0.929402, 0.344342,
		36.943813, 32.938522, 43.325401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549862, 32.707279, 42.580345>,  <36.850842, 32.287941, 43.084362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549862, 32.707279, 42.580345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788036, 32.959545, 42.779430>,  <36.930943, 33.110905, 42.898880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788036, 32.959545, 42.779430>,  <36.549862, 32.707279, 42.580345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788036, 32.959545, 42.779430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309372, 0.391739, -0.866504,
		-0.741444, 0.669929, 0.038148,
		0.595440, 0.630663, 0.497710,
		36.966667, 33.148743, 42.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483704, 33.336693, 42.295582>,  <36.549862, 32.707279, 42.580345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483704, 33.336693, 42.295582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835342, 33.402847, 42.474396>,  <37.046326, 33.442539, 42.581684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835342, 33.402847, 42.474396>,  <36.483704, 33.336693, 42.295582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835342, 33.402847, 42.474396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310604, 0.512623, -0.800464,
		-0.361548, 0.842534, 0.399274,
		0.879095, 0.165390, 0.447032,
		37.099072, 33.452465, 42.608505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685307, 34.167061, 42.088142>,  <36.483704, 33.336693, 42.295582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685307, 34.167061, 42.088142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970757, 33.913860, 42.208176>,  <37.142025, 33.761940, 42.280193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970757, 33.913860, 42.208176>,  <36.685307, 34.167061, 42.088142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970757, 33.913860, 42.208176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557935, 0.254540, -0.789885,
		0.423618, 0.731105, 0.534821,
		0.713622, -0.633005, 0.300081,
		37.184845, 33.723957, 42.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194118, 34.602898, 42.244186>,  <36.685307, 34.167061, 42.088142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194118, 34.602898, 42.244186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372597, 34.253895, 42.164555>,  <37.479683, 34.044491, 42.116776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372597, 34.253895, 42.164555>,  <37.194118, 34.602898, 42.244186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372597, 34.253895, 42.164555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643068, 0.467295, -0.606712,
		0.622390, 0.142694, 0.769590,
		0.446200, -0.872510, -0.199078,
		37.506458, 33.992142, 42.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949562, 34.688263, 42.379520>,  <37.194118, 34.602898, 42.244186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949562, 34.688263, 42.379520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906956, 34.393147, 42.112892>,  <37.881390, 34.216076, 41.952915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906956, 34.393147, 42.112892>,  <37.949562, 34.688263, 42.379520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906956, 34.393147, 42.112892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830174, 0.302968, -0.467998,
		0.547234, -0.603224, 0.580220,
		-0.106520, -0.737788, -0.666575,
		37.875000, 34.171810, 41.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.003845, 36.357529, 40.960213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058285, 36.635826, 40.678101>,  <26.090948, 36.802803, 40.508835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058285, 36.635826, 40.678101>,  <26.003845, 36.357529, 40.960213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058285, 36.635826, 40.678101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228133, -0.670761, -0.705716,
		-0.964071, 0.256944, 0.067433,
		0.136098, 0.695744, -0.705279,
		26.099113, 36.844551, 40.466518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527336, 36.255074, 40.543369>,  <26.003845, 36.357529, 40.960213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527336, 36.255074, 40.543369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797478, 36.458656, 40.329884>,  <25.959562, 36.580807, 40.201790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797478, 36.458656, 40.329884>,  <25.527336, 36.255074, 40.543369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797478, 36.458656, 40.329884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157105, -0.607795, -0.778398,
		-0.720566, 0.609544, -0.330516,
		0.675354, 0.508961, -0.533719,
		26.000084, 36.611343, 40.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162964, 36.459530, 39.871181>,  <25.527336, 36.255074, 40.543369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162964, 36.459530, 39.871181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557238, 36.482067, 39.807621>,  <25.793802, 36.495590, 39.769485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557238, 36.482067, 39.807621>,  <25.162964, 36.459530, 39.871181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557238, 36.482067, 39.807621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091477, -0.612963, -0.784798,
		-0.141622, 0.788100, -0.599034,
		0.985685, 0.056346, -0.158902,
		25.852943, 36.498970, 39.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216948, 36.730579, 39.190994>,  <25.162964, 36.459530, 39.871181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216948, 36.730579, 39.190994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546356, 36.522686, 39.281933>,  <25.744001, 36.397949, 39.336494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546356, 36.522686, 39.281933>,  <25.216948, 36.730579, 39.190994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546356, 36.522686, 39.281933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088342, -0.513362, -0.853613,
		0.560364, 0.682885, -0.468679,
		0.823522, -0.519738, 0.227342,
		25.793413, 36.366764, 39.350136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451805, 36.611813, 38.569492>,  <25.216948, 36.730579, 39.190994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451805, 36.611813, 38.569492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.699976, 36.387985, 38.789295>,  <25.848879, 36.253689, 38.921177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.699976, 36.387985, 38.789295>,  <25.451805, 36.611813, 38.569492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699976, 36.387985, 38.789295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178832, -0.581266, -0.793820,
		0.763604, 0.590775, -0.260564,
		0.620426, -0.559567, 0.549506,
		25.886105, 36.220116, 38.954147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218855, 36.716110, 38.370113>,  <25.451805, 36.611813, 38.569492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218855, 36.716110, 38.370113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198170, 36.347420, 38.523869>,  <26.185759, 36.126205, 38.616123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198170, 36.347420, 38.523869>,  <26.218855, 36.716110, 38.370113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198170, 36.347420, 38.523869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489771, -0.358844, -0.794579,
		0.870316, 0.147172, 0.469990,
		-0.051713, -0.921722, 0.384388,
		26.182655, 36.070904, 38.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840727, 36.371365, 38.222225>,  <26.218855, 36.716110, 38.370113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840727, 36.371365, 38.222225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596313, 36.067017, 38.309593>,  <26.449665, 35.884407, 38.362015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596313, 36.067017, 38.309593>,  <26.840727, 36.371365, 38.222225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596313, 36.067017, 38.309593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384401, -0.526406, -0.758375,
		0.692008, -0.379429, 0.614132,
		-0.611033, -0.760875, 0.218425,
		26.413004, 35.838753, 38.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232912, 35.901791, 38.267040>,  <26.840727, 36.371365, 38.222225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232912, 35.901791, 38.267040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880554, 35.723488, 38.203384>,  <26.669140, 35.616505, 38.165192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880554, 35.723488, 38.203384>,  <27.232912, 35.901791, 38.267040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880554, 35.723488, 38.203384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437651, -0.639050, -0.632516,
		0.180248, -0.626828, 0.758021,
		-0.880893, -0.445759, -0.159144,
		26.616287, 35.589760, 38.155640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439835, 35.258121, 38.136539>,  <27.232912, 35.901791, 38.267040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439835, 35.258121, 38.136539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058029, 35.243069, 38.018227>,  <26.828945, 35.234035, 37.947239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058029, 35.243069, 38.018227>,  <27.439835, 35.258121, 38.136539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058029, 35.243069, 38.018227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261598, -0.581696, -0.770192,
		-0.143067, -0.812535, 0.565083,
		-0.954515, -0.037636, -0.295779,
		26.771675, 35.231777, 37.929493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379721, 34.664749, 37.818398>,  <27.439835, 35.258121, 38.136539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379721, 34.664749, 37.818398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062235, 34.851883, 37.662884>,  <26.871744, 34.964161, 37.569576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062235, 34.851883, 37.662884>,  <27.379721, 34.664749, 37.818398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062235, 34.851883, 37.662884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168720, -0.444747, -0.879622,
		-0.584424, -0.763763, 0.274069,
		-0.793714, 0.467831, -0.388783,
		26.824120, 34.992233, 37.546249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990356, 34.179367, 37.442165>,  <27.379721, 34.664749, 37.818398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990356, 34.179367, 37.442165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857634, 34.517994, 37.275681>,  <26.778000, 34.721169, 37.175789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857634, 34.517994, 37.275681>,  <26.990356, 34.179367, 37.442165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857634, 34.517994, 37.275681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190857, -0.371838, -0.908466,
		-0.923838, -0.380873, -0.038194,
		-0.331808, 0.846565, -0.416210,
		26.758091, 34.771965, 37.150818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547729, 34.042709, 36.940937>,  <26.990356, 34.179367, 37.442165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547729, 34.042709, 36.940937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640818, 34.417156, 36.835468>,  <26.696671, 34.641827, 36.772186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640818, 34.417156, 36.835468>,  <26.547729, 34.042709, 36.940937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640818, 34.417156, 36.835468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167341, -0.305614, -0.937335,
		-0.958039, 0.174014, -0.227773,
		0.232721, 0.936119, -0.263670,
		26.710634, 34.697990, 36.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124273, 34.245846, 36.386322>,  <26.547729, 34.042709, 36.940937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124273, 34.245846, 36.386322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457623, 34.465462, 36.360878>,  <26.657633, 34.597229, 36.345612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457623, 34.465462, 36.360878>,  <26.124273, 34.245846, 36.386322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457623, 34.465462, 36.360878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186567, -0.387775, -0.902676,
		-0.520270, 0.740398, -0.425594,
		0.833374, 0.549037, -0.063614,
		26.707634, 34.630173, 36.341793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116781, 34.488121, 35.793644>,  <26.124273, 34.245846, 36.386322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116781, 34.488121, 35.793644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506187, 34.540276, 35.868763>,  <26.739832, 34.571568, 35.913834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506187, 34.540276, 35.868763>,  <26.116781, 34.488121, 35.793644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506187, 34.540276, 35.868763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211386, -0.200429, -0.956632,
		-0.087093, 0.970993, -0.222683,
		0.973515, 0.130387, 0.187798,
		26.798243, 34.579391, 35.925102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254831, 35.006809, 35.280548>,  <26.116781, 34.488121, 35.793644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254831, 35.006809, 35.280548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594421, 34.834072, 35.402367>,  <26.798176, 34.730431, 35.475456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594421, 34.834072, 35.402367>,  <26.254831, 35.006809, 35.280548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594421, 34.834072, 35.402367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188052, -0.291690, -0.937845,
		0.493836, 0.853480, -0.166429,
		0.848977, -0.431844, 0.304546,
		26.849115, 34.704517, 35.493729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720324, 35.199482, 34.808372>,  <26.254831, 35.006809, 35.280548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720324, 35.199482, 34.808372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882858, 34.870255, 34.967091>,  <26.980379, 34.672718, 35.062321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882858, 34.870255, 34.967091>,  <26.720324, 35.199482, 34.808372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882858, 34.870255, 34.967091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185521, -0.350898, -0.917852,
		0.894692, 0.446570, 0.010115,
		0.406336, -0.823071, 0.396793,
		27.004759, 34.623333, 35.086128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315775, 34.906372, 34.357719>,  <26.720324, 35.199482, 34.808372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315775, 34.906372, 34.357719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241175, 34.579838, 34.576374>,  <27.196415, 34.383915, 34.707565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241175, 34.579838, 34.576374>,  <27.315775, 34.906372, 34.357719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241175, 34.579838, 34.576374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197332, -0.576183, -0.793141,
		0.962433, -0.040053, 0.268548,
		-0.186501, -0.816339, 0.546634,
		27.185225, 34.334938, 34.740364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860058, 34.416073, 34.295395>,  <27.315775, 34.906372, 34.357719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860058, 34.416073, 34.295395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556086, 34.190830, 34.425266>,  <27.373703, 34.055683, 34.503189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556086, 34.190830, 34.425266>,  <27.860058, 34.416073, 34.295395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556086, 34.190830, 34.425266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189996, -0.670117, -0.717526,
		0.621618, -0.483581, 0.616230,
		-0.759929, -0.563109, 0.324679,
		27.328106, 34.021896, 34.522671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156067, 33.808620, 34.260536>,  <27.860058, 34.416073, 34.295395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156067, 33.808620, 34.260536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772177, 33.698479, 34.282818>,  <27.541842, 33.632393, 34.296185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772177, 33.698479, 34.282818>,  <28.156067, 33.808620, 34.260536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772177, 33.698479, 34.282818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153068, -0.678786, -0.718206,
		0.235574, -0.680755, 0.693597,
		-0.959727, -0.275359, 0.055702,
		27.484259, 33.615871, 34.299530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072044, 33.063667, 34.546688>,  <28.156067, 33.808620, 34.260536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072044, 33.063667, 34.546688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796623, 33.175098, 34.278870>,  <27.631371, 33.241959, 34.118179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796623, 33.175098, 34.278870>,  <28.072044, 33.063667, 34.546688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796623, 33.175098, 34.278870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334199, -0.697491, -0.633891,
		-0.643586, -0.660230, 0.387162,
		-0.688556, 0.278574, -0.669543,
		27.590057, 33.258671, 34.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721626, 33.392170, 34.595009>,  <28.072044, 33.063667, 34.546688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721626, 33.392170, 34.595009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119024, 33.369240, 34.555641>,  <29.357462, 33.355484, 34.532021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119024, 33.369240, 34.555641>,  <28.721626, 33.392170, 34.595009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119024, 33.369240, 34.555641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112914, 0.608857, 0.785203,
		0.014914, -0.791207, 0.611367,
		0.993493, -0.057321, -0.098419,
		29.417072, 33.352043, 34.526115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030981, 33.231007, 35.212006>,  <28.721626, 33.392170, 34.595009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030981, 33.231007, 35.212006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360725, 33.384514, 35.045559>,  <29.558573, 33.476620, 34.945690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360725, 33.384514, 35.045559>,  <29.030981, 33.231007, 35.212006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360725, 33.384514, 35.045559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166945, 0.537577, 0.826523,
		0.540914, -0.750809, 0.379076,
		0.824343, 0.383793, -0.416127,
		29.608034, 33.499645, 34.920727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673187, 33.305077, 35.755276>,  <29.030981, 33.231007, 35.212006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673187, 33.305077, 35.755276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692928, 33.565544, 35.452347>,  <29.704773, 33.721825, 35.270588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692928, 33.565544, 35.452347>,  <29.673187, 33.305077, 35.755276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692928, 33.565544, 35.452347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319683, 0.708060, 0.629646,
		0.946238, -0.273180, -0.173222,
		0.049355, 0.651171, -0.757324,
		29.707735, 33.760895, 35.225151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303837, 33.681053, 35.839710>,  <29.673187, 33.305077, 35.755276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303837, 33.681053, 35.839710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048967, 33.898544, 35.621216>,  <29.896046, 34.029041, 35.490120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048967, 33.898544, 35.621216>,  <30.303837, 33.681053, 35.839710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048967, 33.898544, 35.621216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116474, 0.768521, 0.629134,
		0.761870, 0.337244, -0.553010,
		-0.637172, 0.543730, -0.546232,
		29.857817, 34.061665, 35.457348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628258, 34.237835, 35.970043>,  <30.303837, 33.681053, 35.839710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628258, 34.237835, 35.970043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289200, 34.371559, 35.805248>,  <30.085764, 34.451794, 35.706371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289200, 34.371559, 35.805248>,  <30.628258, 34.237835, 35.970043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289200, 34.371559, 35.805248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042833, 0.730856, 0.681186,
		0.528828, 0.595052, -0.605189,
		-0.847647, 0.334309, -0.411985,
		30.034906, 34.471851, 35.681652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677847, 34.974449, 35.990669>,  <30.628258, 34.237835, 35.970043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677847, 34.974449, 35.990669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283707, 34.927238, 35.941425>,  <30.047222, 34.898911, 35.911880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283707, 34.927238, 35.941425>,  <30.677847, 34.974449, 35.990669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283707, 34.927238, 35.941425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169733, 0.749106, 0.640336,
		0.016642, 0.651850, -0.758165,
		-0.985350, -0.118029, -0.123108,
		29.988102, 34.891830, 35.904491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347044, 35.675587, 35.868996>,  <30.677847, 34.974449, 35.990669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347044, 35.675587, 35.868996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055723, 35.422104, 35.973293>,  <29.880930, 35.270012, 36.035870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055723, 35.422104, 35.973293>,  <30.347044, 35.675587, 35.868996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055723, 35.422104, 35.973293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297996, 0.635532, 0.712248,
		-0.617070, 0.441031, -0.651703,
		-0.728302, -0.633712, 0.260742,
		29.837233, 35.231991, 36.051517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686914, 36.065586, 35.897243>,  <30.347044, 35.675587, 35.868996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686914, 36.065586, 35.897243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634012, 35.746536, 36.132633>,  <29.602272, 35.555107, 36.273865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634012, 35.746536, 36.132633>,  <29.686914, 36.065586, 35.897243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634012, 35.746536, 36.132633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524323, 0.560121, 0.641366,
		-0.841187, -0.223725, -0.492293,
		-0.132254, -0.797629, 0.588470,
		29.594336, 35.507248, 36.309174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946077, 36.037891, 36.153576>,  <29.686914, 36.065586, 35.897243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946077, 36.037891, 36.153576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169603, 35.818626, 36.402489>,  <29.303719, 35.687065, 36.551838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169603, 35.818626, 36.402489>,  <28.946077, 36.037891, 36.153576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169603, 35.818626, 36.402489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, 0.431015, 0.782772,
		-0.697304, -0.716757, -0.005203,
		0.558815, -0.548166, 0.622287,
		29.337248, 35.654179, 36.589176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662054, 36.126976, 36.843021>,  <28.946077, 36.037891, 36.153576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662054, 36.126976, 36.843021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974636, 35.906086, 36.959206>,  <29.162186, 35.773552, 37.028915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974636, 35.906086, 36.959206>,  <28.662054, 36.126976, 36.843021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974636, 35.906086, 36.959206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151296, 0.283923, 0.946835,
		-0.605339, -0.783857, 0.138324,
		0.781456, -0.552229, 0.290465,
		29.209074, 35.740417, 37.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484018, 35.684776, 37.415188>,  <28.662054, 36.126976, 36.843021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484018, 35.684776, 37.415188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882862, 35.706127, 37.436817>,  <29.122168, 35.718937, 37.449795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882862, 35.706127, 37.436817>,  <28.484018, 35.684776, 37.415188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882862, 35.706127, 37.436817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065376, 0.240116, 0.968540,
		0.038711, -0.969276, 0.242911,
		0.997110, 0.053373, 0.054072,
		29.181995, 35.722141, 37.453037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789127, 35.233471, 37.929893>,  <28.484018, 35.684776, 37.415188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789127, 35.233471, 37.929893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013950, 35.555042, 37.852123>,  <29.148844, 35.747986, 37.805462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013950, 35.555042, 37.852123>,  <28.789127, 35.233471, 37.929893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013950, 35.555042, 37.852123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256031, 0.392630, 0.883340,
		0.786474, -0.446708, 0.426510,
		0.562055, 0.803924, -0.194423,
		29.182568, 35.796219, 37.793797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077545, 35.345692, 38.551792>,  <28.789127, 35.233471, 37.929893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077545, 35.345692, 38.551792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172329, 35.686607, 38.365265>,  <29.229200, 35.891155, 38.253349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172329, 35.686607, 38.365265>,  <29.077545, 35.345692, 38.551792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172329, 35.686607, 38.365265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255447, 0.517758, 0.816501,
		0.937335, -0.074360, 0.340403,
		0.236961, 0.852290, -0.466317,
		29.243418, 35.942295, 38.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592857, 35.719803, 39.022106>,  <29.077545, 35.345692, 38.551792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592857, 35.719803, 39.022106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431442, 35.984951, 38.769833>,  <29.334593, 36.144039, 38.618469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431442, 35.984951, 38.769833>,  <29.592857, 35.719803, 39.022106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431442, 35.984951, 38.769833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099447, 0.653439, 0.750418,
		0.909543, 0.365540, -0.197766,
		-0.403536, 0.662871, -0.630683,
		29.310381, 36.183811, 38.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957001, 36.307640, 39.210979>,  <29.592857, 35.719803, 39.022106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957001, 36.307640, 39.210979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609804, 36.405792, 39.038292>,  <29.401487, 36.464684, 38.934677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609804, 36.405792, 39.038292>,  <29.957001, 36.307640, 39.210979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609804, 36.405792, 39.038292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115671, 0.745560, 0.656323,
		0.482923, 0.619619, -0.618755,
		-0.867989, 0.245381, -0.431721,
		29.349407, 36.479408, 38.908775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928774, 37.011261, 39.410507>,  <29.957001, 36.307640, 39.210979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928774, 37.011261, 39.410507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565384, 36.959003, 39.251709>,  <29.347349, 36.927650, 39.156429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565384, 36.959003, 39.251709>,  <29.928774, 37.011261, 39.410507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565384, 36.959003, 39.251709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366440, 0.705774, 0.606304,
		0.200977, 0.696287, -0.689052,
		-0.908477, -0.130643, -0.396992,
		29.292841, 36.919811, 39.132610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687851, 37.692280, 39.171345>,  <29.928774, 37.011261, 39.410507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687851, 37.692280, 39.171345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349405, 37.482010, 39.206562>,  <29.146338, 37.355846, 39.227692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349405, 37.482010, 39.206562>,  <29.687851, 37.692280, 39.171345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349405, 37.482010, 39.206562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406683, 0.743502, 0.530861,
		-0.344524, 0.413363, -0.842873,
		-0.846116, -0.525676, 0.088047,
		29.095570, 37.324306, 39.232975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130053, 38.111721, 38.874863>,  <29.687851, 37.692280, 39.171345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130053, 38.111721, 38.874863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980370, 37.849644, 39.137371>,  <28.890560, 37.692398, 39.294876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980370, 37.849644, 39.137371>,  <29.130053, 38.111721, 38.874863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980370, 37.849644, 39.137371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519117, 0.734415, 0.437209,
		-0.768430, -0.177072, -0.614947,
		-0.374209, -0.655194, 0.656268,
		28.868107, 37.653084, 39.334251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496305, 38.277042, 38.994595>,  <29.130053, 38.111721, 38.874863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496305, 38.277042, 38.994595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532906, 38.053123, 39.324020>,  <28.554865, 37.918774, 39.521675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532906, 38.053123, 39.324020>,  <28.496305, 38.277042, 38.994595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532906, 38.053123, 39.324020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493979, 0.692587, 0.525650,
		-0.864646, -0.454920, -0.213156,
		0.091500, -0.559796, 0.823563,
		28.560356, 37.885185, 39.571091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782066, 38.141823, 39.174561>,  <28.496305, 38.277042, 38.994595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782066, 38.141823, 39.174561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011326, 38.061630, 39.492382>,  <28.148882, 38.013515, 39.683075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011326, 38.061630, 39.492382>,  <27.782066, 38.141823, 39.174561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011326, 38.061630, 39.492382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621470, 0.525642, 0.580926,
		-0.534114, -0.826745, 0.176677,
		0.573147, -0.200481, 0.794550,
		28.183270, 38.001484, 39.730747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332851, 37.809555, 39.760201>,  <27.782066, 38.141823, 39.174561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332851, 37.809555, 39.760201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659378, 37.983440, 39.912331>,  <27.855295, 38.087772, 40.003609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659378, 37.983440, 39.912331>,  <27.332851, 37.809555, 39.760201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659378, 37.983440, 39.912331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576421, 0.655231, 0.488274,
		-0.036943, -0.617816, 0.785455,
		0.816318, 0.434714, 0.380328,
		27.904274, 38.113853, 40.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300577, 37.827557, 40.477558>,  <27.332851, 37.809555, 39.760201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300577, 37.827557, 40.477558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490093, 38.138916, 40.312817>,  <27.603802, 38.325729, 40.213970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490093, 38.138916, 40.312817>,  <27.300577, 37.827557, 40.477558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490093, 38.138916, 40.312817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654510, 0.624145, 0.426685,
		0.589186, 0.067403, 0.805181,
		0.473790, 0.778396, -0.411853,
		27.632229, 38.372437, 40.189259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.469372, 30.399275, 45.099758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142029, 30.214909, 44.962444>,  <36.945621, 30.104290, 44.880058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142029, 30.214909, 44.962444>,  <37.469372, 30.399275, 45.099758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142029, 30.214909, 44.962444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, -0.139268, 0.938708,
		-0.480472, 0.876449, -0.031367,
		-0.818362, -0.460914, -0.343282,
		36.896519, 30.076633, 44.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952888, 30.554485, 45.466900>,  <37.469372, 30.399275, 45.099758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952888, 30.554485, 45.466900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779495, 30.235254, 45.299488>,  <36.675461, 30.043715, 45.199043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779495, 30.235254, 45.299488>,  <36.952888, 30.554485, 45.466900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779495, 30.235254, 45.299488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365967, -0.268504, 0.891052,
		-0.823505, 0.539422, -0.175678,
		-0.433483, -0.798078, -0.418525,
		36.649452, 29.995831, 45.173931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213154, 30.557520, 45.617283>,  <36.952888, 30.554485, 45.466900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213154, 30.557520, 45.617283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309692, 30.176910, 45.541016>,  <36.367615, 29.948545, 45.495255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309692, 30.176910, 45.541016>,  <36.213154, 30.557520, 45.617283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309692, 30.176910, 45.541016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593707, -0.300193, 0.746590,
		-0.767635, -0.066986, -0.637377,
		0.241347, -0.951524, -0.190668,
		36.382095, 29.891453, 45.483814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602997, 30.125572, 45.693935>,  <36.213154, 30.557520, 45.617283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602997, 30.125572, 45.693935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892448, 29.849554, 45.699631>,  <36.066120, 29.683943, 45.703049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892448, 29.849554, 45.699631>,  <35.602997, 30.125572, 45.693935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892448, 29.849554, 45.699631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578254, -0.594868, 0.558350,
		-0.376815, -0.412272, -0.829483,
		0.723625, -0.690046, 0.014243,
		36.109535, 29.642540, 45.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197983, 29.499523, 45.831387>,  <35.602997, 30.125572, 45.693935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197983, 29.499523, 45.831387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569637, 29.387896, 45.928402>,  <35.792629, 29.320919, 45.986610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569637, 29.387896, 45.928402>,  <35.197983, 29.499523, 45.831387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569637, 29.387896, 45.928402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368989, -0.658271, 0.656145,
		-0.023454, -0.699143, -0.714597,
		0.929138, -0.279068, 0.242537,
		35.848377, 29.304174, 46.001163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266216, 28.668566, 46.008598>,  <35.197983, 29.499523, 45.831387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266216, 28.668566, 46.008598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572659, 28.861372, 46.178650>,  <35.756523, 28.977057, 46.280682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572659, 28.861372, 46.178650>,  <35.266216, 28.668566, 46.008598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572659, 28.861372, 46.178650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211941, -0.435001, 0.875131,
		0.606760, -0.760549, -0.231100,
		0.766110, 0.482015, 0.425133,
		35.802490, 29.005976, 46.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587051, 28.199415, 46.476536>,  <35.266216, 28.668566, 46.008598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587051, 28.199415, 46.476536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704468, 28.553713, 46.620365>,  <35.774918, 28.766291, 46.706665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704468, 28.553713, 46.620365>,  <35.587051, 28.199415, 46.476536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704468, 28.553713, 46.620365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199939, -0.310941, 0.929161,
		0.934804, -0.344641, 0.085820,
		0.293542, 0.885742, 0.359576,
		35.792530, 28.819435, 46.728237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080917, 28.137527, 47.062263>,  <35.587051, 28.199415, 46.476536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080917, 28.137527, 47.062263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944275, 28.510979, 47.105415>,  <35.862289, 28.735050, 47.131306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944275, 28.510979, 47.105415>,  <36.080917, 28.137527, 47.062263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944275, 28.510979, 47.105415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056107, -0.134843, 0.989277,
		0.938167, 0.331891, 0.098446,
		-0.341607, 0.933630, 0.107883,
		35.841793, 28.791067, 47.137779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579697, 28.330038, 47.580326>,  <36.080917, 28.137527, 47.062263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579697, 28.330038, 47.580326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257824, 28.567257, 47.569160>,  <36.064701, 28.709587, 47.562462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257824, 28.567257, 47.569160>,  <36.579697, 28.330038, 47.580326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257824, 28.567257, 47.569160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162468, -0.174738, 0.971118,
		0.571039, 0.785980, 0.236960,
		-0.804685, 0.593045, -0.027914,
		36.016418, 28.745171, 47.560787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574696, 28.650537, 48.292492>,  <36.579697, 28.330038, 47.580326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574696, 28.650537, 48.292492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215431, 28.752386, 48.149120>,  <35.999874, 28.813496, 48.063095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215431, 28.752386, 48.149120>,  <36.574696, 28.650537, 48.292492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215431, 28.752386, 48.149120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387141, -0.071599, 0.919236,
		0.208396, 0.964386, 0.162882,
		-0.898161, 0.254623, -0.358433,
		35.945984, 28.828773, 48.041592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196316, 29.248016, 48.686787>,  <36.574696, 28.650537, 48.292492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196316, 29.248016, 48.686787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905987, 29.024933, 48.525719>,  <35.731789, 28.891083, 48.429077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905987, 29.024933, 48.525719>,  <36.196316, 29.248016, 48.686787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905987, 29.024933, 48.525719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403247, -0.129280, 0.905913,
		-0.557293, 0.819907, -0.131060,
		-0.725821, -0.557709, -0.402672,
		35.688240, 28.857620, 48.404919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623371, 29.477797, 48.965015>,  <36.196316, 29.248016, 48.686787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623371, 29.477797, 48.965015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526413, 29.114033, 48.829830>,  <35.468239, 28.895775, 48.748718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526413, 29.114033, 48.829830>,  <35.623371, 29.477797, 48.965015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526413, 29.114033, 48.829830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371677, -0.234728, 0.898198,
		-0.896159, 0.343333, -0.281109,
		-0.242397, -0.909409, -0.337963,
		35.453693, 28.841209, 48.728443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971222, 29.310032, 49.198681>,  <35.623371, 29.477797, 48.965015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971222, 29.310032, 49.198681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148193, 28.955751, 49.142410>,  <35.254375, 28.743183, 49.108650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148193, 28.955751, 49.142410>,  <34.971222, 29.310032, 49.198681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148193, 28.955751, 49.142410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236332, -0.266466, 0.934421,
		-0.865104, -0.380168, -0.327212,
		0.442428, -0.885702, -0.140675,
		35.280922, 28.690041, 49.100208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500267, 28.826012, 49.415199>,  <34.971222, 29.310032, 49.198681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500267, 28.826012, 49.415199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883289, 28.712471, 49.435265>,  <35.113102, 28.644346, 49.447304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883289, 28.712471, 49.435265>,  <34.500267, 28.826012, 49.415199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883289, 28.712471, 49.435265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073865, -0.073427, 0.994561,
		-0.278628, -0.956052, -0.091277,
		0.957554, -0.283855, 0.050160,
		35.170555, 28.627316, 49.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938709, 28.439869, 49.594212>,  <34.500267, 28.826012, 49.415199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938709, 28.439869, 49.594212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584702, 28.623636, 49.624344>,  <33.372295, 28.733896, 49.642422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584702, 28.623636, 49.624344>,  <33.938709, 28.439869, 49.594212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584702, 28.623636, 49.624344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201180, 0.523322, -0.828046,
		-0.419838, -0.717684, -0.555576,
		-0.885021, 0.459416, 0.075327,
		33.319195, 28.761461, 49.646942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422192, 28.363621, 48.976189>,  <33.938709, 28.439869, 49.594212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422192, 28.363621, 48.976189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334030, 28.709341, 49.157032>,  <33.281132, 28.916773, 49.265537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334030, 28.709341, 49.157032>,  <33.422192, 28.363621, 48.976189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334030, 28.709341, 49.157032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214577, 0.495118, -0.841911,
		-0.951513, -0.088551, -0.294587,
		-0.220408, 0.864301, 0.452111,
		33.267906, 28.968632, 49.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052517, 28.828279, 48.428391>,  <33.422192, 28.363621, 48.976189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052517, 28.828279, 48.428391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201042, 29.052073, 48.724796>,  <33.290157, 29.186348, 48.902641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201042, 29.052073, 48.724796>,  <33.052517, 28.828279, 48.428391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201042, 29.052073, 48.724796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252469, 0.707169, -0.660433,
		-0.893525, 0.432311, 0.121329,
		0.371313, 0.559481, 0.741018,
		33.312435, 29.219917, 48.947102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678596, 29.445553, 48.435272>,  <33.052517, 28.828279, 48.428391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678596, 29.445553, 48.435272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997456, 29.573772, 48.639938>,  <33.188770, 29.650703, 48.762737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997456, 29.573772, 48.639938>,  <32.678596, 29.445553, 48.435272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997456, 29.573772, 48.639938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117901, 0.748481, -0.652592,
		-0.592159, 0.580539, 0.558858,
		0.797150, 0.320548, 0.511666,
		33.236599, 29.669937, 48.793438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543926, 30.109632, 48.506340>,  <32.678596, 29.445553, 48.435272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543926, 30.109632, 48.506340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939842, 30.062660, 48.538673>,  <33.177391, 30.034477, 48.558075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939842, 30.062660, 48.538673>,  <32.543926, 30.109632, 48.506340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939842, 30.062660, 48.538673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141996, 0.862474, -0.485774,
		-0.012672, 0.492290, 0.870339,
		0.989786, -0.117429, 0.080832,
		33.236778, 30.027431, 48.562923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843502, 30.800402, 48.670452>,  <32.543926, 30.109632, 48.506340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843502, 30.800402, 48.670452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143940, 30.575933, 48.531345>,  <33.324203, 30.441252, 48.447880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143940, 30.575933, 48.531345>,  <32.843502, 30.800402, 48.670452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143940, 30.575933, 48.531345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381667, 0.798906, -0.464843,
		0.538689, 0.216411, 0.814236,
		0.751095, -0.561173, -0.347765,
		33.369270, 30.407581, 48.427017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347885, 31.290897, 48.704014>,  <32.843502, 30.800402, 48.670452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347885, 31.290897, 48.704014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494423, 31.009836, 48.460026>,  <33.582348, 30.841200, 48.313633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494423, 31.009836, 48.460026>,  <33.347885, 31.290897, 48.704014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494423, 31.009836, 48.460026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416932, 0.710015, -0.567491,
		0.831838, -0.046417, 0.553073,
		0.366349, -0.702655, -0.609971,
		33.604328, 30.799040, 48.277035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154396, 31.342443, 48.610409>,  <33.347885, 31.290897, 48.704014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154396, 31.342443, 48.610409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021366, 31.146084, 48.288315>,  <33.941547, 31.028267, 48.095058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021366, 31.146084, 48.288315>,  <34.154396, 31.342443, 48.610409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021366, 31.146084, 48.288315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426718, 0.683107, -0.592685,
		0.841015, -0.540722, -0.017707,
		-0.332574, -0.490901, -0.805239,
		33.921593, 30.998814, 48.046741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723465, 31.328281, 48.214931>,  <34.154396, 31.342443, 48.610409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723465, 31.328281, 48.214931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410442, 31.254665, 47.977028>,  <34.222630, 31.210495, 47.834286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410442, 31.254665, 47.977028>,  <34.723465, 31.328281, 48.214931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410442, 31.254665, 47.977028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412810, 0.561722, -0.716977,
		0.466043, -0.806595, -0.363604,
		-0.782555, -0.184043, -0.594758,
		34.175674, 31.199453, 47.798599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050102, 31.127460, 47.613949>,  <34.723465, 31.328281, 48.214931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050102, 31.127460, 47.613949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687328, 31.239962, 47.488495>,  <34.469666, 31.307463, 47.413223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687328, 31.239962, 47.488495>,  <35.050102, 31.127460, 47.613949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687328, 31.239962, 47.488495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379662, 0.223056, -0.897832,
		-0.182561, -0.933350, -0.309078,
		-0.906934, 0.281255, -0.313636,
		34.415249, 31.324337, 47.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863407, 30.751949, 46.986233>,  <35.050102, 31.127460, 47.613949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863407, 30.751949, 46.986233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637787, 31.081469, 46.963608>,  <34.502415, 31.279181, 46.950031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637787, 31.081469, 46.963608>,  <34.863407, 30.751949, 46.986233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637787, 31.081469, 46.963608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518066, 0.299709, -0.801113,
		-0.643004, -0.481173, -0.595834,
		-0.564051, 0.823800, -0.056565,
		34.468571, 31.328609, 46.946640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607639, 30.884693, 46.314934>,  <34.863407, 30.751949, 46.986233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607639, 30.884693, 46.314934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581219, 31.254829, 46.464272>,  <34.565365, 31.476912, 46.553875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581219, 31.254829, 46.464272>,  <34.607639, 30.884693, 46.314934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581219, 31.254829, 46.464272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514358, 0.352192, -0.781919,
		-0.855028, 0.140385, -0.499218,
		-0.066050, 0.925339, 0.373342,
		34.561405, 31.532431, 46.576275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378635, 31.183853, 45.744884>,  <34.607639, 30.884693, 46.314934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378635, 31.183853, 45.744884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524002, 31.454865, 46.000660>,  <34.611221, 31.617472, 46.154125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524002, 31.454865, 46.000660>,  <34.378635, 31.183853, 45.744884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524002, 31.454865, 46.000660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553674, 0.394928, -0.733128,
		-0.749247, 0.620475, -0.231604,
		0.363421, 0.677527, 0.639439,
		34.633030, 31.658123, 46.192493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241692, 31.739700, 45.377979>,  <34.378635, 31.183853, 45.744884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241692, 31.739700, 45.377979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529270, 31.831005, 45.640587>,  <34.701817, 31.885788, 45.798149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529270, 31.831005, 45.640587>,  <34.241692, 31.739700, 45.377979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529270, 31.831005, 45.640587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546480, 0.398029, -0.736839,
		-0.429503, 0.888521, 0.161422,
		0.718948, 0.228261, 0.656514,
		34.744953, 31.899483, 45.837540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439259, 31.850592, 45.216125>,  <34.241692, 31.739700, 45.377979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439259, 31.850592, 45.216125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259647, 31.677105, 44.903648>,  <33.151878, 31.573013, 44.716164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259647, 31.677105, 44.903648>,  <33.439259, 31.850592, 45.216125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259647, 31.677105, 44.903648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180027, -0.812446, 0.554547,
		-0.875192, 0.389645, 0.286734,
		-0.449032, -0.433715, -0.781192,
		33.124939, 31.546989, 44.669292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775887, 31.754841, 45.456657>,  <33.439259, 31.850592, 45.216125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775887, 31.754841, 45.456657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867123, 31.487116, 45.173817>,  <32.921864, 31.326481, 45.004112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867123, 31.487116, 45.173817>,  <32.775887, 31.754841, 45.456657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867123, 31.487116, 45.173817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311603, -0.738231, 0.598263,
		-0.922431, 0.083879, -0.376942,
		0.228088, -0.669312, -0.707105,
		32.935551, 31.286322, 44.961685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113605, 31.396135, 45.493397>,  <32.775887, 31.754841, 45.456657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113605, 31.396135, 45.493397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366730, 31.144270, 45.313141>,  <32.518604, 30.993151, 45.204987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366730, 31.144270, 45.313141>,  <32.113605, 31.396135, 45.493397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366730, 31.144270, 45.313141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297296, -0.734963, 0.609462,
		-0.714954, -0.251705, -0.652292,
		0.632816, -0.629661, -0.450634,
		32.556572, 30.955370, 45.177948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690084, 30.760685, 45.312466>,  <32.113605, 31.396135, 45.493397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690084, 30.760685, 45.312466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071407, 30.640106, 45.305115>,  <32.300201, 30.567759, 45.300705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071407, 30.640106, 45.305115>,  <31.690084, 30.760685, 45.312466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071407, 30.640106, 45.305115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277376, -0.898003, 0.341544,
		-0.119461, -0.320499, -0.939686,
		0.953306, -0.301448, -0.018377,
		32.357399, 30.549671, 45.299603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709366, 30.054525, 44.960670>,  <31.690084, 30.760685, 45.312466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709366, 30.054525, 44.960670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.049297, 30.092817, 45.167988>,  <32.253254, 30.115793, 45.292377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.049297, 30.092817, 45.167988>,  <31.709366, 30.054525, 44.960670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049297, 30.092817, 45.167988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249232, -0.793488, 0.555211,
		0.464412, -0.601009, -0.650468,
		0.849827, 0.095729, 0.518296,
		32.304245, 30.121536, 45.323475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877691, 29.365719, 45.104282>,  <31.709366, 30.054525, 44.960670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877691, 29.365719, 45.104282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067936, 29.597475, 45.369038>,  <32.182083, 29.736528, 45.527889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067936, 29.597475, 45.369038>,  <31.877691, 29.365719, 45.104282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067936, 29.597475, 45.369038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196458, -0.663472, 0.721948,
		0.857436, -0.473401, -0.201729,
		0.475613, 0.579393, 0.661889,
		32.210621, 29.771294, 45.567604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295788, 28.977549, 45.570187>,  <31.877691, 29.365719, 45.104282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295788, 28.977549, 45.570187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238743, 29.313078, 45.780342>,  <32.204517, 29.514397, 45.906437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238743, 29.313078, 45.780342>,  <32.295788, 28.977549, 45.570187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238743, 29.313078, 45.780342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352053, -0.539091, 0.765140,
		0.925051, -0.075845, 0.372193,
		-0.142614, 0.838825, 0.525388,
		32.195957, 29.564726, 45.937958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952080, 28.654249, 45.641281>,  <32.295788, 28.977549, 45.570187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952080, 28.654249, 45.641281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881874, 28.332977, 45.413563>,  <32.839748, 28.140215, 45.276932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881874, 28.332977, 45.413563>,  <32.952080, 28.654249, 45.641281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881874, 28.332977, 45.413563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570461, 0.388319, -0.723728,
		0.802352, -0.451787, 0.390026,
		-0.175517, -0.803179, -0.569295,
		32.829220, 28.092024, 45.242775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647163, 28.320211, 45.430340>,  <32.952080, 28.654249, 45.641281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647163, 28.320211, 45.430340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355518, 28.258274, 45.163681>,  <33.180531, 28.221111, 45.003685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355518, 28.258274, 45.163681>,  <33.647163, 28.320211, 45.430340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355518, 28.258274, 45.163681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601333, 0.320156, -0.732051,
		0.326789, -0.934624, -0.140313,
		-0.729114, -0.154852, -0.666644,
		33.136784, 28.211821, 44.963688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017365, 28.128832, 44.854622>,  <33.647163, 28.320211, 45.430340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017365, 28.128832, 44.854622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650173, 28.187557, 44.707241>,  <33.429859, 28.222792, 44.618813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650173, 28.187557, 44.707241>,  <34.017365, 28.128832, 44.854622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650173, 28.187557, 44.707241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392284, 0.198958, -0.898070,
		-0.058542, -0.968949, -0.240232,
		-0.917979, 0.146814, -0.368455,
		33.374779, 28.231602, 44.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056095, 27.769331, 44.213825>,  <34.017365, 28.128832, 44.854622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056095, 27.769331, 44.213825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729507, 27.999599, 44.195988>,  <33.533554, 28.137760, 44.185287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729507, 27.999599, 44.195988>,  <34.056095, 27.769331, 44.213825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729507, 27.999599, 44.195988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154917, 0.144008, -0.977375,
		-0.556225, -0.804900, -0.206759,
		-0.816465, 0.575671, -0.044592,
		33.484570, 28.172300, 44.182610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732655, 27.660118, 43.598545>,  <34.056095, 27.769331, 44.213825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732655, 27.660118, 43.598545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605621, 28.028330, 43.689556>,  <33.529400, 28.249256, 43.744164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605621, 28.028330, 43.689556>,  <33.732655, 27.660118, 43.598545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605621, 28.028330, 43.689556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407230, 0.349101, -0.843974,
		-0.856331, -0.175378, -0.485736,
		-0.317585, 0.920528, 0.227527,
		33.510345, 28.304487, 43.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428600, 27.935667, 42.970482>,  <33.732655, 27.660118, 43.598545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428600, 27.935667, 42.970482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543884, 28.233290, 43.211582>,  <33.613056, 28.411863, 43.356243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543884, 28.233290, 43.211582>,  <33.428600, 27.935667, 42.970482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543884, 28.233290, 43.211582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382386, 0.487667, -0.784832,
		-0.877903, 0.456683, -0.143966,
		0.288212, 0.744057, 0.602754,
		33.630348, 28.456507, 43.392410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236103, 28.507122, 42.683109>,  <33.428600, 27.935667, 42.970482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236103, 28.507122, 42.683109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538059, 28.638552, 42.910152>,  <33.719234, 28.717409, 43.046379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538059, 28.638552, 42.910152>,  <33.236103, 28.507122, 42.683109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538059, 28.638552, 42.910152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332154, 0.554724, -0.762860,
		-0.565521, 0.764409, 0.309620,
		0.754890, 0.328572, 0.567610,
		33.764526, 28.737123, 43.080437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.127083, 27.015102, 47.110214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192402, 27.371284, 46.940308>,  <35.231594, 27.584993, 46.838364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192402, 27.371284, 46.940308>,  <35.127083, 27.015102, 47.110214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192402, 27.371284, 46.940308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367126, -0.454467, -0.811590,
		-0.915725, -0.023411, -0.401122,
		0.163296, 0.890456, -0.424762,
		35.241390, 27.638422, 46.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753792, 26.968445, 46.560707>,  <35.127083, 27.015102, 47.110214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753792, 26.968445, 46.560707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075951, 27.205242, 46.548817>,  <35.269245, 27.347321, 46.541683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075951, 27.205242, 46.548817>,  <34.753792, 26.968445, 46.560707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075951, 27.205242, 46.548817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276480, -0.419554, -0.864600,
		-0.524307, 0.688127, -0.501581,
		0.805395, 0.591993, -0.029721,
		35.317570, 27.382839, 46.539902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834351, 27.170353, 45.923233>,  <34.753792, 26.968445, 46.560707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834351, 27.170353, 45.923233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.187313, 27.202919, 46.108589>,  <35.399090, 27.222458, 46.219803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.187313, 27.202919, 46.108589>,  <34.834351, 27.170353, 45.923233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187313, 27.202919, 46.108589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460785, -0.348587, -0.816189,
		0.095083, 0.933734, -0.345110,
		0.882404, 0.081416, 0.463395,
		35.452034, 27.227345, 46.247608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265648, 27.572426, 45.549797>,  <34.834351, 27.170353, 45.923233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265648, 27.572426, 45.549797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485325, 27.313635, 45.761383>,  <35.617130, 27.158360, 45.888336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485325, 27.313635, 45.761383>,  <35.265648, 27.572426, 45.549797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485325, 27.313635, 45.761383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550905, -0.195682, -0.811303,
		0.628404, 0.736973, 0.248955,
		0.549193, -0.646977, 0.528969,
		35.650082, 27.119541, 45.920074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009701, 27.708618, 45.313633>,  <35.265648, 27.572426, 45.549797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009701, 27.708618, 45.313633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.005833, 27.362381, 45.513893>,  <36.003513, 27.154638, 45.634048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.005833, 27.362381, 45.513893>,  <36.009701, 27.708618, 45.313633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005833, 27.362381, 45.513893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778148, -0.320956, -0.539882,
		0.628006, 0.384360, 0.676665,
		-0.009671, -0.865595, 0.500651,
		36.002930, 27.102703, 45.664089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702713, 27.603151, 45.565521>,  <36.009701, 27.708618, 45.313633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702713, 27.603151, 45.565521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.497707, 27.267664, 45.491898>,  <36.374702, 27.066372, 45.447723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.497707, 27.267664, 45.491898>,  <36.702713, 27.603151, 45.565521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497707, 27.267664, 45.491898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605957, -0.201391, -0.769583,
		0.608395, -0.505956, 0.611443,
		-0.512515, -0.838719, -0.184062,
		36.343952, 27.016048, 45.436680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223938, 27.172501, 45.330334>,  <36.702713, 27.603151, 45.565521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223938, 27.172501, 45.330334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.907001, 26.969828, 45.194408>,  <36.716839, 26.848225, 45.112854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.907001, 26.969828, 45.194408>,  <37.223938, 27.172501, 45.330334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907001, 26.969828, 45.194408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535977, -0.312062, -0.784440,
		0.291418, -0.803674, 0.518829,
		-0.792341, -0.506681, -0.339810,
		36.669300, 26.817823, 45.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500286, 26.550814, 45.144070>,  <37.223938, 27.172501, 45.330334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500286, 26.550814, 45.144070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140903, 26.560631, 44.968719>,  <36.925274, 26.566521, 44.863510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140903, 26.560631, 44.968719>,  <37.500286, 26.550814, 45.144070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140903, 26.560631, 44.968719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432858, -0.117715, -0.893743,
		-0.073532, -0.992744, 0.095141,
		-0.898458, 0.024537, -0.438373,
		36.871365, 26.567993, 44.837208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532951, 26.023222, 44.750919>,  <37.500286, 26.550814, 45.144070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532951, 26.023222, 44.750919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234066, 26.218437, 44.570480>,  <37.054733, 26.335567, 44.462219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234066, 26.218437, 44.570480>,  <37.532951, 26.023222, 44.750919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234066, 26.218437, 44.570480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428960, -0.164260, -0.888263,
		-0.507604, -0.857226, -0.086612,
		-0.747216, 0.488039, -0.451095,
		37.009903, 26.364849, 44.435150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213123, 25.651974, 44.207325>,  <37.532951, 26.023222, 44.750919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213123, 25.651974, 44.207325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157669, 26.040665, 44.130875>,  <37.124397, 26.273880, 44.085007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157669, 26.040665, 44.130875>,  <37.213123, 25.651974, 44.207325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157669, 26.040665, 44.130875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248559, -0.152668, -0.956510,
		-0.958644, -0.180111, -0.220366,
		-0.138635, 0.971727, -0.191122,
		37.116077, 26.332182, 44.073540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967751, 25.621859, 43.525360>,  <37.213123, 25.651974, 44.207325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967751, 25.621859, 43.525360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.055042, 26.009567, 43.570770>,  <37.107418, 26.242193, 43.598015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.055042, 26.009567, 43.570770>,  <36.967751, 25.621859, 43.525360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055042, 26.009567, 43.570770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348306, 0.031308, -0.936858,
		-0.911625, 0.243987, -0.330771,
		0.218226, 0.969273, 0.113524,
		37.120510, 26.300348, 43.604828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668755, 25.907221, 42.948360>,  <36.967751, 25.621859, 43.525360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668755, 25.907221, 42.948360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947823, 26.165503, 43.072502>,  <37.115265, 26.320471, 43.146988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947823, 26.165503, 43.072502>,  <36.668755, 25.907221, 42.948360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947823, 26.165503, 43.072502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242823, 0.194433, -0.950386,
		-0.674010, 0.738420, -0.021141,
		0.697673, 0.645703, 0.310355,
		37.157124, 26.359213, 43.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847561, 26.108505, 42.818455>,  <36.668755, 25.907221, 42.948360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847561, 26.108505, 42.818455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605846, 25.880079, 42.596203>,  <35.460819, 25.743023, 42.462852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605846, 25.880079, 42.596203>,  <35.847561, 26.108505, 42.818455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605846, 25.880079, 42.596203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396874, -0.388956, 0.831387,
		-0.690892, 0.722909, 0.008398,
		-0.604284, -0.571066, -0.555630,
		35.424561, 25.708759, 42.429512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222115, 26.257410, 43.107964>,  <35.847561, 26.108505, 42.818455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222115, 26.257410, 43.107964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.245968, 25.903877, 42.922371>,  <35.260281, 25.691757, 42.811016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.245968, 25.903877, 42.922371>,  <35.222115, 26.257410, 43.107964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245968, 25.903877, 42.922371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444382, -0.439717, 0.780495,
		-0.893850, 0.159644, -0.418981,
		0.059632, -0.883834, -0.463984,
		35.263859, 25.638727, 42.783176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593441, 26.035362, 43.122906>,  <35.222115, 26.257410, 43.107964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593441, 26.035362, 43.122906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.810940, 25.701614, 43.086773>,  <34.941441, 25.501366, 43.065094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.810940, 25.701614, 43.086773>,  <34.593441, 26.035362, 43.122906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810940, 25.701614, 43.086773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620559, -0.472190, 0.626053,
		-0.565015, -0.284360, -0.774531,
		0.543750, -0.834371, -0.090332,
		34.974064, 25.451303, 43.059673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122425, 25.405830, 43.109921>,  <34.593441, 26.035362, 43.122906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122425, 25.405830, 43.109921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461662, 25.234955, 43.235302>,  <34.665203, 25.132429, 43.310532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461662, 25.234955, 43.235302>,  <34.122425, 25.405830, 43.109921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461662, 25.234955, 43.235302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501546, -0.456453, 0.734916,
		-0.170868, -0.780488, -0.601367,
		0.848089, -0.427187, 0.313457,
		34.716087, 25.106798, 43.329338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979843, 24.729462, 43.345264>,  <34.122425, 25.405830, 43.109921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979843, 24.729462, 43.345264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.340729, 24.747234, 43.516861>,  <34.557259, 24.757898, 43.619820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.340729, 24.747234, 43.516861>,  <33.979843, 24.729462, 43.345264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340729, 24.747234, 43.516861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409901, -0.220994, 0.884954,
		0.134123, -0.974263, -0.181172,
		0.902215, 0.044430, 0.428991,
		34.611393, 24.760563, 43.645557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017086, 24.077358, 43.702076>,  <33.979843, 24.729462, 43.345264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017086, 24.077358, 43.702076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237572, 24.365303, 43.870819>,  <34.369862, 24.538071, 43.972065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237572, 24.365303, 43.870819>,  <34.017086, 24.077358, 43.702076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237572, 24.365303, 43.870819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430558, -0.187678, 0.882834,
		0.714692, -0.668263, 0.206492,
		0.551212, 0.719862, 0.421858,
		34.402935, 24.581261, 43.997375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181805, 23.803560, 44.366898>,  <34.017086, 24.077358, 43.702076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181805, 23.803560, 44.366898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298412, 24.182379, 44.420738>,  <34.368378, 24.409670, 44.453041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298412, 24.182379, 44.420738>,  <34.181805, 23.803560, 44.366898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298412, 24.182379, 44.420738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102491, -0.108980, 0.988746,
		0.951058, -0.302034, 0.065295,
		0.291519, 0.947047, 0.134602,
		34.385868, 24.466494, 44.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652420, 23.874863, 45.029030>,  <34.181805, 23.803560, 44.366898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652420, 23.874863, 45.029030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523472, 24.248234, 44.966049>,  <34.446102, 24.472256, 44.928261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523472, 24.248234, 44.966049>,  <34.652420, 23.874863, 45.029030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523472, 24.248234, 44.966049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084911, 0.194177, 0.977285,
		0.942797, 0.301678, -0.141856,
		-0.322371, 0.933427, -0.157453,
		34.426762, 24.528261, 44.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968018, 24.195375, 45.490921>,  <34.652420, 23.874863, 45.029030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968018, 24.195375, 45.490921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.685417, 24.461056, 45.393196>,  <34.515858, 24.620464, 45.334560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.685417, 24.461056, 45.393196>,  <34.968018, 24.195375, 45.490921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685417, 24.461056, 45.393196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026541, 0.320109, 0.947009,
		0.707210, 0.675551, -0.208530,
		-0.706505, 0.664199, -0.244314,
		34.473465, 24.660316, 45.319901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130798, 24.790913, 45.835617>,  <34.968018, 24.195375, 45.490921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130798, 24.790913, 45.835617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744808, 24.835157, 45.740467>,  <34.513214, 24.861704, 45.683376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744808, 24.835157, 45.740467>,  <35.130798, 24.790913, 45.835617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744808, 24.835157, 45.740467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166935, 0.440547, 0.882072,
		0.202363, 0.890889, -0.406652,
		-0.964978, 0.110614, -0.237871,
		34.455315, 24.868341, 45.669106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998650, 25.386187, 46.177925>,  <35.130798, 24.790913, 45.835617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998650, 25.386187, 46.177925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634556, 25.251814, 46.081074>,  <34.416100, 25.171190, 46.022964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634556, 25.251814, 46.081074>,  <34.998650, 25.386187, 46.177925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634556, 25.251814, 46.081074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366864, 0.383007, 0.847771,
		-0.192058, 0.860497, -0.471868,
		-0.910233, -0.335932, -0.242126,
		34.361485, 25.151033, 46.008434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471302, 25.923880, 46.212242>,  <34.998650, 25.386187, 46.177925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471302, 25.923880, 46.212242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276302, 25.578278, 46.262592>,  <34.159302, 25.370916, 46.292801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276302, 25.578278, 46.262592>,  <34.471302, 25.923880, 46.212242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276302, 25.578278, 46.262592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306067, 0.304124, 0.902126,
		-0.817722, 0.401257, -0.412702,
		-0.487497, -0.864003, 0.125877,
		34.130054, 25.319077, 46.300354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797348, 26.141443, 46.413425>,  <34.471302, 25.923880, 46.212242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797348, 26.141443, 46.413425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853691, 25.766052, 46.539551>,  <33.887497, 25.540817, 46.615227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853691, 25.766052, 46.539551>,  <33.797348, 26.141443, 46.413425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853691, 25.766052, 46.539551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294188, 0.264426, 0.918440,
		-0.945311, -0.222129, -0.238842,
		0.140856, -0.938476, 0.315312,
		33.895947, 25.484509, 46.634144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307362, 26.148745, 46.856960>,  <33.797348, 26.141443, 46.413425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307362, 26.148745, 46.856960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542366, 25.836872, 46.943607>,  <33.683369, 25.649748, 46.995594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542366, 25.836872, 46.943607>,  <33.307362, 26.148745, 46.856960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542366, 25.836872, 46.943607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276676, 0.058009, 0.959211,
		-0.760445, -0.623482, -0.181638,
		0.587514, -0.779682, 0.216616,
		33.718620, 25.602968, 47.008591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127476, 25.481030, 46.817436>,  <33.307362, 26.148745, 46.856960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127476, 25.481030, 46.817436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789886, 25.655825, 46.941853>,  <32.587334, 25.760702, 47.016502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.789886, 25.655825, 46.941853>,  <33.127476, 25.481030, 46.817436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789886, 25.655825, 46.941853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080401, 0.470273, -0.878851,
		-0.530325, -0.766735, -0.361763,
		-0.843973, 0.436990, 0.311044,
		32.536694, 25.786922, 47.035164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694279, 25.530092, 46.170620>,  <33.127476, 25.481030, 46.817436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694279, 25.530092, 46.170620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506798, 25.774918, 46.425396>,  <32.394310, 25.921814, 46.578262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506798, 25.774918, 46.425396>,  <32.694279, 25.530092, 46.170620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506798, 25.774918, 46.425396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174140, 0.642878, -0.745911,
		-0.866023, -0.460525, -0.194731,
		-0.468699, 0.612065, 0.636943,
		32.366188, 25.958538, 46.616478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963747, 25.705502, 45.896557>,  <32.694279, 25.530092, 46.170620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963747, 25.705502, 45.896557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107872, 25.989677, 46.138367>,  <32.194347, 26.160183, 46.283451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107872, 25.989677, 46.138367>,  <31.963747, 25.705502, 45.896557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107872, 25.989677, 46.138367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017245, 0.642870, -0.765781,
		-0.932672, 0.286347, 0.219383,
		0.360314, 0.710439, 0.604525,
		32.215965, 26.202808, 46.319725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624748, 26.382866, 45.714878>,  <31.963747, 25.705502, 45.896557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624748, 26.382866, 45.714878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.911339, 26.542686, 45.943619>,  <32.083294, 26.638578, 46.080864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.911339, 26.542686, 45.943619>,  <31.624748, 26.382866, 45.714878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911339, 26.542686, 45.943619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021167, 0.806906, -0.590301,
		-0.697290, 0.435041, 0.569672,
		0.716477, 0.399553, 0.571855,
		32.126282, 26.662552, 46.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430048, 27.060556, 45.806812>,  <31.624748, 26.382866, 45.714878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430048, 27.060556, 45.806812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.826860, 27.055372, 45.856937>,  <32.064949, 27.052261, 45.887012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.826860, 27.055372, 45.856937>,  <31.430048, 27.060556, 45.806812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826860, 27.055372, 45.856937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095345, 0.727363, -0.679597,
		-0.082339, 0.686131, 0.722803,
		0.992033, -0.012958, 0.125309,
		32.124470, 27.051485, 45.894531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624744, 27.770847, 45.845188>,  <31.430048, 27.060556, 45.806812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624744, 27.770847, 45.845188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975203, 27.597872, 45.759991>,  <32.185478, 27.494085, 45.708874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975203, 27.597872, 45.759991>,  <31.624744, 27.770847, 45.845188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975203, 27.597872, 45.759991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198073, 0.725784, -0.658790,
		0.439475, 0.535007, 0.721546,
		0.876144, -0.432441, -0.212994,
		32.238045, 27.468140, 45.696091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087971, 28.245739, 45.939243>,  <31.624744, 27.770847, 45.845188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087971, 28.245739, 45.939243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299789, 28.007397, 45.697735>,  <32.426880, 27.864391, 45.552830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299789, 28.007397, 45.697735>,  <32.087971, 28.245739, 45.939243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299789, 28.007397, 45.697735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250139, 0.789791, -0.560055,
		0.810564, 0.145548, 0.567276,
		0.529545, -0.595858, -0.603768,
		32.458652, 27.828640, 45.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540894, 28.790258, 46.245564>,  <32.087971, 28.245739, 45.939243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540894, 28.790258, 46.245564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321861, 29.116009, 46.322449>,  <32.190441, 29.311459, 46.368580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321861, 29.116009, 46.322449>,  <32.540894, 28.790258, 46.245564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321861, 29.116009, 46.322449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473444, -0.490947, 0.731315,
		0.689930, 0.309456, 0.654395,
		-0.547583, 0.814376, 0.192209,
		32.157585, 29.360321, 46.380112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600342, 29.033529, 46.954765>,  <32.540894, 28.790258, 46.245564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600342, 29.033529, 46.954765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.248589, 29.193346, 46.851185>,  <32.037537, 29.289236, 46.789036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.248589, 29.193346, 46.851185>,  <32.600342, 29.033529, 46.954765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248589, 29.193346, 46.851185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389421, -0.290658, 0.873996,
		0.273931, 0.869417, 0.411189,
		-0.879382, 0.399540, -0.258949,
		31.984774, 29.313208, 46.773499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344563, 29.437138, 47.545433>,  <32.600342, 29.033529, 46.954765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344563, 29.437138, 47.545433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041897, 29.334404, 47.304935>,  <31.860296, 29.272764, 47.160637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041897, 29.334404, 47.304935>,  <32.344563, 29.437138, 47.545433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041897, 29.334404, 47.304935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501388, -0.362249, 0.785739,
		-0.419603, 0.895998, 0.145329,
		-0.756666, -0.256832, -0.601244,
		31.814898, 29.257355, 47.124561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684509, 29.601524, 47.859425>,  <32.344563, 29.437138, 47.545433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684509, 29.601524, 47.859425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572874, 29.341972, 47.576283>,  <31.505892, 29.186241, 47.406395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572874, 29.341972, 47.576283>,  <31.684509, 29.601524, 47.859425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572874, 29.341972, 47.576283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667294, -0.399032, 0.628883,
		-0.690528, 0.647863, -0.321629,
		-0.279089, -0.648882, -0.707857,
		31.489147, 29.147308, 47.363926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987854, 29.638590, 47.857349>,  <31.684509, 29.601524, 47.859425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987854, 29.638590, 47.857349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080925, 29.279642, 47.707371>,  <31.136768, 29.064274, 47.617382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080925, 29.279642, 47.707371>,  <30.987854, 29.638590, 47.857349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080925, 29.279642, 47.707371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443944, -0.441022, 0.780009,
		-0.865318, -0.015034, -0.500998,
		0.232678, -0.897371, -0.374950,
		31.150728, 29.010431, 47.594887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369589, 29.156416, 48.093330>,  <30.987854, 29.638590, 47.857349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369589, 29.156416, 48.093330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678328, 28.911247, 48.025711>,  <30.863571, 28.764145, 47.985142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678328, 28.911247, 48.025711>,  <30.369589, 29.156416, 48.093330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678328, 28.911247, 48.025711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264358, -0.551174, 0.791405,
		-0.578249, -0.566152, -0.587452,
		0.771844, -0.612927, -0.169049,
		30.909882, 28.727371, 47.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130335, 28.584661, 48.192795>,  <30.369589, 29.156416, 48.093330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130335, 28.584661, 48.192795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.521452, 28.504255, 48.216499>,  <30.756123, 28.456013, 48.230721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.521452, 28.504255, 48.216499>,  <30.130335, 28.584661, 48.192795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521452, 28.504255, 48.216499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169441, -0.591926, 0.787980,
		-0.123319, -0.780523, -0.612842,
		0.977795, -0.201014, 0.059257,
		30.814791, 28.443951, 48.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194283, 27.977474, 48.577175>,  <30.130335, 28.584661, 48.192795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194283, 27.977474, 48.577175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.578686, 28.087822, 48.584743>,  <30.809328, 28.154032, 48.589283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.578686, 28.087822, 48.584743>,  <30.194283, 27.977474, 48.577175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578686, 28.087822, 48.584743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158061, -0.604178, 0.781016,
		0.226891, -0.747572, -0.624225,
		0.961008, 0.275872, 0.018921,
		30.866989, 28.170584, 48.590420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562372, 27.334791, 48.586460>,  <30.194283, 27.977474, 48.577175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562372, 27.334791, 48.586460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.823149, 27.611273, 48.711170>,  <30.979614, 27.777163, 48.785995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.823149, 27.611273, 48.711170>,  <30.562372, 27.334791, 48.586460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823149, 27.611273, 48.711170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315715, -0.621274, 0.717177,
		0.689417, -0.369125, -0.623259,
		0.651942, 0.691206, 0.311778,
		31.018732, 27.818634, 48.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.996162, 35.305344, 35.739395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258259, 35.309502, 36.041534>,  <38.415516, 35.311996, 36.222816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258259, 35.309502, 36.041534>,  <37.996162, 35.305344, 35.739395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258259, 35.309502, 36.041534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584883, -0.625835, 0.515988,
		0.478087, -0.779886, -0.403993,
		0.655244, 0.010399, 0.755345,
		38.454834, 35.312622, 36.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199280, 34.551758, 35.983482>,  <37.996162, 35.305344, 35.739395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199280, 34.551758, 35.983482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241825, 34.802696, 36.292061>,  <38.267353, 34.953259, 36.477207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241825, 34.802696, 36.292061>,  <38.199280, 34.551758, 35.983482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241825, 34.802696, 36.292061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565728, -0.599846, 0.565806,
		0.817702, -0.496610, 0.291103,
		0.106368, 0.627346, 0.771442,
		38.273735, 34.990898, 36.523495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253323, 34.145466, 36.690319>,  <38.199280, 34.551758, 35.983482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253323, 34.145466, 36.690319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151253, 34.514919, 36.804710>,  <38.090012, 34.736591, 36.873344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151253, 34.514919, 36.804710>,  <38.253323, 34.145466, 36.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151253, 34.514919, 36.804710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663827, -0.382402, 0.642730,
		0.703008, -0.025834, 0.710713,
		-0.255173, 0.923635, 0.285981,
		38.074699, 34.792011, 36.890503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358311, 34.190617, 37.385471>,  <38.253323, 34.145466, 36.690319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358311, 34.190617, 37.385471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091652, 34.486187, 37.346344>,  <37.931656, 34.663528, 37.322868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091652, 34.486187, 37.346344>,  <38.358311, 34.190617, 37.385471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091652, 34.486187, 37.346344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517016, -0.363872, 0.774785,
		0.536918, 0.567079, 0.624612,
		-0.666643, 0.738930, -0.097819,
		37.891659, 34.707867, 37.316998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181774, 34.286163, 37.999123>,  <38.358311, 34.190617, 37.385471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181774, 34.286163, 37.999123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902081, 34.479206, 37.788158>,  <37.734264, 34.595032, 37.661579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902081, 34.479206, 37.788158>,  <38.181774, 34.286163, 37.999123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902081, 34.479206, 37.788158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689212, -0.259102, 0.676648,
		0.189902, 0.836634, 0.513791,
		-0.699231, 0.482608, -0.527414,
		37.692310, 34.623989, 37.629932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819202, 34.667572, 38.491112>,  <38.181774, 34.286163, 37.999123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819202, 34.667572, 38.491112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566612, 34.658672, 38.181084>,  <37.415058, 34.653332, 37.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566612, 34.658672, 38.181084>,  <37.819202, 34.667572, 38.491112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566612, 34.658672, 38.181084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746301, -0.253796, 0.615323,
		-0.210401, 0.967002, 0.143662,
		-0.631480, -0.022249, -0.775073,
		37.377167, 34.651997, 37.948563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231815, 35.175373, 38.622101>,  <37.819202, 34.667572, 38.491112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231815, 35.175373, 38.622101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089138, 34.895939, 38.373985>,  <37.003532, 34.728279, 38.225117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089138, 34.895939, 38.373985>,  <37.231815, 35.175373, 38.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089138, 34.895939, 38.373985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705142, -0.234217, 0.669266,
		-0.612818, 0.676112, -0.409056,
		-0.356691, -0.698581, -0.620287,
		36.982132, 34.686363, 38.187901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514725, 35.398346, 38.493885>,  <37.231815, 35.175373, 38.622101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514725, 35.398346, 38.493885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531181, 35.016552, 38.375729>,  <36.541054, 34.787476, 38.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531181, 35.016552, 38.375729>,  <36.514725, 35.398346, 38.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531181, 35.016552, 38.375729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598591, -0.260260, 0.757597,
		-0.799997, 0.145655, -0.582055,
		0.041138, -0.954489, -0.295395,
		36.543522, 34.730206, 38.287109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813824, 35.162712, 38.399902>,  <36.514725, 35.398346, 38.493885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813824, 35.162712, 38.399902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023258, 34.825687, 38.450409>,  <36.148918, 34.623470, 38.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023258, 34.825687, 38.450409>,  <35.813824, 35.162712, 38.399902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023258, 34.825687, 38.450409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634173, -0.286460, 0.718168,
		-0.568931, -0.456100, -0.684318,
		0.523586, -0.842564, 0.126271,
		36.180332, 34.572918, 38.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354771, 34.609596, 38.295628>,  <35.813824, 35.162712, 38.399902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354771, 34.609596, 38.295628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653458, 34.442562, 38.502716>,  <35.832668, 34.342342, 38.626968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653458, 34.442562, 38.502716>,  <35.354771, 34.609596, 38.295628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653458, 34.442562, 38.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663124, -0.406736, 0.628356,
		-0.051815, -0.812519, -0.580627,
		0.746714, -0.417586, 0.517726,
		35.877472, 34.317287, 38.658035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099136, 33.968918, 38.417679>,  <35.354771, 34.609596, 38.295628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099136, 33.968918, 38.417679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392502, 34.016270, 38.685436>,  <35.568520, 34.044682, 38.846092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392502, 34.016270, 38.685436>,  <35.099136, 33.968918, 38.417679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392502, 34.016270, 38.685436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606489, -0.330833, 0.722995,
		0.307045, -0.936235, -0.170842,
		0.733413, 0.118378, 0.669397,
		35.612526, 34.051785, 38.886253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222244, 33.320793, 38.888206>,  <35.099136, 33.968918, 38.417679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222244, 33.320793, 38.888206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367279, 33.635235, 39.088436>,  <35.454300, 33.823898, 39.208572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367279, 33.635235, 39.088436>,  <35.222244, 33.320793, 38.888206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367279, 33.635235, 39.088436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628181, -0.190614, 0.754357,
		0.688418, -0.587972, 0.424700,
		0.362587, 0.786101, 0.500575,
		35.476055, 33.871063, 39.238609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619690, 32.683456, 38.979916>,  <35.222244, 33.320793, 38.888206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619690, 32.683456, 38.979916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564396, 32.322430, 38.816814>,  <35.531219, 32.105812, 38.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564396, 32.322430, 38.816814>,  <35.619690, 32.683456, 38.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564396, 32.322430, 38.816814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095322, 0.421917, -0.901609,
		0.985802, -0.085763, -0.144357,
		-0.138232, -0.902569, -0.407751,
		35.522926, 32.051659, 38.694489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891968, 32.739704, 38.335499>,  <35.619690, 32.683456, 38.979916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891968, 32.739704, 38.335499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667934, 32.410309, 38.299351>,  <35.533512, 32.212669, 38.277660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667934, 32.410309, 38.299351>,  <35.891968, 32.739704, 38.335499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667934, 32.410309, 38.299351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147667, 0.206575, -0.967223,
		0.815168, -0.528383, -0.237302,
		-0.560085, -0.823491, -0.090369,
		35.499908, 32.163261, 38.272240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117283, 32.450928, 37.724876>,  <35.891968, 32.739704, 38.335499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117283, 32.450928, 37.724876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749649, 32.312340, 37.799969>,  <35.529068, 32.229187, 37.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749649, 32.312340, 37.799969>,  <36.117283, 32.450928, 37.724876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749649, 32.312340, 37.799969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296779, 0.295183, -0.908179,
		0.259230, -0.890412, -0.374120,
		-0.919088, -0.346458, 0.187736,
		35.473923, 32.208401, 37.856289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904972, 32.568432, 37.137539>,  <36.117283, 32.450928, 37.724876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904972, 32.568432, 37.137539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604073, 32.392593, 37.333855>,  <35.423534, 32.287090, 37.451645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604073, 32.392593, 37.333855>,  <35.904972, 32.568432, 37.137539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604073, 32.392593, 37.333855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555399, 0.022314, -0.831284,
		0.354476, -0.897919, -0.260936,
		-0.752249, -0.439594, 0.490794,
		35.378399, 32.260715, 37.481094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689190, 31.755512, 36.915474>,  <35.904972, 32.568432, 37.137539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689190, 31.755512, 36.915474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384277, 31.966204, 37.065929>,  <35.201328, 32.092617, 37.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384277, 31.966204, 37.065929>,  <35.689190, 31.755512, 36.915474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384277, 31.966204, 37.065929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482453, -0.074999, -0.872705,
		-0.431468, -0.846719, 0.311292,
		-0.762282, 0.526728, 0.376143,
		35.155594, 32.124222, 37.178772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115108, 31.388229, 36.754971>,  <35.689190, 31.755512, 36.915474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115108, 31.388229, 36.754971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011757, 31.770182, 36.813538>,  <34.949745, 31.999353, 36.848679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011757, 31.770182, 36.813538>,  <35.115108, 31.388229, 36.754971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011757, 31.770182, 36.813538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496212, -0.001147, -0.868200,
		-0.828862, -0.296981, 0.474121,
		-0.258383, 0.954883, 0.146415,
		34.934242, 32.056648, 36.857464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391613, 31.513603, 36.574574>,  <35.115108, 31.388229, 36.754971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391613, 31.513603, 36.574574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521309, 31.891937, 36.568111>,  <34.599129, 32.118938, 36.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521309, 31.891937, 36.568111>,  <34.391613, 31.513603, 36.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521309, 31.891937, 36.568111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475787, 0.148295, -0.866969,
		-0.817614, 0.288797, 0.498100,
		0.324244, 0.945835, -0.016158,
		34.618584, 32.175690, 36.563263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761993, 31.907833, 36.475571>,  <34.391613, 31.513603, 36.574574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761993, 31.907833, 36.475571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042648, 32.179138, 36.388237>,  <34.211040, 32.341923, 36.335835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042648, 32.179138, 36.388237>,  <33.761993, 31.907833, 36.475571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042648, 32.179138, 36.388237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448964, 0.182886, -0.874634,
		-0.553300, 0.711698, 0.432834,
		0.701634, 0.678262, -0.218336,
		34.253139, 32.382618, 36.322735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429230, 32.384720, 36.101925>,  <33.761993, 31.907833, 36.475571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429230, 32.384720, 36.101925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809967, 32.485191, 36.031616>,  <34.038410, 32.545475, 35.989433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809967, 32.485191, 36.031616>,  <33.429230, 32.384720, 36.101925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809967, 32.485191, 36.031616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254253, 0.326430, -0.910384,
		-0.171294, 0.911237, 0.374575,
		0.951847, 0.251180, -0.175769,
		34.095520, 32.560547, 35.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321766, 33.012829, 35.774773>,  <33.429230, 32.384720, 36.101925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321766, 33.012829, 35.774773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664623, 32.828896, 35.681938>,  <33.870338, 32.718536, 35.626240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664623, 32.828896, 35.681938>,  <33.321766, 33.012829, 35.774773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664623, 32.828896, 35.681938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204479, 0.109776, -0.972696,
		0.472753, 0.881195, 0.000068,
		0.857143, -0.459831, -0.232082,
		33.921764, 32.690945, 35.612312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634506, 33.276688, 35.068169>,  <33.321766, 33.012829, 35.774773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634506, 33.276688, 35.068169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822781, 32.925793, 35.105927>,  <33.935745, 32.715256, 35.128582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822781, 32.925793, 35.105927>,  <33.634506, 33.276688, 35.068169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822781, 32.925793, 35.105927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189719, -0.205112, -0.960175,
		0.861661, 0.434034, -0.262973,
		0.470688, -0.877236, 0.094392,
		33.963985, 32.662621, 35.134243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953545, 33.252941, 34.470970>,  <33.634506, 33.276688, 35.068169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953545, 33.252941, 34.470970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944817, 32.872204, 34.593292>,  <33.939579, 32.643761, 34.666687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944817, 32.872204, 34.593292>,  <33.953545, 33.252941, 34.470970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944817, 32.872204, 34.593292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284556, -0.287315, -0.914592,
		0.958411, -0.106973, -0.264584,
		-0.021818, -0.951844, 0.305806,
		33.938271, 32.586651, 34.685036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319473, 32.883705, 34.083485>,  <33.953545, 33.252941, 34.470970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319473, 32.883705, 34.083485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118023, 32.569641, 34.227642>,  <33.997150, 32.381203, 34.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118023, 32.569641, 34.227642>,  <34.319473, 32.883705, 34.083485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118023, 32.569641, 34.227642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027647, -0.402296, -0.915092,
		0.863478, -0.470831, 0.180901,
		-0.503629, -0.785160, 0.360391,
		33.966934, 32.334095, 34.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609776, 32.334496, 33.706383>,  <34.319473, 32.883705, 34.083485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609776, 32.334496, 33.706383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241798, 32.240936, 33.832237>,  <34.021011, 32.184799, 33.907749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241798, 32.240936, 33.832237>,  <34.609776, 32.334496, 33.706383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241798, 32.240936, 33.832237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213360, -0.374586, -0.902310,
		0.328909, -0.897204, 0.294693,
		-0.919944, -0.233902, 0.314632,
		33.965816, 32.170765, 33.926628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492706, 31.670595, 33.394451>,  <34.609776, 32.334496, 33.706383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492706, 31.670595, 33.394451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153996, 31.849758, 33.509235>,  <33.950768, 31.957256, 33.578106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153996, 31.849758, 33.509235>,  <34.492706, 31.670595, 33.394451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153996, 31.849758, 33.509235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474042, -0.390638, -0.789105,
		-0.241349, -0.804227, 0.543111,
		-0.846779, 0.447907, 0.286957,
		33.899963, 31.984131, 33.595322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688507, 31.022816, 32.991047>,  <34.492706, 31.670595, 33.394451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688507, 31.022816, 32.991047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981888, 31.054382, 33.261108>,  <35.157917, 31.073322, 33.423145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981888, 31.054382, 33.261108>,  <34.688507, 31.022816, 32.991047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981888, 31.054382, 33.261108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152838, -0.948660, 0.276921,
		0.662341, -0.306296, -0.683730,
		0.733447, 0.078916, 0.675150,
		35.201923, 31.078056, 33.463654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588768, 30.364933, 33.278812>,  <34.688507, 31.022816, 32.991047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588768, 30.364933, 33.278812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921070, 30.451902, 33.483780>,  <35.120453, 30.504084, 33.606758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921070, 30.451902, 33.483780>,  <34.588768, 30.364933, 33.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921070, 30.451902, 33.483780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065847, -0.875708, 0.478331,
		0.552728, -0.431117, -0.713183,
		0.830756, 0.217426, 0.512416,
		35.170296, 30.517130, 33.637505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100800, 29.806107, 33.254562>,  <34.588768, 30.364933, 33.278812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100800, 29.806107, 33.254562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177589, 30.006903, 33.591881>,  <35.223663, 30.127380, 33.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177589, 30.006903, 33.591881>,  <35.100800, 29.806107, 33.254562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177589, 30.006903, 33.591881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037640, -0.854881, 0.517456,
		0.980679, -0.131078, -0.145217,
		0.191970, 0.501992, 0.843298,
		35.235180, 30.157501, 33.844872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550461, 29.485239, 33.584118>,  <35.100800, 29.806107, 33.254562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550461, 29.485239, 33.584118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390343, 29.701702, 33.879929>,  <35.294270, 29.831581, 34.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390343, 29.701702, 33.879929>,  <35.550461, 29.485239, 33.584118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390343, 29.701702, 33.879929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160662, -0.835955, 0.524755,
		0.902191, 0.091245, 0.421576,
		-0.400300, 0.541160, 0.739531,
		35.270252, 29.864050, 34.101788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867378, 29.134645, 34.050438>,  <35.550461, 29.485239, 33.584118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867378, 29.134645, 34.050438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586578, 29.337990, 34.249943>,  <35.418098, 29.459997, 34.369644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586578, 29.337990, 34.249943>,  <35.867378, 29.134645, 34.050438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586578, 29.337990, 34.249943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076335, -0.750010, 0.657007,
		0.708070, 0.423149, 0.565315,
		-0.702004, 0.508361, 0.498758,
		35.375977, 29.490498, 34.399570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077034, 29.134203, 34.766319>,  <35.867378, 29.134645, 34.050438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077034, 29.134203, 34.766319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690804, 29.236338, 34.786198>,  <35.459064, 29.297619, 34.798122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690804, 29.236338, 34.786198>,  <36.077034, 29.134203, 34.766319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690804, 29.236338, 34.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155776, -0.720568, 0.675660,
		0.208328, 0.644659, 0.735537,
		-0.965574, 0.255338, 0.049692,
		35.401131, 29.312939, 34.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892582, 29.327742, 35.440891>,  <36.077034, 29.134203, 34.766319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892582, 29.327742, 35.440891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547028, 29.219185, 35.271160>,  <35.339695, 29.154051, 35.169323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547028, 29.219185, 35.271160>,  <35.892582, 29.327742, 35.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547028, 29.219185, 35.271160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255096, -0.490668, 0.833169,
		-0.434321, 0.828004, 0.354648,
		-0.863882, -0.271393, -0.424328,
		35.287865, 29.137768, 35.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379169, 29.580282, 35.853600>,  <35.892582, 29.327742, 35.440891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379169, 29.580282, 35.853600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228046, 29.274414, 35.644775>,  <35.137375, 29.090893, 35.519482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228046, 29.274414, 35.644775>,  <35.379169, 29.580282, 35.853600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228046, 29.274414, 35.644775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384127, -0.383582, 0.839828,
		-0.842443, 0.517828, -0.148810,
		-0.377806, -0.764669, -0.522057,
		35.114704, 29.045013, 35.488159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762058, 29.366415, 36.163025>,  <35.379169, 29.580282, 35.853600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762058, 29.366415, 36.163025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852283, 29.062937, 35.918568>,  <34.906418, 28.880850, 35.771893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852283, 29.062937, 35.918568>,  <34.762058, 29.366415, 36.163025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852283, 29.062937, 35.918568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317244, -0.650324, 0.690243,
		-0.921129, 0.038190, -0.387381,
		0.225563, -0.758696, -0.611148,
		34.919952, 28.835327, 35.735222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171566, 28.982204, 36.173512>,  <34.762058, 29.366415, 36.163025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171566, 28.982204, 36.173512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471203, 28.736311, 36.074749>,  <34.650986, 28.588776, 36.015491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471203, 28.736311, 36.074749>,  <34.171566, 28.982204, 36.173512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471203, 28.736311, 36.074749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146752, -0.517440, 0.843042,
		-0.646007, -0.595281, -0.477823,
		0.749092, -0.614733, -0.246911,
		34.695930, 28.551891, 36.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903542, 28.300493, 36.229866>,  <34.171566, 28.982204, 36.173512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903542, 28.300493, 36.229866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298248, 28.237192, 36.243984>,  <34.535072, 28.199211, 36.252457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298248, 28.237192, 36.243984>,  <33.903542, 28.300493, 36.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298248, 28.237192, 36.243984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133603, -0.670247, 0.730013,
		-0.091872, -0.725069, -0.682521,
		0.986767, -0.158255, 0.035294,
		34.594280, 28.189716, 36.254574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001480, 27.676697, 36.510269>,  <33.903542, 28.300493, 36.229866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001480, 27.676697, 36.510269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389679, 27.773087, 36.507172>,  <34.622601, 27.830919, 36.505314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389679, 27.773087, 36.507172>,  <34.001480, 27.676697, 36.510269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389679, 27.773087, 36.507172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132769, -0.507344, 0.851454,
		0.201246, -0.827366, -0.524371,
		0.970501, 0.240972, -0.007747,
		34.680828, 27.845379, 36.504848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370876, 27.060141, 36.663868>,  <34.001480, 27.676697, 36.510269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370876, 27.060141, 36.663868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594166, 27.370731, 36.780811>,  <34.728138, 27.557085, 36.850975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594166, 27.370731, 36.780811>,  <34.370876, 27.060141, 36.663868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594166, 27.370731, 36.780811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170934, -0.452437, 0.875262,
		0.811892, -0.438617, -0.385287,
		0.558223, 0.776477, 0.292355,
		34.761631, 27.603674, 36.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950298, 26.789494, 36.926014>,  <34.370876, 27.060141, 36.663868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950298, 26.789494, 36.926014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921513, 27.158150, 37.078537>,  <34.904243, 27.379343, 37.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921513, 27.158150, 37.078537>,  <34.950298, 26.789494, 36.926014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921513, 27.158150, 37.078537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240218, -0.355032, 0.903464,
		0.968048, 0.156611, -0.195847,
		-0.071960, 0.921643, 0.381309,
		34.899925, 27.434643, 37.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442547, 26.827248, 37.370918>,  <34.950298, 26.789494, 36.926014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442547, 26.827248, 37.370918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235935, 27.143484, 37.502472>,  <35.111969, 27.333225, 37.581402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235935, 27.143484, 37.502472>,  <35.442547, 26.827248, 37.370918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235935, 27.143484, 37.502472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264631, -0.217892, 0.939411,
		0.814349, 0.572269, -0.096666,
		-0.516533, 0.790589, 0.328880,
		35.080975, 27.380661, 37.601135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934864, 27.271761, 37.818970>,  <35.442547, 26.827248, 37.370918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934864, 27.271761, 37.818970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549168, 27.340115, 37.900009>,  <35.317749, 27.381126, 37.948631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549168, 27.340115, 37.900009>,  <35.934864, 27.271761, 37.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549168, 27.340115, 37.900009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155371, -0.254831, 0.954422,
		0.214723, 0.951766, 0.219167,
		-0.964237, 0.170884, 0.202595,
		35.259895, 27.391380, 37.960789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957561, 27.680498, 38.410446>,  <35.934864, 27.271761, 37.818970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957561, 27.680498, 38.410446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587288, 27.529181, 38.411144>,  <35.365124, 27.438389, 38.411564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587288, 27.529181, 38.411144>,  <35.957561, 27.680498, 38.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587288, 27.529181, 38.411144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090316, -0.216520, 0.972092,
		-0.367361, 0.900006, 0.234595,
		-0.925683, -0.378296, 0.001744,
		35.309582, 27.415691, 38.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612888, 27.906893, 39.035763>,  <35.957561, 27.680498, 38.410446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612888, 27.906893, 39.035763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391624, 27.588284, 38.938133>,  <35.258865, 27.397118, 38.879555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391624, 27.588284, 38.938133>,  <35.612888, 27.906893, 39.035763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391624, 27.588284, 38.938133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049120, -0.323652, 0.944900,
		-0.831628, 0.510689, 0.218156,
		-0.553157, -0.796521, -0.244073,
		35.225677, 27.349327, 38.864910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213699, 27.873859, 39.614655>,  <35.612888, 27.906893, 39.035763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213699, 27.873859, 39.614655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196754, 27.509897, 39.449596>,  <35.186588, 27.291519, 39.350559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196754, 27.509897, 39.449596>,  <35.213699, 27.873859, 39.614655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196754, 27.509897, 39.449596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133522, -0.414470, 0.900215,
		-0.990140, -0.016960, 0.139051,
		-0.042365, -0.909905, -0.412647,
		35.184044, 27.236925, 39.325802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633446, 27.446920, 39.918713>,  <35.213699, 27.873859, 39.614655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633446, 27.446920, 39.918713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890209, 27.184256, 39.760345>,  <35.044266, 27.026657, 39.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890209, 27.184256, 39.760345>,  <34.633446, 27.446920, 39.918713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890209, 27.184256, 39.760345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037319, -0.542478, 0.839241,
		-0.765875, -0.523938, -0.372726,
		0.641906, -0.656663, -0.395917,
		35.082783, 26.987257, 39.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407223, 26.795963, 40.204956>,  <34.633446, 27.446920, 39.918713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407223, 26.795963, 40.204956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788803, 26.757631, 40.091259>,  <35.017750, 26.734632, 40.023041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788803, 26.757631, 40.091259>,  <34.407223, 26.795963, 40.204956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788803, 26.757631, 40.091259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214740, -0.443456, 0.870191,
		-0.209441, -0.891158, -0.402457,
		0.953950, -0.095830, -0.284245,
		35.074989, 26.728882, 40.005985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557789, 26.197899, 40.459625>,  <34.407223, 26.795963, 40.204956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557789, 26.197899, 40.459625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914299, 26.363237, 40.385033>,  <35.128204, 26.462440, 40.340275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914299, 26.363237, 40.385033>,  <34.557789, 26.197899, 40.459625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914299, 26.363237, 40.385033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400445, -0.524460, 0.751389,
		0.212779, -0.744371, -0.632959,
		0.891274, 0.413345, -0.186485,
		35.181683, 26.487240, 40.329086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035934, 25.658831, 40.416626>,  <34.557789, 26.197899, 40.459625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035934, 25.658831, 40.416626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223381, 26.000608, 40.506359>,  <35.335850, 26.205675, 40.560200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223381, 26.000608, 40.506359>,  <35.035934, 25.658831, 40.416626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223381, 26.000608, 40.506359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535032, -0.476582, 0.697575,
		0.702949, -0.206874, -0.680489,
		0.468619, 0.854443, 0.224329,
		35.363968, 26.256941, 40.573658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677574, 25.392555, 40.553249>,  <35.035934, 25.658831, 40.416626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677574, 25.392555, 40.553249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629559, 25.757536, 40.709721>,  <35.600750, 25.976524, 40.803604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629559, 25.757536, 40.709721>,  <35.677574, 25.392555, 40.553249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629559, 25.757536, 40.709721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364091, -0.326115, 0.872403,
		0.923596, 0.247145, -0.293071,
		-0.120035, 0.912452, 0.391182,
		35.593548, 26.031271, 40.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325069, 25.606258, 40.900372>,  <35.677574, 25.392555, 40.553249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325069, 25.606258, 40.900372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019066, 25.811094, 41.056587>,  <35.835464, 25.933996, 41.150318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019066, 25.811094, 41.056587>,  <36.325069, 25.606258, 40.900372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019066, 25.811094, 41.056587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241978, -0.333419, 0.911196,
		0.596826, 0.791579, 0.131156,
		-0.765013, 0.512089, 0.390538,
		35.789562, 25.964722, 41.173748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489727, 25.822849, 41.567383>,  <36.325069, 25.606258, 40.900372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489727, 25.822849, 41.567383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094265, 25.879229, 41.588142>,  <35.856987, 25.913055, 41.600597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094265, 25.879229, 41.588142>,  <36.489727, 25.822849, 41.567383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094265, 25.879229, 41.588142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000967, -0.351478, 0.936196,
		0.150194, 0.925525, 0.347627,
		-0.988656, 0.140948, 0.051895,
		35.797668, 25.921513, 41.603710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332150, 25.993067, 42.296005>,  <36.489727, 25.822849, 41.567383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332150, 25.993067, 42.296005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971416, 25.895224, 42.153538>,  <35.754974, 25.836517, 42.068058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971416, 25.895224, 42.153538>,  <36.332150, 25.993067, 42.296005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971416, 25.895224, 42.153538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279292, -0.298950, 0.912483,
		-0.329678, 0.922386, 0.201287,
		-0.901836, -0.244607, -0.356172,
		35.700867, 25.821842, 42.046684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543095, 26.619717, 42.606853>,  <36.332150, 25.993067, 42.296005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543095, 26.619717, 42.606853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930065, 26.616774, 42.708065>,  <37.162247, 26.615007, 42.768791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930065, 26.616774, 42.708065>,  <36.543095, 26.619717, 42.606853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930065, 26.616774, 42.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246314, 0.257843, -0.934262,
		-0.058368, 0.966159, 0.251257,
		0.967431, -0.007357, 0.253028,
		37.220295, 26.614567, 42.783974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787220, 27.259680, 42.404957>,  <36.543095, 26.619717, 42.606853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787220, 27.259680, 42.404957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103729, 27.017092, 42.436138>,  <37.293636, 26.871540, 42.454845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103729, 27.017092, 42.436138>,  <36.787220, 27.259680, 42.404957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103729, 27.017092, 42.436138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271826, 0.234697, -0.933289,
		0.547714, 0.759680, 0.350564,
		0.791277, -0.606468, 0.077954,
		37.341114, 26.835152, 42.459526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159241, 27.713932, 42.165455>,  <36.787220, 27.259680, 42.404957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159241, 27.713932, 42.165455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354641, 27.366274, 42.134598>,  <37.471882, 27.157679, 42.116081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354641, 27.366274, 42.134598>,  <37.159241, 27.713932, 42.165455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354641, 27.366274, 42.134598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340368, 0.271218, -0.900328,
		0.803438, 0.413556, 0.428320,
		0.488504, -0.869144, -0.077146,
		37.501194, 27.105530, 42.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886795, 27.869152, 41.837391>,  <37.159241, 27.713932, 42.165455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886795, 27.869152, 41.837391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829792, 27.480986, 41.759430>,  <37.795589, 27.248085, 41.712654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829792, 27.480986, 41.759430>,  <37.886795, 27.869152, 41.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829792, 27.480986, 41.759430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259835, 0.153327, -0.953402,
		0.955080, -0.186505, 0.230299,
		-0.142503, -0.970416, -0.194900,
		37.787041, 27.189861, 41.700958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372940, 27.754099, 41.434387>,  <37.886795, 27.869152, 41.837391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372940, 27.754099, 41.434387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136642, 27.440191, 41.359383>,  <37.994862, 27.251846, 41.314381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136642, 27.440191, 41.359383>,  <38.372940, 27.754099, 41.434387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136642, 27.440191, 41.359383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122441, 0.142509, -0.982191,
		0.797512, -0.603185, 0.011901,
		-0.590747, -0.784767, -0.187507,
		37.959419, 27.204762, 41.303131>
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
