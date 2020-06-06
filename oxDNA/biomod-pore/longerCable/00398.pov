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
	<24.725748, 35.084255, 34.599190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411631, 35.054047, 34.844990>,  <24.223160, 35.035923, 34.992470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411631, 35.054047, 34.844990>,  <24.725748, 35.084255, 34.599190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411631, 35.054047, 34.844990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452067, 0.608221, 0.652459,
		-0.423026, 0.790167, -0.443491,
		-0.785292, -0.075519, 0.614502,
		24.176043, 35.031391, 35.029339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606981, 35.744064, 34.926888>,  <24.725748, 35.084255, 34.599190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606981, 35.744064, 34.926888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969337, 35.597282, 34.842304>,  <25.186750, 35.509212, 34.791553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969337, 35.597282, 34.842304>,  <24.606981, 35.744064, 34.926888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969337, 35.597282, 34.842304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281276, 0.148014, 0.948143,
		-0.316624, -0.918389, 0.237298,
		0.905888, -0.366951, -0.211456,
		25.241104, 35.487198, 34.778866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776659, 35.143402, 35.413395>,  <24.606981, 35.744064, 34.926888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776659, 35.143402, 35.413395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081928, 35.355854, 35.266171>,  <25.265091, 35.483326, 35.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081928, 35.355854, 35.266171>,  <24.776659, 35.143402, 35.413395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081928, 35.355854, 35.266171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344470, 0.147520, 0.927134,
		0.546721, -0.834352, -0.070374,
		0.763175, 0.531126, -0.368062,
		25.310881, 35.515190, 35.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321306, 34.940380, 35.755295>,  <24.776659, 35.143402, 35.413395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321306, 34.940380, 35.755295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450296, 35.285015, 35.598492>,  <25.527691, 35.491798, 35.504410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450296, 35.285015, 35.598492>,  <25.321306, 34.940380, 35.755295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450296, 35.285015, 35.598492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394445, 0.254154, 0.883074,
		0.860478, -0.439397, -0.257891,
		0.322476, 0.861589, -0.392012,
		25.547039, 35.543491, 35.480888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058151, 34.988800, 35.978786>,  <25.321306, 34.940380, 35.755295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058151, 34.988800, 35.978786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922596, 35.356071, 35.896713>,  <25.841263, 35.576435, 35.847469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922596, 35.356071, 35.896713>,  <26.058151, 34.988800, 35.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922596, 35.356071, 35.896713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313094, 0.315718, 0.895709,
		0.887202, 0.239303, -0.394469,
		-0.338887, 0.918181, -0.205182,
		25.820930, 35.631527, 35.835159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557453, 35.474834, 36.275383>,  <26.058151, 34.988800, 35.978786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557453, 35.474834, 36.275383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200165, 35.653568, 36.255409>,  <25.985792, 35.760811, 36.243423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200165, 35.653568, 36.255409>,  <26.557453, 35.474834, 36.275383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200165, 35.653568, 36.255409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100354, 0.306397, 0.946599,
		0.438276, 0.840511, -0.318521,
		-0.893221, 0.446836, -0.049938,
		25.932198, 35.787621, 36.240429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593821, 36.307091, 36.418320>,  <26.557453, 35.474834, 36.275383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593821, 36.307091, 36.418320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238165, 36.162407, 36.530464>,  <26.024773, 36.075596, 36.597752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238165, 36.162407, 36.530464>,  <26.593821, 36.307091, 36.418320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238165, 36.162407, 36.530464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185654, 0.274867, 0.943388,
		-0.418291, 0.890852, -0.177243,
		-0.889137, -0.361705, 0.280364,
		25.971424, 36.053894, 36.614574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264084, 36.819099, 36.773071>,  <26.593821, 36.307091, 36.418320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264084, 36.819099, 36.773071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128027, 36.460934, 36.887985>,  <26.046392, 36.246033, 36.956932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128027, 36.460934, 36.887985>,  <26.264084, 36.819099, 36.773071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128027, 36.460934, 36.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387245, 0.145019, 0.910500,
		-0.856940, 0.420947, 0.297419,
		-0.340141, -0.895418, 0.287282,
		26.025984, 36.192307, 36.974171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953150, 36.991947, 37.420887>,  <26.264084, 36.819099, 36.773071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953150, 36.991947, 37.420887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044107, 36.602493, 37.428158>,  <26.098682, 36.368820, 37.432522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044107, 36.602493, 37.428158>,  <25.953150, 36.991947, 37.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044107, 36.602493, 37.428158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362907, 0.102054, 0.926220,
		-0.903654, -0.204020, 0.376545,
		0.227395, -0.973633, 0.018181,
		26.112326, 36.310402, 37.433613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879534, 36.768391, 38.166985>,  <25.953150, 36.991947, 37.420887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879534, 36.768391, 38.166985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121450, 36.494991, 38.003490>,  <26.266600, 36.330952, 37.905396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121450, 36.494991, 38.003490>,  <25.879534, 36.768391, 38.166985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121450, 36.494991, 38.003490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602516, 0.057088, 0.796062,
		-0.520772, -0.727718, 0.446344,
		0.604790, -0.683497, -0.408732,
		26.302887, 36.289944, 37.880871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011776, 36.453800, 38.772823>,  <25.879534, 36.768391, 38.166985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011776, 36.453800, 38.772823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293943, 36.394035, 38.495678>,  <26.463243, 36.358177, 38.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293943, 36.394035, 38.495678>,  <26.011776, 36.453800, 38.772823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293943, 36.394035, 38.495678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707584, 0.091449, 0.700687,
		-0.041327, -0.984537, 0.170229,
		0.705419, -0.149409, -0.692864,
		26.505569, 36.349213, 38.287819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474699, 35.935024, 38.904583>,  <26.011776, 36.453800, 38.772823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474699, 35.935024, 38.904583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658175, 36.208542, 38.677593>,  <26.768259, 36.372654, 38.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658175, 36.208542, 38.677593>,  <26.474699, 35.935024, 38.904583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658175, 36.208542, 38.677593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499199, 0.330030, 0.801174,
		0.735123, -0.650773, -0.189969,
		0.458687, 0.683794, -0.567478,
		26.795780, 36.413681, 38.507351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209358, 35.895760, 39.123596>,  <26.474699, 35.935024, 38.904583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209358, 35.895760, 39.123596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032463, 36.240814, 39.025391>,  <26.926325, 36.447849, 38.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032463, 36.240814, 39.025391>,  <27.209358, 35.895760, 39.123596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032463, 36.240814, 39.025391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217413, 0.368683, 0.903772,
		0.870147, 0.346306, -0.350595,
		-0.442240, 0.862638, -0.245517,
		26.899792, 36.499607, 38.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300558, 36.612305, 39.286152>,  <27.209358, 35.895760, 39.123596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300558, 36.612305, 39.286152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534954, 36.338474, 39.112732>,  <27.675592, 36.174175, 39.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534954, 36.338474, 39.112732>,  <27.300558, 36.612305, 39.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534954, 36.338474, 39.112732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478011, 0.139986, -0.867127,
		0.654309, 0.715370, -0.245207,
		0.585991, -0.684580, -0.433549,
		27.710751, 36.133099, 38.982666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598228, 36.920731, 38.551346>,  <27.300558, 36.612305, 39.286152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598228, 36.920731, 38.551346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518139, 36.533802, 38.613575>,  <27.470085, 36.301643, 38.650913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518139, 36.533802, 38.613575>,  <27.598228, 36.920731, 38.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518139, 36.533802, 38.613575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618289, 0.001574, -0.785949,
		0.760019, -0.253554, -0.598398,
		-0.200223, -0.967320, 0.155573,
		27.458073, 36.243607, 38.660248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651365, 36.603851, 37.881798>,  <27.598228, 36.920731, 38.551346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651365, 36.603851, 37.881798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415863, 36.354675, 38.087833>,  <27.274561, 36.205170, 38.211452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415863, 36.354675, 38.087833>,  <27.651365, 36.603851, 37.881798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415863, 36.354675, 38.087833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575306, -0.124685, -0.808379,
		0.567794, -0.772271, -0.284970,
		-0.588756, -0.622938, 0.515087,
		27.239237, 36.167793, 38.242359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553963, 35.984676, 37.580837>,  <27.651365, 36.603851, 37.881798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553963, 35.984676, 37.580837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227722, 36.054409, 37.801529>,  <27.031977, 36.096249, 37.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227722, 36.054409, 37.801529>,  <27.553963, 35.984676, 37.580837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227722, 36.054409, 37.801529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577457, -0.185006, -0.795183,
		-0.036552, -0.967151, 0.251560,
		-0.815602, 0.174330, 0.551726,
		26.983042, 36.106709, 37.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034956, 35.462543, 37.249249>,  <27.553963, 35.984676, 37.580837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034956, 35.462543, 37.249249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811174, 35.709702, 37.470234>,  <26.676907, 35.857998, 37.602825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811174, 35.709702, 37.470234>,  <27.034956, 35.462543, 37.249249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811174, 35.709702, 37.470234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765801, -0.130322, -0.629734,
		-0.317115, -0.775381, 0.546097,
		-0.559452, 0.617900, 0.552460,
		26.643339, 35.895073, 37.635971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442198, 35.058556, 37.458878>,  <27.034956, 35.462543, 37.249249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442198, 35.058556, 37.458878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337051, 35.444263, 37.445648>,  <26.273964, 35.675686, 37.437710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337051, 35.444263, 37.445648>,  <26.442198, 35.058556, 37.458878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337051, 35.444263, 37.445648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659308, -0.204549, -0.723514,
		-0.704425, -0.168382, 0.689517,
		-0.262867, 0.964265, -0.033074,
		26.258192, 35.733543, 37.435726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704435, 35.080082, 37.583652>,  <26.442198, 35.058556, 37.458878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704435, 35.080082, 37.583652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835903, 35.399567, 37.382046>,  <25.914783, 35.591259, 37.261082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835903, 35.399567, 37.382046>,  <25.704435, 35.080082, 37.583652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835903, 35.399567, 37.382046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743804, -0.109962, -0.659290,
		-0.582007, 0.591578, 0.557946,
		0.328668, 0.798714, -0.504017,
		25.934504, 35.639179, 37.230843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121973, 35.362358, 37.221844>,  <25.704435, 35.080082, 37.583652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121973, 35.362358, 37.221844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346521, 35.684090, 37.143951>,  <25.481251, 35.877129, 37.097218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346521, 35.684090, 37.143951>,  <25.121973, 35.362358, 37.221844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346521, 35.684090, 37.143951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212358, -0.087415, -0.973274,
		-0.799853, 0.587722, 0.121733,
		0.561373, 0.804327, -0.194726,
		25.514933, 35.925388, 37.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712326, 35.772633, 36.710274>,  <25.121973, 35.362358, 37.221844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712326, 35.772633, 36.710274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098419, 35.872570, 36.679546>,  <25.330076, 35.932533, 36.661110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098419, 35.872570, 36.679546>,  <24.712326, 35.772633, 36.710274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098419, 35.872570, 36.679546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131459, 0.209987, -0.968826,
		-0.225921, 0.945243, 0.235531,
		0.965235, 0.249841, -0.076820,
		25.387989, 35.947521, 36.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768553, 36.325722, 36.181606>,  <24.712326, 35.772633, 36.710274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768553, 36.325722, 36.181606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135645, 36.168327, 36.203300>,  <25.355900, 36.073891, 36.216316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135645, 36.168327, 36.203300>,  <24.768553, 36.325722, 36.181606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135645, 36.168327, 36.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029368, -0.068951, -0.997188,
		0.396117, 0.916742, -0.051723,
		0.917730, -0.393484, 0.054236,
		25.410965, 36.050282, 36.219570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923386, 36.335857, 35.560032>,  <24.768553, 36.325722, 36.181606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923386, 36.335857, 35.560032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151932, 36.059494, 35.737202>,  <25.289059, 35.893677, 35.843502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151932, 36.059494, 35.737202>,  <24.923386, 36.335857, 35.560032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151932, 36.059494, 35.737202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019665, -0.528013, -0.849009,
		0.820461, 0.493804, -0.288101,
		0.571364, -0.690913, 0.442925,
		25.323341, 35.852219, 35.870079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493418, 36.835297, 35.565891>,  <24.923386, 36.335857, 35.560032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493418, 36.835297, 35.565891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600874, 36.459175, 35.649471>,  <25.665348, 36.233501, 35.699619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600874, 36.459175, 35.649471>,  <25.493418, 36.835297, 35.565891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600874, 36.459175, 35.649471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174614, -0.165790, -0.970579,
		0.947281, 0.297224, 0.119652,
		0.268642, -0.940304, 0.208949,
		25.681467, 36.177082, 35.712154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872360, 36.708366, 35.033531>,  <25.493418, 36.835297, 35.565891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872360, 36.708366, 35.033531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804443, 36.341698, 35.178246>,  <25.763693, 36.121696, 35.265076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804443, 36.341698, 35.178246>,  <25.872360, 36.708366, 35.033531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804443, 36.341698, 35.178246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123289, -0.344477, -0.930664,
		0.977738, -0.202623, -0.054526,
		-0.169791, -0.916667, 0.361789,
		25.753506, 36.066696, 35.286781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369301, 36.150181, 34.751789>,  <25.872360, 36.708366, 35.033531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369301, 36.150181, 34.751789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016865, 35.991837, 34.855305>,  <25.805403, 35.896828, 34.917412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016865, 35.991837, 34.855305>,  <26.369301, 36.150181, 34.751789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016865, 35.991837, 34.855305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128176, -0.326827, -0.936352,
		0.455246, -0.858182, 0.237224,
		-0.881092, -0.395864, 0.258785,
		25.752537, 35.873077, 34.932941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222252, 35.585339, 34.225441>,  <26.369301, 36.150181, 34.751789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222252, 35.585339, 34.225441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881735, 35.649189, 34.425369>,  <25.677425, 35.687500, 34.545326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881735, 35.649189, 34.425369>,  <26.222252, 35.585339, 34.225441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881735, 35.649189, 34.425369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524659, -0.248262, -0.814309,
		-0.005897, -0.955451, 0.295092,
		-0.851291, 0.159625, 0.499822,
		25.626347, 35.697075, 34.575317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673983, 35.043808, 34.285397>,  <26.222252, 35.585339, 34.225441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673983, 35.043808, 34.285397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483877, 35.394600, 34.257027>,  <25.369814, 35.605076, 34.240005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483877, 35.394600, 34.257027>,  <25.673983, 35.043808, 34.285397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483877, 35.394600, 34.257027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303742, -0.239194, -0.922240,
		-0.825753, -0.416762, 0.380056,
		-0.475261, 0.876981, -0.070927,
		25.341299, 35.657696, 34.235748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132175, 34.848698, 34.053490>,  <25.673983, 35.043808, 34.285397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132175, 34.848698, 34.053490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198811, 35.232132, 33.961098>,  <25.238792, 35.462193, 33.905663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198811, 35.232132, 33.961098>,  <25.132175, 34.848698, 34.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198811, 35.232132, 33.961098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300872, -0.173666, -0.937719,
		-0.939002, 0.225711, 0.259482,
		0.166590, 0.958590, -0.230983,
		25.248787, 35.519711, 33.891804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730873, 35.007832, 33.523277>,  <25.132175, 34.848698, 34.053490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730873, 35.007832, 33.523277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025679, 35.274948, 33.481583>,  <25.202562, 35.435219, 33.456566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025679, 35.274948, 33.481583>,  <24.730873, 35.007832, 33.523277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025679, 35.274948, 33.481583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021735, -0.177560, -0.983870,
		-0.675530, 0.722858, -0.145379,
		0.737012, 0.667794, -0.104236,
		25.246782, 35.475285, 33.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677647, 35.253994, 32.853973>,  <24.730873, 35.007832, 33.523277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677647, 35.253994, 32.853973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034142, 35.407066, 32.951347>,  <25.248037, 35.498909, 33.009769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034142, 35.407066, 32.951347>,  <24.677647, 35.253994, 32.853973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034142, 35.407066, 32.951347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280697, -0.043814, -0.958796,
		-0.356243, 0.922843, -0.146465,
		0.891235, 0.382677, 0.243430,
		25.301512, 35.521870, 33.024376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821007, 35.892056, 32.448437>,  <24.677647, 35.253994, 32.853973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821007, 35.892056, 32.448437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161379, 35.711620, 32.556095>,  <25.365602, 35.603359, 32.620689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161379, 35.711620, 32.556095>,  <24.821007, 35.892056, 32.448437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161379, 35.711620, 32.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361267, 0.130625, -0.923268,
		0.381317, 0.882869, 0.274116,
		0.850931, -0.451087, 0.269142,
		25.416658, 35.576294, 32.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236971, 36.252300, 32.166946>,  <24.821007, 35.892056, 32.448437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236971, 36.252300, 32.166946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420107, 35.904861, 32.242752>,  <25.529989, 35.696396, 32.288235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420107, 35.904861, 32.242752>,  <25.236971, 36.252300, 32.166946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420107, 35.904861, 32.242752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448654, 0.041706, -0.892732,
		0.767523, 0.493757, 0.408795,
		0.457842, -0.868599, 0.189515,
		25.557459, 35.644283, 32.299606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864487, 36.301655, 31.816015>,  <25.236971, 36.252300, 32.166946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864487, 36.301655, 31.816015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838030, 35.909836, 31.892035>,  <25.822155, 35.674744, 31.937647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838030, 35.909836, 31.892035>,  <25.864487, 36.301655, 31.816015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838030, 35.909836, 31.892035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421304, -0.200071, -0.884576,
		0.904504, 0.021559, 0.425920,
		-0.066143, -0.979544, 0.190049,
		25.818188, 35.615974, 31.949049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590237, 36.222221, 31.785271>,  <25.864487, 36.301655, 31.816015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590237, 36.222221, 31.785271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573088, 35.843681, 31.913383>,  <26.562799, 35.616558, 31.990252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573088, 35.843681, 31.913383>,  <26.590237, 36.222221, 31.785271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573088, 35.843681, 31.913383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531478, -0.293057, -0.794763,
		0.845987, 0.136152, 0.515528,
		-0.042870, -0.946351, 0.320284,
		26.560226, 35.559776, 32.009468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251793, 35.968800, 31.823709>,  <26.590237, 36.222221, 31.785271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251793, 35.968800, 31.823709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962915, 35.702595, 31.748314>,  <26.789589, 35.542873, 31.703077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962915, 35.702595, 31.748314>,  <27.251793, 35.968800, 31.823709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962915, 35.702595, 31.748314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539616, -0.371612, -0.755460,
		0.432724, -0.647300, 0.627497,
		-0.722194, -0.665513, -0.188488,
		26.746258, 35.502941, 31.691767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522369, 35.266048, 31.755056>,  <27.251793, 35.968800, 31.823709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522369, 35.266048, 31.755056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194536, 35.278137, 31.526190>,  <26.997837, 35.285393, 31.388870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194536, 35.278137, 31.526190>,  <27.522369, 35.266048, 31.755056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194536, 35.278137, 31.526190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524829, -0.361036, -0.770849,
		-0.229869, -0.932062, 0.280037,
		-0.819582, 0.030223, -0.572164,
		26.948662, 35.287205, 31.354540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418556, 34.566891, 31.369490>,  <27.522369, 35.266048, 31.755056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418556, 34.566891, 31.369490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258230, 34.871326, 31.165495>,  <27.162035, 35.053989, 31.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258230, 34.871326, 31.165495>,  <27.418556, 34.566891, 31.369490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258230, 34.871326, 31.165495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390747, -0.361476, -0.846554,
		-0.828653, -0.538587, -0.152509,
		-0.400814, 0.761091, -0.509989,
		27.137985, 35.099655, 31.012499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627270, 34.437954, 30.672277>,  <27.418556, 34.566891, 31.369490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627270, 34.437954, 30.672277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872400, 34.505753, 30.363546>,  <28.019478, 34.546432, 30.178308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872400, 34.505753, 30.363546>,  <27.627270, 34.437954, 30.672277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872400, 34.505753, 30.363546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770879, 0.342991, -0.536753,
		0.173753, 0.923921, 0.340853,
		0.612826, 0.169494, -0.771826,
		28.056248, 34.556602, 30.131998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598938, 35.147854, 30.402081>,  <27.627270, 34.437954, 30.672277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598938, 35.147854, 30.402081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668915, 34.877697, 30.115515>,  <27.710901, 34.715603, 29.943575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668915, 34.877697, 30.115515>,  <27.598938, 35.147854, 30.402081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668915, 34.877697, 30.115515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892649, 0.198210, -0.404835,
		0.415421, 0.710326, -0.568210,
		0.174940, -0.675388, -0.716412,
		27.721397, 34.675079, 29.900591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076714, 35.633835, 30.385103>,  <27.598938, 35.147854, 30.402081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076714, 35.633835, 30.385103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908201, 35.274605, 30.435675>,  <26.807095, 35.059067, 30.466017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908201, 35.274605, 30.435675>,  <27.076714, 35.633835, 30.385103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908201, 35.274605, 30.435675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451758, 0.328675, 0.829390,
		-0.786408, 0.292291, -0.544177,
		-0.421280, -0.898075, 0.126428,
		26.781816, 35.005180, 30.473602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288033, 35.651962, 30.452394>,  <27.076714, 35.633835, 30.385103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288033, 35.651962, 30.452394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415136, 35.323250, 30.641588>,  <26.491398, 35.126022, 30.755104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415136, 35.323250, 30.641588>,  <26.288033, 35.651962, 30.452394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415136, 35.323250, 30.641588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403009, 0.334480, 0.851884,
		-0.858262, -0.461310, -0.224900,
		0.317758, -0.821777, 0.472983,
		26.510464, 35.076717, 30.783484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756569, 35.274803, 30.882990>,  <26.288033, 35.651962, 30.452394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756569, 35.274803, 30.882990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127399, 35.259968, 31.032202>,  <26.349897, 35.251068, 31.121729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127399, 35.259968, 31.032202>,  <25.756569, 35.274803, 30.882990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127399, 35.259968, 31.032202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349514, 0.274227, 0.895901,
		-0.135523, -0.960950, 0.241266,
		0.927078, -0.037089, 0.373030,
		26.405523, 35.248840, 31.144110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679840, 34.846184, 31.375206>,  <25.756569, 35.274803, 30.882990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679840, 34.846184, 31.375206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011215, 35.051998, 31.463707>,  <26.210039, 35.175488, 31.516808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011215, 35.051998, 31.463707>,  <25.679840, 34.846184, 31.375206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011215, 35.051998, 31.463707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306005, 0.084946, 0.948232,
		0.469101, -0.853253, 0.227822,
		0.828435, 0.514532, 0.221252,
		26.259747, 35.206356, 31.530083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892996, 34.472603, 31.955139>,  <25.679840, 34.846184, 31.375206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892996, 34.472603, 31.955139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011213, 34.853893, 31.980486>,  <26.082144, 35.082668, 31.995693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011213, 34.853893, 31.980486>,  <25.892996, 34.472603, 31.955139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011213, 34.853893, 31.980486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255716, 0.015025, 0.966635,
		0.920469, -0.301887, 0.248195,
		0.295544, 0.953225, 0.063368,
		26.099876, 35.139862, 31.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191381, 34.557472, 32.605213>,  <25.892996, 34.472603, 31.955139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191381, 34.557472, 32.605213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031404, 34.915306, 32.525440>,  <25.935419, 35.130005, 32.477577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031404, 34.915306, 32.525440>,  <26.191381, 34.557472, 32.605213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031404, 34.915306, 32.525440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357761, 0.047955, 0.932581,
		0.843832, 0.444327, 0.300866,
		-0.399943, 0.894580, -0.199429,
		25.911421, 35.183681, 32.465611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461151, 35.029179, 33.136372>,  <26.191381, 34.557472, 32.605213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461151, 35.029179, 33.136372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137009, 35.196774, 32.972534>,  <25.942522, 35.297329, 32.874229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137009, 35.196774, 32.972534>,  <26.461151, 35.029179, 33.136372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137009, 35.196774, 32.972534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308804, 0.288692, 0.906254,
		0.497956, 0.860876, -0.104559,
		-0.810358, 0.418987, -0.409598,
		25.893902, 35.322468, 32.849655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506140, 35.823917, 33.238026>,  <26.461151, 35.029179, 33.136372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506140, 35.823917, 33.238026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125999, 35.707741, 33.193352>,  <25.897915, 35.638035, 33.166550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125999, 35.707741, 33.193352>,  <26.506140, 35.823917, 33.238026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125999, 35.707741, 33.193352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228550, 0.407940, 0.883940,
		-0.211175, 0.865580, -0.454067,
		-0.950353, -0.290443, -0.111681,
		25.840893, 35.620609, 33.159847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042789, 35.818138, 33.813423>,  <26.506140, 35.823917, 33.238026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042789, 35.818138, 33.813423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320200, 36.105835, 33.830013>,  <27.486647, 36.278454, 33.839966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320200, 36.105835, 33.830013>,  <27.042789, 35.818138, 33.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320200, 36.105835, 33.830013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135754, -0.187004, 0.972934,
		0.707527, -0.669124, -0.227331,
		0.693525, 0.719238, 0.041474,
		27.528257, 36.321606, 33.842457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807356, 35.597908, 33.998795>,  <27.042789, 35.818138, 33.813423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807356, 35.597908, 33.998795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758652, 35.969139, 34.139561>,  <27.729429, 36.191879, 34.224022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758652, 35.969139, 34.139561>,  <27.807356, 35.597908, 33.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758652, 35.969139, 34.139561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066132, -0.346184, 0.935833,
		0.990354, 0.137221, -0.019224,
		-0.121761, 0.928077, 0.351920,
		27.722124, 36.247562, 34.245136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381109, 35.348946, 33.347759>,  <27.807356, 35.597908, 33.998795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381109, 35.348946, 33.347759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351490, 35.355198, 32.948906>,  <27.333719, 35.358948, 32.709595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351490, 35.355198, 32.948906>,  <27.381109, 35.348946, 33.347759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351490, 35.355198, 32.948906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980630, -0.180671, -0.075655,
		-0.181335, -0.983420, -0.001948,
		-0.074049, 0.015629, -0.997132,
		27.329275, 35.359886, 32.649765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006624, 35.218971, 33.176472>,  <27.381109, 35.348946, 33.347759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006624, 35.218971, 33.176472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851595, 35.297924, 32.816288>,  <27.758577, 35.345295, 32.600178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851595, 35.297924, 32.816288>,  <28.006624, 35.218971, 33.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851595, 35.297924, 32.816288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921008, 0.041478, -0.387329,
		-0.039104, -0.979448, -0.197869,
		-0.387576, 0.197385, -0.900458,
		27.735323, 35.357140, 32.546150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394920, 34.760651, 32.814754>,  <28.006624, 35.218971, 33.176472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394920, 34.760651, 32.814754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267086, 35.060642, 32.583103>,  <28.190386, 35.240639, 32.444111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267086, 35.060642, 32.583103>,  <28.394920, 34.760651, 32.814754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267086, 35.060642, 32.583103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944237, 0.200947, -0.260840,
		-0.079251, -0.630197, -0.772380,
		-0.319588, 0.749982, -0.579129,
		28.171209, 35.285637, 32.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575987, 34.582672, 32.082672>,  <28.394920, 34.760651, 32.814754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575987, 34.582672, 32.082672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555870, 34.949375, 32.241173>,  <28.543800, 35.169399, 32.336273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555870, 34.949375, 32.241173>,  <28.575987, 34.582672, 32.082672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555870, 34.949375, 32.241173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957758, 0.156751, -0.241099,
		-0.283144, 0.367392, -0.885919,
		-0.050291, 0.916762, 0.396256,
		28.540783, 35.224403, 32.360050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889715, 35.241562, 31.615191>,  <28.575987, 34.582672, 32.082672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889715, 35.241562, 31.615191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923721, 35.255016, 32.013515>,  <28.944124, 35.263088, 32.252510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923721, 35.255016, 32.013515>,  <28.889715, 35.241562, 31.615191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923721, 35.255016, 32.013515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993948, 0.066917, -0.087117,
		-0.069567, 0.997191, -0.027745,
		0.085016, 0.033638, 0.995812,
		28.949226, 35.265106, 32.312260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489494, 35.650299, 31.723793>,  <28.889715, 35.241562, 31.615191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489494, 35.650299, 31.723793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444593, 35.399006, 32.031746>,  <29.417654, 35.248230, 32.216518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444593, 35.399006, 32.031746>,  <29.489494, 35.650299, 31.723793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444593, 35.399006, 32.031746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972754, -0.227639, -0.043926,
		0.202852, 0.743976, 0.636672,
		-0.112251, -0.628236, 0.769883,
		29.410917, 35.210537, 32.262711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793169, 35.872608, 32.373249>,  <29.489494, 35.650299, 31.723793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793169, 35.872608, 32.373249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776182, 35.483475, 32.282215>,  <29.765991, 35.249996, 32.227596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776182, 35.483475, 32.282215>,  <29.793169, 35.872608, 32.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776182, 35.483475, 32.282215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996736, -0.056903, 0.057258,
		-0.068652, -0.224408, 0.972074,
		-0.042465, -0.972833, -0.227582,
		29.763443, 35.191624, 32.213940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058798, 35.412491, 32.938644>,  <29.793169, 35.872608, 32.373249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058798, 35.412491, 32.938644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104557, 35.290039, 32.560608>,  <30.132013, 35.216568, 32.333786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104557, 35.290039, 32.560608>,  <30.058798, 35.412491, 32.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104557, 35.290039, 32.560608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983196, -0.101348, 0.151838,
		-0.142264, -0.946581, 0.289387,
		0.114398, -0.306125, -0.945093,
		30.138876, 35.198200, 32.277081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332897, 34.765388, 33.068851>,  <30.058798, 35.412491, 32.938644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332897, 34.765388, 33.068851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636114, 34.731800, 33.327564>,  <30.818045, 34.711647, 33.482792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636114, 34.731800, 33.327564>,  <30.332897, 34.765388, 33.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636114, 34.731800, 33.327564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619555, -0.402552, 0.673872,
		0.203780, -0.911538, -0.357172,
		0.758040, -0.083966, 0.646780,
		30.863525, 34.706612, 33.521599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996277, 34.427292, 32.796333>,  <30.332897, 34.765388, 33.068851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996277, 34.427292, 32.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265762, 34.715324, 32.729885>,  <31.427452, 34.888145, 32.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265762, 34.715324, 32.729885>,  <30.996277, 34.427292, 32.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265762, 34.715324, 32.729885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079213, -0.293859, -0.952561,
		-0.734737, 0.628592, -0.255016,
		0.673711, 0.720082, -0.166116,
		31.467876, 34.931351, 32.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812101, 34.694901, 32.232269>,  <30.996277, 34.427292, 32.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812101, 34.694901, 32.232269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205784, 34.754078, 32.271156>,  <31.441994, 34.789585, 32.294491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205784, 34.754078, 32.271156>,  <30.812101, 34.694901, 32.232269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205784, 34.754078, 32.271156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146917, -0.376210, -0.914812,
		-0.098763, 0.914647, -0.392003,
		0.984206, 0.147942, 0.097221,
		31.501045, 34.798462, 32.300323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094646, 35.002831, 31.511032>,  <30.812101, 34.694901, 32.232269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094646, 35.002831, 31.511032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365934, 34.809116, 31.732117>,  <31.528708, 34.692890, 31.864767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365934, 34.809116, 31.732117>,  <31.094646, 35.002831, 31.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365934, 34.809116, 31.732117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285782, -0.519108, -0.805516,
		0.677013, 0.704272, -0.213670,
		0.678220, -0.484281, 0.552711,
		31.569401, 34.663834, 31.897930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881762, 35.071651, 31.212318>,  <31.094646, 35.002831, 31.511032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881762, 35.071651, 31.212318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830894, 34.720474, 31.396944>,  <31.800373, 34.509769, 31.507719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830894, 34.720474, 31.396944>,  <31.881762, 35.071651, 31.212318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830894, 34.720474, 31.396944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310486, -0.477192, -0.822123,
		0.942033, 0.038760, 0.333274,
		-0.127170, -0.877944, 0.461565,
		31.792744, 34.457092, 31.535414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549080, 34.811176, 31.438168>,  <31.881762, 35.071651, 31.212318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549080, 34.811176, 31.438168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282322, 34.526028, 31.351391>,  <32.122265, 34.354939, 31.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282322, 34.526028, 31.351391>,  <32.549080, 34.811176, 31.438168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282322, 34.526028, 31.351391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630312, -0.384403, -0.674494,
		0.397432, -0.586560, 0.705688,
		-0.666899, -0.712868, -0.216941,
		32.082253, 34.312168, 31.286308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865574, 34.019356, 31.578972>,  <32.549080, 34.811176, 31.438168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865574, 34.019356, 31.578972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626476, 34.083340, 31.264746>,  <32.483017, 34.121731, 31.076210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626476, 34.083340, 31.264746>,  <32.865574, 34.019356, 31.578972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626476, 34.083340, 31.264746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705246, -0.361045, -0.610143,
		-0.381228, -0.918726, 0.102996,
		-0.597741, 0.159966, -0.785568,
		32.447155, 34.131329, 31.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674774, 33.452488, 31.254259>,  <32.865574, 34.019356, 31.578972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674774, 33.452488, 31.254259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679226, 33.706337, 30.945162>,  <32.681896, 33.858646, 30.759705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679226, 33.706337, 30.945162>,  <32.674774, 33.452488, 31.254259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679226, 33.706337, 30.945162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783914, -0.485292, -0.387259,
		-0.620770, -0.601453, -0.502891,
		0.011131, 0.634623, -0.772742,
		32.682564, 33.896725, 30.713339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468876, 33.061199, 30.475775>,  <32.674774, 33.452488, 31.254259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468876, 33.061199, 30.475775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712601, 33.378345, 30.471729>,  <32.858837, 33.568634, 30.469301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712601, 33.378345, 30.471729>,  <32.468876, 33.061199, 30.475775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712601, 33.378345, 30.471729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673299, -0.524082, -0.521543,
		-0.418814, 0.310973, -0.853165,
		0.609314, 0.792865, -0.010115,
		32.895393, 33.616203, 30.468695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881016, 33.038395, 29.811426>,  <32.468876, 33.061199, 30.475775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881016, 33.038395, 29.811426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051132, 33.257881, 30.099327>,  <33.153202, 33.389572, 30.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051132, 33.257881, 30.099327>,  <32.881016, 33.038395, 29.811426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051132, 33.257881, 30.099327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874799, -0.453133, -0.171455,
		0.232064, 0.702557, -0.672726,
		0.425291, 0.548711, 0.719752,
		33.178719, 33.422493, 30.315252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296310, 33.460548, 29.456509>,  <32.881016, 33.038395, 29.811426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296310, 33.460548, 29.456509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442947, 33.455875, 29.828632>,  <33.530930, 33.453072, 30.051907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442947, 33.455875, 29.828632>,  <33.296310, 33.460548, 29.456509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442947, 33.455875, 29.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880692, -0.318049, -0.351035,
		0.299984, 0.948002, -0.106306,
		0.366593, -0.011682, 0.930308,
		33.552925, 33.452370, 30.107725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960258, 33.823494, 29.471022>,  <33.296310, 33.460548, 29.456509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960258, 33.823494, 29.471022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977676, 33.571972, 29.781557>,  <33.988125, 33.421059, 29.967878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977676, 33.571972, 29.781557>,  <33.960258, 33.823494, 29.471022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977676, 33.571972, 29.781557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874053, -0.352390, -0.334444,
		0.483875, 0.693125, 0.534268,
		0.043541, -0.628808, 0.776341,
		33.990738, 33.383331, 30.014460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618362, 33.889080, 29.746298>,  <33.960258, 33.823494, 29.471022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618362, 33.889080, 29.746298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494484, 33.541355, 29.900383>,  <34.420158, 33.332722, 29.992834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494484, 33.541355, 29.900383>,  <34.618362, 33.889080, 29.746298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494484, 33.541355, 29.900383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839026, -0.440452, -0.319434,
		0.447355, 0.224276, 0.865779,
		-0.309693, -0.869311, 0.385212,
		34.401577, 33.280563, 30.015947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245537, 33.614746, 30.015350>,  <34.618362, 33.889080, 29.746298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245537, 33.614746, 30.015350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984917, 33.312328, 29.990442>,  <34.828545, 33.130878, 29.975496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984917, 33.312328, 29.990442>,  <35.245537, 33.614746, 30.015350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984917, 33.312328, 29.990442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749564, -0.628980, -0.206249,
		0.116766, -0.181058, 0.976516,
		-0.651552, -0.756044, -0.062271,
		34.789452, 33.085514, 29.971762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672192, 33.099285, 30.238064>,  <35.245537, 33.614746, 30.015350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672192, 33.099285, 30.238064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356674, 32.923496, 30.066168>,  <35.167366, 32.818024, 29.963030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356674, 32.923496, 30.066168>,  <35.672192, 33.099285, 30.238064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356674, 32.923496, 30.066168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605962, -0.673191, -0.423819,
		-0.103041, -0.594711, 0.797309,
		-0.788791, -0.439468, -0.429739,
		35.120037, 32.791656, 29.937246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770473, 32.241428, 30.306501>,  <35.672192, 33.099285, 30.238064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770473, 32.241428, 30.306501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548313, 32.346394, 29.990864>,  <35.415016, 32.409374, 29.801481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548313, 32.346394, 29.990864>,  <35.770473, 32.241428, 30.306501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548313, 32.346394, 29.990864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363132, -0.777122, -0.514021,
		-0.748107, -0.572033, 0.336325,
		-0.555403, 0.262412, -0.789093,
		35.381695, 32.425117, 29.754135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610661, 31.632587, 29.925106>,  <35.770473, 32.241428, 30.306501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610661, 31.632587, 29.925106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520027, 31.916929, 29.658770>,  <35.465645, 32.087532, 29.498968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520027, 31.916929, 29.658770>,  <35.610661, 31.632587, 29.925106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520027, 31.916929, 29.658770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114599, -0.659418, -0.742991,
		-0.967226, -0.244657, 0.067952,
		-0.226587, 0.710853, -0.665843,
		35.452049, 32.130184, 29.459017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961636, 31.406549, 29.487530>,  <35.610661, 31.632587, 29.925106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961636, 31.406549, 29.487530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204079, 31.655651, 29.289616>,  <35.349545, 31.805111, 29.170868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204079, 31.655651, 29.289616>,  <34.961636, 31.406549, 29.487530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204079, 31.655651, 29.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016508, -0.612089, -0.790617,
		-0.795212, 0.487366, -0.360711,
		0.606107, 0.622753, -0.494786,
		35.385910, 31.842478, 29.141180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921673, 31.153948, 28.905254>,  <34.961636, 31.406549, 29.487530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921673, 31.153948, 28.905254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217915, 31.404745, 28.808607>,  <35.395660, 31.555223, 28.750618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217915, 31.404745, 28.808607>,  <34.921673, 31.153948, 28.905254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217915, 31.404745, 28.808607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183533, -0.534670, -0.824890,
		-0.646388, 0.566574, -0.511054,
		0.740607, 0.626994, -0.241619,
		35.440098, 31.592844, 28.736122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897396, 31.104919, 28.288366>,  <34.921673, 31.153948, 28.905254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897396, 31.104919, 28.288366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253441, 31.284266, 28.321039>,  <35.467068, 31.391874, 28.340643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253441, 31.284266, 28.321039>,  <34.897396, 31.104919, 28.288366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253441, 31.284266, 28.321039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298906, -0.439041, -0.847288,
		-0.344034, 0.778595, -0.524815,
		0.890110, 0.448367, 0.081681,
		35.520473, 31.418776, 28.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995251, 31.385748, 27.640137>,  <34.897396, 31.104919, 28.288366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995251, 31.385748, 27.640137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347092, 31.362959, 27.829054>,  <35.558197, 31.349285, 27.942404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347092, 31.362959, 27.829054>,  <34.995251, 31.385748, 27.640137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347092, 31.362959, 27.829054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439664, -0.281771, -0.852819,
		0.181666, 0.957789, -0.222796,
		0.879598, -0.056973, 0.472294,
		35.610970, 31.345867, 27.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407928, 31.493816, 27.127445>,  <34.995251, 31.385748, 27.640137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407928, 31.493816, 27.127445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675289, 31.369081, 27.397556>,  <35.835705, 31.294241, 27.559622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675289, 31.369081, 27.397556>,  <35.407928, 31.493816, 27.127445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675289, 31.369081, 27.397556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660838, -0.167699, -0.731553,
		0.341368, 0.935219, 0.093983,
		0.668402, -0.311836, 0.675276,
		35.875809, 31.275530, 27.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019814, 31.731979, 26.946707>,  <35.407928, 31.493816, 27.127445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019814, 31.731979, 26.946707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090137, 31.403254, 27.163488>,  <36.132332, 31.206018, 27.293556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090137, 31.403254, 27.163488>,  <36.019814, 31.731979, 26.946707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090137, 31.403254, 27.163488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676564, -0.299036, -0.672933,
		0.715089, 0.484972, 0.503438,
		0.175807, -0.821815, 0.541952,
		36.142879, 31.156710, 27.326075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712585, 31.692579, 26.844738>,  <36.019814, 31.731979, 26.946707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712585, 31.692579, 26.844738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615665, 31.328285, 26.978514>,  <36.557514, 31.109709, 27.058779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615665, 31.328285, 26.978514>,  <36.712585, 31.692579, 26.844738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615665, 31.328285, 26.978514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457043, -0.411214, -0.788679,
		0.855805, -0.038245, 0.515883,
		-0.242302, -0.910736, 0.334439,
		36.542976, 31.055065, 27.078846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292633, 31.332333, 26.755827>,  <36.712585, 31.692579, 26.844738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292633, 31.332333, 26.755827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002174, 31.058025, 26.775572>,  <36.827900, 30.893440, 26.787418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002174, 31.058025, 26.775572>,  <37.292633, 31.332333, 26.755827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002174, 31.058025, 26.775572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422540, -0.501748, -0.754791,
		0.542380, -0.527228, 0.654106,
		-0.726143, -0.685769, 0.049364,
		36.784332, 30.852295, 26.790380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546333, 30.675009, 26.587694>,  <37.292633, 31.332333, 26.755827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546333, 30.675009, 26.587694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153675, 30.608541, 26.550270>,  <36.918079, 30.568661, 26.527815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153675, 30.608541, 26.550270>,  <37.546333, 30.675009, 26.587694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153675, 30.608541, 26.550270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161774, -0.465870, -0.869939,
		0.100969, -0.869111, 0.484202,
		-0.981649, -0.166168, -0.093561,
		36.859180, 30.558691, 26.522202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521599, 30.056986, 26.351202>,  <37.546333, 30.675009, 26.587694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521599, 30.056986, 26.351202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149574, 30.183182, 26.275894>,  <36.926357, 30.258900, 26.230709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149574, 30.183182, 26.275894>,  <37.521599, 30.056986, 26.351202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149574, 30.183182, 26.275894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062000, -0.370318, -0.926834,
		-0.362112, -0.873693, 0.324862,
		-0.930071, 0.315476, -0.188266,
		36.870556, 30.277828, 26.219412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182030, 29.467855, 26.117247>,  <37.521599, 30.056986, 26.351202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182030, 29.467855, 26.117247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019341, 29.806969, 25.981106>,  <36.921726, 30.010437, 25.899422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019341, 29.806969, 25.981106>,  <37.182030, 29.467855, 26.117247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019341, 29.806969, 25.981106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102345, -0.327930, -0.939142,
		-0.907801, -0.416802, 0.046610,
		-0.406721, 0.847784, -0.340353,
		36.897324, 30.061304, 25.879000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771156, 29.201241, 25.645765>,  <37.182030, 29.467855, 26.117247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771156, 29.201241, 25.645765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806202, 29.587490, 25.547876>,  <36.827229, 29.819241, 25.489143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806202, 29.587490, 25.547876>,  <36.771156, 29.201241, 25.645765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806202, 29.587490, 25.547876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064484, -0.250650, -0.965928,
		-0.994065, 0.068852, -0.084229,
		0.087618, 0.965626, -0.244723,
		36.832489, 29.877178, 25.474459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188663, 29.394947, 25.328739>,  <36.771156, 29.201241, 25.645765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188663, 29.394947, 25.328739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486652, 29.637451, 25.217413>,  <36.665447, 29.782953, 25.150618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486652, 29.637451, 25.217413>,  <36.188663, 29.394947, 25.328739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486652, 29.637451, 25.217413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125965, -0.281856, -0.951152,
		-0.655092, 0.743642, -0.133608,
		0.744975, 0.606262, -0.278315,
		36.710144, 29.819330, 25.133919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082718, 29.328299, 24.597738>,  <36.188663, 29.394947, 25.328739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082718, 29.328299, 24.597738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395702, 29.574310, 24.636717>,  <36.583492, 29.721918, 24.660103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395702, 29.574310, 24.636717>,  <36.082718, 29.328299, 24.597738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395702, 29.574310, 24.636717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270017, -0.194100, -0.943088,
		-0.561115, 0.764239, -0.317945,
		0.782458, 0.615031, 0.097445,
		36.630440, 29.758820, 24.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963184, 29.908209, 24.101885>,  <36.082718, 29.328299, 24.597738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963184, 29.908209, 24.101885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341503, 29.842234, 24.213783>,  <36.568497, 29.802649, 24.280922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341503, 29.842234, 24.213783>,  <35.963184, 29.908209, 24.101885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341503, 29.842234, 24.213783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200403, -0.381408, -0.902423,
		0.255541, 0.909573, -0.327681,
		0.945800, -0.164938, 0.279747,
		36.625244, 29.792753, 24.297707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274990, 30.047794, 23.462687>,  <35.963184, 29.908209, 24.101885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274990, 30.047794, 23.462687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559334, 29.862255, 23.674170>,  <36.729939, 29.750931, 23.801060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559334, 29.862255, 23.674170>,  <36.274990, 30.047794, 23.462687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559334, 29.862255, 23.674170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191770, -0.595405, -0.780203,
		0.676690, 0.656002, -0.334294,
		0.710855, -0.463848, 0.528706,
		36.772591, 29.723101, 23.832781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893230, 30.162025, 23.120646>,  <36.274990, 30.047794, 23.462687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893230, 30.162025, 23.120646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957726, 29.838373, 23.346676>,  <36.996422, 29.644182, 23.482294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957726, 29.838373, 23.346676>,  <36.893230, 30.162025, 23.120646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957726, 29.838373, 23.346676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329230, -0.495670, -0.803691,
		0.930382, 0.315624, 0.186470,
		0.161237, -0.809131, 0.565075,
		37.006096, 29.595634, 23.516199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607128, 30.060061, 23.125067>,  <36.893230, 30.162025, 23.120646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607128, 30.060061, 23.125067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423317, 29.714777, 23.208687>,  <37.313030, 29.507607, 23.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423317, 29.714777, 23.208687>,  <37.607128, 30.060061, 23.125067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423317, 29.714777, 23.208687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540140, -0.458458, -0.705737,
		0.705038, -0.211394, 0.676930,
		-0.459532, -0.863209, 0.209048,
		37.285458, 29.455814, 23.271400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110088, 29.588413, 23.181353>,  <37.607128, 30.060061, 23.125067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110088, 29.588413, 23.181353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775478, 29.381618, 23.108738>,  <37.574715, 29.257542, 23.065168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775478, 29.381618, 23.108738>,  <38.110088, 29.588413, 23.181353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775478, 29.381618, 23.108738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474381, -0.517521, -0.712135,
		0.274216, -0.681833, 0.678166,
		-0.836522, -0.516988, -0.181536,
		37.524521, 29.226522, 23.054277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230408, 28.858643, 23.137897>,  <38.110088, 29.588413, 23.181353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230408, 28.858643, 23.137897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913017, 28.931431, 22.905592>,  <37.722584, 28.975103, 22.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913017, 28.931431, 22.905592>,  <38.230408, 28.858643, 23.137897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913017, 28.931431, 22.905592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475230, -0.410886, -0.778029,
		-0.380198, -0.893344, 0.239556,
		-0.793477, 0.181961, -0.580761,
		37.674976, 28.986021, 22.731363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036942, 28.226503, 22.864876>,  <38.230408, 28.858643, 23.137897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036942, 28.226503, 22.864876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931225, 28.537230, 22.636242>,  <37.867794, 28.723665, 22.499062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931225, 28.537230, 22.636242>,  <38.036942, 28.226503, 22.864876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931225, 28.537230, 22.636242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343063, -0.478172, -0.808492,
		-0.901364, -0.409769, -0.140119,
		-0.264294, 0.776815, -0.571584,
		37.851936, 28.770273, 22.464767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743404, 27.931864, 22.281635>,  <38.036942, 28.226503, 22.864876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743404, 27.931864, 22.281635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828190, 28.298353, 22.145632>,  <37.879059, 28.518248, 22.064030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828190, 28.298353, 22.145632>,  <37.743404, 27.931864, 22.281635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828190, 28.298353, 22.145632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360124, -0.396656, -0.844378,
		-0.908506, 0.056531, -0.414030,
		0.211961, 0.916225, -0.340007,
		37.891777, 28.573221, 22.043631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610756, 27.972778, 21.505392>,  <37.743404, 27.931864, 22.281635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610756, 27.972778, 21.505392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826080, 28.306665, 21.551809>,  <37.955276, 28.506998, 21.579660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826080, 28.306665, 21.551809>,  <37.610756, 27.972778, 21.505392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826080, 28.306665, 21.551809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455939, -0.172656, -0.873103,
		-0.708759, 0.522911, -0.473523,
		0.538312, 0.834718, 0.116045,
		37.987576, 28.557081, 21.586622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537827, 28.432035, 20.908543>,  <37.610756, 27.972778, 21.505392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537827, 28.432035, 20.908543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878738, 28.526186, 21.095396>,  <38.083286, 28.582676, 21.207508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878738, 28.526186, 21.095396>,  <37.537827, 28.432035, 20.908543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878738, 28.526186, 21.095396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507898, -0.158744, -0.846664,
		-0.125130, 0.958853, -0.254842,
		0.852281, 0.235376, 0.467135,
		38.134422, 28.596800, 21.235537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915554, 28.721006, 20.309366>,  <37.537827, 28.432035, 20.908543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915554, 28.721006, 20.309366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175240, 28.686464, 20.611641>,  <38.331051, 28.665739, 20.793005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175240, 28.686464, 20.611641>,  <37.915554, 28.721006, 20.309366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175240, 28.686464, 20.611641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737021, -0.174064, -0.653071,
		0.187933, 0.980941, -0.049360,
		0.649216, -0.086354, 0.755687,
		38.370003, 28.660559, 20.838346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305038, 29.326157, 20.224056>,  <37.915554, 28.721006, 20.309366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305038, 29.326157, 20.224056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497711, 29.021097, 20.396729>,  <38.613316, 28.838060, 20.500332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497711, 29.021097, 20.396729>,  <38.305038, 29.326157, 20.224056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497711, 29.021097, 20.396729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597975, -0.074065, -0.798085,
		0.640632, 0.642557, 0.420371,
		0.481680, -0.762650, 0.431681,
		38.642216, 28.792301, 20.526234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958126, 29.405022, 20.087849>,  <38.305038, 29.326157, 20.224056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958126, 29.405022, 20.087849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968304, 29.018452, 20.190125>,  <38.974411, 28.786510, 20.251490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968304, 29.018452, 20.190125>,  <38.958126, 29.405022, 20.087849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968304, 29.018452, 20.190125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790203, -0.137222, -0.597285,
		0.612317, 0.217241, 0.760180,
		0.025441, -0.966425, 0.255688,
		38.975937, 28.728525, 20.266830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682354, 29.304777, 20.326332>,  <38.958126, 29.405022, 20.087849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682354, 29.304777, 20.326332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523685, 28.955563, 20.212875>,  <39.428482, 28.746033, 20.144800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523685, 28.955563, 20.212875>,  <39.682354, 29.304777, 20.326332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523685, 28.955563, 20.212875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760539, -0.139538, -0.634122,
		0.514033, -0.467262, 0.719330,
		-0.396675, -0.873038, -0.283644,
		39.404682, 28.693651, 20.127783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192574, 28.921587, 20.213343>,  <39.682354, 29.304777, 20.326332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192574, 28.921587, 20.213343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939827, 28.690010, 20.007208>,  <39.788181, 28.551064, 19.883528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939827, 28.690010, 20.007208>,  <40.192574, 28.921587, 20.213343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939827, 28.690010, 20.007208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752079, -0.297192, -0.588264,
		0.187418, -0.759277, 0.623196,
		-0.631864, -0.578944, -0.515337,
		39.750267, 28.516327, 19.852608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537151, 28.326811, 20.163130>,  <40.192574, 28.921587, 20.213343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537151, 28.326811, 20.163130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241852, 28.258270, 19.902170>,  <40.064671, 28.217146, 19.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241852, 28.258270, 19.902170>,  <40.537151, 28.326811, 20.163130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241852, 28.258270, 19.902170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659650, -0.385414, -0.645227,
		-0.140883, -0.906694, 0.397564,
		-0.738250, -0.171351, -0.652399,
		40.020378, 28.206865, 19.706450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631676, 27.658009, 19.921141>,  <40.537151, 28.326811, 20.163130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631676, 27.658009, 19.921141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416416, 27.852448, 19.645720>,  <40.287262, 27.969110, 19.480467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416416, 27.852448, 19.645720>,  <40.631676, 27.658009, 19.921141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416416, 27.852448, 19.645720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576249, -0.383984, -0.721453,
		-0.615091, -0.785025, -0.073475,
		-0.538145, 0.486099, -0.688555,
		40.254974, 27.998278, 19.439154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431656, 27.146873, 19.398748>,  <40.631676, 27.658009, 19.921141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431656, 27.146873, 19.398748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421547, 27.501516, 19.214014>,  <40.415482, 27.714302, 19.103174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421547, 27.501516, 19.214014>,  <40.431656, 27.146873, 19.398748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421547, 27.501516, 19.214014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614962, -0.350440, -0.706409,
		-0.788151, -0.301864, -0.536372,
		-0.025274, 0.886606, -0.461835,
		40.413963, 27.767498, 19.075464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304188, 26.955164, 18.719807>,  <40.431656, 27.146873, 19.398748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304188, 26.955164, 18.719807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461784, 27.322792, 18.716198>,  <40.556343, 27.543369, 18.714033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461784, 27.322792, 18.716198>,  <40.304188, 26.955164, 18.719807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461784, 27.322792, 18.716198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616499, -0.271541, -0.739050,
		-0.681687, 0.285621, -0.673590,
		0.393996, 0.919068, -0.009021,
		40.579983, 27.598513, 18.713491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578136, 26.994745, 18.121347>,  <40.304188, 26.955164, 18.719807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578136, 26.994745, 18.121347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749504, 27.312672, 18.293264>,  <40.852325, 27.503428, 18.396414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749504, 27.312672, 18.293264>,  <40.578136, 26.994745, 18.121347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749504, 27.312672, 18.293264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819988, -0.142179, -0.554440,
		-0.379571, 0.589959, -0.712653,
		0.428421, 0.794817, 0.429792,
		40.878029, 27.551117, 18.422203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708122, 27.466318, 17.663284>,  <40.578136, 26.994745, 18.121347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708122, 27.466318, 17.663284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970638, 27.479893, 17.964783>,  <41.128147, 27.488037, 18.145681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970638, 27.479893, 17.964783>,  <40.708122, 27.466318, 17.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970638, 27.479893, 17.964783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740830, -0.218348, -0.635213,
		0.143023, 0.975281, -0.168440,
		0.656289, 0.033935, 0.753746,
		41.167526, 27.490074, 18.190907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264828, 27.844324, 17.464886>,  <40.708122, 27.466318, 17.663284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264828, 27.844324, 17.464886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368435, 27.561193, 17.727760>,  <41.430599, 27.391315, 17.885485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368435, 27.561193, 17.727760>,  <41.264828, 27.844324, 17.464886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368435, 27.561193, 17.727760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700086, -0.331173, -0.632617,
		0.665426, 0.623942, 0.409762,
		0.259014, -0.707828, 0.657184,
		41.446140, 27.348845, 17.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930340, 27.844900, 17.626440>,  <41.264828, 27.844324, 17.464886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930340, 27.844900, 17.626440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826622, 27.462799, 17.683374>,  <41.764393, 27.233538, 17.717535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826622, 27.462799, 17.683374>,  <41.930340, 27.844900, 17.626440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826622, 27.462799, 17.683374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796868, -0.294873, -0.527306,
		0.545681, -0.023304, 0.837669,
		-0.259294, -0.955252, 0.142336,
		41.748833, 27.176224, 17.726076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833672, 27.856110, 16.872543>,  <41.930340, 27.844900, 17.626440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833672, 27.856110, 16.872543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574421, 27.846914, 16.568069>,  <41.418869, 27.841396, 16.385386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574421, 27.846914, 16.568069>,  <41.833672, 27.856110, 16.872543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574421, 27.846914, 16.568069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362923, -0.888061, -0.282197,
		-0.669492, -0.459152, 0.583918,
		-0.648126, -0.022989, -0.761186,
		41.379982, 27.840017, 16.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513153, 27.267202, 16.813572>,  <41.833672, 27.856110, 16.872543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513153, 27.267202, 16.813572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510563, 27.402861, 16.437288>,  <41.509007, 27.484255, 16.211517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510563, 27.402861, 16.437288>,  <41.513153, 27.267202, 16.813572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510563, 27.402861, 16.437288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380532, -0.869119, -0.315956,
		-0.924745, -0.360018, -0.123424,
		-0.006479, 0.339146, -0.940712,
		41.508617, 27.504604, 16.155075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962181, 27.792532, 16.773529>,  <41.513153, 27.267202, 16.813572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962181, 27.792532, 16.773529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644463, 27.974052, 16.611954>,  <40.453831, 28.082966, 16.515009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644463, 27.974052, 16.611954>,  <40.962181, 27.792532, 16.773529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644463, 27.974052, 16.611954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192424, 0.818560, 0.541233,
		0.576259, 0.352170, -0.737498,
		-0.794291, 0.453803, -0.403936,
		40.406174, 28.110193, 16.490772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283062, 28.378769, 16.496471>,  <40.962181, 27.792532, 16.773529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283062, 28.378769, 16.496471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888771, 28.427315, 16.543131>,  <40.652195, 28.456442, 16.571127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888771, 28.427315, 16.543131>,  <41.283062, 28.378769, 16.496471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888771, 28.427315, 16.543131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166814, 0.797191, 0.580223,
		-0.022572, 0.591402, -0.806061,
		-0.985730, 0.121365, 0.116649,
		40.593052, 28.463724, 16.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027225, 29.021872, 16.234533>,  <41.283062, 28.378769, 16.496471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027225, 29.021872, 16.234533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769901, 28.914440, 16.521315>,  <40.615509, 28.849981, 16.693384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769901, 28.914440, 16.521315>,  <41.027225, 29.021872, 16.234533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769901, 28.914440, 16.521315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097659, 0.900012, 0.424785,
		-0.759355, 0.343284, -0.552754,
		-0.643307, -0.268581, 0.716953,
		40.576908, 28.833866, 16.736401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775009, 29.597517, 16.650867>,  <41.027225, 29.021872, 16.234533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775009, 29.597517, 16.650867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689548, 29.291843, 16.894300>,  <40.638271, 29.108438, 17.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689548, 29.291843, 16.894300>,  <40.775009, 29.597517, 16.650867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689548, 29.291843, 16.894300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181939, 0.643193, 0.743774,
		-0.959817, 0.048186, -0.276457,
		-0.213655, -0.764186, 0.608581,
		40.625450, 29.062588, 17.076876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145981, 29.841522, 16.901989>,  <40.775009, 29.597517, 16.650867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145981, 29.841522, 16.901989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322361, 29.590618, 17.158772>,  <40.428188, 29.440075, 17.312841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322361, 29.590618, 17.158772>,  <40.145981, 29.841522, 16.901989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322361, 29.590618, 17.158772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214885, 0.620663, 0.754057,
		-0.871429, -0.470447, 0.138891,
		0.440948, -0.627262, 0.641956,
		40.454647, 29.402439, 17.351358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691284, 29.868896, 17.379333>,  <40.145981, 29.841522, 16.901989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691284, 29.868896, 17.379333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043301, 29.750134, 17.527586>,  <40.254513, 29.678877, 17.616537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043301, 29.750134, 17.527586>,  <39.691284, 29.868896, 17.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043301, 29.750134, 17.527586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167530, 0.536178, 0.827313,
		-0.444359, -0.790164, 0.422120,
		0.880045, -0.296906, 0.370632,
		40.307316, 29.661062, 17.638775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519619, 29.724623, 18.058231>,  <39.691284, 29.868896, 17.379333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519619, 29.724623, 18.058231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915432, 29.779083, 18.039103>,  <40.152920, 29.811760, 18.027626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915432, 29.779083, 18.039103>,  <39.519619, 29.724623, 18.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915432, 29.779083, 18.039103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045797, 0.610547, 0.790655,
		0.136845, -0.780189, 0.610391,
		0.989533, 0.136152, -0.047820,
		40.212292, 29.819929, 18.024757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711201, 29.601292, 18.621937>,  <39.519619, 29.724623, 18.058231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711201, 29.601292, 18.621937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014633, 29.837053, 18.510824>,  <40.196693, 29.978510, 18.444157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014633, 29.837053, 18.510824>,  <39.711201, 29.601292, 18.621937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014633, 29.837053, 18.510824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178573, 0.598049, 0.781312,
		0.626640, -0.543078, 0.558917,
		0.758573, 0.589409, -0.277783,
		40.242207, 30.013874, 18.427490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029572, 29.656752, 19.171957>,  <39.711201, 29.601292, 18.621937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029572, 29.656752, 19.171957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176197, 29.957630, 18.952930>,  <40.264172, 30.138157, 18.821514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176197, 29.957630, 18.952930>,  <40.029572, 29.656752, 19.171957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176197, 29.957630, 18.952930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078082, 0.611329, 0.787515,
		0.927110, -0.245920, 0.282825,
		0.366565, 0.752196, -0.547568,
		40.286167, 30.183289, 18.788660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658188, 29.953142, 19.537041>,  <40.029572, 29.656752, 19.171957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658188, 29.953142, 19.537041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535667, 30.250742, 19.299505>,  <40.462154, 30.429302, 19.156984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535667, 30.250742, 19.299505>,  <40.658188, 29.953142, 19.537041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535667, 30.250742, 19.299505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026269, 0.616980, 0.786541,
		0.951572, 0.256520, -0.169438,
		-0.306303, 0.743999, -0.593839,
		40.443775, 30.473942, 19.121353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867310, 30.437078, 19.937550>,  <40.658188, 29.953142, 19.537041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867310, 30.437078, 19.937550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614159, 30.627596, 19.693384>,  <40.462269, 30.741907, 19.546885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614159, 30.627596, 19.693384>,  <40.867310, 30.437078, 19.937550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614159, 30.627596, 19.693384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244302, 0.625274, 0.741181,
		0.734697, 0.618204, -0.279364,
		-0.632880, 0.476294, -0.610415,
		40.424294, 30.770485, 19.510260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063255, 31.099895, 19.983997>,  <40.867310, 30.437078, 19.937550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063255, 31.099895, 19.983997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684189, 31.128277, 19.859480>,  <40.456749, 31.145306, 19.784769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684189, 31.128277, 19.859480>,  <41.063255, 31.099895, 19.983997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684189, 31.128277, 19.859480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179101, 0.689002, 0.702281,
		0.264311, 0.721278, -0.640233,
		-0.947662, 0.070954, -0.311293,
		40.399891, 31.149563, 19.766092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887360, 31.797573, 20.039551>,  <41.063255, 31.099895, 19.983997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887360, 31.797573, 20.039551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531433, 31.616884, 20.013714>,  <40.317879, 31.508471, 19.998213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531433, 31.616884, 20.013714>,  <40.887360, 31.797573, 20.039551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531433, 31.616884, 20.013714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301284, 0.475281, 0.826642,
		-0.342714, 0.755020, -0.559010,
		-0.889818, -0.451722, -0.064590,
		40.264488, 31.481367, 19.994337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427155, 32.368275, 20.077505>,  <40.887360, 31.797573, 20.039551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427155, 32.368275, 20.077505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239208, 32.027565, 20.170195>,  <40.126438, 31.823139, 20.225809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239208, 32.027565, 20.170195>,  <40.427155, 32.368275, 20.077505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239208, 32.027565, 20.170195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481969, 0.467475, 0.741063,
		-0.739546, 0.236519, -0.630183,
		-0.469870, -0.851778, 0.231724,
		40.098248, 31.772032, 20.239712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810120, 32.627983, 20.382702>,  <40.427155, 32.368275, 20.077505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810120, 32.627983, 20.382702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781303, 32.240875, 20.479229>,  <39.764011, 32.008610, 20.537146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781303, 32.240875, 20.479229>,  <39.810120, 32.627983, 20.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781303, 32.240875, 20.479229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478795, 0.245801, 0.842815,
		-0.874965, -0.054820, -0.481072,
		-0.072045, -0.967769, 0.241315,
		39.759689, 31.950544, 20.551624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051342, 32.523159, 20.533607>,  <39.810120, 32.627983, 20.382702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051342, 32.523159, 20.533607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279076, 32.237995, 20.697371>,  <39.415714, 32.066895, 20.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279076, 32.237995, 20.697371>,  <39.051342, 32.523159, 20.533607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279076, 32.237995, 20.697371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417027, 0.178724, 0.891148,
		-0.708483, -0.678094, -0.195551,
		0.569333, -0.712914, 0.409407,
		39.449875, 32.024120, 20.820192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621872, 32.126621, 20.881929>,  <39.051342, 32.523159, 20.533607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621872, 32.126621, 20.881929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978958, 32.116413, 21.061892>,  <39.193211, 32.110287, 21.169868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978958, 32.116413, 21.061892>,  <38.621872, 32.126621, 20.881929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978958, 32.116413, 21.061892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419818, 0.315734, 0.850920,
		-0.163769, -0.948504, 0.271144,
		0.892710, -0.025524, 0.449907,
		39.246773, 32.108757, 21.196863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475117, 32.055775, 21.613159>,  <38.621872, 32.126621, 20.881929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475117, 32.055775, 21.613159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859646, 32.164562, 21.630569>,  <39.090363, 32.229836, 21.641016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859646, 32.164562, 21.630569>,  <38.475117, 32.055775, 21.613159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859646, 32.164562, 21.630569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118537, 0.265876, 0.956692,
		0.248603, -0.924852, 0.287830,
		0.961325, 0.271955, 0.043532,
		39.148041, 32.246151, 21.643627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764633, 31.601763, 22.114019>,  <38.475117, 32.055775, 21.613159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764633, 31.601763, 22.114019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996407, 31.925495, 22.075575>,  <39.135471, 32.119736, 22.052507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996407, 31.925495, 22.075575>,  <38.764633, 31.601763, 22.114019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996407, 31.925495, 22.075575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301527, 0.322434, 0.897284,
		0.757190, -0.490937, 0.430865,
		0.579435, 0.809331, -0.096113,
		39.170238, 32.168293, 22.046741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260239, 31.599995, 22.601398>,  <38.764633, 31.601763, 22.114019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260239, 31.599995, 22.601398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197060, 31.979671, 22.492523>,  <39.159153, 32.207478, 22.427198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197060, 31.979671, 22.492523>,  <39.260239, 31.599995, 22.601398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197060, 31.979671, 22.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364875, 0.200034, 0.909315,
		0.917561, 0.242942, 0.314740,
		-0.157952, 0.949192, -0.272187,
		39.149673, 32.264427, 22.410868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627163, 31.975761, 23.125660>,  <39.260239, 31.599995, 22.601398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627163, 31.975761, 23.125660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374027, 32.244682, 22.972023>,  <39.222145, 32.406036, 22.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374027, 32.244682, 22.972023>,  <39.627163, 31.975761, 23.125660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374027, 32.244682, 22.972023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151886, 0.378636, 0.912998,
		0.759243, 0.636116, -0.137501,
		-0.632836, 0.672303, -0.384094,
		39.184177, 32.446373, 22.856794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929359, 32.580547, 23.461458>,  <39.627163, 31.975761, 23.125660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929359, 32.580547, 23.461458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557114, 32.647045, 23.331034>,  <39.333767, 32.686943, 23.252779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557114, 32.647045, 23.331034>,  <39.929359, 32.580547, 23.461458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557114, 32.647045, 23.331034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255947, 0.341202, 0.904473,
		0.261619, 0.925172, -0.274978,
		-0.930616, 0.166248, -0.326060,
		39.277927, 32.696918, 23.233215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747066, 33.139614, 23.798986>,  <39.929359, 32.580547, 23.461458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747066, 33.139614, 23.798986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398960, 32.981991, 23.680761>,  <39.190098, 32.887417, 23.609827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398960, 32.981991, 23.680761>,  <39.747066, 33.139614, 23.798986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398960, 32.981991, 23.680761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417726, 0.272417, 0.866772,
		-0.261041, 0.877787, -0.401682,
		-0.870266, -0.394056, -0.295563,
		39.137882, 32.863773, 23.592093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335968, 33.501362, 24.200432>,  <39.747066, 33.139614, 23.798986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335968, 33.501362, 24.200432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093681, 33.209312, 24.073923>,  <38.948311, 33.034084, 23.998018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093681, 33.209312, 24.073923>,  <39.335968, 33.501362, 24.200432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093681, 33.209312, 24.073923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643613, 0.215879, 0.734275,
		-0.467835, 0.648318, -0.600678,
		-0.605718, -0.730123, -0.316270,
		38.911964, 32.990276, 23.979042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611084, 33.748257, 24.188927>,  <39.335968, 33.501362, 24.200432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611084, 33.748257, 24.188927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580959, 33.350487, 24.218472>,  <38.562885, 33.111824, 24.236198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580959, 33.350487, 24.218472>,  <38.611084, 33.748257, 24.188927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580959, 33.350487, 24.218472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745738, 0.105340, 0.657859,
		-0.661969, -0.005536, -0.749511,
		-0.075311, -0.994421, 0.073860,
		38.558365, 33.052162, 24.240629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877151, 33.557621, 24.124510>,  <38.611084, 33.748257, 24.188927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877151, 33.557621, 24.124510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054375, 33.238205, 24.287498>,  <38.160709, 33.046555, 24.385292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054375, 33.238205, 24.287498>,  <37.877151, 33.557621, 24.124510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054375, 33.238205, 24.287498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755219, -0.087550, 0.649599,
		-0.483057, -0.595541, -0.641862,
		0.443058, -0.798540, 0.407473,
		38.187294, 32.998642, 24.409740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352287, 33.142456, 24.011551>,  <37.877151, 33.557621, 24.124510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352287, 33.142456, 24.011551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594814, 33.009308, 24.300430>,  <37.740330, 32.929420, 24.473759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594814, 33.009308, 24.300430>,  <37.352287, 33.142456, 24.011551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594814, 33.009308, 24.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773737, -0.037274, 0.632409,
		-0.183590, -0.942236, -0.280154,
		0.606321, -0.332869, 0.722200,
		37.776711, 32.909447, 24.517090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940647, 32.860508, 24.466805>,  <37.352287, 33.142456, 24.011551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940647, 32.860508, 24.466805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253567, 32.918289, 24.709171>,  <37.441319, 32.952957, 24.854591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253567, 32.918289, 24.709171>,  <36.940647, 32.860508, 24.466805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253567, 32.918289, 24.709171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611842, -0.004266, 0.790968,
		0.116847, -0.989502, 0.085048,
		0.782302, 0.144458, 0.605918,
		37.488258, 32.961624, 24.890947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855438, 32.365833, 25.023830>,  <36.940647, 32.860508, 24.466805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855438, 32.365833, 25.023830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104111, 32.656937, 25.139679>,  <37.253315, 32.831596, 25.209188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104111, 32.656937, 25.139679>,  <36.855438, 32.365833, 25.023830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104111, 32.656937, 25.139679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532059, 0.121010, 0.838016,
		0.574823, -0.675077, 0.462439,
		0.621685, 0.727755, 0.289621,
		37.290615, 32.875263, 25.226566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805065, 32.333721, 25.674936>,  <36.855438, 32.365833, 25.023830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805065, 32.333721, 25.674936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975002, 32.695347, 25.656313>,  <37.076965, 32.912323, 25.645138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975002, 32.695347, 25.656313>,  <36.805065, 32.333721, 25.674936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975002, 32.695347, 25.656313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490457, 0.273098, 0.827568,
		0.760894, -0.328752, 0.559431,
		0.424844, 0.904068, -0.046560,
		37.102455, 32.966568, 25.642345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061176, 32.509842, 26.327835>,  <36.805065, 32.333721, 25.674936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061176, 32.509842, 26.327835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017155, 32.863705, 26.146608>,  <36.990742, 33.076023, 26.037872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017155, 32.863705, 26.146608>,  <37.061176, 32.509842, 26.327835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017155, 32.863705, 26.146608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427555, 0.369369, 0.825083,
		0.897265, 0.284513, 0.337591,
		-0.110051, 0.884658, -0.453066,
		36.984138, 33.129101, 26.010689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009541, 32.930653, 26.879919>,  <37.061176, 32.509842, 26.327835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009541, 32.930653, 26.879919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888546, 33.148682, 26.567152>,  <36.815948, 33.279499, 26.379492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888546, 33.148682, 26.567152>,  <37.009541, 32.930653, 26.879919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888546, 33.148682, 26.567152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394676, 0.675091, 0.623284,
		0.867600, 0.497142, 0.010917,
		-0.302491, 0.545070, -0.781919,
		36.797798, 33.312202, 26.332577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210258, 33.691216, 26.951839>,  <37.009541, 32.930653, 26.879919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210258, 33.691216, 26.951839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884754, 33.656948, 26.721897>,  <36.689453, 33.636387, 26.583931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884754, 33.656948, 26.721897>,  <37.210258, 33.691216, 26.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884754, 33.656948, 26.721897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497006, 0.615319, 0.611855,
		0.301303, 0.783609, -0.543299,
		-0.813758, -0.085669, -0.574856,
		36.640629, 33.631248, 26.549440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005341, 34.304394, 26.779125>,  <37.210258, 33.691216, 26.951839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005341, 34.304394, 26.779125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665489, 34.100750, 26.724073>,  <36.461578, 33.978561, 26.691042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665489, 34.100750, 26.724073>,  <37.005341, 34.304394, 26.779125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665489, 34.100750, 26.724073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498661, 0.690558, 0.523896,
		-0.171681, 0.513745, -0.840590,
		-0.849625, -0.509112, -0.137629,
		36.410603, 33.948017, 26.682785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478889, 34.766033, 27.111996>,  <37.005341, 34.304394, 26.779125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478889, 34.766033, 27.111996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218403, 34.473125, 27.032293>,  <36.062111, 34.297382, 26.984472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218403, 34.473125, 27.032293>,  <36.478889, 34.766033, 27.111996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218403, 34.473125, 27.032293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735659, 0.544666, 0.402671,
		-0.186334, 0.408811, -0.893394,
		-0.651218, -0.732266, -0.199255,
		36.023037, 34.253445, 26.972517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913654, 35.074661, 26.842524>,  <36.478889, 34.766033, 27.111996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913654, 35.074661, 26.842524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823494, 34.719078, 27.001997>,  <35.769398, 34.505730, 27.097681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823494, 34.719078, 27.001997>,  <35.913654, 35.074661, 26.842524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823494, 34.719078, 27.001997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653840, 0.441399, 0.614541,
		-0.722279, -0.122156, -0.680728,
		-0.225403, -0.888957, 0.398684,
		35.755875, 34.452393, 27.121603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216179, 35.141464, 26.923075>,  <35.913654, 35.074661, 26.842524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216179, 35.141464, 26.923075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382763, 34.876003, 27.171631>,  <35.482716, 34.716728, 27.320765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382763, 34.876003, 27.171631>,  <35.216179, 35.141464, 26.923075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382763, 34.876003, 27.171631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377788, 0.495355, 0.782240,
		-0.826942, -0.560530, -0.044421,
		0.416465, -0.663649, 0.621391,
		35.507702, 34.676910, 27.358047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652031, 34.858883, 27.345343>,  <35.216179, 35.141464, 26.923075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652031, 34.858883, 27.345343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963871, 34.761356, 27.576088>,  <35.150974, 34.702839, 27.714535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963871, 34.761356, 27.576088>,  <34.652031, 34.858883, 27.345343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963871, 34.761356, 27.576088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480270, 0.358415, 0.800549,
		-0.401943, -0.901162, 0.162324,
		0.779604, -0.243816, 0.576863,
		35.197754, 34.688213, 27.749147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409256, 34.425430, 27.846504>,  <34.652031, 34.858883, 27.345343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409256, 34.425430, 27.846504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746849, 34.604160, 27.965187>,  <34.949406, 34.711399, 28.036398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746849, 34.604160, 27.965187>,  <34.409256, 34.425430, 27.846504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746849, 34.604160, 27.965187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478775, 0.378227, 0.792287,
		0.241790, -0.810736, 0.533146,
		0.843986, 0.446824, 0.296709,
		35.000046, 34.738209, 28.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390842, 34.349545, 28.555386>,  <34.409256, 34.425430, 27.846504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390842, 34.349545, 28.555386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664204, 34.637585, 28.507339>,  <34.828220, 34.810410, 28.478512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664204, 34.637585, 28.507339>,  <34.390842, 34.349545, 28.555386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664204, 34.637585, 28.507339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244826, 0.381064, 0.891544,
		0.687770, -0.579872, 0.436716,
		0.683398, 0.720097, -0.120117,
		34.869225, 34.853615, 28.471304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701378, 34.514858, 29.225912>,  <34.390842, 34.349545, 28.555386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701378, 34.514858, 29.225912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787609, 34.834942, 29.002058>,  <34.839348, 35.026993, 28.867746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787609, 34.834942, 29.002058>,  <34.701378, 34.514858, 29.225912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787609, 34.834942, 29.002058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082449, 0.585979, 0.806121,
		0.973000, -0.127638, 0.192299,
		0.215575, 0.800211, -0.559634,
		34.852283, 35.075005, 28.834167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319260, 34.833584, 29.558632>,  <34.701378, 34.514858, 29.225912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319260, 34.833584, 29.558632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123631, 35.113029, 29.349730>,  <35.006252, 35.280697, 29.224388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123631, 35.113029, 29.349730>,  <35.319260, 34.833584, 29.558632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123631, 35.113029, 29.349730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161923, 0.515623, 0.841376,
		0.857082, 0.496058, -0.139055,
		-0.489071, 0.698613, -0.522255,
		34.976910, 35.322613, 29.193052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378765, 35.512581, 30.017673>,  <35.319260, 34.833584, 29.558632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378765, 35.512581, 30.017673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082703, 35.595444, 29.761782>,  <34.905064, 35.645161, 29.608248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082703, 35.595444, 29.761782>,  <35.378765, 35.512581, 30.017673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082703, 35.595444, 29.761782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387813, 0.645692, 0.657787,
		0.549336, 0.734960, -0.397573,
		-0.740156, 0.207162, -0.639729,
		34.860657, 35.657593, 29.569862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299923, 36.225262, 29.997723>,  <35.378765, 35.512581, 30.017673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299923, 36.225262, 29.997723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946869, 36.091915, 29.865164>,  <34.735035, 36.011906, 29.785629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946869, 36.091915, 29.865164>,  <35.299923, 36.225262, 29.997723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946869, 36.091915, 29.865164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468814, 0.572982, 0.672239,
		-0.034220, 0.748704, -0.662021,
		-0.882634, -0.333368, -0.331395,
		34.682079, 35.991905, 29.765745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791862, 36.137901, 30.517384>,  <35.299923, 36.225262, 29.997723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791862, 36.137901, 30.517384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104176, 36.081379, 30.760832>,  <36.291561, 36.047466, 30.906900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104176, 36.081379, 30.760832>,  <35.791862, 36.137901, 30.517384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104176, 36.081379, 30.760832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579300, -0.201228, -0.789886,
		0.234086, 0.969299, -0.075256,
		0.780779, -0.141306, 0.608619,
		36.338409, 36.038986, 30.943417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260818, 36.391388, 30.132450>,  <35.791862, 36.137901, 30.517384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260818, 36.391388, 30.132450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491428, 36.189556, 30.389517>,  <36.629795, 36.068459, 30.543756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491428, 36.189556, 30.389517>,  <36.260818, 36.391388, 30.132450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491428, 36.189556, 30.389517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666489, -0.164588, -0.727120,
		0.472664, 0.847533, 0.241407,
		0.576525, -0.504578, 0.642666,
		36.664387, 36.038181, 30.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980194, 36.573578, 29.955917>,  <36.260818, 36.391388, 30.132450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980194, 36.573578, 29.955917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035912, 36.242157, 30.172840>,  <37.069340, 36.043304, 30.302994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035912, 36.242157, 30.172840>,  <36.980194, 36.573578, 29.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035912, 36.242157, 30.172840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878824, -0.148953, -0.453300,
		0.456361, 0.539734, 0.707404,
		0.139291, -0.828553, 0.542308,
		37.077698, 35.993591, 30.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587852, 36.568424, 30.146200>,  <36.980194, 36.573578, 29.955917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587852, 36.568424, 30.146200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491447, 36.180248, 30.151239>,  <37.433605, 35.947342, 30.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491447, 36.180248, 30.151239>,  <37.587852, 36.568424, 30.146200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491447, 36.180248, 30.151239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713398, -0.185950, -0.675637,
		0.658007, -0.153852, 0.737127,
		-0.241017, -0.970439, 0.012599,
		37.419144, 35.889118, 30.155020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204205, 36.304958, 29.890249>,  <37.587852, 36.568424, 30.146200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204205, 36.304958, 29.890249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922615, 36.021889, 29.866213>,  <37.753662, 35.852047, 29.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922615, 36.021889, 29.866213>,  <38.204205, 36.304958, 29.890249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922615, 36.021889, 29.866213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550925, -0.490721, -0.675037,
		0.448220, -0.508315, 0.735333,
		-0.703975, -0.707678, -0.060092,
		37.711422, 35.809586, 29.848185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492897, 35.621277, 30.013893>,  <38.204205, 36.304958, 29.890249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492897, 35.621277, 30.013893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164772, 35.578136, 29.789232>,  <37.967896, 35.552254, 29.654436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164772, 35.578136, 29.789232>,  <38.492897, 35.621277, 30.013893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164772, 35.578136, 29.789232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542385, -0.458174, -0.704198,
		-0.181386, -0.882295, 0.434344,
		-0.820316, -0.107849, -0.561650,
		37.918678, 35.545780, 29.620737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682739, 34.990116, 29.718409>,  <38.492897, 35.621277, 30.013893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682739, 34.990116, 29.718409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389374, 35.136536, 29.489286>,  <38.213352, 35.224388, 29.351812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389374, 35.136536, 29.489286>,  <38.682739, 34.990116, 29.718409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389374, 35.136536, 29.489286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494058, -0.291739, -0.819021,
		-0.466911, -0.883684, 0.033117,
		-0.733417, 0.366048, -0.572807,
		38.169350, 35.246349, 29.317444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430859, 34.472027, 29.186954>,  <38.682739, 34.990116, 29.718409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430859, 34.472027, 29.186954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327080, 34.830830, 29.043808>,  <38.264812, 35.046112, 28.957920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327080, 34.830830, 29.043808>,  <38.430859, 34.472027, 29.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327080, 34.830830, 29.043808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406865, -0.234543, -0.882865,
		-0.875870, -0.374659, -0.304109,
		-0.259446, 0.897006, -0.357865,
		38.249245, 35.099930, 28.936449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084793, 34.401402, 28.504107>,  <38.430859, 34.472027, 29.186954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084793, 34.401402, 28.504107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219757, 34.777893, 28.497814>,  <38.300735, 35.003788, 28.494040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219757, 34.777893, 28.497814>,  <38.084793, 34.401402, 28.504107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219757, 34.777893, 28.497814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314420, -0.128434, -0.940556,
		-0.887295, 0.312411, -0.339275,
		0.337415, 0.941225, -0.015730,
		38.320980, 35.060261, 28.493095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970715, 34.682251, 27.911205>,  <38.084793, 34.401402, 28.504107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970715, 34.682251, 27.911205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264957, 34.933483, 28.012714>,  <38.441502, 35.084221, 28.073620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264957, 34.933483, 28.012714>,  <37.970715, 34.682251, 27.911205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264957, 34.933483, 28.012714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486727, -0.229500, -0.842868,
		-0.471147, 0.743537, -0.474525,
		0.735606, 0.628079, 0.253771,
		38.485638, 35.121906, 28.088846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190914, 35.079418, 27.364187>,  <37.970715, 34.682251, 27.911205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190914, 35.079418, 27.364187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509705, 35.133247, 27.599722>,  <38.700977, 35.165543, 27.741043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509705, 35.133247, 27.599722>,  <38.190914, 35.079418, 27.364187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509705, 35.133247, 27.599722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599600, -0.058584, -0.798153,
		-0.072910, 0.989171, -0.127377,
		0.796972, 0.134568, 0.588835,
		38.748795, 35.173618, 27.776373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513309, 35.703175, 27.116514>,  <38.190914, 35.079418, 27.364187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513309, 35.703175, 27.116514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801830, 35.498444, 27.303169>,  <38.974945, 35.375607, 27.415163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801830, 35.498444, 27.303169>,  <38.513309, 35.703175, 27.116514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801830, 35.498444, 27.303169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520297, -0.044301, -0.852835,
		0.457177, 0.857945, 0.234348,
		0.721304, -0.511828, 0.466640,
		39.018223, 35.344894, 27.443161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066444, 35.950691, 26.744961>,  <38.513309, 35.703175, 27.116514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066444, 35.950691, 26.744961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221630, 35.629250, 26.925497>,  <39.314739, 35.436386, 27.033819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221630, 35.629250, 26.925497>,  <39.066444, 35.950691, 26.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221630, 35.629250, 26.925497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652817, -0.106095, -0.750049,
		0.650627, 0.585633, 0.483445,
		0.387962, -0.803603, 0.451340,
		39.338020, 35.388168, 27.060900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775345, 36.016724, 26.670704>,  <39.066444, 35.950691, 26.744961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775345, 36.016724, 26.670704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694473, 35.626820, 26.708561>,  <39.645950, 35.392876, 26.731276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694473, 35.626820, 26.708561>,  <39.775345, 36.016724, 26.670704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694473, 35.626820, 26.708561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645049, -0.205258, -0.736058,
		0.736909, -0.087767, 0.670270,
		-0.202180, -0.974765, 0.094643,
		39.633820, 35.334389, 26.736954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373753, 35.661427, 26.679249>,  <39.775345, 36.016724, 26.670704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373753, 35.661427, 26.679249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106636, 35.383160, 26.573339>,  <39.946365, 35.216198, 26.509794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106636, 35.383160, 26.573339>,  <40.373753, 35.661427, 26.679249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106636, 35.383160, 26.573339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580918, -0.264677, -0.769727,
		0.465395, -0.667826, 0.580875,
		-0.667788, -0.695668, -0.264773,
		39.906300, 35.174458, 26.493908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790924, 35.139793, 26.463800>,  <40.373753, 35.661427, 26.679249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790924, 35.139793, 26.463800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440758, 35.015629, 26.315584>,  <40.230659, 34.941132, 26.226654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440758, 35.015629, 26.315584>,  <40.790924, 35.139793, 26.463800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440758, 35.015629, 26.315584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452883, -0.258744, -0.853199,
		0.168965, -0.914712, 0.367086,
		-0.875413, -0.310408, -0.370539,
		40.178135, 34.922508, 26.204422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934624, 34.547703, 26.099167>,  <40.790924, 35.139793, 26.463800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934624, 34.547703, 26.099167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584351, 34.671501, 25.950901>,  <40.374187, 34.745781, 25.861940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584351, 34.671501, 25.950901>,  <40.934624, 34.547703, 26.099167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584351, 34.671501, 25.950901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282246, -0.294785, -0.912929,
		-0.391813, -0.904055, 0.170785,
		-0.875683, 0.309494, -0.370666,
		40.321644, 34.764351, 25.839701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626873, 33.940575, 25.767296>,  <40.934624, 34.547703, 26.099167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626873, 33.940575, 25.767296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506268, 34.287167, 25.608149>,  <40.433903, 34.495121, 25.512661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506268, 34.287167, 25.608149>,  <40.626873, 33.940575, 25.767296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506268, 34.287167, 25.608149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388851, -0.269258, -0.881076,
		-0.870565, -0.420370, -0.255746,
		-0.301516, 0.866481, -0.397868,
		40.415813, 34.547112, 25.488789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243484, 33.719841, 25.222239>,  <40.626873, 33.940575, 25.767296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243484, 33.719841, 25.222239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306961, 34.107113, 25.144833>,  <40.345047, 34.339474, 25.098389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306961, 34.107113, 25.144833>,  <40.243484, 33.719841, 25.222239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306961, 34.107113, 25.144833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231032, -0.226973, -0.946101,
		-0.959917, 0.105434, -0.259699,
		0.158696, 0.968177, -0.193517,
		40.354568, 34.397568, 25.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075893, 33.705601, 24.488623>,  <40.243484, 33.719841, 25.222239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075893, 33.705601, 24.488623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262821, 34.055061, 24.542810>,  <40.374977, 34.264736, 24.575323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262821, 34.055061, 24.542810>,  <40.075893, 33.705601, 24.488623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262821, 34.055061, 24.542810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204475, 0.042270, -0.977959,
		-0.860118, 0.484720, -0.158885,
		0.467320, 0.873648, 0.135470,
		40.403019, 34.317154, 24.583452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761604, 34.180553, 23.992928>,  <40.075893, 33.705601, 24.488623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761604, 34.180553, 23.992928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130672, 34.319405, 24.060076>,  <40.352112, 34.402714, 24.100365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130672, 34.319405, 24.060076>,  <39.761604, 34.180553, 23.992928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130672, 34.319405, 24.060076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208863, -0.083971, -0.974333,
		-0.324120, 0.934052, -0.149980,
		0.922671, 0.347126, 0.167871,
		40.407475, 34.423542, 24.110437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863564, 34.553135, 23.384502>,  <39.761604, 34.180553, 23.992928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863564, 34.553135, 23.384502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223694, 34.482044, 23.543409>,  <40.439774, 34.439388, 23.638754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223694, 34.482044, 23.543409>,  <39.863564, 34.553135, 23.384502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223694, 34.482044, 23.543409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391994, -0.065415, -0.917639,
		0.189079, 0.981903, 0.010774,
		0.900328, -0.177729, 0.397269,
		40.493793, 34.428726, 23.662590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248508, 34.915379, 22.942389>,  <39.863564, 34.553135, 23.384502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248508, 34.915379, 22.942389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507069, 34.676933, 23.132885>,  <40.662205, 34.533867, 23.247183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507069, 34.676933, 23.132885>,  <40.248508, 34.915379, 22.942389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507069, 34.676933, 23.132885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306389, -0.368843, -0.877543,
		0.698775, 0.713164, -0.055779,
		0.646405, -0.596115, 0.476243,
		40.700989, 34.498100, 23.275759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862530, 35.008537, 22.594707>,  <40.248508, 34.915379, 22.942389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862530, 35.008537, 22.594707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866787, 34.658539, 22.788309>,  <40.869343, 34.448540, 22.904470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866787, 34.658539, 22.788309>,  <40.862530, 35.008537, 22.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866787, 34.658539, 22.788309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258321, -0.465195, -0.846678,
		0.966000, 0.134041, 0.221080,
		0.010644, -0.875001, 0.484004,
		40.869980, 34.396038, 22.933510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520325, 34.725010, 22.400002>,  <40.862530, 35.008537, 22.594707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520325, 34.725010, 22.400002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324795, 34.394035, 22.510567>,  <41.207478, 34.195450, 22.576906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324795, 34.394035, 22.510567>,  <41.520325, 34.725010, 22.400002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324795, 34.394035, 22.510567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540689, -0.536010, -0.648342,
		0.684619, -0.167474, 0.709400,
		-0.488826, -0.827433, 0.276412,
		41.178146, 34.145805, 22.593491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980686, 34.121723, 22.526382>,  <41.520325, 34.725010, 22.400002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980686, 34.121723, 22.526382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631741, 33.934158, 22.471083>,  <41.422375, 33.821621, 22.437902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631741, 33.934158, 22.471083>,  <41.980686, 34.121723, 22.526382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631741, 33.934158, 22.471083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455456, -0.676822, -0.578335,
		0.177618, -0.567482, 0.804000,
		-0.872360, -0.468909, -0.138247,
		41.370033, 33.793484, 22.429609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136089, 33.365513, 22.662003>,  <41.980686, 34.121723, 22.526382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136089, 33.365513, 22.662003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800392, 33.371372, 22.444580>,  <41.598972, 33.374889, 22.314127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800392, 33.371372, 22.444580>,  <42.136089, 33.365513, 22.662003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800392, 33.371372, 22.444580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359363, -0.735261, -0.574673,
		-0.408076, -0.677625, 0.611798,
		-0.839245, 0.014653, -0.543556,
		41.548618, 33.375767, 22.281513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979221, 32.662830, 22.574759>,  <42.136089, 33.365513, 22.662003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979221, 32.662830, 22.574759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781559, 32.864513, 22.291470>,  <41.662960, 32.985523, 22.121496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781559, 32.864513, 22.291470>,  <41.979221, 32.662830, 22.574759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781559, 32.864513, 22.291470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341967, -0.636233, -0.691567,
		-0.799290, -0.583933, 0.141978,
		-0.494160, 0.504211, -0.708221,
		41.633312, 33.015778, 22.079002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404350, 32.229153, 22.181091>,  <41.979221, 32.662830, 22.574759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404350, 32.229153, 22.181091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473438, 32.514820, 21.909758>,  <41.514893, 32.686218, 21.746958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473438, 32.514820, 21.909758>,  <41.404350, 32.229153, 22.181091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473438, 32.514820, 21.909758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311191, -0.692975, -0.650343,
		-0.934520, -0.098763, -0.341933,
		0.172722, 0.714165, -0.678333,
		41.525253, 32.729069, 21.706257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236904, 31.983519, 21.572197>,  <41.404350, 32.229153, 22.181091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236904, 31.983519, 21.572197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471733, 32.290058, 21.467844>,  <41.612629, 32.473984, 21.405231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471733, 32.290058, 21.467844>,  <41.236904, 31.983519, 21.572197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471733, 32.290058, 21.467844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459098, -0.580599, -0.672409,
		-0.666768, 0.274980, -0.692681,
		0.587069, 0.766349, -0.260882,
		41.647854, 32.519962, 21.389580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316635, 31.916286, 20.930254>,  <41.236904, 31.983519, 21.572197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316635, 31.916286, 20.930254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623863, 32.167507, 20.980228>,  <41.808201, 32.318241, 21.010214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623863, 32.167507, 20.980228>,  <41.316635, 31.916286, 20.930254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623863, 32.167507, 20.980228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584718, -0.608310, -0.536715,
		-0.261086, 0.485290, -0.834462,
		0.768075, 0.628054, 0.124937,
		41.854286, 32.355923, 21.017710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518940, 32.154442, 20.217472>,  <41.316635, 31.916286, 20.930254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518940, 32.154442, 20.217472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839413, 32.245583, 20.438812>,  <42.031696, 32.300266, 20.571617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839413, 32.245583, 20.438812>,  <41.518940, 32.154442, 20.217472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839413, 32.245583, 20.438812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598012, -0.270486, -0.754466,
		-0.022232, 0.935372, -0.352965,
		0.801179, 0.227851, 0.553350,
		42.079765, 32.313938, 20.604816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987553, 32.368683, 19.704872>,  <41.518940, 32.154442, 20.217472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987553, 32.368683, 19.704872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208755, 32.294930, 20.029881>,  <42.341476, 32.250679, 20.224886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208755, 32.294930, 20.029881>,  <41.987553, 32.368683, 19.704872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208755, 32.294930, 20.029881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659213, -0.499563, -0.562027,
		0.509534, 0.846427, -0.154711,
		0.553003, -0.184384, 0.812521,
		42.374657, 32.239613, 20.273636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677769, 32.522316, 19.432945>,  <41.987553, 32.368683, 19.704872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677769, 32.522316, 19.432945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663803, 32.265610, 19.739389>,  <42.655426, 32.111588, 19.923256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663803, 32.265610, 19.739389>,  <42.677769, 32.522316, 19.432945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663803, 32.265610, 19.739389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760406, -0.514492, -0.396334,
		0.648509, 0.568717, 0.505961,
		-0.034910, -0.641762, 0.766109,
		42.653332, 32.073082, 19.969223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367729, 32.572842, 19.699381>,  <42.677769, 32.522316, 19.432945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367729, 32.572842, 19.699381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204220, 32.228600, 19.820875>,  <43.106113, 32.022053, 19.893772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204220, 32.228600, 19.820875>,  <43.367729, 32.572842, 19.699381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204220, 32.228600, 19.820875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796443, -0.498904, -0.341721,
		0.445622, 0.102219, 0.889366,
		-0.408778, -0.860608, 0.303734,
		43.081585, 31.970417, 19.911995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868137, 32.135777, 19.881990>,  <43.367729, 32.572842, 19.699381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868137, 32.135777, 19.881990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581490, 31.860302, 19.837864>,  <43.409500, 31.695017, 19.811388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581490, 31.860302, 19.837864>,  <43.868137, 32.135777, 19.881990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581490, 31.860302, 19.837864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668631, -0.633340, -0.389633,
		0.198466, -0.352980, 0.914339,
		-0.716620, -0.688684, -0.110317,
		43.366505, 31.653696, 19.804770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275612, 31.518967, 19.880869>,  <43.868137, 32.135777, 19.881990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275612, 31.518967, 19.880869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928780, 31.383808, 19.734444>,  <43.720680, 31.302713, 19.646589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928780, 31.383808, 19.734444>,  <44.275612, 31.518967, 19.880869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928780, 31.383808, 19.734444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478291, -0.770158, -0.422012,
		-0.139328, -0.541001, 0.829400,
		-0.867079, -0.337897, -0.366061,
		43.668655, 31.282438, 19.624626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184589, 30.770391, 20.069048>,  <44.275612, 31.518967, 19.880869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184589, 30.770391, 20.069048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969818, 30.850758, 19.741306>,  <43.840954, 30.898977, 19.544661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969818, 30.850758, 19.741306>,  <44.184589, 30.770391, 20.069048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969818, 30.850758, 19.741306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362128, -0.822308, -0.438946,
		-0.761952, -0.532394, 0.368764,
		-0.536929, 0.200916, -0.819353,
		43.808739, 30.911034, 19.495501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588707, 30.151609, 19.866697>,  <44.184589, 30.770391, 20.069048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588707, 30.151609, 19.866697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708447, 29.808605, 20.034060>,  <44.780289, 29.602802, 20.134478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708447, 29.808605, 20.034060>,  <44.588707, 30.151609, 19.866697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708447, 29.808605, 20.034060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647875, 0.139251, 0.748911,
		-0.700464, -0.495260, -0.513876,
		0.299348, -0.857512, 0.418407,
		44.798252, 29.551352, 20.159582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012280, 29.860096, 20.188366>,  <44.588707, 30.151609, 19.866697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012280, 29.860096, 20.188366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327751, 29.694168, 20.369877>,  <44.517033, 29.594612, 20.478785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327751, 29.694168, 20.369877>,  <44.012280, 29.860096, 20.188366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327751, 29.694168, 20.369877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490222, 0.021141, 0.871341,
		-0.371042, -0.909659, -0.186680,
		0.788676, -0.414818, 0.453779,
		44.564354, 29.569723, 20.506010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666889, 29.414387, 20.576885>,  <44.012280, 29.860096, 20.188366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666889, 29.414387, 20.576885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029987, 29.484707, 20.729250>,  <44.247845, 29.526899, 20.820669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029987, 29.484707, 20.729250>,  <43.666889, 29.414387, 20.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029987, 29.484707, 20.729250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405678, 0.136496, 0.903767,
		0.106874, -0.974920, 0.195215,
		0.907747, 0.175783, 0.380915,
		44.302311, 29.537447, 20.843523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758461, 28.985594, 21.167440>,  <43.666889, 29.414387, 20.576885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758461, 28.985594, 21.167440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012943, 29.291885, 21.205183>,  <44.165634, 29.475660, 21.227829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012943, 29.291885, 21.205183>,  <43.758461, 28.985594, 21.167440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012943, 29.291885, 21.205183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396046, 0.219178, 0.891688,
		0.662111, -0.604665, 0.442706,
		0.636205, 0.765728, 0.094355,
		44.203804, 29.521605, 21.233490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021893, 28.938505, 21.853310>,  <43.758461, 28.985594, 21.167440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021893, 28.938505, 21.853310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131702, 29.311853, 21.760828>,  <44.197590, 29.535862, 21.705339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131702, 29.311853, 21.760828>,  <44.021893, 28.938505, 21.853310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131702, 29.311853, 21.760828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239164, 0.299164, 0.923743,
		0.931363, -0.198294, 0.305356,
		0.274524, 0.933371, -0.231205,
		44.214058, 29.591864, 21.691467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516960, 29.163628, 22.368092>,  <44.021893, 28.938505, 21.853310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516960, 29.163628, 22.368092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343590, 29.485083, 22.204967>,  <44.239567, 29.677956, 22.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343590, 29.485083, 22.204967>,  <44.516960, 29.163628, 22.368092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343590, 29.485083, 22.204967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178656, 0.366920, 0.912936,
		0.883304, 0.468545, -0.015456,
		-0.433423, 0.803639, -0.407810,
		44.213562, 29.726173, 22.082624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742836, 29.617676, 22.778334>,  <44.516960, 29.163628, 22.368092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742836, 29.617676, 22.778334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424595, 29.767267, 22.587692>,  <44.233650, 29.857021, 22.473307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424595, 29.767267, 22.587692>,  <44.742836, 29.617676, 22.778334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424595, 29.767267, 22.587692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365165, 0.331693, 0.869847,
		0.483390, 0.866095, -0.127334,
		-0.795606, 0.373977, -0.476604,
		44.185913, 29.879461, 22.444712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612774, 30.360991, 22.987846>,  <44.742836, 29.617676, 22.778334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612774, 30.360991, 22.987846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262535, 30.241657, 22.835888>,  <44.052391, 30.170057, 22.744713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262535, 30.241657, 22.835888>,  <44.612774, 30.360991, 22.987846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262535, 30.241657, 22.835888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480418, 0.456083, 0.749124,
		-0.050227, 0.838442, -0.542672,
		-0.875600, -0.298335, -0.379895,
		43.999855, 30.152157, 22.721920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134502, 30.996849, 22.900826>,  <44.612774, 30.360991, 22.987846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134502, 30.996849, 22.900826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905819, 30.670271, 22.933233>,  <43.768608, 30.474323, 22.952679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905819, 30.670271, 22.933233>,  <44.134502, 30.996849, 22.900826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905819, 30.670271, 22.933233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554350, 0.457192, 0.695465,
		-0.604853, 0.352689, -0.713978,
		-0.571707, -0.816447, 0.081021,
		43.734306, 30.425337, 22.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518482, 31.264053, 22.915646>,  <44.134502, 30.996849, 22.900826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518482, 31.264053, 22.915646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452866, 30.889999, 23.041254>,  <43.413494, 30.665567, 23.116619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452866, 30.889999, 23.041254>,  <43.518482, 31.264053, 22.915646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452866, 30.889999, 23.041254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692129, 0.335935, 0.638831,
		-0.702885, -0.112545, -0.702344,
		-0.164045, -0.935137, 0.314020,
		43.403652, 30.609459, 23.135460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788029, 31.302410, 23.032967>,  <43.518482, 31.264053, 22.915646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788029, 31.302410, 23.032967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911270, 30.974834, 23.226629>,  <42.985214, 30.778288, 23.342827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911270, 30.974834, 23.226629>,  <42.788029, 31.302410, 23.032967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911270, 30.974834, 23.226629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626268, 0.208495, 0.751211,
		-0.716141, -0.534665, -0.448637,
		0.308108, -0.818940, 0.484155,
		43.003704, 30.729153, 23.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151001, 30.784775, 23.202868>,  <42.788029, 31.302410, 23.032967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151001, 30.784775, 23.202868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452206, 30.743851, 23.462868>,  <42.632931, 30.719297, 23.618868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452206, 30.743851, 23.462868>,  <42.151001, 30.784775, 23.202868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452206, 30.743851, 23.462868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625592, 0.194903, 0.755412,
		-0.203973, -0.975472, 0.082761,
		0.753014, -0.102309, 0.650002,
		42.678108, 30.713158, 23.657869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895947, 30.413317, 23.733925>,  <42.151001, 30.784775, 23.202868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895947, 30.413317, 23.733925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206326, 30.603966, 23.899208>,  <42.392551, 30.718355, 23.998379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206326, 30.603966, 23.899208>,  <41.895947, 30.413317, 23.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206326, 30.603966, 23.899208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600763, 0.358629, 0.714472,
		0.192342, -0.802632, 0.564612,
		0.775944, 0.476621, 0.413212,
		42.439110, 30.746952, 24.023170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788673, 30.188614, 24.419680>,  <41.895947, 30.413317, 23.733925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788673, 30.188614, 24.419680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055183, 30.485815, 24.445070>,  <42.215088, 30.664135, 24.460304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055183, 30.485815, 24.445070>,  <41.788673, 30.188614, 24.419680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055183, 30.485815, 24.445070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474781, 0.357026, 0.804435,
		0.575037, -0.566108, 0.590639,
		0.666270, 0.743004, 0.063474,
		42.255066, 30.708715, 24.464113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008167, 30.194302, 25.053902>,  <41.788673, 30.188614, 24.419680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008167, 30.194302, 25.053902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099255, 30.564331, 24.932322>,  <42.153908, 30.786348, 24.859373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099255, 30.564331, 24.932322>,  <42.008167, 30.194302, 25.053902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099255, 30.564331, 24.932322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375284, 0.371416, 0.849242,
		0.898502, -0.079324, 0.431744,
		0.227722, 0.925072, -0.303949,
		42.167572, 30.841852, 24.841137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175823, 30.523325, 25.624346>,  <42.008167, 30.194302, 25.053902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175823, 30.523325, 25.624346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109325, 30.835009, 25.382620>,  <42.069427, 31.022018, 25.237583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109325, 30.835009, 25.382620>,  <42.175823, 30.523325, 25.624346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109325, 30.835009, 25.382620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443793, 0.488149, 0.751504,
		0.880575, 0.393124, 0.264655,
		-0.166243, 0.779208, -0.604317,
		42.059452, 31.068771, 25.201324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465942, 31.152517, 25.921862>,  <42.175823, 30.523325, 25.624346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465942, 31.152517, 25.921862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190578, 31.275574, 25.659124>,  <42.025360, 31.349407, 25.501482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190578, 31.275574, 25.659124>,  <42.465942, 31.152517, 25.921862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190578, 31.275574, 25.659124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414257, 0.576593, 0.704224,
		0.595381, 0.756899, -0.269491,
		-0.688413, 0.307643, -0.656843,
		41.984055, 31.367867, 25.462070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416565, 31.870344, 26.034443>,  <42.465942, 31.152517, 25.921862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416565, 31.870344, 26.034443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076408, 31.788784, 25.840431>,  <41.872314, 31.739847, 25.724024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076408, 31.788784, 25.840431>,  <42.416565, 31.870344, 26.034443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076408, 31.788784, 25.840431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525223, 0.383574, 0.759613,
		0.031159, 0.900719, -0.433282,
		-0.850394, -0.203901, -0.485030,
		41.821289, 31.727613, 25.694921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132732, 32.458668, 25.859247>,  <42.416565, 31.870344, 26.034443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132732, 32.458668, 25.859247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830788, 32.196430, 25.867098>,  <41.649620, 32.039089, 25.871809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830788, 32.196430, 25.867098>,  <42.132732, 32.458668, 25.859247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830788, 32.196430, 25.867098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469786, 0.561316, 0.681341,
		-0.457699, 0.505096, -0.731703,
		-0.754859, -0.655593, 0.019627,
		41.604328, 31.999752, 25.872986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385094, 32.804691, 25.975449>,  <42.132732, 32.458668, 25.859247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385094, 32.804691, 25.975449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281799, 32.431324, 26.075079>,  <41.219822, 32.207302, 26.134857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281799, 32.431324, 26.075079>,  <41.385094, 32.804691, 25.975449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281799, 32.431324, 26.075079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702711, 0.358413, 0.614603,
		-0.662956, -0.016316, -0.748480,
		-0.258238, -0.933420, 0.249077,
		41.204327, 32.151299, 26.149803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566090, 32.714340, 25.979094>,  <41.385094, 32.804691, 25.975449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566090, 32.714340, 25.979094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740219, 32.437790, 26.209740>,  <40.844696, 32.271858, 26.348127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740219, 32.437790, 26.209740>,  <40.566090, 32.714340, 25.979094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740219, 32.437790, 26.209740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598109, 0.256602, 0.759224,
		-0.672872, -0.675390, -0.301814,
		0.435326, -0.691378, 0.576617,
		40.870815, 32.230377, 26.382725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011490, 32.343769, 26.407055>,  <40.566090, 32.714340, 25.979094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011490, 32.343769, 26.407055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356419, 32.295441, 26.603752>,  <40.563374, 32.266445, 26.721771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356419, 32.295441, 26.603752>,  <40.011490, 32.343769, 26.407055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356419, 32.295441, 26.603752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406168, 0.414881, 0.814187,
		-0.302384, -0.901818, 0.308686,
		0.862317, -0.120819, 0.491743,
		40.615112, 32.259193, 26.751276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850605, 32.214462, 27.109753>,  <40.011490, 32.343769, 26.407055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850605, 32.214462, 27.109753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239403, 32.301247, 27.145874>,  <40.472683, 32.353317, 27.167547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239403, 32.301247, 27.145874>,  <39.850605, 32.214462, 27.109753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239403, 32.301247, 27.145874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193927, 0.523474, 0.829679,
		0.132733, -0.823956, 0.550888,
		0.971995, 0.216958, 0.090305,
		40.531002, 32.366333, 27.172966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937286, 32.410164, 27.797190>,  <39.850605, 32.214462, 27.109753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937286, 32.410164, 27.797190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296272, 32.539108, 27.676762>,  <40.511665, 32.616474, 27.604504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296272, 32.539108, 27.676762>,  <39.937286, 32.410164, 27.797190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296272, 32.539108, 27.676762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009328, 0.668539, 0.743619,
		0.440991, -0.670179, 0.596982,
		0.897463, 0.322360, -0.301071,
		40.565510, 32.635815, 27.586441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431988, 32.356995, 28.332014>,  <39.937286, 32.410164, 27.797190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431988, 32.356995, 28.332014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542294, 32.660793, 28.096344>,  <40.608479, 32.843071, 27.954943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542294, 32.660793, 28.096344>,  <40.431988, 32.356995, 28.332014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542294, 32.660793, 28.096344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051628, 0.600352, 0.798068,
		0.959838, -0.250497, 0.126345,
		0.275765, 0.759492, -0.589173,
		40.625023, 32.888641, 27.919592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186314, 32.489212, 28.409224>,  <40.431988, 32.356995, 28.332014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186314, 32.489212, 28.409224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023266, 32.812012, 28.238295>,  <40.925438, 33.005692, 28.135736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023266, 32.812012, 28.238295>,  <41.186314, 32.489212, 28.409224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023266, 32.812012, 28.238295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278087, 0.555439, 0.783681,
		0.869780, 0.200607, -0.450821,
		-0.407615, 0.806997, -0.427323,
		40.900982, 33.054111, 28.110098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607872, 33.073410, 28.585859>,  <41.186314, 32.489212, 28.409224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607872, 33.073410, 28.585859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263504, 33.250862, 28.486254>,  <41.056885, 33.357334, 28.426491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263504, 33.250862, 28.486254>,  <41.607872, 33.073410, 28.585859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263504, 33.250862, 28.486254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121940, 0.655154, 0.745589,
		0.493908, 0.611529, -0.618132,
		-0.860921, 0.443628, -0.249016,
		41.005226, 33.383949, 28.411549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697720, 33.827412, 28.482410>,  <41.607872, 33.073410, 28.585859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697720, 33.827412, 28.482410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310402, 33.780029, 28.570396>,  <41.078011, 33.751598, 28.623188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310402, 33.780029, 28.570396>,  <41.697720, 33.827412, 28.482410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310402, 33.780029, 28.570396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115210, 0.569525, 0.813860,
		-0.221680, 0.813394, -0.537818,
		-0.968290, -0.118455, 0.219963,
		41.019917, 33.744492, 28.636385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523129, 34.415764, 28.719244>,  <41.697720, 33.827412, 28.482410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523129, 34.415764, 28.719244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212669, 34.217377, 28.874992>,  <41.026394, 34.098343, 28.968441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212669, 34.217377, 28.874992>,  <41.523129, 34.415764, 28.719244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212669, 34.217377, 28.874992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117473, 0.492960, 0.862085,
		-0.619510, 0.714847, -0.324348,
		-0.776150, -0.495968, 0.389369,
		40.979824, 34.068588, 28.991802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354328, 34.956173, 29.016560>,  <41.523129, 34.415764, 28.719244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354328, 34.956173, 29.016560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185020, 34.632477, 29.179520>,  <41.083435, 34.438259, 29.277296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185020, 34.632477, 29.179520>,  <41.354328, 34.956173, 29.016560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185020, 34.632477, 29.179520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027680, 0.437908, 0.898594,
		-0.905581, 0.391624, -0.162953,
		-0.423270, -0.809239, 0.407401,
		41.058041, 34.389706, 29.301741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800434, 35.188770, 29.410418>,  <41.354328, 34.956173, 29.016560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800434, 35.188770, 29.410418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905155, 34.833698, 29.561935>,  <40.967987, 34.620655, 29.652845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905155, 34.833698, 29.561935>,  <40.800434, 35.188770, 29.410418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905155, 34.833698, 29.561935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047853, 0.403938, 0.913534,
		-0.963934, -0.221040, 0.148230,
		0.261804, -0.887680, 0.378792,
		40.983696, 34.567394, 29.675573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353729, 35.089005, 29.954760>,  <40.800434, 35.188770, 29.410418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353729, 35.089005, 29.954760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653053, 34.833084, 30.024830>,  <40.832649, 34.679531, 30.066872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653053, 34.833084, 30.024830>,  <40.353729, 35.089005, 29.954760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653053, 34.833084, 30.024830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014836, 0.280151, 0.959841,
		-0.663184, -0.715659, 0.219132,
		0.748309, -0.639803, 0.175174,
		40.877544, 34.641144, 30.077383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147118, 34.631035, 30.555265>,  <40.353729, 35.089005, 29.954760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147118, 34.631035, 30.555265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545910, 34.633404, 30.524296>,  <40.785187, 34.634827, 30.505714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545910, 34.633404, 30.524296>,  <40.147118, 34.631035, 30.555265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545910, 34.633404, 30.524296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077385, 0.006399, 0.996981,
		0.006399, -0.999962, 0.005921,
		-0.996981, -0.005921, 0.077423,
		40.845005, 34.635181, 30.501068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324104, 34.268085, 31.167538>,  <40.147118, 34.631035, 30.555265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324104, 34.268085, 31.167538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661415, 34.451130, 31.054773>,  <40.863800, 34.560955, 30.987114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661415, 34.451130, 31.054773>,  <40.324104, 34.268085, 31.167538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661415, 34.451130, 31.054773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154781, 0.295532, 0.942711,
		0.514710, -0.838601, 0.178386,
		0.843277, 0.457612, -0.281913,
		40.914398, 34.588413, 30.970200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744450, 34.070957, 31.649666>,  <40.324104, 34.268085, 31.167538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744450, 34.070957, 31.649666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907013, 34.405941, 31.503523>,  <41.004551, 34.606934, 31.415838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907013, 34.405941, 31.503523>,  <40.744450, 34.070957, 31.649666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907013, 34.405941, 31.503523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204889, 0.306153, 0.929672,
		0.890422, -0.452686, -0.047163,
		0.406411, 0.837463, -0.365356,
		41.028934, 34.657181, 31.393915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334049, 34.195225, 32.016239>,  <40.744450, 34.070957, 31.649666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334049, 34.195225, 32.016239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224674, 34.551102, 31.869989>,  <41.159050, 34.764629, 31.782238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224674, 34.551102, 31.869989>,  <41.334049, 34.195225, 32.016239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224674, 34.551102, 31.869989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215166, 0.427055, 0.878252,
		0.937516, 0.161475, -0.308203,
		-0.273435, 0.889691, -0.365627,
		41.142643, 34.818008, 31.760302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777740, 34.622078, 32.330563>,  <41.334049, 34.195225, 32.016239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777740, 34.622078, 32.330563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478294, 34.859207, 32.211811>,  <41.298626, 35.001484, 32.140560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478294, 34.859207, 32.211811>,  <41.777740, 34.622078, 32.330563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478294, 34.859207, 32.211811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083874, 0.528852, 0.844560,
		0.657681, 0.607348, -0.445628,
		-0.748612, 0.592827, -0.296875,
		41.253712, 35.037056, 32.122749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947224, 35.260681, 32.626827>,  <41.777740, 34.622078, 32.330563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947224, 35.260681, 32.626827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567310, 35.321945, 32.517677>,  <41.339363, 35.358704, 32.452187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567310, 35.321945, 32.517677>,  <41.947224, 35.260681, 32.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567310, 35.321945, 32.517677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207844, 0.343124, 0.916006,
		0.233922, 0.926720, -0.294059,
		-0.949780, 0.153155, -0.272878,
		41.282375, 35.367893, 32.435814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753826, 35.878265, 32.907612>,  <41.947224, 35.260681, 32.626827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753826, 35.878265, 32.907612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399342, 35.712971, 32.823841>,  <41.186649, 35.613796, 32.773579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399342, 35.712971, 32.823841>,  <41.753826, 35.878265, 32.907612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399342, 35.712971, 32.823841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388909, 0.417957, 0.821013,
		-0.251737, 0.809043, -0.531110,
		-0.886216, -0.413232, -0.209429,
		41.133476, 35.589001, 32.761013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335014, 36.429409, 33.087101>,  <41.753826, 35.878265, 32.907612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335014, 36.429409, 33.087101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125729, 36.089417, 33.062492>,  <41.000156, 35.885422, 33.047729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125729, 36.089417, 33.062492>,  <41.335014, 36.429409, 33.087101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125729, 36.089417, 33.062492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493887, 0.243603, 0.834705,
		-0.694495, 0.467112, -0.547250,
		-0.523213, -0.849979, -0.061520,
		40.968765, 35.834423, 33.044037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555969, 36.575855, 33.134117>,  <41.335014, 36.429409, 33.087101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555969, 36.575855, 33.134117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662201, 36.213871, 33.267090>,  <40.725941, 35.996681, 33.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662201, 36.213871, 33.267090>,  <40.555969, 36.575855, 33.134117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662201, 36.213871, 33.267090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595114, 0.117402, 0.795020,
		-0.758491, -0.408974, -0.507376,
		0.265576, -0.904963, 0.332435,
		40.741875, 35.942383, 33.366821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948807, 36.265541, 33.416718>,  <40.555969, 36.575855, 33.134117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948807, 36.265541, 33.416718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212143, 36.013573, 33.581535>,  <40.370144, 35.862392, 33.680424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212143, 36.013573, 33.581535>,  <39.948807, 36.265541, 33.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212143, 36.013573, 33.581535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623833, -0.150293, 0.766971,
		-0.421206, -0.761977, -0.491911,
		0.658345, -0.629923, 0.412042,
		40.409645, 35.824596, 33.705147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558704, 35.772022, 33.710228>,  <39.948807, 36.265541, 33.416718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558704, 35.772022, 33.710228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 35.752769, 33.892624>,  <40.127460, 35.741219, 34.002064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 35.752769, 33.892624>,  <39.558704, 35.772022, 33.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914177, 35.752769, 33.892624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456155, 0.008178, 0.889863,
		-0.046568, -0.998807, -0.014692,
		0.888681, -0.048141, 0.455992,
		40.180782, 35.738327, 34.029423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571991, 35.177322, 34.171246>,  <39.558704, 35.772022, 33.710228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571991, 35.177322, 34.171246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812134, 35.469738, 34.300949>,  <39.956219, 35.645187, 34.378773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812134, 35.469738, 34.300949>,  <39.571991, 35.177322, 34.171246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812134, 35.469738, 34.300949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536025, 0.066927, 0.841545,
		0.593502, -0.679043, 0.432037,
		0.600360, 0.731041, 0.324263,
		39.992241, 35.689049, 34.398228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716129, 35.049278, 34.936493>,  <39.571991, 35.177322, 34.171246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716129, 35.049278, 34.936493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876606, 35.415230, 34.918438>,  <39.972893, 35.634800, 34.907604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876606, 35.415230, 34.918438>,  <39.716129, 35.049278, 34.936493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876606, 35.415230, 34.918438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524461, 0.269829, 0.807548,
		0.750992, -0.300304, 0.588073,
		0.401188, 0.914882, -0.045141,
		39.996964, 35.689693, 34.904896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849545, 35.215374, 35.623741>,  <39.716129, 35.049278, 34.936493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849545, 35.215374, 35.623741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853199, 35.573013, 35.444633>,  <39.855392, 35.787598, 35.337170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853199, 35.573013, 35.444633>,  <39.849545, 35.215374, 35.623741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853199, 35.573013, 35.444633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533662, 0.383048, 0.753975,
		0.845649, 0.232074, 0.480646,
		0.009132, 0.894101, -0.447774,
		39.855938, 35.841244, 35.310303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057827, 35.671768, 36.057816>,  <39.849545, 35.215374, 35.623741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057827, 35.671768, 36.057816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845371, 35.913910, 35.820686>,  <39.717899, 36.059193, 35.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845371, 35.913910, 35.820686>,  <40.057827, 35.671768, 36.057816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845371, 35.913910, 35.820686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424770, 0.415157, 0.804497,
		0.733120, 0.679113, 0.036630,
		-0.531137, 0.605352, -0.592826,
		39.686031, 36.095516, 35.642838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162239, 36.372581, 36.245331>,  <40.057827, 35.671768, 36.057816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162239, 36.372581, 36.245331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803364, 36.351177, 36.069977>,  <39.588039, 36.338333, 35.964764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803364, 36.351177, 36.069977>,  <40.162239, 36.372581, 36.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803364, 36.351177, 36.069977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407824, 0.481334, 0.775885,
		0.169491, 0.874902, -0.453673,
		-0.897192, -0.053513, -0.438387,
		39.534206, 36.335125, 35.938461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816360, 36.981911, 36.318199>,  <40.162239, 36.372581, 36.245331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816360, 36.981911, 36.318199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539524, 36.704948, 36.236629>,  <39.373421, 36.538773, 36.187687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539524, 36.704948, 36.236629>,  <39.816360, 36.981911, 36.318199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539524, 36.704948, 36.236629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650922, 0.476608, 0.590886,
		-0.311938, 0.541688, -0.780557,
		-0.692095, -0.692401, -0.203924,
		39.331894, 36.497227, 36.175453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285763, 37.336033, 36.054710>,  <39.816360, 36.981911, 36.318199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285763, 37.336033, 36.054710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144089, 36.991528, 36.200466>,  <39.059082, 36.784824, 36.287918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144089, 36.991528, 36.200466>,  <39.285763, 37.336033, 36.054710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144089, 36.991528, 36.200466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667539, 0.505726, 0.546472,
		-0.654937, -0.049690, -0.754048,
		-0.354188, -0.861262, 0.364389,
		39.037834, 36.733150, 36.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506859, 37.239910, 35.858471>,  <39.285763, 37.336033, 36.054710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506859, 37.239910, 35.858471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599548, 37.082558, 36.214348>,  <38.655163, 36.988148, 36.427876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599548, 37.082558, 36.214348>,  <38.506859, 37.239910, 35.858471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599548, 37.082558, 36.214348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830031, 0.396999, 0.391716,
		-0.507301, -0.829242, -0.234526,
		0.231721, -0.393382, 0.889695,
		38.669064, 36.964542, 36.481255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890358, 36.949978, 36.220615>,  <38.506859, 37.239910, 35.858471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890358, 36.949978, 36.220615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163322, 36.969547, 36.512348>,  <38.327103, 36.981289, 36.687386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163322, 36.969547, 36.512348>,  <37.890358, 36.949978, 36.220615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163322, 36.969547, 36.512348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730119, -0.002421, 0.683316,
		0.035202, -0.998799, 0.034074,
		0.682413, 0.048932, 0.729327,
		38.368046, 36.984226, 36.731148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860046, 36.517933, 36.792164>,  <37.890358, 36.949978, 36.220615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860046, 36.517933, 36.792164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102638, 36.772614, 36.982655>,  <38.248192, 36.925423, 37.096951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102638, 36.772614, 36.982655>,  <37.860046, 36.517933, 36.792164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102638, 36.772614, 36.982655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523106, -0.131550, 0.842054,
		0.598786, -0.759805, 0.253281,
		0.606478, 0.636703, 0.476229,
		38.284580, 36.963623, 37.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347733, 36.494507, 37.437569>,  <37.860046, 36.517933, 36.792164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347733, 36.494507, 37.437569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664558, 36.721420, 37.527740>,  <37.854652, 36.857571, 37.581844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664558, 36.721420, 37.527740>,  <37.347733, 36.494507, 37.437569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664558, 36.721420, 37.527740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521396, 0.436651, 0.733132,
		0.317458, -0.698228, 0.641636,
		0.792065, 0.567285, 0.225435,
		37.902176, 36.891605, 37.595371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295162, 36.472404, 38.066147>,  <37.347733, 36.494507, 37.437569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295162, 36.472404, 38.066147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515121, 36.802616, 38.015381>,  <37.647099, 37.000744, 37.984921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515121, 36.802616, 38.015381>,  <37.295162, 36.472404, 38.066147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515121, 36.802616, 38.015381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484304, 0.438953, 0.756816,
		0.680488, -0.354703, 0.641188,
		0.549896, 0.825534, -0.126918,
		37.680092, 37.050278, 37.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239323, 36.804226, 38.705601>,  <37.295162, 36.472404, 38.066147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239323, 36.804226, 38.705601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445686, 37.070465, 38.489891>,  <37.569504, 37.230209, 38.360466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445686, 37.070465, 38.489891>,  <37.239323, 36.804226, 38.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445686, 37.070465, 38.489891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050389, 0.652009, 0.756535,
		0.855158, -0.363132, 0.369919,
		0.515913, 0.665597, -0.539273,
		37.600460, 37.270145, 38.328110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924259, 36.986408, 38.969181>,  <37.239323, 36.804226, 38.705601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924259, 36.986408, 38.969181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743656, 37.285992, 38.775192>,  <37.635296, 37.465744, 38.658798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743656, 37.285992, 38.775192>,  <37.924259, 36.986408, 38.969181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743656, 37.285992, 38.775192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110938, 0.492186, 0.863392,
		0.885344, 0.443630, -0.139138,
		-0.451508, 0.748963, -0.484969,
		37.608204, 37.510681, 38.629700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993412, 37.669437, 39.367607>,  <37.924259, 36.986408, 38.969181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993412, 37.669437, 39.367607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702011, 37.749680, 39.105602>,  <37.527172, 37.797825, 38.948399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702011, 37.749680, 39.105602>,  <37.993412, 37.669437, 39.367607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702011, 37.749680, 39.105602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471637, 0.546587, 0.691954,
		0.496831, 0.813019, -0.303577,
		-0.728503, 0.200606, -0.655011,
		37.483459, 37.809860, 38.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943077, 38.451187, 39.405708>,  <37.993412, 37.669437, 39.367607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943077, 38.451187, 39.405708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593136, 38.307697, 39.275509>,  <37.383171, 38.221603, 39.197388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593136, 38.307697, 39.275509>,  <37.943077, 38.451187, 39.405708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593136, 38.307697, 39.275509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480728, 0.560517, 0.674331,
		-0.059450, 0.746417, -0.662817,
		-0.874852, -0.358723, -0.325501,
		37.330681, 38.200081, 39.177860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524811, 39.037842, 39.374203>,  <37.943077, 38.451187, 39.405708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524811, 39.037842, 39.374203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276085, 38.724636, 39.380318>,  <37.126850, 38.536713, 39.383987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276085, 38.724636, 39.380318>,  <37.524811, 39.037842, 39.374203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276085, 38.724636, 39.380318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528220, 0.433723, 0.729979,
		-0.578216, 0.445834, -0.683299,
		-0.621812, -0.783018, 0.015287,
		37.089542, 38.489731, 39.384903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862865, 39.344181, 39.402359>,  <37.524811, 39.037842, 39.374203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862865, 39.344181, 39.402359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826603, 38.975834, 39.554035>,  <36.804848, 38.754826, 39.645042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826603, 38.975834, 39.554035>,  <36.862865, 39.344181, 39.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826603, 38.975834, 39.554035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612614, 0.351760, 0.707792,
		-0.785167, -0.168134, -0.596024,
		-0.090653, -0.920867, 0.379191,
		36.799408, 38.699574, 39.667793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687962, 39.861309, 39.959557>,  <36.862865, 39.344181, 39.402359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687962, 39.861309, 39.959557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297752, 39.945530, 39.934174>,  <36.063625, 39.996063, 39.918945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297752, 39.945530, 39.934174>,  <36.687962, 39.861309, 39.959557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297752, 39.945530, 39.934174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149188, -0.845659, -0.512449,
		-0.161557, -0.490439, 0.856370,
		-0.975522, 0.210549, -0.063454,
		36.005096, 40.008694, 39.915138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275642, 39.270592, 40.101303>,  <36.687962, 39.861309, 39.959557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275642, 39.270592, 40.101303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029968, 39.504910, 39.889782>,  <35.882565, 39.645500, 39.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029968, 39.504910, 39.889782>,  <36.275642, 39.270592, 40.101303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029968, 39.504910, 39.889782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081842, -0.713742, -0.695610,
		-0.784909, -0.383953, 0.486310,
		-0.614182, 0.585792, -0.528800,
		35.845715, 39.680649, 39.731144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091827, 38.671833, 40.298882>,  <36.275642, 39.270592, 40.101303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091827, 38.671833, 40.298882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057961, 38.747402, 39.907547>,  <36.037640, 38.792744, 39.672745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057961, 38.747402, 39.907547>,  <36.091827, 38.671833, 40.298882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057961, 38.747402, 39.907547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693766, -0.693586, -0.193978,
		-0.715206, -0.695160, -0.072341,
		-0.084671, 0.188921, -0.978335,
		36.032558, 38.804077, 39.614048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137955, 38.075623, 39.994415>,  <36.091827, 38.671833, 40.298882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137955, 38.075623, 39.994415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238766, 38.319153, 39.693535>,  <36.299252, 38.465271, 39.513004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238766, 38.319153, 39.693535>,  <36.137955, 38.075623, 39.994415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238766, 38.319153, 39.693535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662427, -0.675180, -0.324534,
		-0.705458, -0.416487, -0.573470,
		0.252031, 0.608827, -0.752203,
		36.314377, 38.501801, 39.467873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119244, 37.636406, 39.391388>,  <36.137955, 38.075623, 39.994415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119244, 37.636406, 39.391388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334522, 37.959686, 39.295753>,  <36.463688, 38.153652, 39.238373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334522, 37.959686, 39.295753>,  <36.119244, 37.636406, 39.391388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334522, 37.959686, 39.295753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497604, -0.533653, -0.683817,
		-0.680246, 0.249060, -0.689373,
		0.538197, 0.808198, -0.239082,
		36.495983, 38.202145, 39.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243378, 37.696709, 38.656784>,  <36.119244, 37.636406, 39.391388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243378, 37.696709, 38.656784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569096, 37.872326, 38.808662>,  <36.764526, 37.977695, 38.899788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569096, 37.872326, 38.808662>,  <36.243378, 37.696709, 38.656784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569096, 37.872326, 38.808662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567513, -0.464843, -0.679596,
		-0.121873, 0.768872, -0.627681,
		0.814295, 0.439042, 0.379693,
		36.813385, 38.004040, 38.922569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411564, 38.136826, 38.194260>,  <36.243378, 37.696709, 38.656784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411564, 38.136826, 38.194260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742790, 38.036659, 38.394897>,  <36.941528, 37.976559, 38.515282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742790, 38.036659, 38.394897>,  <36.411564, 38.136826, 38.194260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742790, 38.036659, 38.394897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459524, -0.209361, -0.863137,
		0.321153, 0.945231, -0.058296,
		0.828069, -0.250411, 0.501594,
		36.991211, 37.961536, 38.545376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061459, 38.426155, 37.837677>,  <36.411564, 38.136826, 38.194260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061459, 38.426155, 37.837677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216866, 38.154041, 38.086277>,  <37.310108, 37.990772, 38.235439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216866, 38.154041, 38.086277>,  <37.061459, 38.426155, 37.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216866, 38.154041, 38.086277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674274, -0.249813, -0.694945,
		0.628021, 0.689060, 0.361644,
		0.388515, -0.680286, 0.621503,
		37.333420, 37.949955, 38.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747669, 38.246288, 37.532646>,  <37.061459, 38.426155, 37.837677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747669, 38.246288, 37.532646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707882, 37.971375, 37.820465>,  <37.684010, 37.806427, 37.993156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707882, 37.971375, 37.820465>,  <37.747669, 38.246288, 37.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707882, 37.971375, 37.820465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608243, -0.614297, -0.502673,
		0.787494, 0.387657, 0.479140,
		-0.099470, -0.687285, 0.719545,
		37.678040, 37.765190, 38.036327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453346, 38.078815, 37.873425>,  <37.747669, 38.246288, 37.532646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453346, 38.078815, 37.873425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228085, 37.751339, 37.918331>,  <38.092926, 37.554852, 37.945274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228085, 37.751339, 37.918331>,  <38.453346, 38.078815, 37.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228085, 37.751339, 37.918331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734500, -0.558166, -0.385955,
		0.378640, -0.134895, 0.915661,
		-0.563154, -0.818691, 0.112264,
		38.059139, 37.505733, 37.952011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975323, 37.613697, 38.046860>,  <38.453346, 38.078815, 37.873425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975323, 37.613697, 38.046860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668800, 37.407806, 37.893066>,  <38.484886, 37.284271, 37.800789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668800, 37.407806, 37.893066>,  <38.975323, 37.613697, 38.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668800, 37.407806, 37.893066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640828, -0.655159, -0.400132,
		-0.045938, -0.553012, 0.831906,
		-0.766308, -0.514727, -0.384483,
		38.438908, 37.253387, 37.777721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256012, 37.025330, 37.883106>,  <38.975323, 37.613697, 38.046860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256012, 37.025330, 37.883106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914162, 37.016106, 37.675617>,  <38.709049, 37.010571, 37.551125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914162, 37.016106, 37.675617>,  <39.256012, 37.025330, 37.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914162, 37.016106, 37.675617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424144, -0.607271, -0.671806,
		-0.299518, -0.794160, 0.528772,
		-0.854630, -0.023057, -0.518726,
		38.657772, 37.009190, 37.520000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266438, 36.460159, 37.492294>,  <39.256012, 37.025330, 37.883106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266438, 36.460159, 37.492294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945923, 36.605068, 37.301846>,  <38.753613, 36.692013, 37.187576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945923, 36.605068, 37.301846>,  <39.266438, 36.460159, 37.492294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945923, 36.605068, 37.301846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313473, -0.423616, -0.849873,
		-0.509583, -0.830244, 0.225875,
		-0.801287, 0.362275, -0.476127,
		38.705536, 36.713749, 37.159008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852791, 35.879471, 37.326065>,  <39.266438, 36.460159, 37.492294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852791, 35.879471, 37.326065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789574, 36.179008, 37.068611>,  <38.751644, 36.358730, 36.914139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789574, 36.179008, 37.068611>,  <38.852791, 35.879471, 37.326065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789574, 36.179008, 37.068611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319018, -0.578143, -0.750984,
		-0.934478, -0.324021, -0.147520,
		-0.158047, 0.748840, -0.643631,
		38.742161, 36.403660, 36.875523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694221, 35.498310, 36.748390>,  <38.852791, 35.879471, 37.326065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694221, 35.498310, 36.748390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762516, 35.863472, 36.600094>,  <38.803493, 36.082569, 36.511116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762516, 35.863472, 36.600094>,  <38.694221, 35.498310, 36.748390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762516, 35.863472, 36.600094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449951, -0.406981, -0.794928,
		-0.876580, -0.031089, -0.480251,
		0.170740, 0.912908, -0.370740,
		38.813740, 36.137344, 36.488873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490635, 35.486725, 36.042164>,  <38.694221, 35.498310, 36.748390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490635, 35.486725, 36.042164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748047, 35.788708, 36.092602>,  <38.902493, 35.969898, 36.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748047, 35.788708, 36.092602>,  <38.490635, 35.486725, 36.042164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748047, 35.788708, 36.092602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493534, -0.283347, -0.822276,
		-0.585057, 0.591394, -0.554942,
		0.643531, 0.754962, 0.126099,
		38.941105, 36.015198, 36.130432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529411, 35.805939, 35.287689>,  <38.490635, 35.486725, 36.042164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529411, 35.805939, 35.287689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849720, 35.878651, 35.515980>,  <39.041904, 35.922276, 35.652954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849720, 35.878651, 35.515980>,  <38.529411, 35.805939, 35.287689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849720, 35.878651, 35.515980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586323, -0.043070, -0.808932,
		-0.122465, 0.982396, -0.141070,
		0.800767, 0.181778, 0.570727,
		39.089951, 35.933186, 35.687199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490421, 36.573204, 35.298557>,  <38.529411, 35.805939, 35.287689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490421, 36.573204, 35.298557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829784, 36.518803, 35.503185>,  <39.033401, 36.486160, 35.625961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829784, 36.518803, 35.503185>,  <38.490421, 36.573204, 35.298557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829784, 36.518803, 35.503185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511638, -0.037132, -0.858398,
		0.135741, 0.990012, 0.038082,
		0.848411, -0.136004, 0.511568,
		39.084309, 36.478001, 35.656654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008900, 36.876064, 34.843540>,  <38.490421, 36.573204, 35.298557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008900, 36.876064, 34.843540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239849, 36.650249, 35.079483>,  <39.378418, 36.514759, 35.221046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239849, 36.650249, 35.079483>,  <39.008900, 36.876064, 34.843540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239849, 36.650249, 35.079483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575321, -0.231315, -0.784538,
		0.579345, 0.792331, 0.191236,
		0.577378, -0.564540, 0.589855,
		39.413063, 36.480888, 35.256439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790104, 36.980762, 34.633389>,  <39.008900, 36.876064, 34.843540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790104, 36.980762, 34.633389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778664, 36.633163, 34.830982>,  <39.771797, 36.424603, 34.949539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778664, 36.633163, 34.830982>,  <39.790104, 36.980762, 34.633389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778664, 36.633163, 34.830982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808859, -0.310480, -0.499349,
		0.587307, 0.385279, 0.711780,
		-0.028605, -0.869001, 0.493983,
		39.770081, 36.372463, 34.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566063, 36.836426, 34.795494>,  <39.790104, 36.980762, 34.633389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566063, 36.836426, 34.795494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360844, 36.493195, 34.804306>,  <40.237713, 36.287258, 34.809593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360844, 36.493195, 34.804306>,  <40.566063, 36.836426, 34.795494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360844, 36.493195, 34.804306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744396, -0.457571, -0.486315,
		0.427377, -0.233103, 0.873505,
		-0.513053, -0.858074, 0.022034,
		40.206928, 36.235771, 34.810917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084675, 36.315113, 34.910770>,  <40.566063, 36.836426, 34.795494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084675, 36.315113, 34.910770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770061, 36.145603, 34.731087>,  <40.581295, 36.043896, 34.623276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770061, 36.145603, 34.731087>,  <41.084675, 36.315113, 34.910770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770061, 36.145603, 34.731087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617486, -0.529097, -0.582038,
		0.008980, -0.735168, 0.677825,
		-0.786531, -0.423774, -0.449205,
		40.534103, 36.018471, 34.596325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289062, 35.594456, 34.708744>,  <41.084675, 36.315113, 34.910770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289062, 35.594456, 34.708744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961792, 35.662056, 34.488918>,  <40.765430, 35.702614, 34.357021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961792, 35.662056, 34.488918>,  <41.289062, 35.594456, 34.708744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961792, 35.662056, 34.488918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445673, -0.417480, -0.791888,
		-0.363255, -0.892834, 0.266259,
		-0.818181, 0.168993, -0.549564,
		40.716339, 35.712753, 34.324047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320961, 35.074741, 34.189922>,  <41.289062, 35.594456, 34.708744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320961, 35.074741, 34.189922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035484, 35.307476, 34.033916>,  <40.864197, 35.447117, 33.940315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035484, 35.307476, 34.033916>,  <41.320961, 35.074741, 34.189922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035484, 35.307476, 34.033916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380931, -0.144860, -0.913185,
		-0.587822, -0.800301, -0.118254,
		-0.713693, 0.581837, -0.390011,
		40.821377, 35.482025, 33.916912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021694, 34.709026, 33.673397>,  <41.320961, 35.074741, 34.189922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021694, 34.709026, 33.673397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940357, 35.091770, 33.590385>,  <40.891556, 35.321415, 33.540581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940357, 35.091770, 33.590385>,  <41.021694, 34.709026, 33.673397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940357, 35.091770, 33.590385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333284, -0.131651, -0.933589,
		-0.920637, -0.259007, -0.292136,
		-0.203346, 0.956861, -0.207526,
		40.879353, 35.378830, 33.528126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498047, 34.212730, 33.977039>,  <41.021694, 34.709026, 33.673397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498047, 34.212730, 33.977039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813614, 34.377151, 33.794331>,  <42.002956, 34.475803, 33.684708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813614, 34.377151, 33.794331>,  <41.498047, 34.212730, 33.977039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813614, 34.377151, 33.794331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588189, -0.289979, 0.754947,
		0.177871, -0.864261, -0.470548,
		0.788920, 0.411054, -0.456770,
		42.050289, 34.500469, 33.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998123, 33.711563, 34.076801>,  <41.498047, 34.212730, 33.977039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998123, 33.711563, 34.076801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151810, 34.071568, 33.994476>,  <42.244022, 34.287571, 33.945080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151810, 34.071568, 33.994476>,  <41.998123, 33.711563, 34.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151810, 34.071568, 33.994476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699538, -0.138314, 0.701082,
		0.602514, -0.413342, -0.682734,
		0.384218, 0.900010, -0.205812,
		42.267075, 34.341572, 33.932732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676674, 33.639324, 33.654591>,  <41.998123, 33.711563, 34.076801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676674, 33.639324, 33.654591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621849, 33.947384, 33.903778>,  <42.588955, 34.132221, 34.053291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621849, 33.947384, 33.903778>,  <42.676674, 33.639324, 33.654591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621849, 33.947384, 33.903778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658446, -0.399012, 0.638152,
		0.740043, 0.497654, -0.452412,
		-0.137061, 0.770149, 0.622965,
		42.580730, 34.178429, 34.090668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174366, 33.284603, 34.162910>,  <42.676674, 33.639324, 33.654591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174366, 33.284603, 34.162910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529011, 33.412262, 34.029011>,  <43.741798, 33.488857, 33.948669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529011, 33.412262, 34.029011>,  <43.174366, 33.284603, 34.162910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529011, 33.412262, 34.029011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404223, 0.886425, -0.225508,
		0.224761, 0.335253, 0.914925,
		0.886615, 0.319148, -0.334751,
		43.794994, 33.508007, 33.928585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364002, 33.985474, 34.442928>,  <43.174366, 33.284603, 34.162910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364002, 33.985474, 34.442928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511551, 33.905514, 34.079838>,  <43.600082, 33.857536, 33.861984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511551, 33.905514, 34.079838>,  <43.364002, 33.985474, 34.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511551, 33.905514, 34.079838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353239, 0.873174, -0.335840,
		0.859740, 0.444528, 0.251480,
		0.368876, -0.199902, -0.907728,
		43.622215, 33.845543, 33.807518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507389, 34.483799, 35.030422>,  <43.364002, 33.985474, 34.442928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507389, 34.483799, 35.030422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549973, 34.752064, 34.736790>,  <43.575523, 34.913021, 34.560608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549973, 34.752064, 34.736790>,  <43.507389, 34.483799, 35.030422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549973, 34.752064, 34.736790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488173, -0.607921, -0.626194,
		-0.866230, 0.425023, 0.262681,
		0.106457, 0.670662, -0.734084,
		43.581909, 34.953262, 34.516563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128372, 34.700264, 35.486183>,  <43.507389, 34.483799, 35.030422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128372, 34.700264, 35.486183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180748, 34.815475, 35.106731>,  <44.212173, 34.884602, 34.879063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180748, 34.815475, 35.106731>,  <44.128372, 34.700264, 35.486183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180748, 34.815475, 35.106731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969075, -0.164687, -0.183769,
		-0.209158, 0.943353, 0.257561,
		0.130943, 0.288032, -0.948626,
		44.220032, 34.901886, 34.822144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644722, 35.213627, 35.127106>,  <44.128372, 34.700264, 35.486183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644722, 35.213627, 35.127106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766369, 35.008373, 34.806057>,  <43.839355, 34.885223, 34.613426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766369, 35.008373, 34.806057>,  <43.644722, 35.213627, 35.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766369, 35.008373, 34.806057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944214, -0.274136, -0.182508,
		-0.126378, 0.813355, -0.567876,
		0.304119, -0.513131, -0.802626,
		43.857605, 34.854435, 34.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156868, 35.312225, 34.570042>,  <43.644722, 35.213627, 35.127106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156868, 35.312225, 34.570042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347042, 34.971436, 34.482315>,  <43.461147, 34.766964, 34.429680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347042, 34.971436, 34.482315>,  <43.156868, 35.312225, 34.570042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347042, 34.971436, 34.482315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876888, -0.438846, -0.196167,
		0.070882, 0.285583, -0.955729,
		0.475440, -0.851972, -0.219318,
		43.489674, 34.715843, 34.416519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919781, 35.573872, 34.431507>,  <43.156868, 35.312225, 34.570042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919781, 35.573872, 34.431507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125248, 35.628700, 34.092720>,  <44.248528, 35.661598, 33.889446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125248, 35.628700, 34.092720>,  <43.919781, 35.573872, 34.431507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125248, 35.628700, 34.092720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836184, -0.301108, 0.458400,
		-0.192196, -0.943687, -0.269286,
		0.513671, 0.137070, -0.846968,
		44.279350, 35.669823, 33.838631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266796, 34.966824, 34.114624>,  <43.919781, 35.573872, 34.431507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266796, 34.966824, 34.114624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438530, 35.327358, 34.137486>,  <44.541569, 35.543678, 34.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438530, 35.327358, 34.137486>,  <44.266796, 34.966824, 34.114624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438530, 35.327358, 34.137486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670878, -0.360648, 0.647963,
		0.604645, -0.239848, -0.759525,
		0.429334, 0.901336, 0.057155,
		44.567329, 35.597759, 34.154633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902233, 34.745228, 33.844707>,  <44.266796, 34.966824, 34.114624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902233, 34.745228, 33.844707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874535, 35.068314, 34.078903>,  <44.857914, 35.262165, 34.219421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874535, 35.068314, 34.078903>,  <44.902233, 34.745228, 33.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874535, 35.068314, 34.078903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689033, -0.385693, 0.613575,
		0.721414, 0.445911, -0.529835,
		-0.069246, 0.807716, 0.585492,
		44.853760, 35.310627, 34.254551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511620, 34.871799, 34.006542>,  <44.902233, 34.745228, 33.844707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511620, 34.871799, 34.006542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292404, 35.043758, 34.293552>,  <45.160877, 35.146935, 34.465759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292404, 35.043758, 34.293552>,  <45.511620, 34.871799, 34.006542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292404, 35.043758, 34.293552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703221, -0.227685, 0.673528,
		0.452920, 0.873696, -0.177536,
		-0.548037, 0.429901, 0.717524,
		45.127995, 35.172729, 34.508808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819172, 35.430641, 34.387432>,  <45.511620, 34.871799, 34.006542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819172, 35.430641, 34.387432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560963, 35.213810, 34.602638>,  <45.406036, 35.083710, 34.731762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560963, 35.213810, 34.602638>,  <45.819172, 35.430641, 34.387432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560963, 35.213810, 34.602638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747594, -0.304379, 0.590302,
		-0.156229, 0.783267, 0.601736,
		-0.645519, -0.542076, 0.538013,
		45.367306, 35.051186, 34.764042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891586, 35.564129, 35.107285>,  <45.819172, 35.430641, 34.387432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891586, 35.564129, 35.107285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751621, 35.190601, 35.077477>,  <45.667645, 34.966484, 35.059593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751621, 35.190601, 35.077477>,  <45.891586, 35.564129, 35.107285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751621, 35.190601, 35.077477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740228, -0.324368, 0.588937,
		-0.574130, 0.150914, 0.804736,
		-0.349910, -0.933815, -0.074519,
		45.646648, 34.910458, 35.055122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644810, 35.272984, 35.747837>,  <45.891586, 35.564129, 35.107285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644810, 35.272984, 35.747837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818027, 35.006130, 35.505383>,  <45.921959, 34.846016, 35.359909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818027, 35.006130, 35.505383>,  <45.644810, 35.272984, 35.747837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818027, 35.006130, 35.505383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685365, -0.193062, 0.702141,
		-0.585445, -0.719484, 0.373627,
		0.433046, -0.667136, -0.606136,
		45.947941, 34.805988, 35.323540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786125, 34.624329, 36.124424>,  <45.644810, 35.272984, 35.747837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786125, 34.624329, 36.124424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035950, 34.646923, 35.812851>,  <46.185844, 34.660480, 35.625908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035950, 34.646923, 35.812851>,  <45.786125, 34.624329, 36.124424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035950, 34.646923, 35.812851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757493, -0.286563, 0.586588,
		-0.190080, -0.956394, -0.221763,
		0.624559, 0.056486, -0.778932,
		46.223316, 34.663868, 35.579170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110851, 33.930725, 35.828781>,  <45.786125, 34.624329, 36.124424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110851, 33.930725, 35.828781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357910, 34.240723, 35.775261>,  <46.506145, 34.426720, 35.743149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357910, 34.240723, 35.775261>,  <46.110851, 33.930725, 35.828781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357910, 34.240723, 35.775261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736065, -0.509728, 0.445405,
		0.276986, -0.373586, -0.885275,
		0.617646, 0.774991, -0.133796,
		46.543205, 34.473221, 35.735123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656517, 33.833748, 35.467941>,  <46.110851, 33.930725, 35.828781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656517, 33.833748, 35.467941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792328, 34.133991, 35.694679>,  <46.873814, 34.314137, 35.830723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792328, 34.133991, 35.694679>,  <46.656517, 33.833748, 35.467941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792328, 34.133991, 35.694679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675372, -0.613997, 0.408509,
		0.654671, 0.244133, -0.715406,
		0.339527, 0.750604, 0.566847,
		46.894184, 34.359173, 35.864735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504574, 34.040615, 35.410397>,  <46.656517, 33.833748, 35.467941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504574, 34.040615, 35.410397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353729, 34.089043, 35.777687>,  <47.263222, 34.118099, 35.998062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353729, 34.089043, 35.777687>,  <47.504574, 34.040615, 35.410397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353729, 34.089043, 35.777687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801099, -0.454898, 0.388983,
		0.464790, 0.882276, 0.074559,
		-0.377107, 0.121067, 0.918223,
		47.240597, 34.125362, 36.053154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677719, 34.544743, 34.839394>,  <47.504574, 34.040615, 35.410397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677719, 34.544743, 34.839394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707703, 34.909393, 35.001045>,  <47.725693, 35.128181, 35.098038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707703, 34.909393, 35.001045>,  <47.677719, 34.544743, 34.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707703, 34.909393, 35.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986519, 0.126918, -0.103312,
		-0.145473, -0.390938, 0.908848,
		0.074961, 0.911625, 0.404131,
		47.730190, 35.182880, 35.122284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.830383, 27.534418, 25.966249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436783, 27.553102, 25.897488>,  <39.200623, 27.564312, 25.856232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436783, 27.553102, 25.897488>,  <39.830383, 27.534418, 25.966249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436783, 27.553102, 25.897488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106663, 0.618404, 0.778588,
		0.142673, 0.784471, -0.603531,
		-0.984006, 0.046709, -0.171903,
		39.141582, 27.567116, 25.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650875, 28.218311, 26.130602>,  <39.830383, 27.534418, 25.966249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650875, 28.218311, 26.130602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282505, 28.074001, 26.071623>,  <39.061481, 27.987415, 26.036236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282505, 28.074001, 26.071623>,  <39.650875, 28.218311, 26.130602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282505, 28.074001, 26.071623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341978, 0.566530, 0.749730,
		-0.186951, 0.740868, -0.645108,
		-0.920924, -0.360775, -0.147447,
		39.006229, 27.965769, 26.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154026, 28.750557, 26.213148>,  <39.650875, 28.218311, 26.130602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154026, 28.750557, 26.213148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932098, 28.424747, 26.280947>,  <38.798943, 28.229261, 26.321627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932098, 28.424747, 26.280947>,  <39.154026, 28.750557, 26.213148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932098, 28.424747, 26.280947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468311, 0.474140, 0.745571,
		-0.687650, 0.334278, -0.644512,
		-0.554817, -0.814524, 0.169496,
		38.765652, 28.180389, 26.331795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438118, 29.001640, 26.208853>,  <39.154026, 28.750557, 26.213148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438118, 29.001640, 26.208853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427197, 28.643389, 26.386438>,  <38.420643, 28.428438, 26.492989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427197, 28.643389, 26.386438>,  <38.438118, 29.001640, 26.208853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427197, 28.643389, 26.386438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571007, 0.378512, 0.728478,
		-0.820491, -0.233618, -0.521745,
		-0.027301, -0.895629, 0.443963,
		38.419006, 28.374701, 26.519627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752205, 28.986931, 26.448149>,  <38.438118, 29.001640, 26.208853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752205, 28.986931, 26.448149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976154, 28.745110, 26.674799>,  <38.110523, 28.600018, 26.810789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976154, 28.745110, 26.674799>,  <37.752205, 28.986931, 26.448149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976154, 28.745110, 26.674799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385140, 0.415607, 0.823977,
		-0.733630, -0.679549, -0.000152,
		0.559869, -0.604553, 0.566623,
		38.144115, 28.563744, 26.844786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337204, 28.807596, 26.973204>,  <37.752205, 28.986931, 26.448149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337204, 28.807596, 26.973204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677578, 28.692308, 27.148855>,  <37.881802, 28.623137, 27.254246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677578, 28.692308, 27.148855>,  <37.337204, 28.807596, 26.973204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677578, 28.692308, 27.148855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329949, 0.357198, 0.873810,
		-0.408705, -0.888448, 0.208855,
		0.850937, -0.288219, 0.439131,
		37.932858, 28.605843, 27.280594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176811, 28.265120, 27.532280>,  <37.337204, 28.807596, 26.973204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176811, 28.265120, 27.532280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540821, 28.399431, 27.629530>,  <37.759228, 28.480019, 27.687880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540821, 28.399431, 27.629530>,  <37.176811, 28.265120, 27.532280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540821, 28.399431, 27.629530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315407, 0.180210, 0.931688,
		0.269029, -0.924541, 0.269903,
		0.910023, 0.335781, 0.243125,
		37.813828, 28.500164, 27.702467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323006, 27.990705, 28.242403>,  <37.176811, 28.265120, 27.532280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323006, 27.990705, 28.242403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591427, 28.284098, 28.199150>,  <37.752480, 28.460133, 28.173199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591427, 28.284098, 28.199150>,  <37.323006, 27.990705, 28.242403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591427, 28.284098, 28.199150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158586, 0.284474, 0.945476,
		0.724248, -0.617319, 0.307218,
		0.671056, 0.733479, -0.108132,
		37.792744, 28.504141, 28.166710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658669, 28.078711, 28.908823>,  <37.323006, 27.990705, 28.242403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658669, 28.078711, 28.908823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725353, 28.431124, 28.731743>,  <37.765366, 28.642572, 28.625494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725353, 28.431124, 28.731743>,  <37.658669, 28.078711, 28.908823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725353, 28.431124, 28.731743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127543, 0.464482, 0.876350,
		0.977721, -0.089636, 0.189806,
		0.166714, 0.881034, -0.442702,
		37.775368, 28.695435, 28.598932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999065, 28.479296, 29.418135>,  <37.658669, 28.078711, 28.908823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999065, 28.479296, 29.418135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937111, 28.770540, 29.151043>,  <37.899937, 28.945288, 28.990788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937111, 28.770540, 29.151043>,  <37.999065, 28.479296, 29.418135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937111, 28.770540, 29.151043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134405, 0.685133, 0.715911,
		0.978747, 0.021140, -0.203981,
		-0.154888, 0.728112, -0.667730,
		37.890644, 28.988974, 28.950724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527977, 28.968107, 29.415743>,  <37.999065, 28.479296, 29.418135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527977, 28.968107, 29.415743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208225, 29.159443, 29.270315>,  <38.016373, 29.274244, 29.183058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208225, 29.159443, 29.270315>,  <38.527977, 28.968107, 29.415743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208225, 29.159443, 29.270315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065697, 0.671078, 0.738470,
		0.597222, 0.566434, -0.567872,
		-0.799381, 0.478338, -0.363570,
		37.968410, 29.302944, 29.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656666, 29.654135, 29.551588>,  <38.527977, 28.968107, 29.415743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656666, 29.654135, 29.551588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267227, 29.672178, 29.462072>,  <38.033566, 29.683004, 29.408363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267227, 29.672178, 29.462072>,  <38.656666, 29.654135, 29.551588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267227, 29.672178, 29.462072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108120, 0.772254, 0.626046,
		0.201062, 0.633710, -0.746984,
		-0.973593, 0.045111, -0.223788,
		37.975151, 29.685711, 29.394936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629318, 30.241983, 29.606600>,  <38.656666, 29.654135, 29.551588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629318, 30.241983, 29.606600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251137, 30.115601, 29.638327>,  <38.024227, 30.039772, 29.657362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251137, 30.115601, 29.638327>,  <38.629318, 30.241983, 29.606600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251137, 30.115601, 29.638327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191950, 0.737054, 0.648002,
		-0.263201, 0.597430, -0.757498,
		-0.945453, -0.315956, 0.079317,
		37.967503, 30.020813, 29.662121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209824, 30.791018, 29.454174>,  <38.629318, 30.241983, 29.606600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209824, 30.791018, 29.454174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008934, 30.539242, 29.691349>,  <37.888401, 30.388176, 29.833654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008934, 30.539242, 29.691349>,  <38.209824, 30.791018, 29.454174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008934, 30.539242, 29.691349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246311, 0.761409, 0.599657,
		-0.828914, 0.155118, -0.537438,
		-0.502227, -0.629441, 0.592935,
		37.858265, 30.350410, 29.869230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665115, 31.196854, 29.631508>,  <38.209824, 30.791018, 29.454174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665115, 31.196854, 29.631508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639080, 30.907209, 29.906151>,  <37.623459, 30.733423, 30.070936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639080, 30.907209, 29.906151>,  <37.665115, 31.196854, 29.631508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639080, 30.907209, 29.906151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266176, 0.675734, 0.687411,
		-0.961725, -0.138017, -0.236721,
		-0.065086, -0.724110, 0.686607,
		37.619553, 30.689976, 30.112133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073105, 31.353731, 30.052053>,  <37.665115, 31.196854, 29.631508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073105, 31.353731, 30.052053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295391, 31.106455, 30.274410>,  <37.428764, 30.958090, 30.407825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295391, 31.106455, 30.274410>,  <37.073105, 31.353731, 30.052053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295391, 31.106455, 30.274410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075511, 0.628352, 0.774256,
		-0.827935, -0.472244, 0.302506,
		0.555718, -0.618190, 0.555894,
		37.462105, 30.920998, 30.441179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689007, 31.192419, 30.676682>,  <37.073105, 31.353731, 30.052053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689007, 31.192419, 30.676682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075180, 31.138063, 30.765644>,  <37.306885, 31.105450, 30.819021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075180, 31.138063, 30.765644>,  <36.689007, 31.192419, 30.676682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075180, 31.138063, 30.765644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103537, 0.583139, 0.805747,
		-0.239186, -0.800926, 0.548915,
		0.965438, -0.135891, 0.222404,
		37.364811, 31.097296, 30.832365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748253, 31.296524, 31.363607>,  <36.689007, 31.192419, 30.676682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748253, 31.296524, 31.363607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140900, 31.317234, 31.290121>,  <37.376488, 31.329660, 31.246029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140900, 31.317234, 31.290121>,  <36.748253, 31.296524, 31.363607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140900, 31.317234, 31.290121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115836, 0.603400, 0.788981,
		0.151702, -0.795756, 0.586309,
		0.981615, 0.051774, -0.183714,
		37.435383, 31.332766, 31.235006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127594, 31.147129, 32.002068>,  <36.748253, 31.296524, 31.363607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127594, 31.147129, 32.002068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383522, 31.343927, 31.765907>,  <37.537079, 31.462006, 31.624212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383522, 31.343927, 31.765907>,  <37.127594, 31.147129, 32.002068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383522, 31.343927, 31.765907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264979, 0.579889, 0.770399,
		0.721396, -0.649362, 0.240658,
		0.639823, 0.491994, -0.590397,
		37.575470, 31.491526, 31.588789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683453, 31.265049, 32.457680>,  <37.127594, 31.147129, 32.002068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683453, 31.265049, 32.457680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744301, 31.541353, 32.174919>,  <37.780807, 31.707136, 32.005264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744301, 31.541353, 32.174919>,  <37.683453, 31.265049, 32.457680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744301, 31.541353, 32.174919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303861, 0.647900, 0.698494,
		0.940494, -0.321054, -0.111338,
		0.152119, 0.690760, -0.706902,
		37.789936, 31.748581, 31.962849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368652, 31.544230, 32.543282>,  <37.683453, 31.265049, 32.457680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368652, 31.544230, 32.543282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151180, 31.801908, 32.328087>,  <38.020699, 31.956516, 32.198971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151180, 31.801908, 32.328087>,  <38.368652, 31.544230, 32.543282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151180, 31.801908, 32.328087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289442, 0.745580, 0.600278,
		0.787806, 0.170642, -0.591813,
		-0.543677, 0.644198, -0.537982,
		37.988079, 31.995169, 32.166691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796581, 32.199928, 32.494610>,  <38.368652, 31.544230, 32.543282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796581, 32.199928, 32.494610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412964, 32.301640, 32.444683>,  <38.182793, 32.362667, 32.414726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412964, 32.301640, 32.444683>,  <38.796581, 32.199928, 32.494610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412964, 32.301640, 32.444683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097677, 0.710498, 0.696887,
		0.265885, 0.656153, -0.706235,
		-0.959043, 0.254275, -0.124820,
		38.125252, 32.377922, 32.407238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336887, 32.514702, 32.860493>,  <38.796581, 32.199928, 32.494610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336887, 32.514702, 32.860493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.686413, 32.697716, 32.794624>,  <39.896126, 32.807526, 32.755104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.686413, 32.697716, 32.794624>,  <39.336887, 32.514702, 32.860493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686413, 32.697716, 32.794624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200343, -0.647312, -0.735425,
		-0.443078, 0.609631, -0.657292,
		0.873810, 0.457535, -0.164674,
		39.948555, 32.834976, 32.745220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312618, 32.882538, 32.169281>,  <39.336887, 32.514702, 32.860493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312618, 32.882538, 32.169281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693768, 32.808132, 32.265148>,  <39.922455, 32.763489, 32.322666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693768, 32.808132, 32.265148>,  <39.312618, 32.882538, 32.169281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693768, 32.808132, 32.265148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106374, -0.534978, -0.838143,
		0.284121, 0.824134, -0.489977,
		0.952869, -0.186013, 0.239665,
		39.979630, 32.752327, 32.337048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716000, 33.102123, 31.530725>,  <39.312618, 32.882538, 32.169281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716000, 33.102123, 31.530725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924324, 32.832565, 31.740343>,  <40.049320, 32.670830, 31.866114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924324, 32.832565, 31.740343>,  <39.716000, 33.102123, 31.530725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924324, 32.832565, 31.740343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303826, -0.427352, -0.851504,
		0.797773, 0.602694, -0.017825,
		0.520814, -0.673892, 0.524044,
		40.080566, 32.630398, 31.897556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273926, 33.132732, 31.276291>,  <39.716000, 33.102123, 31.530725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273926, 33.132732, 31.276291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326138, 32.781754, 31.460922>,  <40.357464, 32.571167, 31.571701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326138, 32.781754, 31.460922>,  <40.273926, 33.132732, 31.276291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326138, 32.781754, 31.460922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377157, -0.386612, -0.841596,
		0.916904, 0.283943, 0.280469,
		0.130532, -0.877444, 0.461577,
		40.365295, 32.518520, 31.599396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827541, 32.924999, 30.947390>,  <40.273926, 33.132732, 31.276291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827541, 32.924999, 30.947390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696712, 32.596863, 31.135036>,  <40.618217, 32.399982, 31.247625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696712, 32.596863, 31.135036>,  <40.827541, 32.924999, 30.947390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696712, 32.596863, 31.135036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420414, -0.570902, -0.705211,
		0.846332, -0.033429, 0.531606,
		-0.327069, -0.820338, 0.469118,
		40.598591, 32.350761, 31.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333454, 32.616474, 31.194220>,  <40.827541, 32.924999, 30.947390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333454, 32.616474, 31.194220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055927, 32.330502, 31.159597>,  <40.889412, 32.158916, 31.138824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055927, 32.330502, 31.159597>,  <41.333454, 32.616474, 31.194220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055927, 32.330502, 31.159597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613702, -0.524089, -0.590509,
		0.376811, -0.462824, 0.802376,
		-0.693818, -0.714930, -0.086553,
		40.847782, 32.116024, 31.133631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701496, 31.929119, 31.011827>,  <41.333454, 32.616474, 31.194220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701496, 31.929119, 31.011827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.328796, 31.816557, 30.920036>,  <41.105179, 31.749020, 30.864962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.328796, 31.816557, 30.920036>,  <41.701496, 31.929119, 31.011827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328796, 31.816557, 30.920036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362722, -0.692176, -0.623960,
		0.016747, -0.664609, 0.747004,
		-0.931747, -0.281404, -0.229476,
		41.049271, 31.732136, 30.851194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692638, 31.152838, 31.055294>,  <41.701496, 31.929119, 31.011827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692638, 31.152838, 31.055294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403130, 31.296959, 30.819895>,  <41.229424, 31.383430, 30.678654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403130, 31.296959, 30.819895>,  <41.692638, 31.152838, 31.055294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403130, 31.296959, 30.819895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143729, -0.755432, -0.639269,
		-0.674900, -0.547272, 0.494978,
		-0.723776, 0.360300, -0.588499,
		41.185997, 31.405048, 30.643345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148712, 30.526680, 30.886829>,  <41.692638, 31.152838, 31.055294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148712, 30.526680, 30.886829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.113132, 30.803236, 30.600035>,  <41.091785, 30.969170, 30.427958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.113132, 30.803236, 30.600035>,  <41.148712, 30.526680, 30.886829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113132, 30.803236, 30.600035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039765, -0.716799, -0.696145,
		-0.995242, -0.090433, 0.036267,
		-0.088951, 0.691391, -0.716985,
		41.086449, 31.010653, 30.384939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769440, 30.172726, 30.321552>,  <41.148712, 30.526680, 30.886829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769440, 30.172726, 30.321552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853676, 30.522654, 30.147041>,  <40.904217, 30.732611, 30.042334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853676, 30.522654, 30.147041>,  <40.769440, 30.172726, 30.321552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853676, 30.522654, 30.147041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152836, -0.470262, -0.869192,
		-0.965553, 0.116363, -0.232736,
		0.210589, 0.874822, -0.436279,
		40.916851, 30.785101, 30.016157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345913, 30.170076, 29.777452>,  <40.769440, 30.172726, 30.321552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345913, 30.170076, 29.777452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663269, 30.398308, 29.692619>,  <40.853683, 30.535246, 29.641720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.663269, 30.398308, 29.692619>,  <40.345913, 30.170076, 29.777452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663269, 30.398308, 29.692619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120837, -0.489101, -0.863816,
		-0.596605, 0.659712, -0.456993,
		0.793386, 0.570578, -0.212083,
		40.901283, 30.569481, 29.628994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235497, 30.381882, 29.110874>,  <40.345913, 30.170076, 29.777452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235497, 30.381882, 29.110874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.623283, 30.453564, 29.177841>,  <40.855953, 30.496572, 29.218021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.623283, 30.453564, 29.177841>,  <40.235497, 30.381882, 29.110874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623283, 30.453564, 29.177841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232558, -0.455106, -0.859532,
		-0.077839, 0.872218, -0.482884,
		0.969463, 0.179204, 0.167416,
		40.914124, 30.507324, 29.228065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648186, 30.802599, 28.535843>,  <40.235497, 30.381882, 29.110874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648186, 30.802599, 28.535843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895935, 30.560972, 28.736435>,  <41.044586, 30.415997, 28.856791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895935, 30.560972, 28.736435>,  <40.648186, 30.802599, 28.535843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895935, 30.560972, 28.736435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344125, -0.365233, -0.864975,
		0.705659, 0.708314, -0.018342,
		0.619373, -0.604066, 0.501479,
		41.081749, 30.379753, 28.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272602, 30.835621, 28.136065>,  <40.648186, 30.802599, 28.535843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272602, 30.835621, 28.136065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339520, 30.530685, 28.386139>,  <41.379669, 30.347725, 28.536184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.339520, 30.530685, 28.386139>,  <41.272602, 30.835621, 28.136065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339520, 30.530685, 28.386139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368125, -0.539960, -0.756919,
		0.914602, 0.356772, 0.190305,
		0.167290, -0.762336, 0.625186,
		41.389706, 30.301985, 28.573694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913376, 30.565296, 27.951107>,  <41.272602, 30.835621, 28.136065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913376, 30.565296, 27.951107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.727932, 30.266775, 28.142143>,  <41.616665, 30.087662, 28.256765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.727932, 30.266775, 28.142143>,  <41.913376, 30.565296, 27.951107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727932, 30.266775, 28.142143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341381, -0.647861, -0.680982,
		0.817632, -0.152671, 0.555130,
		-0.463613, -0.746303, 0.477593,
		41.588848, 30.042885, 28.285421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395786, 29.925900, 27.814955>,  <41.913376, 30.565296, 27.951107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395786, 29.925900, 27.814955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.046288, 29.797403, 27.961037>,  <41.836590, 29.720306, 28.048687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.046288, 29.797403, 27.961037>,  <42.395786, 29.925900, 27.814955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046288, 29.797403, 27.961037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089144, -0.843905, -0.529035,
		0.478147, -0.429685, 0.765994,
		-0.873744, -0.321240, 0.365206,
		41.784164, 29.701031, 28.070599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476345, 29.183823, 28.065573>,  <42.395786, 29.925900, 27.814955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476345, 29.183823, 28.065573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.101189, 29.259108, 27.948997>,  <41.876095, 29.304279, 27.879053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.101189, 29.259108, 27.948997>,  <42.476345, 29.183823, 28.065573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101189, 29.259108, 27.948997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040350, -0.775169, -0.630464,
		-0.344576, -0.603066, 0.719429,
		-0.937891, 0.188214, -0.291439,
		41.819820, 29.315573, 27.861567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330376, 28.469095, 27.933067>,  <42.476345, 29.183823, 28.065573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330376, 28.469095, 27.933067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.041862, 28.694794, 27.772383>,  <41.868755, 28.830214, 27.675972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.041862, 28.694794, 27.772383>,  <42.330376, 28.469095, 27.933067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041862, 28.694794, 27.772383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145654, -0.690567, -0.708450,
		-0.677147, -0.452487, 0.580283,
		-0.721289, 0.564245, -0.401709,
		41.825478, 28.864067, 27.651869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.755161, 28.013058, 27.809729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702000, 28.320221, 27.559080>,  <41.670101, 28.504519, 27.408691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702000, 28.320221, 27.559080>,  <41.755161, 28.013058, 27.809729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702000, 28.320221, 27.559080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060571, -0.637341, -0.768198,
		-0.989276, -0.064145, 0.131221,
		-0.132908, 0.767908, -0.626620,
		41.662128, 28.550592, 27.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275600, 27.830669, 27.394054>,  <41.755161, 28.013058, 27.809729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275600, 27.830669, 27.394054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421864, 28.138193, 27.184206>,  <41.509621, 28.322708, 27.058296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421864, 28.138193, 27.184206>,  <41.275600, 27.830669, 27.394054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421864, 28.138193, 27.184206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019882, -0.557073, -0.830225,
		-0.930537, 0.314009, -0.188413,
		0.365658, 0.768809, -0.524620,
		41.531563, 28.368835, 27.026819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756397, 28.128782, 26.880564>,  <41.275600, 27.830669, 27.394054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756397, 28.128782, 26.880564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.119305, 28.223410, 26.741486>,  <41.337051, 28.280186, 26.658039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.119305, 28.223410, 26.741486>,  <40.756397, 28.128782, 26.880564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119305, 28.223410, 26.741486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288310, -0.252015, -0.923778,
		-0.306163, 0.938362, -0.160441,
		0.907272, 0.236570, -0.347696,
		41.391487, 28.294380, 26.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598808, 28.462694, 26.235270>,  <40.756397, 28.128782, 26.880564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598808, 28.462694, 26.235270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991463, 28.401230, 26.190048>,  <41.227055, 28.364351, 26.162914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991463, 28.401230, 26.190048>,  <40.598808, 28.462694, 26.235270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991463, 28.401230, 26.190048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143454, -0.203926, -0.968419,
		0.125752, 0.966852, -0.222224,
		0.981635, -0.153659, -0.113055,
		41.285954, 28.355131, 26.156132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909950, 28.856152, 25.681034>,  <40.598808, 28.462694, 26.235270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909950, 28.856152, 25.681034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168163, 28.552029, 25.709919>,  <41.323093, 28.369555, 25.727251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168163, 28.552029, 25.709919>,  <40.909950, 28.856152, 25.681034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168163, 28.552029, 25.709919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077441, -0.159229, -0.984200,
		0.759793, 0.629744, -0.161667,
		0.645536, -0.760308, 0.072213,
		41.361824, 28.323936, 25.731583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158722, 28.849655, 25.039999>,  <40.909950, 28.856152, 25.681034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158722, 28.849655, 25.039999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310291, 28.503609, 25.171448>,  <41.401234, 28.295980, 25.250317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310291, 28.503609, 25.171448>,  <41.158722, 28.849655, 25.039999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310291, 28.503609, 25.171448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160984, -0.288068, -0.943982,
		0.911319, 0.410599, 0.030114,
		0.378923, -0.865116, 0.328621,
		41.423969, 28.244074, 25.270035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923439, 28.853456, 24.891119>,  <41.158722, 28.849655, 25.039999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923439, 28.853456, 24.891119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760036, 28.488579, 24.903921>,  <41.661995, 28.269651, 24.911602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760036, 28.488579, 24.903921>,  <41.923439, 28.853456, 24.891119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760036, 28.488579, 24.903921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388445, -0.205473, -0.898271,
		0.825973, -0.354519, 0.438274,
		-0.408508, -0.912193, 0.032004,
		41.637486, 28.214920, 24.913523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463924, 28.442406, 24.748650>,  <41.923439, 28.853456, 24.891119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463924, 28.442406, 24.748650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139317, 28.212906, 24.704384>,  <41.944550, 28.075207, 24.677824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139317, 28.212906, 24.704384>,  <42.463924, 28.442406, 24.748650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139317, 28.212906, 24.704384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425211, -0.449958, -0.785323,
		0.400784, -0.684362, 0.609115,
		-0.811522, -0.573748, -0.110662,
		41.895859, 28.040781, 24.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616714, 27.700756, 24.721025>,  <42.463924, 28.442406, 24.748650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616714, 27.700756, 24.721025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269585, 27.725592, 24.523836>,  <42.061306, 27.740494, 24.405523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269585, 27.725592, 24.523836>,  <42.616714, 27.700756, 24.721025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269585, 27.725592, 24.523836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415376, -0.453781, -0.788382,
		-0.272651, -0.888948, 0.368013,
		-0.867827, 0.062089, -0.492971,
		42.009235, 27.744219, 24.375944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654575, 27.069124, 24.367903>,  <42.616714, 27.700756, 24.721025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654575, 27.069124, 24.367903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399921, 27.327658, 24.199640>,  <42.247128, 27.482777, 24.098682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399921, 27.327658, 24.199640>,  <42.654575, 27.069124, 24.367903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399921, 27.327658, 24.199640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250224, -0.342834, -0.905457,
		-0.729441, -0.681703, 0.056533,
		-0.636634, 0.646332, -0.420656,
		42.208931, 27.521557, 24.073444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369442, 26.659279, 23.949066>,  <42.654575, 27.069124, 24.367903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369442, 26.659279, 23.949066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.278961, 27.025229, 23.815298>,  <42.224674, 27.244799, 23.735037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.278961, 27.025229, 23.815298>,  <42.369442, 26.659279, 23.949066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278961, 27.025229, 23.815298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168391, -0.301421, -0.938504,
		-0.959416, -0.268601, -0.085876,
		-0.226198, 0.914876, -0.334418,
		42.211102, 27.299692, 23.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007084, 26.451183, 23.366669>,  <42.369442, 26.659279, 23.949066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007084, 26.451183, 23.366669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069134, 26.843960, 23.323345>,  <42.106361, 27.079626, 23.297350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069134, 26.843960, 23.323345>,  <42.007084, 26.451183, 23.366669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069134, 26.843960, 23.323345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190132, -0.137263, -0.972116,
		-0.969426, 0.130203, -0.207991,
		0.155121, 0.981940, -0.108310,
		42.115669, 27.138542, 23.290852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516685, 26.722603, 22.793320>,  <42.007084, 26.451183, 23.366669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516685, 26.722603, 22.793320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833393, 26.963381, 22.834829>,  <42.023418, 27.107847, 22.859735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833393, 26.963381, 22.834829>,  <41.516685, 26.722603, 22.793320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833393, 26.963381, 22.834829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194939, -0.088007, -0.976859,
		-0.578883, 0.793673, -0.187024,
		0.791766, 0.601945, 0.103772,
		42.070923, 27.143965, 22.865961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522038, 27.318232, 22.247171>,  <41.516685, 26.722603, 22.793320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522038, 27.318232, 22.247171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.901180, 27.264614, 22.362831>,  <42.128666, 27.232443, 22.432226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.901180, 27.264614, 22.362831>,  <41.522038, 27.318232, 22.247171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901180, 27.264614, 22.362831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303087, 0.098556, -0.947853,
		0.098556, 0.986062, 0.134043,
		0.947853, -0.134043, 0.289149,
		42.185535, 27.224401, 22.449575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788311, 27.478449, 21.731514>,  <41.522038, 27.318232, 22.247171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788311, 27.478449, 21.731514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.134842, 27.378210, 21.904339>,  <42.342762, 27.318068, 22.008034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.134842, 27.378210, 21.904339>,  <41.788311, 27.478449, 21.731514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134842, 27.378210, 21.904339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474904, 0.145280, -0.867963,
		0.154739, 0.957128, 0.244870,
		0.866327, -0.250597, 0.432063,
		42.394741, 27.303030, 22.033958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168804, 27.978559, 21.425058>,  <41.788311, 27.478449, 21.731514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168804, 27.978559, 21.425058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.440517, 27.727623, 21.577381>,  <42.603546, 27.577061, 21.668776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.440517, 27.727623, 21.577381>,  <42.168804, 27.978559, 21.425058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440517, 27.727623, 21.577381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577833, 0.137318, -0.804520,
		0.452417, 0.766542, 0.455776,
		0.679285, -0.627341, 0.380808,
		42.644302, 27.539421, 21.691624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802063, 28.295544, 21.298054>,  <42.168804, 27.978559, 21.425058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802063, 28.295544, 21.298054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.915844, 27.913563, 21.331886>,  <42.984112, 27.684374, 21.352186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.915844, 27.913563, 21.331886>,  <42.802063, 28.295544, 21.298054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915844, 27.913563, 21.331886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688659, 0.142159, -0.711013,
		0.666958, 0.260501, 0.698074,
		0.284457, -0.954950, 0.084582,
		43.001183, 27.627077, 21.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583935, 28.139206, 21.275763>,  <42.802063, 28.295544, 21.298054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583935, 28.139206, 21.275763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.427143, 27.796545, 21.141596>,  <43.333069, 27.590948, 21.061096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.427143, 27.796545, 21.141596>,  <43.583935, 28.139206, 21.275763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427143, 27.796545, 21.141596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574319, 0.056962, -0.816647,
		0.718687, -0.512744, 0.469663,
		-0.391978, -0.856650, -0.335417,
		43.309551, 27.539551, 21.040970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212631, 27.628180, 21.150126>,  <43.583935, 28.139206, 21.275763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212631, 27.628180, 21.150126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884903, 27.539896, 20.938461>,  <43.688267, 27.486927, 20.811462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884903, 27.539896, 20.938461>,  <44.212631, 27.628180, 21.150126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884903, 27.539896, 20.938461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544616, -0.011119, -0.838612,
		0.179204, -0.975277, 0.129310,
		-0.819316, -0.220707, -0.529159,
		43.639107, 27.473684, 20.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354603, 27.069630, 20.641329>,  <44.212631, 27.628180, 21.150126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354603, 27.069630, 20.641329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.012501, 27.218113, 20.496691>,  <43.807240, 27.307203, 20.409908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.012501, 27.218113, 20.496691>,  <44.354603, 27.069630, 20.641329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012501, 27.218113, 20.496691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344729, -0.113441, -0.931822,
		-0.386919, -0.921594, -0.030946,
		-0.855251, 0.371208, -0.361593,
		43.755924, 27.329475, 20.388212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112431, 26.553339, 20.233461>,  <44.354603, 27.069630, 20.641329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112431, 26.553339, 20.233461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.949055, 26.900337, 20.119881>,  <43.851028, 27.108536, 20.051733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.949055, 26.900337, 20.119881>,  <44.112431, 26.553339, 20.233461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949055, 26.900337, 20.119881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385740, -0.117897, -0.915044,
		-0.827274, -0.483271, -0.286474,
		-0.408439, 0.867496, -0.283950,
		43.826523, 27.160585, 20.034697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811634, 26.307133, 19.683708>,  <44.112431, 26.553339, 20.233461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811634, 26.307133, 19.683708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.801167, 26.695063, 19.586750>,  <43.794888, 26.927820, 19.528576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.801167, 26.695063, 19.586750>,  <43.811634, 26.307133, 19.683708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801167, 26.695063, 19.586750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070137, -0.243661, -0.967321,
		-0.997194, -0.008313, 0.074397,
		-0.026169, 0.969825, -0.242394,
		43.793316, 26.986010, 19.514032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566269, 26.172228, 19.049797>,  <43.811634, 26.307133, 19.683708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566269, 26.172228, 19.049797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.671181, 26.557501, 19.073418>,  <43.734127, 26.788666, 19.087591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.671181, 26.557501, 19.073418>,  <43.566269, 26.172228, 19.049797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671181, 26.557501, 19.073418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141991, 0.099050, -0.984900,
		-0.954489, 0.249932, 0.162742,
		0.262278, 0.963184, 0.059054,
		43.749863, 26.846457, 19.091133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931473, 26.597502, 18.842819>,  <43.566269, 26.172228, 19.049797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931473, 26.597502, 18.842819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.298706, 26.742002, 18.777559>,  <43.519047, 26.828703, 18.738403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.298706, 26.742002, 18.777559>,  <42.931473, 26.597502, 18.842819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298706, 26.742002, 18.777559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183621, 0.022829, -0.982732,
		-0.351289, 0.932189, 0.087292,
		0.918085, 0.361252, -0.163150,
		43.574131, 26.850378, 18.728615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587906, 26.033237, 19.064024>,  <42.931473, 26.597502, 18.842819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587906, 26.033237, 19.064024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.277187, 25.915688, 18.841230>,  <42.090755, 25.845158, 18.707554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.277187, 25.915688, 18.841230>,  <42.587906, 26.033237, 19.064024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277187, 25.915688, 18.841230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628696, 0.310570, 0.712943,
		-0.036532, 0.903983, -0.426005,
		-0.776793, -0.293873, -0.556984,
		42.044151, 25.827526, 18.674135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200920, 26.520361, 18.967348>,  <42.587906, 26.033237, 19.064024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200920, 26.520361, 18.967348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.942974, 26.220491, 18.907829>,  <41.788208, 26.040569, 18.872118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.942974, 26.220491, 18.907829>,  <42.200920, 26.520361, 18.967348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942974, 26.220491, 18.907829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554054, 0.324422, 0.766665,
		-0.526475, 0.576836, -0.624567,
		-0.644863, -0.749674, -0.148798,
		41.749516, 25.995588, 18.863190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587090, 26.784420, 19.030684>,  <42.200920, 26.520361, 18.967348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587090, 26.784420, 19.030684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495182, 26.398701, 19.083344>,  <41.440037, 26.167269, 19.114941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495182, 26.398701, 19.083344>,  <41.587090, 26.784420, 19.030684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495182, 26.398701, 19.083344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642905, 0.251939, 0.723326,
		-0.730672, 0.081556, -0.677840,
		-0.229766, -0.964301, 0.131652,
		41.426250, 26.109411, 19.122839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879501, 26.711105, 19.053167>,  <41.587090, 26.784420, 19.030684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879501, 26.711105, 19.053167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002392, 26.391300, 19.259621>,  <41.076126, 26.199417, 19.383493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002392, 26.391300, 19.259621>,  <40.879501, 26.711105, 19.053167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002392, 26.391300, 19.259621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746171, 0.134229, 0.652082,
		-0.590626, -0.585462, -0.555333,
		0.307227, -0.799511, 0.516134,
		41.094559, 26.151447, 19.414461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323650, 26.322130, 19.164087>,  <40.879501, 26.711105, 19.053167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323650, 26.322130, 19.164087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578316, 26.197006, 19.446026>,  <40.731113, 26.121931, 19.615189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578316, 26.197006, 19.446026>,  <40.323650, 26.322130, 19.164087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578316, 26.197006, 19.446026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670162, 0.227747, 0.706410,
		-0.381499, -0.922107, -0.064635,
		0.636665, -0.312810, 0.704846,
		40.769314, 26.103163, 19.657480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866089, 26.017460, 19.667158>,  <40.323650, 26.322130, 19.164087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866089, 26.017460, 19.667158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.212708, 26.086811, 19.854364>,  <40.420677, 26.128422, 19.966688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.212708, 26.086811, 19.854364>,  <39.866089, 26.017460, 19.667158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212708, 26.086811, 19.854364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497317, 0.220815, 0.838997,
		0.042117, -0.959782, 0.277569,
		0.866546, 0.173376, 0.468016,
		40.472672, 26.138824, 19.994768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950962, 25.634619, 20.220476>,  <39.866089, 26.017460, 19.667158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950962, 25.634619, 20.220476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167713, 25.960470, 20.303179>,  <40.297764, 26.155981, 20.352800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167713, 25.960470, 20.303179>,  <39.950962, 25.634619, 20.220476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167713, 25.960470, 20.303179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543802, 0.152272, 0.825283,
		0.640816, -0.559638, 0.525510,
		0.541880, 0.814628, 0.206754,
		40.330276, 26.204859, 20.365206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992306, 25.483782, 20.906834>,  <39.950962, 25.634619, 20.220476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992306, 25.483782, 20.906834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143478, 25.852690, 20.874372>,  <40.234184, 26.074034, 20.854895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143478, 25.852690, 20.874372>,  <39.992306, 25.483782, 20.906834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143478, 25.852690, 20.874372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345756, 0.221912, 0.911706,
		0.858847, -0.316504, 0.402748,
		0.377934, 0.922269, -0.081155,
		40.256859, 26.129370, 20.850025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258484, 25.620741, 21.499022>,  <39.992306, 25.483782, 20.906834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258484, 25.620741, 21.499022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206654, 25.995300, 21.368568>,  <40.175556, 26.220036, 21.290297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206654, 25.995300, 21.368568>,  <40.258484, 25.620741, 21.499022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206654, 25.995300, 21.368568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048408, 0.322541, 0.945317,
		0.990387, 0.138278, 0.003536,
		-0.129576, 0.936401, -0.326134,
		40.167782, 26.276220, 21.270727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722202, 26.036425, 21.881924>,  <40.258484, 25.620741, 21.499022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722202, 26.036425, 21.881924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409351, 26.253317, 21.759111>,  <40.221642, 26.383453, 21.685425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409351, 26.253317, 21.759111>,  <40.722202, 26.036425, 21.881924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409351, 26.253317, 21.759111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171786, 0.286005, 0.942704,
		0.598977, 0.790054, -0.130544,
		-0.782123, 0.542232, -0.307031,
		40.174713, 26.415987, 21.667002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882042, 26.658628, 22.146244>,  <40.722202, 26.036425, 21.881924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882042, 26.658628, 22.146244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492458, 26.663832, 22.055710>,  <40.258709, 26.666954, 22.001389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492458, 26.663832, 22.055710>,  <40.882042, 26.658628, 22.146244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492458, 26.663832, 22.055710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203438, 0.390435, 0.897872,
		0.100050, 0.920539, -0.377622,
		-0.973962, 0.013010, -0.226336,
		40.200268, 26.667734, 21.987808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551662, 27.311239, 22.459824>,  <40.882042, 26.658628, 22.146244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551662, 27.311239, 22.459824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236099, 27.080864, 22.374113>,  <40.046761, 26.942638, 22.322687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236099, 27.080864, 22.374113>,  <40.551662, 27.311239, 22.459824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236099, 27.080864, 22.374113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351605, 0.137091, 0.926056,
		-0.503975, 0.805917, -0.310656,
		-0.788912, -0.575938, -0.214274,
		39.999424, 26.908083, 22.309832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033009, 27.630243, 22.757401>,  <40.551662, 27.311239, 22.459824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033009, 27.630243, 22.757401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862350, 27.270348, 22.720661>,  <39.759956, 27.054409, 22.698618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862350, 27.270348, 22.720661>,  <40.033009, 27.630243, 22.757401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862350, 27.270348, 22.720661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415519, 0.104800, 0.903527,
		-0.803315, 0.423654, -0.418573,
		-0.426649, -0.899742, -0.091849,
		39.734356, 27.000425, 22.693106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305710, 27.765656, 22.770041>,  <40.033009, 27.630243, 22.757401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305710, 27.765656, 22.770041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402691, 27.396250, 22.888929>,  <39.460880, 27.174606, 22.960262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402691, 27.396250, 22.888929>,  <39.305710, 27.765656, 22.770041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402691, 27.396250, 22.888929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439238, 0.168677, 0.882393,
		-0.865037, -0.344487, -0.364746,
		0.242449, -0.923513, 0.297224,
		39.475426, 27.119196, 22.978096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764645, 27.557585, 23.245062>,  <39.305710, 27.765656, 22.770041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764645, 27.557585, 23.245062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059895, 27.300211, 23.326225>,  <39.237045, 27.145786, 23.374924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059895, 27.300211, 23.326225>,  <38.764645, 27.557585, 23.245062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059895, 27.300211, 23.326225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147241, 0.139870, 0.979161,
		-0.658406, -0.752615, 0.008502,
		0.738121, -0.643434, 0.202907,
		39.281330, 27.107182, 23.387098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446426, 26.939545, 23.693573>,  <38.764645, 27.557585, 23.245062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446426, 26.939545, 23.693573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838375, 26.962421, 23.770081>,  <39.073544, 26.976147, 23.815985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838375, 26.962421, 23.770081>,  <38.446426, 26.939545, 23.693573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838375, 26.962421, 23.770081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199262, 0.221663, 0.954547,
		0.012193, -0.973445, 0.228597,
		0.979870, 0.057189, 0.191267,
		39.132336, 26.979578, 23.827461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501759, 26.445288, 24.178696>,  <38.446426, 26.939545, 23.693573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501759, 26.445288, 24.178696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820915, 26.685078, 24.204006>,  <39.012409, 26.828953, 24.219193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820915, 26.685078, 24.204006>,  <38.501759, 26.445288, 24.178696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820915, 26.685078, 24.204006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074452, -0.006161, 0.997206,
		0.598192, -0.800368, 0.039716,
		0.797887, 0.599477, 0.063274,
		39.060280, 26.864922, 24.222988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677689, 26.383642, 24.867525>,  <38.501759, 26.445288, 24.178696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677689, 26.383642, 24.867525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899635, 26.696785, 24.754908>,  <39.032803, 26.884670, 24.687338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899635, 26.696785, 24.754908>,  <38.677689, 26.383642, 24.867525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899635, 26.696785, 24.754908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019047, 0.326374, 0.945049,
		0.831724, -0.529734, 0.166182,
		0.554862, 0.782855, -0.281543,
		39.066093, 26.931641, 24.670444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237999, 26.384048, 25.276148>,  <38.677689, 26.383642, 24.867525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237999, 26.384048, 25.276148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156105, 26.748806, 25.133863>,  <39.106968, 26.967661, 25.048492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156105, 26.748806, 25.133863>,  <39.237999, 26.384048, 25.276148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156105, 26.748806, 25.133863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023570, 0.358710, 0.933151,
		0.978533, 0.199434, -0.051948,
		-0.204737, 0.911895, -0.355710,
		39.094685, 27.022375, 25.027151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692970, 26.815063, 25.671877>,  <39.237999, 26.384048, 25.276148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692970, 26.815063, 25.671877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408466, 27.054913, 25.525148>,  <39.237762, 27.198822, 25.437111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408466, 27.054913, 25.525148>,  <39.692970, 26.815063, 25.671877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408466, 27.054913, 25.525148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164128, 0.365756, 0.916125,
		0.683497, 0.711810, -0.161734,
		-0.711262, 0.599624, -0.366821,
		39.195087, 27.234800, 25.415102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.203072, 30.628082, 29.475338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811264, 30.612406, 29.396336>,  <41.576180, 30.602999, 29.348934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811264, 30.612406, 29.396336>,  <42.203072, 30.628082, 29.475338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811264, 30.612406, 29.396336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165628, 0.714634, 0.679607,
		0.114510, 0.698400, -0.706488,
		-0.979518, -0.039192, -0.197508,
		41.517410, 30.600649, 29.337084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910397, 31.341816, 29.319178>,  <42.203072, 30.628082, 29.475338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910397, 31.341816, 29.319178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611248, 31.104187, 29.437681>,  <41.431759, 30.961609, 29.508783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611248, 31.104187, 29.437681>,  <41.910397, 31.341816, 29.319178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611248, 31.104187, 29.437681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317881, 0.712260, 0.625809,
		-0.582788, 0.373849, -0.721523,
		-0.747870, -0.594072, 0.296257,
		41.386887, 30.925966, 29.526558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501389, 31.825169, 29.460638>,  <41.910397, 31.341816, 29.319178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501389, 31.825169, 29.460638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346584, 31.492973, 29.620895>,  <41.253704, 31.293657, 29.717051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346584, 31.492973, 29.620895>,  <41.501389, 31.825169, 29.460638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346584, 31.492973, 29.620895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493760, 0.553610, 0.670610,
		-0.778734, 0.061709, -0.624312,
		-0.387008, -0.830487, 0.400646,
		41.230480, 31.243828, 29.741089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797958, 31.983566, 29.561989>,  <41.501389, 31.825169, 29.460638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797958, 31.983566, 29.561989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899113, 31.670042, 29.788860>,  <40.959805, 31.481928, 29.924982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899113, 31.670042, 29.788860>,  <40.797958, 31.983566, 29.561989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899113, 31.670042, 29.788860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548594, 0.366713, 0.751376,
		-0.796928, -0.501161, -0.337259,
		0.252884, -0.783811, 0.567178,
		40.974979, 31.434898, 29.959013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236263, 31.690285, 29.818682>,  <40.797958, 31.983566, 29.561989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236263, 31.690285, 29.818682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519978, 31.602417, 30.086609>,  <40.690205, 31.549696, 30.247366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519978, 31.602417, 30.086609>,  <40.236263, 31.690285, 29.818682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519978, 31.602417, 30.086609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583552, 0.350076, 0.732744,
		-0.395450, -0.910600, 0.120115,
		0.709286, -0.219670, 0.669820,
		40.732765, 31.536516, 30.287556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890232, 31.598394, 30.378363>,  <40.236263, 31.690285, 29.818682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890232, 31.598394, 30.378363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258717, 31.609016, 30.533627>,  <40.479809, 31.615391, 30.626785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258717, 31.609016, 30.533627>,  <39.890232, 31.598394, 30.378363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258717, 31.609016, 30.533627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368048, 0.382950, 0.847284,
		-0.126144, -0.923387, 0.362552,
		0.921210, 0.026556, 0.388158,
		40.535080, 31.616983, 30.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955975, 31.210527, 30.942318>,  <39.890232, 31.598394, 30.378363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955975, 31.210527, 30.942318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226433, 31.500763, 30.993456>,  <40.388710, 31.674904, 31.024139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226433, 31.500763, 30.993456>,  <39.955975, 31.210527, 30.942318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226433, 31.500763, 30.993456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490619, 0.313968, 0.812845,
		0.549652, -0.612326, 0.568277,
		0.676147, 0.725590, 0.127845,
		40.429276, 31.718439, 31.031809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042248, 31.157242, 31.634424>,  <39.955975, 31.210527, 30.942318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042248, 31.157242, 31.634424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204605, 31.502024, 31.512909>,  <40.302021, 31.708893, 31.440001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204605, 31.502024, 31.512909>,  <40.042248, 31.157242, 31.634424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204605, 31.502024, 31.512909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283006, 0.434604, 0.855001,
		0.868999, -0.261065, 0.420340,
		0.405893, 0.861954, -0.303787,
		40.326374, 31.760611, 31.421772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423267, 31.355869, 32.156349>,  <40.042248, 31.157242, 31.634424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423267, 31.355869, 32.156349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415096, 31.721146, 31.993540>,  <40.410194, 31.940311, 31.895855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415096, 31.721146, 31.993540>,  <40.423267, 31.355869, 32.156349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415096, 31.721146, 31.993540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200351, 0.395107, 0.896521,
		0.979511, 0.099861, 0.174887,
		-0.020428, 0.913191, -0.407019,
		40.408966, 31.995104, 31.871433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792500, 31.790440, 32.572475>,  <40.423267, 31.355869, 32.156349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792500, 31.790440, 32.572475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558575, 32.039574, 32.364601>,  <40.418221, 32.189053, 32.239876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558575, 32.039574, 32.364601>,  <40.792500, 31.790440, 32.572475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558575, 32.039574, 32.364601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035037, 0.659456, 0.750927,
		0.810411, 0.420944, -0.407481,
		-0.584814, 0.622836, -0.519681,
		40.383129, 32.226425, 32.208698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160160, 32.357365, 32.705986>,  <40.792500, 31.790440, 32.572475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160160, 32.357365, 32.705986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813843, 32.494328, 32.560028>,  <40.606052, 32.576508, 32.472454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813843, 32.494328, 32.560028>,  <41.160160, 32.357365, 32.705986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813843, 32.494328, 32.560028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060462, 0.652292, 0.755553,
		0.496729, 0.676218, -0.544050,
		-0.865797, 0.342411, -0.364898,
		40.554104, 32.597050, 32.450558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211372, 33.114098, 32.667332>,  <41.160160, 32.357365, 32.705986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211372, 33.114098, 32.667332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825241, 33.016636, 32.704811>,  <40.593563, 32.958157, 32.727299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825241, 33.016636, 32.704811>,  <41.211372, 33.114098, 32.667332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825241, 33.016636, 32.704811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096528, 0.666646, 0.739098,
		-0.242550, 0.704425, -0.667050,
		-0.965325, -0.243657, 0.093698,
		40.535645, 32.943539, 32.732922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814739, 33.752487, 32.705002>,  <41.211372, 33.114098, 32.667332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814739, 33.752487, 32.705002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636017, 33.464668, 32.917648>,  <40.528782, 33.291977, 33.045238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636017, 33.464668, 32.917648>,  <40.814739, 33.752487, 32.705002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636017, 33.464668, 32.917648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084663, 0.557558, 0.825809,
		-0.890616, 0.413985, -0.188202,
		-0.446806, -0.719545, 0.531619,
		40.501976, 33.248806, 33.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492050, 34.534256, 32.575489>,  <40.814739, 33.752487, 32.705002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492050, 34.534256, 32.575489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500992, 34.861683, 32.345898>,  <40.506355, 35.058140, 32.208145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500992, 34.861683, 32.345898>,  <40.492050, 34.534256, 32.575489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500992, 34.861683, 32.345898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961035, -0.140627, -0.237982,
		-0.275521, 0.556932, 0.783528,
		0.022355, 0.818567, -0.573976,
		40.507698, 35.107254, 32.173706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133133, 34.891300, 33.163860>,  <40.492050, 34.534256, 32.575489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133133, 34.891300, 33.163860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403603, 35.181389, 33.111950>,  <40.565884, 35.355442, 33.080803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403603, 35.181389, 33.111950>,  <40.133133, 34.891300, 33.163860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403603, 35.181389, 33.111950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093596, -0.259284, -0.961255,
		-0.730772, 0.637830, -0.243199,
		0.676175, 0.725221, -0.129779,
		40.606457, 35.398956, 33.073017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876984, 35.168335, 32.595451>,  <40.133133, 34.891300, 33.163860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876984, 35.168335, 32.595451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252792, 35.300957, 32.629799>,  <40.478275, 35.380531, 32.650410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252792, 35.300957, 32.629799>,  <39.876984, 35.168335, 32.595451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252792, 35.300957, 32.629799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129758, -0.112546, -0.985138,
		-0.316966, 0.936698, -0.148762,
		0.939519, 0.331558, 0.085870,
		40.534649, 35.400425, 32.655560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025852, 35.665989, 32.002129>,  <39.876984, 35.168335, 32.595451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025852, 35.665989, 32.002129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384483, 35.553539, 32.139015>,  <40.599663, 35.486069, 32.221146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384483, 35.553539, 32.139015>,  <40.025852, 35.665989, 32.002129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384483, 35.553539, 32.139015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254482, -0.305387, -0.917594,
		0.362467, 0.909784, -0.202263,
		0.896581, -0.281125, 0.342216,
		40.653458, 35.469200, 32.241680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453548, 35.791348, 31.446344>,  <40.025852, 35.665989, 32.002129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453548, 35.791348, 31.446344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.708614, 35.574181, 31.664928>,  <40.861656, 35.443882, 31.796080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.708614, 35.574181, 31.664928>,  <40.453548, 35.791348, 31.446344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708614, 35.574181, 31.664928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412609, -0.358322, -0.837472,
		0.650487, 0.759504, -0.004477,
		0.637668, -0.542917, 0.546462,
		40.899914, 35.411304, 31.828867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011177, 35.861916, 31.058270>,  <40.453548, 35.791348, 31.446344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011177, 35.861916, 31.058270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075062, 35.536186, 31.281471>,  <41.113392, 35.340748, 31.415392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075062, 35.536186, 31.281471>,  <41.011177, 35.861916, 31.058270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075062, 35.536186, 31.281471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311817, -0.494706, -0.811194,
		0.936623, 0.303552, 0.174911,
		0.159710, -0.814323, 0.558006,
		41.122974, 35.291889, 31.448874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701149, 35.646278, 30.908619>,  <41.011177, 35.861916, 31.058270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701149, 35.646278, 30.908619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462769, 35.351688, 31.036648>,  <41.319740, 35.174934, 31.113464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462769, 35.351688, 31.036648>,  <41.701149, 35.646278, 30.908619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462769, 35.351688, 31.036648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089508, -0.457021, -0.884940,
		0.798016, -0.498733, 0.338283,
		-0.595951, -0.736476, 0.320070,
		41.283981, 35.130745, 31.132669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026165, 35.109051, 30.585115>,  <41.701149, 35.646278, 30.908619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026165, 35.109051, 30.585115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664406, 34.986599, 30.704008>,  <41.447350, 34.913128, 30.775343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664406, 34.986599, 30.704008>,  <42.026165, 35.109051, 30.585115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664406, 34.986599, 30.704008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080021, -0.562552, -0.822880,
		0.419114, -0.767998, 0.484275,
		-0.904400, -0.306128, 0.297230,
		41.393085, 34.894760, 30.793177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117580, 34.441399, 30.580137>,  <42.026165, 35.109051, 30.585115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117580, 34.441399, 30.580137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726887, 34.523796, 30.556305>,  <41.492470, 34.573235, 30.542006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726887, 34.523796, 30.556305>,  <42.117580, 34.441399, 30.580137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726887, 34.523796, 30.556305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050246, -0.489966, -0.870292,
		-0.208463, -0.847055, 0.488919,
		-0.976739, 0.205990, -0.059579,
		41.433865, 34.585594, 30.538431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789867, 33.823601, 30.425127>,  <42.117580, 34.441399, 30.580137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789867, 33.823601, 30.425127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.510048, 34.088985, 30.318966>,  <41.342155, 34.248219, 30.255268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.510048, 34.088985, 30.318966>,  <41.789867, 33.823601, 30.425127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510048, 34.088985, 30.318966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249007, -0.574466, -0.779734,
		-0.669794, -0.479375, 0.567076,
		-0.699551, 0.663467, -0.265406,
		41.300182, 34.288025, 30.239344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268116, 33.372429, 30.174549>,  <41.789867, 33.823601, 30.425127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268116, 33.372429, 30.174549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186775, 33.732632, 30.020805>,  <41.137970, 33.948753, 29.928560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186775, 33.732632, 30.020805>,  <41.268116, 33.372429, 30.174549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186775, 33.732632, 30.020805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218454, -0.424395, -0.878730,
		-0.954423, -0.094730, 0.283023,
		-0.203356, 0.900508, -0.384358,
		41.125767, 34.002785, 29.905499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660122, 33.283600, 29.798496>,  <41.268116, 33.372429, 30.174549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660122, 33.283600, 29.798496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765930, 33.641705, 29.655094>,  <40.829414, 33.856567, 29.569054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765930, 33.641705, 29.655094>,  <40.660122, 33.283600, 29.798496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765930, 33.641705, 29.655094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254475, -0.293772, -0.921380,
		-0.930199, 0.334956, 0.150113,
		0.264523, 0.895267, -0.358504,
		40.845287, 33.910286, 29.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046490, 33.370739, 29.411749>,  <40.660122, 33.283600, 29.798496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046490, 33.370739, 29.411749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343533, 33.605595, 29.282883>,  <40.521759, 33.746510, 29.205563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343533, 33.605595, 29.282883>,  <40.046490, 33.370739, 29.411749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343533, 33.605595, 29.282883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124848, -0.351248, -0.927921,
		-0.657983, 0.729306, -0.187537,
		0.742611, 0.587143, -0.322167,
		40.566315, 33.781738, 29.186232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742840, 33.664436, 28.861565>,  <40.046490, 33.370739, 29.411749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742840, 33.664436, 28.861565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138851, 33.674812, 28.806175>,  <40.376457, 33.681038, 28.772942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138851, 33.674812, 28.806175>,  <39.742840, 33.664436, 28.861565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138851, 33.674812, 28.806175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129593, -0.217840, -0.967342,
		-0.055261, 0.975639, -0.212306,
		0.990026, 0.025943, -0.138474,
		40.435860, 33.682594, 28.764633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893230, 34.029243, 28.234812>,  <39.742840, 33.664436, 28.861565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893230, 34.029243, 28.234812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215775, 33.796085, 28.274845>,  <40.409302, 33.656189, 28.298864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215775, 33.796085, 28.274845>,  <39.893230, 34.029243, 28.234812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215775, 33.796085, 28.274845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058726, -0.247301, -0.967157,
		0.588501, 0.774000, -0.233645,
		0.806361, -0.582894, 0.100083,
		40.457684, 33.621216, 28.304871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865185, 34.712360, 28.272228>,  <39.893230, 34.029243, 28.234812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865185, 34.712360, 28.272228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633160, 34.909431, 28.012754>,  <39.493946, 35.027676, 27.857069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633160, 34.909431, 28.012754>,  <39.865185, 34.712360, 28.272228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633160, 34.909431, 28.012754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584090, 0.303502, 0.752812,
		0.567773, 0.815569, 0.111719,
		-0.580063, 0.492680, -0.648686,
		39.459141, 35.057236, 27.818150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770714, 35.442348, 28.494019>,  <39.865185, 34.712360, 28.272228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770714, 35.442348, 28.494019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449783, 35.345936, 28.275599>,  <39.257225, 35.288090, 28.144547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449783, 35.345936, 28.275599>,  <39.770714, 35.442348, 28.494019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449783, 35.345936, 28.275599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596440, 0.358885, 0.717956,
		0.022923, 0.901725, -0.431702,
		-0.802330, -0.241027, -0.546051,
		39.209084, 35.273628, 28.111784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249100, 36.024296, 28.540911>,  <39.770714, 35.442348, 28.494019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249100, 36.024296, 28.540911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013710, 35.727066, 28.413450>,  <38.872475, 35.548729, 28.336973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013710, 35.727066, 28.413450>,  <39.249100, 36.024296, 28.540911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013710, 35.727066, 28.413450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623740, 0.166476, 0.763697,
		-0.514433, 0.648175, -0.561451,
		-0.588478, -0.743071, -0.318652,
		38.837166, 35.504147, 28.317854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623409, 36.316250, 28.534737>,  <39.249100, 36.024296, 28.540911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623409, 36.316250, 28.534737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541985, 35.924763, 28.524300>,  <38.493130, 35.689873, 28.518038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541985, 35.924763, 28.524300>,  <38.623409, 36.316250, 28.534737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541985, 35.924763, 28.524300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792667, 0.149110, 0.591139,
		-0.574665, 0.141018, -0.806147,
		-0.203566, -0.978713, -0.026091,
		38.480915, 35.631149, 28.516472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909634, 36.185902, 28.405619>,  <38.623409, 36.316250, 28.534737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909634, 36.185902, 28.405619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026985, 35.854160, 28.595821>,  <38.097397, 35.655117, 28.709942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026985, 35.854160, 28.595821>,  <37.909634, 36.185902, 28.405619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026985, 35.854160, 28.595821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756116, 0.103067, 0.646271,
		-0.584996, -0.549136, -0.596850,
		0.293374, -0.829353, 0.475504,
		38.114998, 35.605354, 28.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258038, 35.749878, 28.534040>,  <37.909634, 36.185902, 28.405619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258038, 35.749878, 28.534040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524910, 35.596767, 28.789650>,  <37.685032, 35.504902, 28.943016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524910, 35.596767, 28.789650>,  <37.258038, 35.749878, 28.534040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524910, 35.596767, 28.789650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712037, -0.075728, 0.698047,
		-0.218808, -0.920730, -0.323078,
		0.667178, -0.382781, 0.639023,
		37.725063, 35.481934, 28.981358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845242, 35.332314, 28.930674>,  <37.258038, 35.749878, 28.534040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845242, 35.332314, 28.930674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183525, 35.392494, 29.135473>,  <37.386494, 35.428600, 29.258354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183525, 35.392494, 29.135473>,  <36.845242, 35.332314, 28.930674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183525, 35.392494, 29.135473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516459, -0.010800, 0.856244,
		0.134350, -0.988559, 0.068567,
		0.845707, 0.150448, 0.512001,
		37.437237, 35.437630, 29.289074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757935, 34.908417, 29.535011>,  <36.845242, 35.332314, 28.930674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757935, 34.908417, 29.535011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053867, 35.157112, 29.637846>,  <37.231426, 35.306328, 29.699547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053867, 35.157112, 29.637846>,  <36.757935, 34.908417, 29.535011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053867, 35.157112, 29.637846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378061, 0.068097, 0.923273,
		0.556527, -0.780259, 0.285435,
		0.739829, 0.621738, 0.257088,
		37.275818, 35.343632, 29.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926815, 34.715824, 30.171545>,  <36.757935, 34.908417, 29.535011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926815, 34.715824, 30.171545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091526, 35.080097, 30.158304>,  <37.190353, 35.298660, 30.150360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091526, 35.080097, 30.158304>,  <36.926815, 34.715824, 30.171545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091526, 35.080097, 30.158304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390864, 0.209318, 0.896332,
		0.823202, -0.356153, 0.442146,
		0.411781, 0.910681, -0.033104,
		37.215061, 35.353302, 30.148373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144089, 34.831104, 30.859554>,  <36.926815, 34.715824, 30.171545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144089, 34.831104, 30.859554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123394, 35.192993, 30.690413>,  <37.110977, 35.410126, 30.588926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123394, 35.192993, 30.690413>,  <37.144089, 34.831104, 30.859554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123394, 35.192993, 30.690413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308431, 0.388248, 0.868408,
		0.949839, 0.175350, 0.258957,
		-0.051736, 0.904718, -0.422856,
		37.107872, 35.464409, 30.563555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371838, 35.273090, 31.387627>,  <37.144089, 34.831104, 30.859554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371838, 35.273090, 31.387627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148373, 35.485367, 31.132673>,  <37.014294, 35.612732, 30.979700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148373, 35.485367, 31.132673>,  <37.371838, 35.273090, 31.387627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148373, 35.485367, 31.132673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422566, 0.479149, 0.769321,
		0.713675, 0.699129, -0.043432,
		-0.558665, 0.530692, -0.637385,
		36.980774, 35.644573, 30.941458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488102, 35.941643, 31.536509>,  <37.371838, 35.273090, 31.387627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488102, 35.941643, 31.536509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125450, 35.930714, 31.368093>,  <36.907860, 35.924156, 31.267044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125450, 35.930714, 31.368093>,  <37.488102, 35.941643, 31.536509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125450, 35.930714, 31.368093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398786, 0.381408, 0.833965,
		0.137799, 0.924003, -0.356693,
		-0.906632, -0.027324, -0.421037,
		36.853462, 35.922516, 31.241783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.577034, 34.880810, 24.341682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212906, 34.731091, 24.271000>,  <40.994431, 34.641258, 24.228590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212906, 34.731091, 24.271000>,  <41.577034, 34.880810, 24.341682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212906, 34.731091, 24.271000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294846, 0.286769, 0.911498,
		-0.290499, 0.881852, -0.371411,
		-0.910317, -0.374299, -0.176704,
		40.939812, 34.618801, 24.217989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151520, 35.366814, 24.677023>,  <41.577034, 34.880810, 24.341682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151520, 35.366814, 24.677023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918365, 35.043011, 24.648888>,  <40.778473, 34.848728, 24.632006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918365, 35.043011, 24.648888>,  <41.151520, 35.366814, 24.677023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918365, 35.043011, 24.648888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441766, 0.243055, 0.863578,
		-0.681975, 0.534439, -0.499285,
		-0.582884, -0.809505, -0.070340,
		40.743500, 34.800159, 24.627787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500111, 35.656727, 24.898718>,  <41.151520, 35.366814, 24.677023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500111, 35.656727, 24.898718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451546, 35.261078, 24.931934>,  <40.422405, 35.023689, 24.951864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451546, 35.261078, 24.931934>,  <40.500111, 35.656727, 24.898718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451546, 35.261078, 24.931934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582317, 0.138729, 0.801038,
		-0.803845, 0.048899, -0.592826,
		-0.121412, -0.989122, 0.083042,
		40.415123, 34.964340, 24.956846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760101, 35.542374, 24.983965>,  <40.500111, 35.656727, 24.898718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760101, 35.542374, 24.983965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974674, 35.241394, 25.136833>,  <40.103416, 35.060806, 25.228554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974674, 35.241394, 25.136833>,  <39.760101, 35.542374, 24.983965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974674, 35.241394, 25.136833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552639, 0.029054, 0.832914,
		-0.637832, -0.658005, -0.400249,
		0.536433, -0.752453, 0.382171,
		40.135605, 35.015659, 25.251484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253315, 35.124260, 25.187828>,  <39.760101, 35.542374, 24.983965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253315, 35.124260, 25.187828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577755, 35.024826, 25.399612>,  <39.772419, 34.965168, 25.526682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577755, 35.024826, 25.399612>,  <39.253315, 35.124260, 25.187828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577755, 35.024826, 25.399612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533759, 0.055636, 0.843805,
		-0.239212, -0.967012, -0.087556,
		0.811098, -0.248582, 0.529460,
		39.821083, 34.950253, 25.558451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100628, 34.572395, 25.619999>,  <39.253315, 35.124260, 25.187828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100628, 34.572395, 25.619999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424290, 34.719582, 25.803247>,  <39.618484, 34.807892, 25.913197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424290, 34.719582, 25.803247>,  <39.100628, 34.572395, 25.619999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424290, 34.719582, 25.803247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483836, -0.025178, 0.874796,
		0.333430, -0.929499, 0.157662,
		0.809153, 0.367965, 0.458120,
		39.667034, 34.829971, 25.940683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966339, 34.350014, 26.255337>,  <39.100628, 34.572395, 25.619999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966339, 34.350014, 26.255337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281918, 34.589165, 26.312054>,  <39.471264, 34.732655, 26.346085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281918, 34.589165, 26.312054>,  <38.966339, 34.350014, 26.255337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281918, 34.589165, 26.312054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188375, 0.015694, 0.981972,
		0.584874, -0.801433, 0.125007,
		0.788947, 0.597878, 0.141792,
		39.518600, 34.768528, 26.354591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345276, 34.066750, 26.907858>,  <38.966339, 34.350014, 26.255337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345276, 34.066750, 26.907858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433517, 34.453617, 26.857395>,  <39.486462, 34.685738, 26.827118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433517, 34.453617, 26.857395>,  <39.345276, 34.066750, 26.907858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433517, 34.453617, 26.857395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356204, 0.200297, 0.912688,
		0.907994, -0.156404, 0.388696,
		0.220602, 0.967171, -0.126157,
		39.499699, 34.743767, 26.819548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768875, 34.275913, 27.490917>,  <39.345276, 34.066750, 26.907858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768875, 34.275913, 27.490917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596313, 34.594593, 27.321608>,  <39.492779, 34.785801, 27.220022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596313, 34.594593, 27.321608>,  <39.768875, 34.275913, 27.490917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596313, 34.594593, 27.321608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338764, 0.291790, 0.894482,
		0.836142, 0.529270, 0.144015,
		-0.431400, 0.796701, -0.423275,
		39.466892, 34.833603, 27.194626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382389, 34.103630, 27.442469>,  <39.768875, 34.275913, 27.490917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382389, 34.103630, 27.442469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530399, 33.801548, 27.658894>,  <40.619205, 33.620300, 27.788750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530399, 33.801548, 27.658894>,  <40.382389, 34.103630, 27.442469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530399, 33.801548, 27.658894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164959, -0.519737, -0.838249,
		0.914261, 0.399423, -0.067736,
		0.370021, -0.755205, 0.541064,
		40.641407, 33.574986, 27.821213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920059, 33.749176, 27.028854>,  <40.382389, 34.103630, 27.442469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920059, 33.749176, 27.028854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826221, 33.491287, 27.319864>,  <40.769917, 33.336552, 27.494471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826221, 33.491287, 27.319864>,  <40.920059, 33.749176, 27.028854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826221, 33.491287, 27.319864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288374, -0.760879, -0.581295,
		0.928334, 0.073429, 0.364423,
		-0.234598, -0.644726, 0.727525,
		40.755840, 33.297871, 27.538122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480026, 33.278950, 26.967728>,  <40.920059, 33.749176, 27.028854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480026, 33.278950, 26.967728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224564, 33.067162, 27.191078>,  <41.071285, 32.940090, 27.325089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224564, 33.067162, 27.191078>,  <41.480026, 33.278950, 26.967728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224564, 33.067162, 27.191078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270847, -0.833878, -0.480926,
		0.720253, -0.155911, 0.675965,
		-0.638653, -0.529471, 0.558375,
		41.032967, 32.908321, 27.358591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777843, 32.662518, 27.286974>,  <41.480026, 33.278950, 26.967728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777843, 32.662518, 27.286974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387402, 32.582573, 27.252878>,  <41.153137, 32.534607, 27.232420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387402, 32.582573, 27.252878>,  <41.777843, 32.662518, 27.286974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387402, 32.582573, 27.252878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212302, -0.793762, -0.569973,
		0.046258, -0.574452, 0.817230,
		-0.976108, -0.199865, -0.085240,
		41.094570, 32.522614, 27.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625427, 31.981485, 27.454458>,  <41.777843, 32.662518, 27.286974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625427, 31.981485, 27.454458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330448, 32.089466, 27.206814>,  <41.153461, 32.154255, 27.058228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330448, 32.089466, 27.206814>,  <41.625427, 31.981485, 27.454458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330448, 32.089466, 27.206814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313215, -0.675440, -0.667591,
		-0.598390, -0.686227, 0.413548,
		-0.737445, 0.269950, -0.619113,
		41.109215, 32.170452, 27.021080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353844, 31.272585, 27.107384>,  <41.625427, 31.981485, 27.454458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353844, 31.272585, 27.107384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223270, 31.580524, 26.888012>,  <41.144928, 31.765287, 26.756390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223270, 31.580524, 26.888012>,  <41.353844, 31.272585, 27.107384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223270, 31.580524, 26.888012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264987, -0.482413, -0.834901,
		-0.907317, -0.417866, -0.046524,
		-0.326433, 0.769848, -0.548430,
		41.125340, 31.811480, 26.723482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098766, 30.894165, 26.558361>,  <41.353844, 31.272585, 27.107384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098766, 30.894165, 26.558361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108490, 31.274282, 26.434198>,  <41.114323, 31.502354, 26.359701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108490, 31.274282, 26.434198>,  <41.098766, 30.894165, 26.558361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108490, 31.274282, 26.434198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258836, -0.305893, -0.916206,
		-0.965616, -0.058074, -0.253405,
		0.024307, 0.950293, -0.310407,
		41.115784, 31.559370, 26.341076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760017, 30.990181, 25.831270>,  <41.098766, 30.894165, 26.558361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760017, 30.990181, 25.831270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001919, 31.307556, 25.858782>,  <41.147060, 31.497980, 25.875288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001919, 31.307556, 25.858782>,  <40.760017, 30.990181, 25.831270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001919, 31.307556, 25.858782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353306, -0.189881, -0.916035,
		-0.713756, 0.578276, -0.395157,
		0.604754, 0.793437, 0.068779,
		41.183346, 31.545588, 25.879416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705753, 31.394754, 25.153267>,  <40.760017, 30.990181, 25.831270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705753, 31.394754, 25.153267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058495, 31.485353, 25.318693>,  <41.270138, 31.539713, 25.417950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058495, 31.485353, 25.318693>,  <40.705753, 31.394754, 25.153267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058495, 31.485353, 25.318693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455915, -0.185738, -0.870427,
		-0.120333, 0.956138, -0.267056,
		0.881851, 0.226496, 0.413568,
		41.323051, 31.553303, 25.442764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089661, 31.775131, 24.617817>,  <40.705753, 31.394754, 25.153267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089661, 31.775131, 24.617817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377792, 31.655899, 24.868341>,  <41.550671, 31.584360, 25.018656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377792, 31.655899, 24.868341>,  <41.089661, 31.775131, 24.617817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377792, 31.655899, 24.868341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597140, -0.192912, -0.778594,
		0.352908, 0.934843, 0.039036,
		0.720333, -0.298082, 0.626312,
		41.593891, 31.566475, 25.056234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751736, 31.993412, 24.354195>,  <41.089661, 31.775131, 24.617817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751736, 31.993412, 24.354195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826965, 31.696461, 24.611410>,  <41.872101, 31.518290, 24.765739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826965, 31.696461, 24.611410>,  <41.751736, 31.993412, 24.354195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826965, 31.696461, 24.611410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732379, -0.330237, -0.595453,
		0.654408, 0.582937, 0.481596,
		0.188071, -0.742380, 0.643040,
		41.883385, 31.473747, 24.804323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433998, 32.107414, 24.548861>,  <41.751736, 31.993412, 24.354195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433998, 32.107414, 24.548861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329674, 31.725111, 24.603273>,  <42.267078, 31.495729, 24.635921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329674, 31.725111, 24.603273>,  <42.433998, 32.107414, 24.548861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329674, 31.725111, 24.603273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637878, -0.276379, -0.718837,
		0.724631, -0.100708, 0.681739,
		-0.260811, -0.955758, 0.136033,
		42.251431, 31.438383, 24.644083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072536, 31.666676, 24.484991>,  <42.433998, 32.107414, 24.548861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072536, 31.666676, 24.484991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820320, 31.356945, 24.506300>,  <42.668991, 31.171106, 24.519085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820320, 31.356945, 24.506300>,  <43.072536, 31.666676, 24.484991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820320, 31.356945, 24.506300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612003, -0.538224, -0.579455,
		0.477359, -0.332768, 0.813261,
		-0.630540, -0.774326, 0.053271,
		42.631157, 31.124647, 24.522282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466087, 31.079363, 24.703169>,  <43.072536, 31.666676, 24.484991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466087, 31.079363, 24.703169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141163, 30.990501, 24.487467>,  <42.946209, 30.937185, 24.358046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141163, 30.990501, 24.487467>,  <43.466087, 31.079363, 24.703169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141163, 30.990501, 24.487467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558033, -0.564849, -0.607902,
		-0.169550, -0.794729, 0.582803,
		-0.812312, -0.222153, -0.539255,
		42.897469, 30.923855, 24.325689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.544102, 28.379755, 22.980368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830730, 28.658236, 22.997492>,  <37.002708, 28.825325, 23.007767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830730, 28.658236, 22.997492>,  <36.544102, 28.379755, 22.980368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830730, 28.658236, 22.997492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218718, 0.165990, 0.961566,
		0.662340, -0.698390, 0.271215,
		0.716567, 0.696203, 0.042809,
		37.045700, 28.867096, 23.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538563, 28.433189, 23.680874>,  <36.544102, 28.379755, 22.980368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538563, 28.433189, 23.680874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777012, 28.718945, 23.534292>,  <36.920082, 28.890398, 23.446344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777012, 28.718945, 23.534292>,  <36.538563, 28.433189, 23.680874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777012, 28.718945, 23.534292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146934, 0.351639, 0.924533,
		0.789336, -0.604978, 0.104651,
		0.596121, 0.714390, -0.366452,
		36.955849, 28.933262, 23.424356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060081, 28.446486, 24.123013>,  <36.538563, 28.433189, 23.680874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060081, 28.446486, 24.123013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057735, 28.806078, 23.947834>,  <37.056328, 29.021833, 23.842728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057735, 28.806078, 23.947834>,  <37.060081, 28.446486, 24.123013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057735, 28.806078, 23.947834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000298, 0.437951, 0.898999,
		0.999983, 0.005403, -0.002301,
		-0.005865, 0.898983, -0.437945,
		37.055977, 29.075773, 23.816450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480259, 28.895840, 24.518192>,  <37.060081, 28.446486, 24.123013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480259, 28.895840, 24.518192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293217, 29.174341, 24.300356>,  <37.180992, 29.341442, 24.169655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293217, 29.174341, 24.300356>,  <37.480259, 28.895840, 24.518192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293217, 29.174341, 24.300356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059218, 0.639386, 0.766602,
		0.881950, 0.326219, -0.340212,
		-0.467607, 0.696252, -0.544589,
		37.152935, 29.383217, 24.136980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855331, 29.599194, 24.561666>,  <37.480259, 28.895840, 24.518192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855331, 29.599194, 24.561666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467751, 29.657406, 24.481714>,  <37.235203, 29.692333, 24.433743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467751, 29.657406, 24.481714>,  <37.855331, 29.599194, 24.561666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467751, 29.657406, 24.481714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043342, 0.695935, 0.716796,
		0.243419, 0.703205, -0.668020,
		-0.968952, 0.145529, -0.199882,
		37.177063, 29.701065, 24.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796921, 30.272789, 24.763527>,  <37.855331, 29.599194, 24.561666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796921, 30.272789, 24.763527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427452, 30.123970, 24.726841>,  <37.205772, 30.034679, 24.704828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427452, 30.123970, 24.726841>,  <37.796921, 30.272789, 24.763527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427452, 30.123970, 24.726841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277623, 0.484782, 0.829405,
		-0.264114, 0.791560, -0.551068,
		-0.923672, -0.372047, -0.091717,
		37.150352, 30.012356, 24.699326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339687, 30.828211, 24.733908>,  <37.796921, 30.272789, 24.763527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339687, 30.828211, 24.733908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151966, 30.502850, 24.871391>,  <37.039333, 30.307632, 24.953880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151966, 30.502850, 24.871391>,  <37.339687, 30.828211, 24.733908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151966, 30.502850, 24.871391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305141, 0.514637, 0.801272,
		-0.828640, 0.271159, -0.489722,
		-0.469302, -0.813401, 0.343707,
		37.011177, 30.258829, 24.974503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834778, 31.112318, 25.100595>,  <37.339687, 30.828211, 24.733908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834778, 31.112318, 25.100595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836353, 30.735743, 25.235458>,  <36.837299, 30.509796, 25.316376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836353, 30.735743, 25.235458>,  <36.834778, 31.112318, 25.100595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836353, 30.735743, 25.235458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369010, 0.311995, 0.875495,
		-0.929417, -0.127860, -0.346173,
		0.003936, -0.941441, 0.337155,
		36.837536, 30.453310, 25.336605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258537, 31.144560, 25.506807>,  <36.834778, 31.112318, 25.100595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258537, 31.144560, 25.506807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451267, 30.806108, 25.597942>,  <36.566906, 30.603037, 25.652622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451267, 30.806108, 25.597942>,  <36.258537, 31.144560, 25.506807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451267, 30.806108, 25.597942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315776, 0.074876, 0.945875,
		-0.817392, -0.527692, -0.231110,
		0.481826, -0.846129, 0.227836,
		36.595814, 30.552269, 25.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740017, 30.725986, 25.801161>,  <36.258537, 31.144560, 25.506807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740017, 30.725986, 25.801161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091331, 30.594818, 25.940350>,  <36.302120, 30.516117, 26.023863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091331, 30.594818, 25.940350>,  <35.740017, 30.725986, 25.801161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091331, 30.594818, 25.940350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343608, 0.073212, 0.936255,
		-0.332493, -0.941864, -0.048375,
		0.878284, -0.327920, 0.347974,
		36.354816, 30.496443, 26.044743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562954, 30.364828, 26.413504>,  <35.740017, 30.725986, 25.801161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562954, 30.364828, 26.413504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960365, 30.399963, 26.442312>,  <36.198811, 30.421045, 26.459599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960365, 30.399963, 26.442312>,  <35.562954, 30.364828, 26.413504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960365, 30.399963, 26.442312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082538, 0.122621, 0.989016,
		0.078039, -0.988559, 0.129077,
		0.993528, 0.087836, 0.072024,
		36.258423, 30.426315, 26.463919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829575, 29.884745, 26.887018>,  <35.562954, 30.364828, 26.413504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829575, 29.884745, 26.887018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124081, 30.155361, 26.881294>,  <36.300785, 30.317730, 26.877861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124081, 30.155361, 26.881294>,  <35.829575, 29.884745, 26.887018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124081, 30.155361, 26.881294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141615, 0.174725, 0.974380,
		0.661706, -0.715378, 0.224452,
		0.736267, 0.676539, -0.014308,
		36.344959, 30.358322, 26.877003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126644, 29.889698, 27.504320>,  <35.829575, 29.884745, 26.887018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126644, 29.889698, 27.504320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.236122, 30.244524, 27.355616>,  <36.301807, 30.457418, 27.266392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.236122, 30.244524, 27.355616>,  <36.126644, 29.889698, 27.504320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236122, 30.244524, 27.355616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203026, 0.431096, 0.879168,
		0.940144, -0.165147, 0.298087,
		0.273696, 0.887064, -0.371764,
		36.318230, 30.510643, 27.244087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647789, 30.045538, 27.907784>,  <36.126644, 29.889698, 27.504320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647789, 30.045538, 27.907784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.507614, 30.387207, 27.754118>,  <36.423508, 30.592209, 27.661919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.507614, 30.387207, 27.754118>,  <36.647789, 30.045538, 27.907784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507614, 30.387207, 27.754118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261874, 0.304452, 0.915823,
		0.899231, 0.421540, 0.116995,
		-0.350436, 0.854174, -0.384163,
		36.402485, 30.643459, 27.638868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365189, 29.778921, 28.088053>,  <36.647789, 30.045538, 27.907784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365189, 29.778921, 28.088053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533264, 29.549839, 28.369606>,  <37.634109, 29.412390, 28.538538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.533264, 29.549839, 28.369606>,  <37.365189, 29.778921, 28.088053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533264, 29.549839, 28.369606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413597, -0.569554, -0.710314,
		0.807699, 0.589589, -0.002451,
		0.420189, -0.572706, 0.703881,
		37.659321, 29.378027, 28.580770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044292, 29.780457, 27.975664>,  <37.365189, 29.778921, 28.088053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044292, 29.780457, 27.975664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970940, 29.431799, 28.157480>,  <37.926926, 29.222605, 28.266571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970940, 29.431799, 28.157480>,  <38.044292, 29.780457, 27.975664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970940, 29.431799, 28.157480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419778, -0.487541, -0.765565,
		0.888908, 0.050413, 0.455304,
		-0.183385, -0.871643, 0.454541,
		37.915924, 29.170305, 28.293842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690395, 29.506123, 28.061716>,  <38.044292, 29.780457, 27.975664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690395, 29.506123, 28.061716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410183, 29.221443, 28.082661>,  <38.242054, 29.050636, 28.095226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.410183, 29.221443, 28.082661>,  <38.690395, 29.506123, 28.061716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410183, 29.221443, 28.082661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431379, -0.480774, -0.763393,
		0.568478, -0.512194, 0.643809,
		-0.700532, -0.711698, 0.052360,
		38.200024, 29.007935, 28.098370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009304, 28.900469, 27.880482>,  <38.690395, 29.506123, 28.061716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009304, 28.900469, 27.880482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624821, 28.810150, 27.817120>,  <38.394131, 28.755959, 27.779102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624821, 28.810150, 27.817120>,  <39.009304, 28.900469, 27.880482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624821, 28.810150, 27.817120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254085, -0.501402, -0.827065,
		0.107325, -0.835231, 0.539323,
		-0.961209, -0.225798, -0.158407,
		38.336456, 28.742411, 27.769598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084808, 28.255814, 27.758564>,  <39.009304, 28.900469, 27.880482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084808, 28.255814, 27.758564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730431, 28.369455, 27.611931>,  <38.517803, 28.437639, 27.523951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730431, 28.369455, 27.611931>,  <39.084808, 28.255814, 27.758564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730431, 28.369455, 27.611931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186790, -0.504900, -0.842725,
		-0.424508, -0.815084, 0.394248,
		-0.885947, 0.284102, -0.366584,
		38.464645, 28.454687, 27.501955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760971, 27.661108, 27.569374>,  <39.084808, 28.255814, 27.758564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760971, 27.661108, 27.569374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589577, 27.935215, 27.333811>,  <38.486740, 28.099680, 27.192472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589577, 27.935215, 27.333811>,  <38.760971, 27.661108, 27.569374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589577, 27.935215, 27.333811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361088, -0.467595, -0.806828,
		-0.828263, -0.558359, -0.047086,
		-0.428482, 0.685267, -0.588908,
		38.461033, 28.140795, 27.157139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472107, 27.235680, 27.125340>,  <38.760971, 27.661108, 27.569374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472107, 27.235680, 27.125340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442516, 27.591784, 26.945578>,  <38.424763, 27.805447, 26.837721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.442516, 27.591784, 26.945578>,  <38.472107, 27.235680, 27.125340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442516, 27.591784, 26.945578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226573, -0.423854, -0.876934,
		-0.971181, -0.166693, -0.170355,
		-0.073973, 0.890259, -0.449407,
		38.420326, 27.858862, 26.810755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970413, 27.203753, 26.633421>,  <38.472107, 27.235680, 27.125340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970413, 27.203753, 26.633421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243195, 27.482359, 26.544157>,  <38.406864, 27.649523, 26.490599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243195, 27.482359, 26.544157>,  <37.970413, 27.203753, 26.633421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243195, 27.482359, 26.544157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005974, -0.299798, -0.953984,
		-0.731369, 0.651908, -0.200288,
		0.681955, 0.696518, -0.223158,
		38.447781, 27.691315, 26.477209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974655, 27.173502, 25.976068>,  <37.970413, 27.203753, 26.633421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974655, 27.173502, 25.976068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281796, 27.429161, 25.993500>,  <38.466080, 27.582556, 26.003958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281796, 27.429161, 25.993500>,  <37.974655, 27.173502, 25.976068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281796, 27.429161, 25.993500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155983, -0.120552, -0.980376,
		-0.621349, 0.759579, -0.192262,
		0.767851, 0.639145, 0.043577,
		38.512150, 27.620905, 26.006573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958332, 27.653156, 25.435238>,  <37.974655, 27.173502, 25.976068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958332, 27.653156, 25.435238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334595, 27.612011, 25.564590>,  <38.560352, 27.587324, 25.642202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334595, 27.612011, 25.564590>,  <37.958332, 27.653156, 25.435238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334595, 27.612011, 25.564590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277565, -0.315017, -0.907591,
		0.195231, 0.943495, -0.267773,
		0.940661, -0.102865, 0.323382,
		38.616795, 27.581152, 25.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281658, 28.077522, 24.974436>,  <37.958332, 27.653156, 25.435238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281658, 28.077522, 24.974436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545403, 27.809914, 25.111641>,  <38.703648, 27.649349, 25.193964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545403, 27.809914, 25.111641>,  <38.281658, 28.077522, 24.974436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545403, 27.809914, 25.111641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236298, -0.248710, -0.939312,
		0.713729, 0.700397, -0.005901,
		0.659359, -0.669020, 0.343014,
		38.743210, 27.609207, 25.214544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926170, 28.207317, 24.607157>,  <38.281658, 28.077522, 24.974436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926170, 28.207317, 24.607157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993618, 27.834658, 24.735901>,  <39.034084, 27.611061, 24.813147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993618, 27.834658, 24.735901>,  <38.926170, 28.207317, 24.607157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993618, 27.834658, 24.735901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455320, -0.215990, -0.863732,
		0.874215, 0.292189, 0.387780,
		0.168617, -0.931651, 0.321861,
		39.044205, 27.555162, 24.832458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665974, 28.020409, 24.398668>,  <38.926170, 28.207317, 24.607157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665974, 28.020409, 24.398668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.486179, 27.670101, 24.469082>,  <39.378304, 27.459917, 24.511330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.486179, 27.670101, 24.469082>,  <39.665974, 28.020409, 24.398668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486179, 27.670101, 24.469082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320952, -0.342238, -0.883098,
		0.833637, -0.340443, 0.434912,
		-0.449488, -0.875769, 0.176036,
		39.351334, 27.407370, 24.521893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170017, 27.565035, 24.333918>,  <39.665974, 28.020409, 24.398668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170017, 27.565035, 24.333918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834915, 27.347565, 24.313589>,  <39.633854, 27.217083, 24.301392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834915, 27.347565, 24.313589>,  <40.170017, 27.565035, 24.333918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834915, 27.347565, 24.313589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317605, -0.409451, -0.855264,
		0.444178, -0.732643, 0.515694,
		-0.837755, -0.543677, -0.050823,
		39.583588, 27.184462, 24.298342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894440, 27.229412, 24.547075>,  <40.170017, 27.565035, 24.333918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894440, 27.229412, 24.547075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207024, 27.476282, 24.583767>,  <41.394573, 27.624405, 24.605782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207024, 27.476282, 24.583767>,  <40.894440, 27.229412, 24.547075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207024, 27.476282, 24.583767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077129, -0.050336, 0.995750,
		0.619171, -0.785213, 0.008267,
		0.781459, 0.617177, 0.091729,
		41.441460, 27.661434, 24.611286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171116, 27.016706, 25.079447>,  <40.894440, 27.229412, 24.547075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171116, 27.016706, 25.079447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372761, 27.358961, 25.032528>,  <41.493748, 27.564314, 25.004375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372761, 27.358961, 25.032528>,  <41.171116, 27.016706, 25.079447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372761, 27.358961, 25.032528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059001, 0.101381, 0.993097,
		0.861622, -0.507550, 0.000624,
		0.504110, 0.855637, -0.117298,
		41.523994, 27.615652, 24.997339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805386, 27.051365, 25.478079>,  <41.171116, 27.016706, 25.079447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805386, 27.051365, 25.478079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694561, 27.432438, 25.428068>,  <41.628067, 27.661081, 25.398062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694561, 27.432438, 25.428068>,  <41.805386, 27.051365, 25.478079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694561, 27.432438, 25.428068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055730, 0.145833, 0.987738,
		0.959234, 0.266698, -0.093498,
		-0.277063, 0.952683, -0.125025,
		41.611443, 27.718243, 25.390560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251690, 27.427809, 25.936935>,  <41.805386, 27.051365, 25.478079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251690, 27.427809, 25.936935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.955631, 27.691084, 25.881838>,  <41.777996, 27.849049, 25.848780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.955631, 27.691084, 25.881838>,  <42.251690, 27.427809, 25.936935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955631, 27.691084, 25.881838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079233, 0.288775, 0.954113,
		0.667764, 0.695267, -0.265885,
		-0.740144, 0.658189, -0.137745,
		41.733589, 27.888540, 25.840515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576332, 28.063925, 26.048164>,  <42.251690, 27.427809, 25.936935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576332, 28.063925, 26.048164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184715, 28.129986, 26.095827>,  <41.949745, 28.169622, 26.124424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184715, 28.129986, 26.095827>,  <42.576332, 28.063925, 26.048164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184715, 28.129986, 26.095827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183642, 0.463040, 0.867104,
		0.088032, 0.870814, -0.483666,
		-0.979043, 0.165154, 0.119156,
		41.891003, 28.179531, 26.131575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452923, 28.764883, 26.045172>,  <42.576332, 28.063925, 26.048164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452923, 28.764883, 26.045172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142902, 28.617603, 26.250589>,  <41.956890, 28.529236, 26.373840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142902, 28.617603, 26.250589>,  <42.452923, 28.764883, 26.045172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142902, 28.617603, 26.250589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248167, 0.570041, 0.783241,
		-0.581129, 0.734495, -0.350436,
		-0.775050, -0.368198, 0.513545,
		41.910389, 28.507145, 26.404654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134697, 29.347282, 26.367050>,  <42.452923, 28.764883, 26.045172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134697, 29.347282, 26.367050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939701, 29.057346, 26.561766>,  <41.822704, 28.883385, 26.678595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939701, 29.057346, 26.561766>,  <42.134697, 29.347282, 26.367050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939701, 29.057346, 26.561766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086200, 0.514845, 0.852939,
		-0.868865, 0.457758, -0.188499,
		-0.487487, -0.724840, 0.486790,
		41.793453, 28.839895, 26.707802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496624, 29.584332, 26.619604>,  <42.134697, 29.347282, 26.367050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496624, 29.584332, 26.619604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534733, 29.264614, 26.856939>,  <41.557598, 29.072784, 26.999340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534733, 29.264614, 26.856939>,  <41.496624, 29.584332, 26.619604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534733, 29.264614, 26.856939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051561, 0.591289, 0.804810,
		-0.994115, -0.107273, 0.015123,
		0.095276, -0.799293, 0.593340,
		41.563316, 29.024826, 27.034941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956947, 29.650780, 27.051983>,  <41.496624, 29.584332, 26.619604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956947, 29.650780, 27.051983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204933, 29.399931, 27.240602>,  <41.353725, 29.249422, 27.353773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204933, 29.399931, 27.240602>,  <40.956947, 29.650780, 27.051983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204933, 29.399931, 27.240602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020092, 0.588097, 0.808541,
		-0.784370, -0.510743, 0.352001,
		0.619967, -0.627123, 0.471547,
		41.390923, 29.211794, 27.382067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588547, 29.439838, 27.576885>,  <40.956947, 29.650780, 27.051983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588547, 29.439838, 27.576885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969585, 29.379423, 27.682529>,  <41.198208, 29.343174, 27.745916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969585, 29.379423, 27.682529>,  <40.588547, 29.439838, 27.576885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969585, 29.379423, 27.682529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087685, 0.694954, 0.713688,
		-0.291337, -0.703013, 0.648765,
		0.952594, -0.151037, 0.264109,
		41.255363, 29.334112, 27.761763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624767, 29.218092, 28.348953>,  <40.588547, 29.439838, 27.576885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624767, 29.218092, 28.348953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.978596, 29.380301, 28.256783>,  <41.190891, 29.477625, 28.201481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.978596, 29.380301, 28.256783>,  <40.624767, 29.218092, 28.348953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978596, 29.380301, 28.256783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023743, 0.532549, 0.846066,
		0.465808, -0.742931, 0.480704,
		0.884567, 0.405518, -0.230426,
		41.243965, 29.501957, 28.187654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023376, 29.065994, 28.876888>,  <40.624767, 29.218092, 28.348953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023376, 29.065994, 28.876888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227406, 29.367966, 28.712008>,  <41.349823, 29.549149, 28.613079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227406, 29.367966, 28.712008>,  <41.023376, 29.065994, 28.876888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227406, 29.367966, 28.712008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025905, 0.492498, 0.869928,
		0.859741, -0.433048, 0.270766,
		0.510072, 0.754927, -0.412203,
		41.380428, 29.594444, 28.588346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632763, 29.271872, 29.284054>,  <41.023376, 29.065994, 28.876888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632763, 29.271872, 29.284054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547264, 29.590990, 29.058546>,  <41.495964, 29.782461, 28.923241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547264, 29.590990, 29.058546>,  <41.632763, 29.271872, 29.284054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547264, 29.590990, 29.058546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031931, 0.571095, 0.820263,
		0.976368, 0.193328, -0.096594,
		-0.213744, 0.797794, -0.563772,
		41.483143, 29.830328, 28.889414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885895, 29.739523, 29.687796>,  <41.632763, 29.271872, 29.284054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885895, 29.739523, 29.687796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642506, 29.925850, 29.430805>,  <41.496471, 30.037645, 29.276611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642506, 29.925850, 29.430805>,  <41.885895, 29.739523, 29.687796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642506, 29.925850, 29.430805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269835, 0.639916, 0.719512,
		0.746291, 0.611166, -0.263678,
		-0.608473, 0.465815, -0.642477,
		41.459965, 30.065594, 29.238062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.563766, 30.367458, 24.538523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.296684, 30.456287, 24.254311>,  <43.136433, 30.509584, 24.083784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.296684, 30.456287, 24.254311>,  <43.563766, 30.367458, 24.538523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296684, 30.456287, 24.254311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457068, -0.631076, -0.626763,
		-0.587584, -0.743254, 0.319872,
		-0.667708, 0.222073, -0.710528,
		43.096371, 30.522909, 24.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462292, 29.753172, 24.098568>,  <43.563766, 30.367458, 24.538523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462292, 29.753172, 24.098568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.329807, 30.046637, 23.861235>,  <43.250317, 30.222715, 23.718836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.329807, 30.046637, 23.861235>,  <43.462292, 29.753172, 24.098568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329807, 30.046637, 23.861235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322193, -0.503090, -0.801930,
		-0.886845, -0.456772, -0.069754,
		-0.331207, 0.733662, -0.593331,
		43.230446, 30.266735, 23.683235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072670, 29.428993, 23.542770>,  <43.462292, 29.753172, 24.098568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072670, 29.428993, 23.542770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176590, 29.793652, 23.415390>,  <43.238941, 30.012445, 23.338963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176590, 29.793652, 23.415390>,  <43.072670, 29.428993, 23.542770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176590, 29.793652, 23.415390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231576, -0.378967, -0.895967,
		-0.937485, 0.159024, -0.309570,
		0.259797, 0.911644, -0.318450,
		43.254528, 30.067144, 23.319855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826736, 29.498465, 22.831936>,  <43.072670, 29.428993, 23.542770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826736, 29.498465, 22.831936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108685, 29.779417, 22.871567>,  <43.277855, 29.947989, 22.895346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108685, 29.779417, 22.871567>,  <42.826736, 29.498465, 22.831936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108685, 29.779417, 22.871567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462418, -0.349088, -0.815050,
		-0.537891, 0.620319, -0.570857,
		0.704871, 0.702383, 0.099076,
		43.320145, 29.990131, 22.901289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904236, 29.842670, 22.137072>,  <42.826736, 29.498465, 22.831936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904236, 29.842670, 22.137072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.243900, 29.932901, 22.328085>,  <43.447701, 29.987040, 22.442694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.243900, 29.932901, 22.328085>,  <42.904236, 29.842670, 22.137072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243900, 29.932901, 22.328085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523576, -0.241062, -0.817164,
		-0.069219, 0.943930, -0.322808,
		0.849163, 0.225578, 0.477533,
		43.498650, 30.000574, 22.471344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206474, 30.416891, 21.724657>,  <42.904236, 29.842670, 22.137072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206474, 30.416891, 21.724657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485783, 30.227463, 21.939373>,  <43.653370, 30.113806, 22.068203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485783, 30.227463, 21.939373>,  <43.206474, 30.416891, 21.724657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485783, 30.227463, 21.939373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583632, -0.057544, -0.809976,
		0.414471, 0.878873, 0.236210,
		0.698274, -0.473572, 0.536790,
		43.695267, 30.085392, 22.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744408, 30.728155, 21.473646>,  <43.206474, 30.416891, 21.724657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744408, 30.728155, 21.473646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.906250, 30.418461, 21.668316>,  <44.003357, 30.232643, 21.785118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.906250, 30.418461, 21.668316>,  <43.744408, 30.728155, 21.473646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906250, 30.418461, 21.668316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554349, -0.215608, -0.803872,
		0.727319, 0.595038, 0.341962,
		0.404605, -0.774237, 0.486674,
		44.027630, 30.186190, 21.814318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556995, 30.826822, 21.401108>,  <43.744408, 30.728155, 21.473646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556995, 30.826822, 21.401108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483025, 30.445612, 21.497065>,  <44.438644, 30.216887, 21.554638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483025, 30.445612, 21.497065>,  <44.556995, 30.826822, 21.401108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483025, 30.445612, 21.497065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544429, -0.302566, -0.782337,
		0.818169, -0.014070, 0.574806,
		-0.184924, -0.953025, 0.239890,
		44.427547, 30.159704, 21.569031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125378, 30.429369, 21.280277>,  <44.556995, 30.826822, 21.401108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125378, 30.429369, 21.280277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.833897, 30.155466, 21.284349>,  <44.659008, 29.991125, 21.286793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.833897, 30.155466, 21.284349>,  <45.125378, 30.429369, 21.280277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833897, 30.155466, 21.284349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423910, -0.462693, -0.778599,
		0.537861, -0.563049, 0.627440,
		-0.728701, -0.684756, 0.010182,
		44.615288, 29.950039, 21.287405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474106, 29.744970, 21.366919>,  <45.125378, 30.429369, 21.280277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474106, 29.744970, 21.366919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.118519, 29.703161, 21.188564>,  <44.905167, 29.678076, 21.081553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.118519, 29.703161, 21.188564>,  <45.474106, 29.744970, 21.366919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118519, 29.703161, 21.188564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436507, -0.487962, -0.755880,
		-0.138568, -0.866584, 0.479408,
		-0.888966, -0.104524, -0.445886,
		44.851830, 29.671804, 21.054798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442539, 29.056654, 21.278196>,  <45.474106, 29.744970, 21.366919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442539, 29.056654, 21.278196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.167591, 29.194698, 21.022564>,  <45.002625, 29.277525, 20.869184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.167591, 29.194698, 21.022564>,  <45.442539, 29.056654, 21.278196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167591, 29.194698, 21.022564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434185, -0.510130, -0.742463,
		-0.582248, -0.787824, 0.200803,
		-0.687365, 0.345111, -0.639083,
		44.961380, 29.298231, 20.830839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235802, 28.507511, 20.862852>,  <45.442539, 29.056654, 21.278196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235802, 28.507511, 20.862852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.097656, 28.816065, 20.649054>,  <45.014767, 29.001198, 20.520775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.097656, 28.816065, 20.649054>,  <45.235802, 28.507511, 20.862852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097656, 28.816065, 20.649054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186100, -0.501940, -0.844644,
		-0.919831, -0.391181, 0.029798,
		-0.345366, 0.771384, -0.534499,
		44.994045, 29.047480, 20.488705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633553, 28.313038, 20.442324>,  <45.235802, 28.507511, 20.862852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633553, 28.313038, 20.442324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.809456, 28.619919, 20.255556>,  <44.914997, 28.804047, 20.143496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.809456, 28.619919, 20.255556>,  <44.633553, 28.313038, 20.442324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809456, 28.619919, 20.255556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189854, -0.587548, -0.786602,
		-0.877819, 0.257270, -0.404037,
		0.439760, 0.767202, -0.466917,
		44.941383, 28.850079, 20.115480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538628, 28.321411, 19.716841>,  <44.633553, 28.313038, 20.442324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538628, 28.321411, 19.716841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.887711, 28.513744, 19.750746>,  <45.097160, 28.629145, 19.771090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.887711, 28.513744, 19.750746>,  <44.538628, 28.321411, 19.716841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887711, 28.513744, 19.750746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394022, -0.591073, -0.703832,
		-0.288325, 0.647636, -0.705292,
		0.872706, 0.480833, 0.084762,
		45.149521, 28.657993, 19.776175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817245, 28.326132, 19.457689>,  <44.538628, 28.321411, 19.716841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817245, 28.326132, 19.457689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.797661, 27.927574, 19.485411>,  <43.785908, 27.688440, 19.502043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.797661, 27.927574, 19.485411>,  <43.817245, 28.326132, 19.457689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797661, 27.927574, 19.485411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654880, 0.084416, 0.751003,
		-0.754145, -0.008612, -0.656651,
		-0.048964, -0.996393, 0.069302,
		43.782970, 27.628656, 19.506201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102455, 28.241474, 19.691307>,  <43.817245, 28.326132, 19.457689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102455, 28.241474, 19.691307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.307297, 27.910400, 19.783127>,  <43.430202, 27.711756, 19.838219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.307297, 27.910400, 19.783127>,  <43.102455, 28.241474, 19.691307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307297, 27.910400, 19.783127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476871, -0.051696, 0.877452,
		-0.714385, -0.558810, -0.421172,
		0.512102, -0.827683, 0.229549,
		43.460926, 27.662096, 19.851992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602730, 27.695889, 19.887699>,  <43.102455, 28.241474, 19.691307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602730, 27.695889, 19.887699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.950863, 27.579655, 20.046736>,  <43.159744, 27.509914, 20.142159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.950863, 27.579655, 20.046736>,  <42.602730, 27.695889, 19.887699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950863, 27.579655, 20.046736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464264, -0.214873, 0.859237,
		-0.164248, -0.932412, -0.321918,
		0.870335, -0.290583, 0.397593,
		43.211964, 27.492479, 20.166014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444328, 27.140532, 20.303696>,  <42.602730, 27.695889, 19.887699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444328, 27.140532, 20.303696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.825645, 27.178011, 20.418556>,  <43.054436, 27.200499, 20.487473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.825645, 27.178011, 20.418556>,  <42.444328, 27.140532, 20.303696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825645, 27.178011, 20.418556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267381, -0.180447, 0.946544,
		0.140506, -0.979112, -0.146965,
		0.953292, 0.093699, 0.287150,
		43.111633, 27.206121, 20.504702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744675, 26.478197, 20.636295>,  <42.444328, 27.140532, 20.303696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744675, 26.478197, 20.636295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928833, 26.808708, 20.766094>,  <43.039330, 27.007015, 20.843973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928833, 26.808708, 20.766094>,  <42.744675, 26.478197, 20.636295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928833, 26.808708, 20.766094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321969, -0.185225, 0.928455,
		0.827266, -0.531937, 0.180758,
		0.460398, 0.826278, 0.324497,
		43.066952, 27.056591, 20.863443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310570, 26.371571, 21.230490>,  <42.744675, 26.478197, 20.636295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310570, 26.371571, 21.230490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210136, 26.753204, 21.295826>,  <43.149876, 26.982185, 21.335028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210136, 26.753204, 21.295826>,  <43.310570, 26.371571, 21.230490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210136, 26.753204, 21.295826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201844, -0.216640, 0.955158,
		0.946688, 0.206851, 0.246970,
		-0.251079, 0.954086, 0.163339,
		43.134811, 27.039431, 21.344828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278008, 26.374876, 21.918810>,  <43.310570, 26.371571, 21.230490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278008, 26.374876, 21.918810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120270, 26.740459, 21.880507>,  <43.025627, 26.959810, 21.857525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120270, 26.740459, 21.880507>,  <43.278008, 26.374876, 21.918810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120270, 26.740459, 21.880507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385424, -0.069900, 0.920088,
		0.834229, 0.399742, 0.379827,
		-0.394348, 0.913958, -0.095757,
		43.001965, 27.014647, 21.851780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468960, 26.810173, 22.535357>,  <43.278008, 26.374876, 21.918810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468960, 26.810173, 22.535357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140499, 26.969217, 22.371592>,  <42.943424, 27.064644, 22.273333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140499, 26.969217, 22.371592>,  <43.468960, 26.810173, 22.535357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140499, 26.969217, 22.371592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370828, 0.173577, 0.912336,
		0.433818, 0.900987, 0.004912,
		-0.821151, 0.397609, -0.409412,
		42.894154, 27.088501, 22.248768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414532, 27.344467, 22.895279>,  <43.468960, 26.810173, 22.535357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414532, 27.344467, 22.895279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042408, 27.311516, 22.752321>,  <42.819134, 27.291744, 22.666546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042408, 27.311516, 22.752321>,  <43.414532, 27.344467, 22.895279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042408, 27.311516, 22.752321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366608, 0.237437, 0.899568,
		0.010752, 0.967904, -0.251092,
		-0.930313, -0.082380, -0.357394,
		42.763313, 27.286802, 22.645103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053646, 27.928013, 22.950428>,  <43.414532, 27.344467, 22.895279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053646, 27.928013, 22.950428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751072, 27.666969, 22.932980>,  <42.569527, 27.510344, 22.922510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751072, 27.666969, 22.932980>,  <43.053646, 27.928013, 22.950428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751072, 27.666969, 22.932980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459159, 0.482346, 0.746000,
		-0.465805, 0.584332, -0.664516,
		-0.756438, -0.652609, -0.043622,
		42.524139, 27.471188, 22.919893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449886, 28.384167, 22.916935>,  <43.053646, 27.928013, 22.950428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449886, 28.384167, 22.916935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.347958, 28.019276, 23.045254>,  <42.286800, 27.800341, 23.122246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.347958, 28.019276, 23.045254>,  <42.449886, 28.384167, 22.916935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347958, 28.019276, 23.045254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180644, 0.370815, 0.910968,
		-0.949966, 0.174181, -0.259279,
		-0.254818, -0.912226, 0.320797,
		42.271511, 27.745607, 23.141493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862946, 28.483828, 23.265665>,  <42.449886, 28.384167, 22.916935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862946, 28.483828, 23.265665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965199, 28.120188, 23.397230>,  <42.026550, 27.902004, 23.476170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965199, 28.120188, 23.397230>,  <41.862946, 28.483828, 23.265665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965199, 28.120188, 23.397230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459089, 0.185260, 0.868859,
		-0.850816, -0.373113, -0.369999,
		0.255636, -0.909101, 0.328914,
		42.041889, 27.847458, 23.495905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215355, 28.131254, 23.483704>,  <41.862946, 28.483828, 23.265665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215355, 28.131254, 23.483704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525162, 27.969894, 23.678595>,  <41.711048, 27.873077, 23.795528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525162, 27.969894, 23.678595>,  <41.215355, 28.131254, 23.483704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525162, 27.969894, 23.678595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477488, 0.132344, 0.868614,
		-0.414880, -0.905402, -0.090116,
		0.774519, -0.403400, 0.487225,
		41.757519, 27.848875, 23.824762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831753, 27.702526, 23.907110>,  <41.215355, 28.131254, 23.483704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831753, 27.702526, 23.907110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204098, 27.724119, 24.051651>,  <41.427505, 27.737076, 24.138374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204098, 27.724119, 24.051651>,  <40.831753, 27.702526, 23.907110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204098, 27.724119, 24.051651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362159, 0.005689, 0.932099,
		0.048273, -0.998525, 0.024850,
		0.930865, 0.053995, 0.361350,
		41.483356, 27.740314, 24.160055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418884, 26.920649, 24.051931>,  <40.831753, 27.702526, 23.907110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418884, 26.920649, 24.051931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023357, 26.945759, 23.997810>,  <39.786041, 26.960825, 23.965338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023357, 26.945759, 23.997810>,  <40.418884, 26.920649, 24.051931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023357, 26.945759, 23.997810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104890, -0.352296, -0.929992,
		-0.106047, -0.933781, 0.341771,
		-0.988813, 0.062774, -0.135304,
		39.726715, 26.964592, 23.957218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142635, 26.220045, 23.715881>,  <40.418884, 26.920649, 24.051931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142635, 26.220045, 23.715881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851799, 26.479174, 23.624956>,  <39.677299, 26.634651, 23.570400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851799, 26.479174, 23.624956>,  <40.142635, 26.220045, 23.715881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851799, 26.479174, 23.624956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042178, -0.288322, -0.956604,
		-0.685248, -0.705122, 0.182312,
		-0.727087, 0.647822, -0.227312,
		39.633671, 26.673519, 23.556763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603573, 25.841881, 23.348894>,  <40.142635, 26.220045, 23.715881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603573, 25.841881, 23.348894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595421, 26.228415, 23.246300>,  <39.590530, 26.460335, 23.184744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595421, 26.228415, 23.246300>,  <39.603573, 25.841881, 23.348894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595421, 26.228415, 23.246300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021813, -0.256908, -0.966190,
		-0.999554, -0.014100, 0.026316,
		-0.020384, 0.966333, -0.256486,
		39.589306, 26.518314, 23.169353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301876, 25.816282, 22.745804>,  <39.603573, 25.841881, 23.348894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301876, 25.816282, 22.745804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.445496, 26.189270, 22.729893>,  <39.531670, 26.413063, 22.720346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.445496, 26.189270, 22.729893>,  <39.301876, 25.816282, 22.745804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445496, 26.189270, 22.729893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047594, -0.060858, -0.997011,
		-0.932103, 0.356086, -0.066231,
		0.359053, 0.932469, -0.039778,
		39.553211, 26.469011, 22.717958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025913, 26.099163, 22.125927>,  <39.301876, 25.816282, 22.745804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025913, 26.099163, 22.125927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323929, 26.359436, 22.184624>,  <39.502739, 26.515600, 22.219841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323929, 26.359436, 22.184624>,  <39.025913, 26.099163, 22.125927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323929, 26.359436, 22.184624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209577, -0.019502, -0.977598,
		-0.633243, 0.759101, -0.150897,
		0.745038, 0.650681, 0.146740,
		39.547440, 26.554640, 22.228645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947182, 26.613182, 21.656704>,  <39.025913, 26.099163, 22.125927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947182, 26.613182, 21.656704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330608, 26.615955, 21.770615>,  <39.560665, 26.617619, 21.838961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330608, 26.615955, 21.770615>,  <38.947182, 26.613182, 21.656704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330608, 26.615955, 21.770615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283840, -0.107830, -0.952789,
		0.024103, 0.994145, -0.105330,
		0.958569, 0.006932, 0.284777,
		39.618179, 26.618034, 21.856049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275982, 27.205967, 21.269669>,  <38.947182, 26.613182, 21.656704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275982, 27.205967, 21.269669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542431, 26.930336, 21.383827>,  <39.702301, 26.764957, 21.452322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542431, 26.930336, 21.383827>,  <39.275982, 27.205967, 21.269669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542431, 26.930336, 21.383827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225976, -0.178200, -0.957695,
		0.710781, 0.702439, 0.037010,
		0.666127, -0.689075, 0.285396,
		39.742268, 26.723614, 21.469446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379875, 27.940998, 21.159157>,  <39.275982, 27.205967, 21.269669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379875, 27.940998, 21.159157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118492, 28.178724, 20.971636>,  <38.961662, 28.321360, 20.859123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118492, 28.178724, 20.971636>,  <39.379875, 27.940998, 21.159157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118492, 28.178724, 20.971636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271555, 0.394045, 0.878059,
		0.706574, 0.701083, -0.096103,
		-0.653461, 0.594316, -0.468804,
		38.922455, 28.357019, 20.830994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370583, 28.391775, 21.666367>,  <39.379875, 27.940998, 21.159157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370583, 28.391775, 21.666367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077763, 28.511639, 21.421644>,  <38.902069, 28.583557, 21.274811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077763, 28.511639, 21.421644>,  <39.370583, 28.391775, 21.666367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077763, 28.511639, 21.421644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499317, 0.374934, 0.781093,
		0.463447, 0.877285, -0.124847,
		-0.732051, 0.299657, -0.611806,
		38.858147, 28.601536, 21.238102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158634, 29.074722, 21.805687>,  <39.370583, 28.391775, 21.666367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158634, 29.074722, 21.805687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.843594, 28.922188, 21.612083>,  <38.654568, 28.830667, 21.495920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.843594, 28.922188, 21.612083>,  <39.158634, 29.074722, 21.805687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843594, 28.922188, 21.612083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616110, 0.475243, 0.628134,
		-0.009507, 0.792924, -0.609247,
		-0.787603, -0.381334, -0.484010,
		38.607311, 28.807787, 21.466881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696579, 29.571678, 21.795130>,  <39.158634, 29.074722, 21.805687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696579, 29.571678, 21.795130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479153, 29.240908, 21.737545>,  <38.348698, 29.042446, 21.702993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.479153, 29.240908, 21.737545>,  <38.696579, 29.571678, 21.795130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479153, 29.240908, 21.737545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718365, 0.369604, 0.589359,
		-0.434147, 0.423777, -0.794940,
		-0.543570, -0.826926, -0.143964,
		38.316082, 28.992830, 21.694355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058746, 29.810095, 21.640486>,  <38.696579, 29.571678, 21.795130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058746, 29.810095, 21.640486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030056, 29.440071, 21.789680>,  <38.012840, 29.218056, 21.879196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.030056, 29.440071, 21.789680>,  <38.058746, 29.810095, 21.640486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030056, 29.440071, 21.789680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657121, 0.325150, 0.680051,
		-0.750364, -0.196317, -0.631200,
		-0.071729, -0.925061, 0.372985,
		38.008537, 29.162554, 21.901575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325687, 29.741209, 21.747377>,  <38.058746, 29.810095, 21.640486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325687, 29.741209, 21.747377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474205, 29.437336, 21.960926>,  <37.563316, 29.255013, 22.089056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474205, 29.437336, 21.960926>,  <37.325687, 29.741209, 21.747377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474205, 29.437336, 21.960926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718592, 0.129020, 0.683359,
		-0.588017, -0.637364, -0.497999,
		0.371297, -0.759684, 0.533871,
		37.585594, 29.209431, 22.121088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760792, 29.321449, 21.934629>,  <37.325687, 29.741209, 21.747377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760792, 29.321449, 21.934629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054413, 29.229700, 22.190302>,  <37.230587, 29.174650, 22.343706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054413, 29.229700, 22.190302>,  <36.760792, 29.321449, 21.934629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054413, 29.229700, 22.190302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579319, 0.279610, 0.765642,
		-0.354339, -0.932312, 0.072369,
		0.734052, -0.229371, 0.639183,
		37.274628, 29.160889, 22.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.897003, 31.025347, 18.549982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168694, 30.964701, 18.837223>,  <43.331707, 30.928314, 19.009567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168694, 30.964701, 18.837223>,  <42.897003, 31.025347, 18.549982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168694, 30.964701, 18.837223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435457, 0.704354, 0.560592,
		-0.590791, -0.693469, 0.412392,
		0.679223, -0.151613, 0.718101,
		43.372459, 30.919216, 19.052654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558327, 30.947161, 19.164827>,  <42.897003, 31.025347, 18.549982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558327, 30.947161, 19.164827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.920174, 31.065340, 19.287706>,  <43.137283, 31.136248, 19.361433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.920174, 31.065340, 19.287706>,  <42.558327, 30.947161, 19.164827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920174, 31.065340, 19.287706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426187, 0.635361, 0.643957,
		-0.004925, -0.713461, 0.700677,
		0.904622, 0.295448, 0.307197,
		43.191559, 31.153975, 19.379866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428177, 30.780350, 19.797724>,  <42.558327, 30.947161, 19.164827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428177, 30.780350, 19.797724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713844, 31.057554, 19.758348>,  <42.885246, 31.223877, 19.734724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713844, 31.057554, 19.758348>,  <42.428177, 30.780350, 19.797724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713844, 31.057554, 19.758348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399125, 0.518706, 0.756071,
		0.575031, -0.500673, 0.647044,
		0.714170, 0.693016, -0.098441,
		42.928097, 31.265459, 19.728817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608952, 30.878792, 20.455948>,  <42.428177, 30.780350, 19.797724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608952, 30.878792, 20.455948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.763844, 31.200054, 20.274845>,  <42.856777, 31.392813, 20.166183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.763844, 31.200054, 20.274845>,  <42.608952, 30.878792, 20.455948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763844, 31.200054, 20.274845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456796, 0.593689, 0.662473,
		0.800869, -0.049709, 0.596773,
		0.387228, 0.803158, -0.452760,
		42.880013, 31.441002, 20.139017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775837, 31.283552, 20.989178>,  <42.608952, 30.878792, 20.455948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775837, 31.283552, 20.989178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746254, 31.529137, 20.674833>,  <42.728504, 31.676487, 20.486227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746254, 31.529137, 20.674833>,  <42.775837, 31.283552, 20.989178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746254, 31.529137, 20.674833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598974, 0.602702, 0.527239,
		0.797346, 0.509706, 0.323171,
		-0.073961, 0.613962, -0.785863,
		42.724064, 31.713326, 20.439074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947655, 31.847782, 21.353514>,  <42.775837, 31.283552, 20.989178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947655, 31.847782, 21.353514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.786720, 31.976669, 21.010748>,  <42.690159, 32.054001, 20.805088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.786720, 31.976669, 21.010748>,  <42.947655, 31.847782, 21.353514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786720, 31.976669, 21.010748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458466, 0.739272, 0.493240,
		0.792424, 0.591314, -0.149708,
		-0.402335, 0.322219, -0.856914,
		42.666019, 32.073334, 20.753674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148750, 32.572994, 21.288685>,  <42.947655, 31.847782, 21.353514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148750, 32.572994, 21.288685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.806404, 32.480999, 21.103386>,  <42.600994, 32.425800, 20.992207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.806404, 32.480999, 21.103386>,  <43.148750, 32.572994, 21.288685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806404, 32.480999, 21.103386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477843, 0.694328, 0.538121,
		0.197882, 0.681919, -0.704151,
		-0.855867, -0.229989, -0.463246,
		42.549644, 32.412003, 20.964413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862553, 33.126186, 21.315947>,  <43.148750, 32.572994, 21.288685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862553, 33.126186, 21.315947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561039, 32.883411, 21.215204>,  <42.380131, 32.737747, 21.154758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561039, 32.883411, 21.215204>,  <42.862553, 33.126186, 21.315947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561039, 32.883411, 21.215204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650033, 0.632585, 0.421063,
		-0.096239, 0.481107, -0.871364,
		-0.753787, -0.606937, -0.251856,
		42.334904, 32.701332, 21.139647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342655, 33.564240, 21.074675>,  <42.862553, 33.126186, 21.315947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342655, 33.564240, 21.074675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.137245, 33.229538, 21.150709>,  <42.014000, 33.028717, 21.196329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.137245, 33.229538, 21.150709>,  <42.342655, 33.564240, 21.074675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137245, 33.229538, 21.150709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717984, 0.540316, 0.438814,
		-0.469887, 0.088862, -0.878242,
		-0.513522, -0.836757, 0.190086,
		41.983189, 32.978512, 21.207735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696918, 33.756035, 20.905130>,  <42.342655, 33.564240, 21.074675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696918, 33.756035, 20.905130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.646339, 33.443398, 21.149466>,  <41.615993, 33.255814, 21.296066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.646339, 33.443398, 21.149466>,  <41.696918, 33.756035, 20.905130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646339, 33.443398, 21.149466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629952, 0.538942, 0.559197,
		-0.766271, -0.314088, -0.560515,
		-0.126448, -0.781594, 0.610836,
		41.608406, 33.208920, 21.332716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029984, 33.751431, 21.097174>,  <41.696918, 33.756035, 20.905130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029984, 33.751431, 21.097174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.196045, 33.531094, 21.386786>,  <41.295681, 33.398891, 21.560553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.196045, 33.531094, 21.386786>,  <41.029984, 33.751431, 21.097174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196045, 33.531094, 21.386786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630615, 0.399385, 0.665444,
		-0.655722, -0.732845, -0.181565,
		0.415153, -0.550844, 0.724029,
		41.320591, 33.365841, 21.603994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469601, 33.532654, 21.557762>,  <41.029984, 33.751431, 21.097174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469601, 33.532654, 21.557762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804855, 33.512676, 21.775028>,  <41.006008, 33.500690, 21.905388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804855, 33.512676, 21.775028>,  <40.469601, 33.532654, 21.557762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804855, 33.512676, 21.775028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488448, 0.374500, 0.788142,
		-0.242781, -0.925881, 0.289487,
		0.838138, -0.049947, 0.543166,
		41.056297, 33.497692, 21.937979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370331, 32.746117, 21.749598>,  <40.469601, 33.532654, 21.557762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370331, 32.746117, 21.749598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008400, 32.575954, 21.742565>,  <39.791241, 32.473858, 21.738346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008400, 32.575954, 21.742565>,  <40.370331, 32.746117, 21.749598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008400, 32.575954, 21.742565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282929, -0.569897, -0.771472,
		0.318172, -0.703025, 0.636021,
		-0.904830, -0.425409, -0.017580,
		39.736950, 32.448330, 21.737291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480900, 32.007820, 21.682358>,  <40.370331, 32.746117, 21.749598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480900, 32.007820, 21.682358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110916, 32.066555, 21.542137>,  <39.888927, 32.101795, 21.458004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110916, 32.066555, 21.542137>,  <40.480900, 32.007820, 21.682358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110916, 32.066555, 21.542137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220902, -0.542846, -0.810260,
		-0.309273, -0.826896, 0.469674,
		-0.924961, 0.146840, -0.350551,
		39.833427, 32.110607, 21.436972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151936, 31.275454, 21.575905>,  <40.480900, 32.007820, 21.682358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151936, 31.275454, 21.575905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950211, 31.515625, 21.327662>,  <39.829174, 31.659727, 21.178715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950211, 31.515625, 21.327662>,  <40.151936, 31.275454, 21.575905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950211, 31.515625, 21.327662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241516, -0.591937, -0.768947,
		-0.829057, -0.537679, 0.153510,
		-0.504315, 0.600426, -0.620608,
		39.798916, 31.695753, 21.141479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805901, 30.841377, 21.198305>,  <40.151936, 31.275454, 21.575905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805901, 30.841377, 21.198305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802223, 31.175459, 20.978359>,  <39.800018, 31.375908, 20.846392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802223, 31.175459, 20.978359>,  <39.805901, 30.841377, 21.198305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802223, 31.175459, 20.978359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115243, -0.545341, -0.830254,
		-0.993295, -0.071001, -0.091238,
		-0.009193, 0.835202, -0.549867,
		39.799465, 31.426020, 20.813398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315903, 30.788609, 20.620596>,  <39.805901, 30.841377, 21.198305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315903, 30.788609, 20.620596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572254, 31.072800, 20.504324>,  <39.726067, 31.243315, 20.434561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572254, 31.072800, 20.504324>,  <39.315903, 30.788609, 20.620596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572254, 31.072800, 20.504324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176988, -0.505224, -0.844644,
		-0.746961, 0.489867, -0.449533,
		0.640878, 0.710478, -0.290682,
		39.764519, 31.285944, 20.417120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138653, 30.877037, 19.874884>,  <39.315903, 30.788609, 20.620596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138653, 30.877037, 19.874884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487278, 31.067661, 19.920971>,  <39.696453, 31.182035, 19.948624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487278, 31.067661, 19.920971>,  <39.138653, 30.877037, 19.874884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487278, 31.067661, 19.920971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204827, -0.140396, -0.968677,
		-0.445457, 0.867859, -0.219976,
		0.871558, 0.476561, 0.115220,
		39.748745, 31.210630, 19.955538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225643, 31.305012, 19.315510>,  <39.138653, 30.877037, 19.874884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225643, 31.305012, 19.315510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585167, 31.237854, 19.477470>,  <39.800880, 31.197559, 19.574646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585167, 31.237854, 19.477470>,  <39.225643, 31.305012, 19.315510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585167, 31.237854, 19.477470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325123, -0.364189, -0.872732,
		0.293986, 0.916067, -0.272752,
		0.898814, -0.167893, 0.404901,
		39.854813, 31.187487, 19.598940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656094, 31.497742, 18.742254>,  <39.225643, 31.305012, 19.315510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656094, 31.497742, 18.742254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903023, 31.279203, 18.968676>,  <40.051182, 31.148081, 19.104528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903023, 31.279203, 18.968676>,  <39.656094, 31.497742, 18.742254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903023, 31.279203, 18.968676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452969, -0.341439, -0.823552,
		0.643218, 0.764803, 0.036700,
		0.617325, -0.546347, 0.566052,
		40.088219, 31.115299, 19.138491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242935, 31.522356, 18.402634>,  <39.656094, 31.497742, 18.742254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242935, 31.522356, 18.402634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.252926, 31.186108, 18.619051>,  <40.258919, 30.984358, 18.748901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.252926, 31.186108, 18.619051>,  <40.242935, 31.522356, 18.402634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252926, 31.186108, 18.619051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322666, -0.505469, -0.800242,
		0.946183, 0.194564, 0.258616,
		0.024976, -0.840623, 0.541045,
		40.260418, 30.933922, 18.781364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976830, 31.247648, 18.348179>,  <40.242935, 31.522356, 18.402634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976830, 31.247648, 18.348179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.734581, 30.938648, 18.424559>,  <40.589230, 30.753248, 18.470387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.734581, 30.938648, 18.424559>,  <40.976830, 31.247648, 18.348179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734581, 30.938648, 18.424559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451569, -0.531216, -0.716865,
		0.655214, -0.347924, 0.670555,
		-0.605624, -0.772501, 0.190948,
		40.552895, 30.706898, 18.481844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222591, 30.759029, 17.926266>,  <40.976830, 31.247648, 18.348179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222591, 30.759029, 17.926266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939976, 30.521290, 18.079914>,  <40.770405, 30.378647, 18.172104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939976, 30.521290, 18.079914>,  <41.222591, 30.759029, 17.926266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939976, 30.521290, 18.079914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208931, -0.693795, -0.689200,
		0.676125, -0.406695, 0.614373,
		-0.706543, -0.594347, 0.384121,
		40.728012, 30.342985, 18.195150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508209, 30.075972, 18.004219>,  <41.222591, 30.759029, 17.926266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508209, 30.075972, 18.004219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.115253, 30.002073, 18.015371>,  <40.879478, 29.957733, 18.022062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.115253, 30.002073, 18.015371>,  <41.508209, 30.075972, 18.004219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115253, 30.002073, 18.015371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123684, -0.754892, -0.644081,
		0.140040, -0.629290, 0.764449,
		-0.982390, -0.184748, 0.027882,
		40.820538, 29.946650, 18.023735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478119, 29.408363, 18.133989>,  <41.508209, 30.075972, 18.004219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478119, 29.408363, 18.133989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143440, 29.531624, 17.952888>,  <40.942635, 29.605581, 17.844229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143440, 29.531624, 17.952888>,  <41.478119, 29.408363, 18.133989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143440, 29.531624, 17.952888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183382, -0.621331, -0.761787,
		-0.516055, -0.720409, 0.463354,
		-0.836695, 0.308153, -0.452752,
		40.892433, 29.624069, 17.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194950, 28.820215, 17.914173>,  <41.478119, 29.408363, 18.133989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194950, 28.820215, 17.914173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026829, 29.104126, 17.688053>,  <40.925957, 29.274473, 17.552382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026829, 29.104126, 17.688053>,  <41.194950, 28.820215, 17.914173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026829, 29.104126, 17.688053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125083, -0.571731, -0.810851,
		-0.898723, -0.411510, 0.151517,
		-0.420300, 0.709777, -0.565300,
		40.900738, 29.317059, 17.518463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964905, 28.836117, 18.720327>,  <41.194950, 28.820215, 17.914173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964905, 28.836117, 18.720327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826649, 28.461739, 18.693380>,  <40.743694, 28.237112, 18.677212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826649, 28.461739, 18.693380>,  <40.964905, 28.836117, 18.720327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826649, 28.461739, 18.693380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769860, 0.241796, 0.590636,
		-0.536513, 0.256014, -0.804121,
		-0.345644, -0.935944, -0.067369,
		40.722954, 28.180956, 18.673170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319279, 28.955181, 18.522951>,  <40.964905, 28.836117, 18.720327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319279, 28.955181, 18.522951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347492, 28.590500, 18.684851>,  <40.364422, 28.371691, 18.781990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.347492, 28.590500, 18.684851>,  <40.319279, 28.955181, 18.522951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347492, 28.590500, 18.684851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738787, 0.224890, 0.635310,
		-0.670238, -0.343835, -0.657692,
		0.070533, -0.911703, 0.404750,
		40.368652, 28.316990, 18.806276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671566, 28.544849, 18.380438>,  <40.319279, 28.955181, 18.522951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671566, 28.544849, 18.380438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847401, 28.383753, 18.701576>,  <39.952904, 28.287096, 18.894260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847401, 28.383753, 18.701576>,  <39.671566, 28.544849, 18.380438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847401, 28.383753, 18.701576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873092, 0.018268, 0.487214,
		-0.210886, -0.915132, -0.343598,
		0.439588, -0.402740, 0.802847,
		39.979279, 28.262932, 18.942430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052303, 28.117634, 18.795437>,  <39.671566, 28.544849, 18.380438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052303, 28.117634, 18.795437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.352474, 28.136614, 19.059137>,  <39.532578, 28.148003, 19.217358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.352474, 28.136614, 19.059137>,  <39.052303, 28.117634, 18.795437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352474, 28.136614, 19.059137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660110, 0.104311, 0.743891,
		-0.033472, -0.993412, 0.109597,
		0.750423, 0.047447, 0.659253,
		39.577602, 28.150848, 19.256912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798973, 27.782810, 19.355406>,  <39.052303, 28.117634, 18.795437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798973, 27.782810, 19.355406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096668, 28.000862, 19.509781>,  <39.275284, 28.131693, 19.602406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096668, 28.000862, 19.509781>,  <38.798973, 27.782810, 19.355406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096668, 28.000862, 19.509781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505184, 0.081432, 0.859161,
		0.436927, -0.834387, 0.335995,
		0.744233, 0.545130, 0.385939,
		39.319939, 28.164402, 19.625563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842716, 27.492685, 20.005564>,  <38.798973, 27.782810, 19.355406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842716, 27.492685, 20.005564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007378, 27.856033, 20.034966>,  <39.106174, 28.074043, 20.052607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007378, 27.856033, 20.034966>,  <38.842716, 27.492685, 20.005564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007378, 27.856033, 20.034966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608398, 0.213867, 0.764273,
		0.678523, -0.359337, 0.640690,
		0.411654, 0.908371, 0.073507,
		39.130875, 28.128544, 20.057018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250343, 27.548338, 20.571928>,  <38.842716, 27.492685, 20.005564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250343, 27.548338, 20.571928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137890, 27.926956, 20.508656>,  <39.070419, 28.154127, 20.470692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137890, 27.926956, 20.508656>,  <39.250343, 27.548338, 20.571928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137890, 27.926956, 20.508656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393379, 0.036685, 0.918644,
		0.875340, 0.320484, 0.362037,
		-0.281129, 0.946543, -0.158183,
		39.053551, 28.210918, 20.461201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959187, 27.487341, 20.915956>,  <39.250343, 27.548338, 20.571928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959187, 27.487341, 20.915956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014458, 27.112617, 21.044512>,  <40.047623, 26.887783, 21.121645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014458, 27.112617, 21.044512>,  <39.959187, 27.487341, 20.915956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014458, 27.112617, 21.044512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632582, -0.166207, -0.756449,
		0.762067, 0.307832, 0.569643,
		0.138180, -0.936811, 0.321390,
		40.055912, 26.831573, 21.140928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671345, 27.369719, 20.825768>,  <39.959187, 27.487341, 20.915956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671345, 27.369719, 20.825768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.526722, 26.996780, 20.824690>,  <40.439949, 26.773018, 20.824043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.526722, 26.996780, 20.824690>,  <40.671345, 27.369719, 20.825768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526722, 26.996780, 20.824690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642427, -0.247036, -0.725439,
		0.675694, -0.264020, 0.688282,
		-0.361561, -0.932345, -0.002693,
		40.418255, 26.717077, 20.823881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303608, 26.961279, 20.613535>,  <40.671345, 27.369719, 20.825768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303608, 26.961279, 20.613535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996193, 26.715208, 20.543215>,  <40.811745, 26.567566, 20.501022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996193, 26.715208, 20.543215>,  <41.303608, 26.961279, 20.613535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996193, 26.715208, 20.543215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515471, -0.432593, -0.739698,
		0.378997, -0.659105, 0.649570,
		-0.768538, -0.615178, -0.175798,
		40.765633, 26.530655, 20.490475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641293, 26.330084, 20.581268>,  <41.303608, 26.961279, 20.613535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641293, 26.330084, 20.581268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281803, 26.286388, 20.411396>,  <41.066109, 26.260170, 20.309473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281803, 26.286388, 20.411396>,  <41.641293, 26.330084, 20.581268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281803, 26.286388, 20.411396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423644, -0.466312, -0.776582,
		-0.113201, -0.877850, 0.465365,
		-0.898728, -0.109239, -0.424683,
		41.012184, 26.253616, 20.283991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659180, 25.579508, 20.553663>,  <41.641293, 26.330084, 20.581268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659180, 25.579508, 20.553663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397243, 25.741032, 20.298126>,  <41.240082, 25.837946, 20.144804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397243, 25.741032, 20.298126>,  <41.659180, 25.579508, 20.553663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397243, 25.741032, 20.298126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363455, -0.572863, -0.734662,
		-0.662636, -0.713276, 0.228365,
		-0.654839, 0.403813, -0.638844,
		41.200790, 25.862175, 20.106474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453617, 25.043228, 19.965801>,  <41.659180, 25.579508, 20.553663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453617, 25.043228, 19.965801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335217, 25.379099, 19.783672>,  <41.264175, 25.580622, 19.674395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335217, 25.379099, 19.783672>,  <41.453617, 25.043228, 19.965801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335217, 25.379099, 19.783672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225736, -0.401688, -0.887519,
		-0.928129, -0.365494, -0.070644,
		-0.296006, 0.839679, -0.455324,
		41.246414, 25.631002, 19.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265560, 24.820835, 19.399536>,  <41.453617, 25.043228, 19.965801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265560, 24.820835, 19.399536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319386, 25.211311, 19.331488>,  <41.351681, 25.445597, 19.290659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319386, 25.211311, 19.331488>,  <41.265560, 24.820835, 19.399536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319386, 25.211311, 19.331488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350289, -0.207461, -0.913377,
		-0.926925, 0.063314, -0.369866,
		0.134563, 0.976192, -0.170123,
		41.359753, 25.504169, 19.280451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150112, 24.845638, 18.735451>,  <41.265560, 24.820835, 19.399536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150112, 24.845638, 18.735451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.320625, 25.204458, 18.782080>,  <41.422932, 25.419750, 18.810057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.320625, 25.204458, 18.782080>,  <41.150112, 24.845638, 18.735451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320625, 25.204458, 18.782080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315228, -0.026519, -0.948646,
		-0.847889, 0.441137, -0.294079,
		0.426281, 0.897048, 0.116574,
		41.448509, 25.473572, 18.817051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041298, 25.292332, 18.123344>,  <41.150112, 24.845638, 18.735451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041298, 25.292332, 18.123344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.361221, 25.476269, 18.277672>,  <41.553173, 25.586632, 18.370268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.361221, 25.476269, 18.277672>,  <41.041298, 25.292332, 18.123344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361221, 25.476269, 18.277672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435835, -0.002906, -0.900022,
		-0.412748, 0.887995, -0.202740,
		0.799804, 0.459843, 0.385820,
		41.601162, 25.614222, 18.393417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.919834, 32.622890, 32.183159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316051, 32.583328, 32.221210>,  <37.553780, 32.559593, 32.244041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316051, 32.583328, 32.221210>,  <36.919834, 32.622890, 32.183159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316051, 32.583328, 32.221210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027930, -0.533431, -0.845382,
		0.134358, 0.840041, -0.525622,
		0.990539, -0.098903, 0.095133,
		37.613213, 32.553658, 32.249752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242802, 32.860275, 31.515545>,  <36.919834, 32.622890, 32.183159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242802, 32.860275, 31.515545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498096, 32.614998, 31.701729>,  <37.651272, 32.467831, 31.813438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498096, 32.614998, 31.701729>,  <37.242802, 32.860275, 31.515545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498096, 32.614998, 31.701729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058045, -0.564563, -0.823346,
		0.767651, 0.552505, -0.324730,
		0.638234, -0.613194, 0.465458,
		37.689568, 32.431038, 31.841366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792450, 32.664810, 31.047304>,  <37.242802, 32.860275, 31.515545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792450, 32.664810, 31.047304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765335, 32.373428, 31.319996>,  <37.749065, 32.198597, 31.483610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.765335, 32.373428, 31.319996>,  <37.792450, 32.664810, 31.047304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765335, 32.373428, 31.319996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097170, -0.675232, -0.731177,
		0.992957, -0.115805, -0.025015,
		-0.067783, -0.728458, 0.681729,
		37.744999, 32.154892, 31.524515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296680, 32.278416, 30.816704>,  <37.792450, 32.664810, 31.047304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296680, 32.278416, 30.816704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066216, 32.060322, 31.060263>,  <37.927937, 31.929466, 31.206398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066216, 32.060322, 31.060263>,  <38.296680, 32.278416, 30.816704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066216, 32.060322, 31.060263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142091, -0.800454, -0.582309,
		0.804889, -0.248986, 0.538665,
		-0.576163, -0.545234, 0.608898,
		37.893368, 31.896751, 31.242931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610077, 31.588919, 30.783239>,  <38.296680, 32.278416, 30.816704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610077, 31.588919, 30.783239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246761, 31.523127, 30.937098>,  <38.028770, 31.483652, 31.029411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246761, 31.523127, 30.937098>,  <38.610077, 31.588919, 30.783239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246761, 31.523127, 30.937098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004879, -0.915235, -0.402892,
		0.418307, -0.367821, 0.830498,
		-0.908293, -0.164480, 0.384644,
		37.974274, 31.473783, 31.052490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617043, 30.912498, 31.012249>,  <38.610077, 31.588919, 30.783239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617043, 30.912498, 31.012249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221989, 30.956438, 30.967510>,  <37.984955, 30.982801, 30.940666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221989, 30.956438, 30.967510>,  <38.617043, 30.912498, 31.012249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221989, 30.956438, 30.967510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032742, -0.842250, -0.538092,
		-0.153312, -0.527776, 0.835433,
		-0.987635, 0.109849, -0.111846,
		37.925697, 30.989393, 30.933956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317017, 30.234398, 31.118643>,  <38.617043, 30.912498, 31.012249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317017, 30.234398, 31.118643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048656, 30.443115, 30.907883>,  <37.887638, 30.568346, 30.781427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048656, 30.443115, 30.907883>,  <38.317017, 30.234398, 31.118643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048656, 30.443115, 30.907883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180392, -0.804038, -0.566553,
		-0.719270, -0.285053, 0.633558,
		-0.670903, 0.521793, -0.526899,
		37.847385, 30.599653, 30.749813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653744, 29.859943, 31.046041>,  <38.317017, 30.234398, 31.118643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653744, 29.859943, 31.046041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628738, 30.117435, 30.740963>,  <37.613735, 30.271931, 30.557917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628738, 30.117435, 30.740963>,  <37.653744, 29.859943, 31.046041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628738, 30.117435, 30.740963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242513, -0.751085, -0.614052,
		-0.968132, 0.146579, 0.203063,
		-0.062511, 0.643729, -0.762696,
		37.609985, 30.310555, 30.512154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147049, 29.612547, 30.636646>,  <37.653744, 29.859943, 31.046041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147049, 29.612547, 30.636646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381683, 29.826361, 30.393274>,  <37.522465, 29.954649, 30.247252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381683, 29.826361, 30.393274>,  <37.147049, 29.612547, 30.636646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381683, 29.826361, 30.393274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030502, -0.736140, -0.676142,
		-0.809310, 0.415176, -0.415507,
		0.586590, 0.534534, -0.608429,
		37.557659, 29.986721, 30.210745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846195, 29.498453, 29.960325>,  <37.147049, 29.612547, 30.636646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846195, 29.498453, 29.960325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199501, 29.660721, 29.866280>,  <37.411484, 29.758081, 29.809853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199501, 29.660721, 29.866280>,  <36.846195, 29.498453, 29.960325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199501, 29.660721, 29.866280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024962, -0.541412, -0.840387,
		-0.468213, 0.736414, -0.488336,
		0.883263, 0.405670, -0.235113,
		37.464481, 29.782421, 29.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697063, 29.721355, 29.279335>,  <36.846195, 29.498453, 29.960325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697063, 29.721355, 29.279335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094906, 29.713978, 29.320164>,  <37.333611, 29.709551, 29.344662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094906, 29.713978, 29.320164>,  <36.697063, 29.721355, 29.279335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094906, 29.713978, 29.320164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089525, -0.344362, -0.934559,
		0.052387, 0.938656, -0.340853,
		0.994606, -0.018444, 0.102073,
		37.393288, 29.708445, 29.350786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950813, 29.920799, 28.694775>,  <36.697063, 29.721355, 29.279335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950813, 29.920799, 28.694775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262619, 29.726454, 28.852913>,  <37.449703, 29.609846, 28.947796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262619, 29.726454, 28.852913>,  <36.950813, 29.920799, 28.694775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262619, 29.726454, 28.852913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072955, -0.556437, -0.827681,
		0.622126, 0.674028, -0.398303,
		0.779510, -0.485864, 0.395348,
		37.496471, 29.580694, 28.971518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562714, 30.548615, 28.436123>,  <36.950813, 29.920799, 28.694775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562714, 30.548615, 28.436123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364464, 30.788767, 28.185076>,  <36.245514, 30.932858, 28.034449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364464, 30.788767, 28.185076>,  <36.562714, 30.548615, 28.436123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364464, 30.788767, 28.185076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259246, 0.587409, 0.766643,
		0.828945, 0.542672, -0.135487,
		-0.495622, 0.600381, -0.627616,
		36.215778, 30.968882, 27.996792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802849, 31.197712, 28.509815>,  <36.562714, 30.548615, 28.436123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802849, 31.197712, 28.509815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438866, 31.229994, 28.347109>,  <36.220474, 31.249363, 28.249485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438866, 31.229994, 28.347109>,  <36.802849, 31.197712, 28.509815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438866, 31.229994, 28.347109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254585, 0.665567, 0.701575,
		0.327348, 0.741962, -0.585094,
		-0.909962, 0.080703, -0.406764,
		36.165878, 31.254206, 28.225080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733246, 31.905750, 28.597879>,  <36.802849, 31.197712, 28.509815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733246, 31.905750, 28.597879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366489, 31.776503, 28.504150>,  <36.146435, 31.698954, 28.447912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366489, 31.776503, 28.504150>,  <36.733246, 31.905750, 28.597879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366489, 31.776503, 28.504150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396143, 0.664871, 0.633259,
		-0.048822, 0.673455, -0.737615,
		-0.916890, -0.323118, -0.234324,
		36.091423, 31.679567, 28.433853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407043, 32.496395, 28.540005>,  <36.733246, 31.905750, 28.597879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407043, 32.496395, 28.540005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133724, 32.210682, 28.600525>,  <35.969730, 32.039253, 28.636837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133724, 32.210682, 28.600525>,  <36.407043, 32.496395, 28.540005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133724, 32.210682, 28.600525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430104, 0.561231, 0.707129,
		-0.590007, 0.418108, -0.690708,
		-0.683303, -0.714287, 0.151300,
		35.928734, 31.996395, 28.645914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805973, 32.789616, 28.261646>,  <36.407043, 32.496395, 28.540005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805973, 32.789616, 28.261646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699863, 32.517826, 28.535273>,  <35.636196, 32.354752, 28.699450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699863, 32.517826, 28.535273>,  <35.805973, 32.789616, 28.261646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699863, 32.517826, 28.535273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536709, 0.693464, 0.480677,
		-0.800982, -0.239634, -0.548637,
		-0.265273, -0.679472, 0.684067,
		35.620281, 32.313984, 28.740492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221493, 33.067024, 28.569096>,  <35.805973, 32.789616, 28.261646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221493, 33.067024, 28.569096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278606, 32.765747, 28.825943>,  <35.312874, 32.584980, 28.980051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278606, 32.765747, 28.825943>,  <35.221493, 33.067024, 28.569096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278606, 32.765747, 28.825943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588454, 0.457047, 0.666956,
		-0.795823, -0.473088, -0.377959,
		0.142784, -0.753191, 0.642119,
		35.321442, 32.539791, 29.018579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541344, 32.770374, 28.796314>,  <35.221493, 33.067024, 28.569096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541344, 32.770374, 28.796314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811810, 32.670185, 29.073463>,  <34.974087, 32.610073, 29.239752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811810, 32.670185, 29.073463>,  <34.541344, 32.770374, 28.796314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811810, 32.670185, 29.073463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700114, 0.074438, 0.710140,
		-0.229443, -0.965259, -0.125024,
		0.676163, -0.250468, 0.692871,
		35.014660, 32.595043, 29.281324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248150, 32.200981, 29.202782>,  <34.541344, 32.770374, 28.796314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248150, 32.200981, 29.202782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503757, 32.413700, 29.425077>,  <34.657124, 32.541332, 29.558455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503757, 32.413700, 29.425077>,  <34.248150, 32.200981, 29.202782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503757, 32.413700, 29.425077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697710, 0.096595, 0.709838,
		0.323807, -0.841346, 0.432765,
		0.639023, 0.531795, 0.555738,
		34.695465, 32.573238, 29.591799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927818, 32.016380, 29.834078>,  <34.248150, 32.200981, 29.202782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927818, 32.016380, 29.834078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164097, 32.333359, 29.894880>,  <34.305866, 32.523544, 29.931362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164097, 32.333359, 29.894880>,  <33.927818, 32.016380, 29.834078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164097, 32.333359, 29.894880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663895, 0.370245, 0.649740,
		0.458603, -0.484718, 0.744803,
		0.590700, 0.792444, 0.152006,
		34.341309, 32.571091, 29.940483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981644, 32.197441, 30.567162>,  <33.927818, 32.016380, 29.834078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981644, 32.197441, 30.567162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101620, 32.529346, 30.378899>,  <34.173607, 32.728489, 30.265940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101620, 32.529346, 30.378899>,  <33.981644, 32.197441, 30.567162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101620, 32.529346, 30.378899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623992, 0.543844, 0.561130,
		0.721573, 0.125380, 0.680891,
		0.299944, 0.829767, -0.470659,
		34.191605, 32.778278, 30.237701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000134, 32.688457, 31.126562>,  <33.981644, 32.197441, 30.567162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000134, 32.688457, 31.126562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006641, 32.898846, 30.786423>,  <34.010548, 33.025078, 30.582340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006641, 32.898846, 30.786423>,  <34.000134, 32.688457, 31.126562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006641, 32.898846, 30.786423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522359, 0.729644, 0.441318,
		0.852570, 0.437006, 0.286617,
		0.016270, 0.525971, -0.850347,
		34.011520, 33.056637, 30.531319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001423, 33.366642, 31.350985>,  <34.000134, 32.688457, 31.126562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001423, 33.366642, 31.350985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878101, 33.403957, 30.972303>,  <33.804108, 33.426346, 30.745094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878101, 33.403957, 30.972303>,  <34.001423, 33.366642, 31.350985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878101, 33.403957, 30.972303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720345, 0.627105, 0.296381,
		0.621332, 0.773328, -0.126138,
		-0.308302, 0.093288, -0.946704,
		33.785610, 33.431942, 30.688292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931953, 34.075054, 31.192766>,  <34.001423, 33.366642, 31.350985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931953, 34.075054, 31.192766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693985, 33.896709, 30.925251>,  <33.551205, 33.789703, 30.764742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693985, 33.896709, 30.925251>,  <33.931953, 34.075054, 31.192766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693985, 33.896709, 30.925251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667472, 0.737615, 0.102007,
		0.447827, 0.507083, -0.736422,
		-0.594922, -0.445860, -0.668788,
		33.515507, 33.762951, 30.724615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712872, 34.612297, 30.671743>,  <33.931953, 34.075054, 31.192766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712872, 34.612297, 30.671743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452675, 34.318775, 30.593370>,  <33.296555, 34.142662, 30.546347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452675, 34.318775, 30.593370>,  <33.712872, 34.612297, 30.671743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452675, 34.318775, 30.593370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757948, 0.643727, 0.105502,
		0.048711, 0.217137, -0.974925,
		-0.650494, -0.733804, -0.195935,
		33.257526, 34.098633, 30.534590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263916, 34.811096, 30.106989>,  <33.712872, 34.612297, 30.671743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263916, 34.811096, 30.106989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071964, 34.514034, 30.293825>,  <32.956795, 34.335796, 30.405928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071964, 34.514034, 30.293825>,  <33.263916, 34.811096, 30.106989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071964, 34.514034, 30.293825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872040, 0.462161, -0.161098,
		-0.096231, -0.484630, -0.869410,
		-0.479881, -0.742658, 0.467091,
		32.928001, 34.291237, 30.433952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520042, 35.571926, 29.947382>,  <33.263916, 34.811096, 30.106989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520042, 35.571926, 29.947382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815903, 35.837353, 29.902496>,  <33.993420, 35.996609, 29.875565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815903, 35.837353, 29.902496>,  <33.520042, 35.571926, 29.947382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815903, 35.837353, 29.902496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256355, -0.431978, -0.864683,
		-0.622249, 0.610799, -0.489622,
		0.739654, 0.663566, -0.112216,
		34.037800, 36.036423, 29.868832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562740, 35.687054, 29.229675>,  <33.520042, 35.571926, 29.947382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562740, 35.687054, 29.229675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910496, 35.782494, 29.402754>,  <34.119148, 35.839760, 29.506601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910496, 35.782494, 29.402754>,  <33.562740, 35.687054, 29.229675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910496, 35.782494, 29.402754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493859, -0.391071, -0.776638,
		-0.016094, 0.888894, -0.457830,
		0.869393, 0.238603, 0.432694,
		34.171314, 35.854073, 29.532562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936115, 36.117313, 28.744154>,  <33.562740, 35.687054, 29.229675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936115, 36.117313, 28.744154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208229, 35.962448, 28.993092>,  <34.371498, 35.869530, 29.142454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208229, 35.962448, 28.993092>,  <33.936115, 36.117313, 28.744154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208229, 35.962448, 28.993092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513188, -0.354630, -0.781585,
		0.523302, 0.851083, -0.042564,
		0.680289, -0.387162, 0.622345,
		34.412315, 35.846298, 29.179794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539650, 36.373959, 28.488707>,  <33.936115, 36.117313, 28.744154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539650, 36.373959, 28.488707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634567, 36.036045, 28.680552>,  <34.691517, 35.833298, 28.795658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634567, 36.036045, 28.680552>,  <34.539650, 36.373959, 28.488707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634567, 36.036045, 28.680552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620472, -0.248086, -0.743955,
		0.747468, 0.474120, 0.465297,
		0.237290, -0.844786, 0.479615,
		34.705753, 35.782608, 28.824436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085224, 36.102871, 28.171724>,  <34.539650, 36.373959, 28.488707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085224, 36.102871, 28.171724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041206, 35.772270, 28.392555>,  <35.014797, 35.573910, 28.525053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041206, 35.772270, 28.392555>,  <35.085224, 36.102871, 28.171724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041206, 35.772270, 28.392555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566598, -0.508522, -0.648361,
		0.816614, 0.241460, 0.524251,
		-0.110040, -0.826500, 0.552077,
		35.008194, 35.524319, 28.558178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734230, 35.818165, 28.249647>,  <35.085224, 36.102871, 28.171724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734230, 35.818165, 28.249647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486687, 35.512772, 28.323517>,  <35.338161, 35.329536, 28.367838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486687, 35.512772, 28.323517>,  <35.734230, 35.818165, 28.249647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486687, 35.512772, 28.323517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609160, -0.614905, -0.500815,
		0.495923, -0.197437, 0.845624,
		-0.618858, -0.763486, 0.184675,
		35.301029, 35.283726, 28.378920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146275, 35.211052, 28.460487>,  <35.734230, 35.818165, 28.249647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146275, 35.211052, 28.460487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793877, 35.059513, 28.347116>,  <35.582439, 34.968590, 28.279095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793877, 35.059513, 28.347116>,  <36.146275, 35.211052, 28.460487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793877, 35.059513, 28.347116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471277, -0.649650, -0.596533,
		0.041868, -0.659112, 0.750878,
		-0.880991, -0.378847, -0.283425,
		35.529579, 34.945858, 28.262089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274044, 34.432720, 28.400284>,  <36.146275, 35.211052, 28.460487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274044, 34.432720, 28.400284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937923, 34.511234, 28.198149>,  <35.736252, 34.558342, 28.076868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937923, 34.511234, 28.198149>,  <36.274044, 34.432720, 28.400284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937923, 34.511234, 28.198149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253762, -0.681308, -0.686604,
		-0.479057, -0.705190, 0.522696,
		-0.840303, 0.196282, -0.505336,
		35.685833, 34.570118, 28.046549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953903, 33.715477, 28.186165>,  <36.274044, 34.432720, 28.400284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953903, 33.715477, 28.186165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817917, 34.005119, 27.946133>,  <35.736324, 34.178905, 27.802113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817917, 34.005119, 27.946133>,  <35.953903, 33.715477, 28.186165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817917, 34.005119, 27.946133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287608, -0.527462, -0.799416,
		-0.895381, -0.444359, -0.028941,
		-0.339962, 0.724106, -0.600081,
		35.715927, 34.222351, 27.766108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510334, 33.374969, 27.742702>,  <35.953903, 33.715477, 28.186165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510334, 33.374969, 27.742702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596546, 33.722584, 27.564571>,  <35.648273, 33.931152, 27.457693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596546, 33.722584, 27.564571>,  <35.510334, 33.374969, 27.742702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596546, 33.722584, 27.564571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344912, -0.494402, -0.797873,
		-0.913554, 0.018371, -0.406302,
		0.215534, 0.869039, -0.445327,
		35.661205, 33.983295, 27.430973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270638, 33.219063, 27.084749>,  <35.510334, 33.374969, 27.742702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270638, 33.219063, 27.084749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519909, 33.524185, 27.015728>,  <35.669472, 33.707260, 26.974316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519909, 33.524185, 27.015728>,  <35.270638, 33.219063, 27.084749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519909, 33.524185, 27.015728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388122, -0.493188, -0.778542,
		-0.678981, 0.418196, -0.603405,
		0.623175, 0.762809, -0.172554,
		35.706860, 33.753029, 26.963963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386532, 33.261967, 26.315731>,  <35.270638, 33.219063, 27.084749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386532, 33.261967, 26.315731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686180, 33.494888, 26.442062>,  <35.865967, 33.634640, 26.517860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686180, 33.494888, 26.442062>,  <35.386532, 33.261967, 26.315731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686180, 33.494888, 26.442062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584858, -0.357503, -0.728102,
		-0.311066, 0.730149, -0.608375,
		0.749119, 0.582301, 0.315827,
		35.910915, 33.669579, 26.536810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630119, 33.615402, 25.738951>,  <35.386532, 33.261967, 26.315731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630119, 33.615402, 25.738951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935310, 33.630356, 25.997089>,  <36.118423, 33.639328, 26.151972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935310, 33.630356, 25.997089>,  <35.630119, 33.615402, 25.738951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935310, 33.630356, 25.997089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633093, -0.244955, -0.734296,
		0.130629, 0.968813, -0.210562,
		0.762974, 0.037385, 0.645347,
		36.164204, 33.641571, 26.190693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098724, 33.711487, 25.335169>,  <35.630119, 33.615402, 25.738951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098724, 33.711487, 25.335169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325676, 33.640560, 25.656824>,  <36.461849, 33.598003, 25.849817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325676, 33.640560, 25.656824>,  <36.098724, 33.711487, 25.335169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325676, 33.640560, 25.656824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789860, -0.158898, -0.592346,
		0.232810, 0.971241, 0.049902,
		0.567381, -0.177319, 0.804137,
		36.495892, 33.587364, 25.898066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702938, 34.151539, 25.263567>,  <36.098724, 33.711487, 25.335169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702938, 34.151539, 25.263567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776752, 33.843578, 25.507927>,  <36.821041, 33.658802, 25.654543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776752, 33.843578, 25.507927>,  <36.702938, 34.151539, 25.263567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776752, 33.843578, 25.507927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805013, -0.238180, -0.543345,
		0.563826, 0.592049, 0.575828,
		0.184536, -0.769902, 0.610899,
		36.832115, 33.612606, 25.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398941, 34.123127, 25.255003>,  <36.702938, 34.151539, 25.263567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398941, 34.123127, 25.255003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314270, 33.752796, 25.380245>,  <37.263466, 33.530598, 25.455391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314270, 33.752796, 25.380245>,  <37.398941, 34.123127, 25.255003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314270, 33.752796, 25.380245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681091, -0.369500, -0.632128,
		0.700934, 0.079445, 0.708788,
		-0.211678, -0.925828, 0.313104,
		37.250767, 33.475048, 25.474176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043320, 33.900749, 25.609825>,  <37.398941, 34.123127, 25.255003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043320, 33.900749, 25.609825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814945, 33.596073, 25.487274>,  <37.677921, 33.413269, 25.413744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814945, 33.596073, 25.487274>,  <38.043320, 33.900749, 25.609825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814945, 33.596073, 25.487274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714514, -0.277197, -0.642364,
		0.404354, -0.585658, 0.702498,
		-0.570935, -0.761687, -0.306376,
		37.643665, 33.367569, 25.395361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515873, 33.351334, 25.525465>,  <38.043320, 33.900749, 25.609825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515873, 33.351334, 25.525465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186596, 33.234394, 25.330778>,  <37.989029, 33.164230, 25.213966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186596, 33.234394, 25.330778>,  <38.515873, 33.351334, 25.525465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186596, 33.234394, 25.330778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563718, -0.318625, -0.762037,
		0.067704, -0.901670, 0.427092,
		-0.823188, -0.292352, -0.486715,
		37.939640, 33.146690, 25.184763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541893, 32.492043, 25.498446>,  <38.515873, 33.351334, 25.525465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541893, 32.492043, 25.498446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327042, 32.622383, 25.187239>,  <38.198132, 32.700588, 25.000515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327042, 32.622383, 25.187239>,  <38.541893, 32.492043, 25.498446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327042, 32.622383, 25.187239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642662, -0.439321, -0.627680,
		-0.546332, -0.837147, 0.026556,
		-0.537128, 0.325855, -0.778018,
		38.165905, 32.720139, 24.953833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742317, 31.957842, 24.960249>,  <38.541893, 32.492043, 25.498446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742317, 31.957842, 24.960249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544819, 32.262127, 24.791712>,  <38.426319, 32.444698, 24.690590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544819, 32.262127, 24.791712>,  <38.742317, 31.957842, 24.960249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544819, 32.262127, 24.791712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296721, -0.308066, -0.903909,
		-0.817415, -0.571326, -0.073612,
		-0.493750, 0.760711, -0.421342,
		38.396694, 32.490341, 24.665310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278915, 31.793274, 24.322428>,  <38.742317, 31.957842, 24.960249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278915, 31.793274, 24.322428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360497, 32.183342, 24.287914>,  <38.409447, 32.417381, 24.267206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360497, 32.183342, 24.287914>,  <38.278915, 31.793274, 24.322428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360497, 32.183342, 24.287914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433511, -0.168985, -0.885162,
		-0.877765, 0.143129, -0.457212,
		0.203954, 0.975171, -0.086282,
		38.421684, 32.475895, 24.262030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137589, 31.964176, 23.640987>,  <38.278915, 31.793274, 24.322428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137589, 31.964176, 23.640987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363922, 32.280701, 23.733641>,  <38.499722, 32.470615, 23.789232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363922, 32.280701, 23.733641>,  <38.137589, 31.964176, 23.640987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363922, 32.280701, 23.733641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349229, 0.024477, -0.936718,
		-0.746906, 0.610922, -0.262499,
		0.565836, 0.791312, 0.231634,
		38.533672, 32.518093, 23.803131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901932, 32.520500, 23.340248>,  <38.137589, 31.964176, 23.640987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901932, 32.520500, 23.340248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289299, 32.594879, 23.406693>,  <38.521721, 32.639507, 23.446560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289299, 32.594879, 23.406693>,  <37.901932, 32.520500, 23.340248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289299, 32.594879, 23.406693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124801, 0.215258, -0.968550,
		-0.215855, 0.958691, 0.185253,
		0.968417, 0.185947, 0.166110,
		38.579823, 32.650661, 23.456526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028843, 33.016411, 22.853390>,  <37.901932, 32.520500, 23.340248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028843, 33.016411, 22.853390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392193, 32.883995, 22.955580>,  <38.610203, 32.804546, 23.016893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392193, 32.883995, 22.955580>,  <38.028843, 33.016411, 22.853390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392193, 32.883995, 22.955580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303818, 0.102707, -0.947178,
		0.287313, 0.938011, 0.193872,
		0.908375, -0.331039, 0.255475,
		38.664707, 32.784683, 23.032223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432186, 33.302399, 22.321341>,  <38.028843, 33.016411, 22.853390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432186, 33.302399, 22.321341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687920, 33.045143, 22.489922>,  <38.841358, 32.890789, 22.591070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687920, 33.045143, 22.489922>,  <38.432186, 33.302399, 22.321341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687920, 33.045143, 22.489922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424171, -0.162181, -0.890941,
		0.641353, 0.748376, 0.169115,
		0.639332, -0.643141, 0.421455,
		38.879719, 32.852200, 22.616358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237892, 33.571301, 22.206503>,  <38.432186, 33.302399, 22.321341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237892, 33.571301, 22.206503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186657, 33.176647, 22.246809>,  <39.155914, 32.939857, 22.270992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186657, 33.176647, 22.246809>,  <39.237892, 33.571301, 22.206503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186657, 33.176647, 22.246809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513128, -0.152874, -0.844588,
		0.848701, -0.056476, 0.525849,
		-0.128087, -0.986631, 0.100765,
		39.148232, 32.880657, 22.277039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834393, 33.324875, 21.855356>,  <39.237892, 33.571301, 22.206503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834393, 33.324875, 21.855356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629196, 32.983265, 21.889946>,  <39.506081, 32.778297, 21.910700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.629196, 32.983265, 21.889946>,  <39.834393, 33.324875, 21.855356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629196, 32.983265, 21.889946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449267, -0.352963, -0.820717,
		0.731438, -0.382169, 0.564753,
		-0.512989, -0.854028, 0.086475,
		39.475300, 32.727055, 21.915888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254421, 33.148266, 22.480852>,  <39.834393, 33.324875, 21.855356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254421, 33.148266, 22.480852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.607376, 33.335022, 22.457489>,  <40.819149, 33.447075, 22.443470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.607376, 33.335022, 22.457489>,  <40.254421, 33.148266, 22.480852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607376, 33.335022, 22.457489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227253, 0.531569, 0.815960,
		0.412010, -0.706718, 0.575150,
		0.882385, 0.466888, -0.058408,
		40.872093, 33.475090, 22.439966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533329, 33.056572, 23.080935>,  <40.254421, 33.148266, 22.480852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533329, 33.056572, 23.080935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.728153, 33.375397, 22.938124>,  <40.845047, 33.566692, 22.852438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.728153, 33.375397, 22.938124>,  <40.533329, 33.056572, 23.080935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728153, 33.375397, 22.938124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146029, 0.477359, 0.866490,
		0.861074, -0.369895, 0.348896,
		0.487059, 0.797061, -0.357026,
		40.874271, 33.614513, 22.831017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048698, 33.202190, 23.481953>,  <40.533329, 33.056572, 23.080935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048698, 33.202190, 23.481953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.949699, 33.557213, 23.326523>,  <40.890301, 33.770226, 23.233265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.949699, 33.557213, 23.326523>,  <41.048698, 33.202190, 23.481953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949699, 33.557213, 23.326523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004526, 0.399991, 0.916508,
		0.968879, 0.228590, -0.094978,
		-0.247495, 0.887555, -0.388577,
		40.875450, 33.823479, 23.209949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475342, 33.601944, 23.843929>,  <41.048698, 33.202190, 23.481953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475342, 33.601944, 23.843929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184608, 33.829430, 23.689903>,  <41.010170, 33.965919, 23.597486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184608, 33.829430, 23.689903>,  <41.475342, 33.601944, 23.843929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184608, 33.829430, 23.689903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084509, 0.630451, 0.771615,
		0.681594, 0.528294, -0.506295,
		-0.726834, 0.568714, -0.385066,
		40.966557, 34.000046, 23.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667263, 34.202072, 24.091057>,  <41.475342, 33.601944, 23.843929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667263, 34.202072, 24.091057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.286999, 34.260693, 23.981682>,  <41.058842, 34.295864, 23.916058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.286999, 34.260693, 23.981682>,  <41.667263, 34.202072, 24.091057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286999, 34.260693, 23.981682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151491, 0.549863, 0.821402,
		0.270733, 0.822297, -0.500531,
		-0.950660, 0.146555, -0.273437,
		41.001801, 34.304661, 23.899651>
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
